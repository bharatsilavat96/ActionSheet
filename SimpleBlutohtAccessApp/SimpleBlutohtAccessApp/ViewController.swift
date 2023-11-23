//
//  ViewController.swift
//  SimpleBlutohtAccessApp
//
//  Created by Bharat Shilavat on 22/11/23.
//

import UIKit
import CoreBluetooth

class ViewController: UIViewController,CBCentralManagerDelegate, CBPeripheralDelegate, UITableViewDataSource, UITableViewDelegate  {
    
    var centralManager: CBCentralManager!
    var peripheralManager: CBPeripheralManager!
    var discoveredPeripherals: [CBPeripheral] = []
    var selectedPeripheral: CBPeripheral?
    
    @IBOutlet weak var tableView: UITableView!
    
    let textField = UITextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        centralManager = CBCentralManager(delegate: self, queue: nil)
        peripheralManager = CBPeripheralManager(delegate: self, queue: nil)
        setupTableView()
    }
    
    func setupTableView() {
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    // MARK: - UITableViewDataSource
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("Discovered Peripheral Count :", discoveredPeripherals.count)
        return discoveredPeripherals.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PeripheralCell", for: indexPath)
        let peripheralName = discoveredPeripherals[indexPath.row].name
        cell.textLabel?.text = peripheralName
        return cell
    }
    
    // MARK: - UITableViewDelegate
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedPeripheral = discoveredPeripherals[indexPath.row]
        centralManager.connect(selectedPeripheral!, options: nil)
    }
    
    // MARK: - CBCentralManagerDelegate
    
    func centralManagerDidUpdateState(_ central: CBCentralManager) {
        switch central.state {
        case .poweredOn:
            print("Bluetooth is powered on. Scanning for devices...")
            centralManager.scanForPeripherals(withServices: nil, options: nil)
        case .poweredOff:
            print("Bluetooth is powered off.")
        case .unsupported:
            print("Bluetooth is not supported on this device.")
        case .unauthorized:
            print("Bluetooth usage is not authorized.")
        case .resetting:
            print("Bluetooth is resetting.")
        default:
            break
        }
    }
    
    func centralManager(_ central: CBCentralManager, didDiscover peripheral: CBPeripheral, advertisementData: [String: Any], rssi RSSI: NSNumber) {
        // You've discovered a peripheral, you can now connect to it and perform further actions.
        if peripheral.name == nil {
            // print("No Name")
        } else {
            print("Peripheral Name: ", peripheral.name!)
            discoveredPeripherals.append(peripheral)
            tableView.reloadData()
        }
    }
    
    func centralManager(_ central: CBCentralManager, didConnect peripheral: CBPeripheral) {
        print("Connected to peripheral: \(peripheral.name ?? "Unknown")")
        peripheral.delegate = self
        peripheral.discoverServices(nil)
    }
    
    // MARK: - CBPeripheralDelegate
    
    func peripheral(_ peripheral: CBPeripheral, didDiscoverServices error: Error?) {
        if let services = peripheral.services {
            for service in services {
                print("Discovered service: \(service.uuid)")
                // You can discover characteristics and perform additional actions here.
                peripheral.discoverCharacteristics(nil, for: service)
            }
        }
    }
    
    func peripheral(_ peripheral: CBPeripheral, didDiscoverCharacteristicsFor service: CBService, error: Error?) {
        if let characteristics = service.characteristics {
            for characteristic in characteristics {
                print("Discovered characteristic: \(characteristic.uuid)")
                // For simplicity, let's assume we are interested in the first characteristic
                if characteristic.properties.contains(.write) {
                    // This characteristic supports write operations
                    // You can send data to the peripheral using the writeValue method
                    let dataToSend = "Hello, Peripheral!".data(using: .utf8)
                    peripheral.writeValue(dataToSend!, for: characteristic, type: .withResponse)
                }
                
                if characteristic.properties.contains(.notify) {
                    // This characteristic supports notifications
                    // You can subscribe to notifications using the setNotifyValue method
                    peripheral.setNotifyValue(true, for: characteristic)
                }
            }
        }
    }
    
    func peripheral(_ peripheral: CBPeripheral, didUpdateValueFor characteristic: CBCharacteristic, error: Error?) {
        if let data = characteristic.value {
            // Data received from the peripheral
            if let receivedString = String(data: data, encoding: .utf8) {
                print("Received data from peripheral: \(receivedString)")
            }
        }
    }
}

// MARK: - CBPeripheralManagerDelegate

extension ViewController: CBPeripheralManagerDelegate {
    
    func peripheralManagerDidUpdateState(_ peripheral: CBPeripheralManager) {
        switch peripheral.state {
        case .poweredOn:
            print("Peripheral: Bluetooth is powered on. Advertising services...")
            startAdvertising()
        case .poweredOff:
            print("Peripheral: Bluetooth is powered off.")
        case .unsupported:
            print("Peripheral: Bluetooth is not supported on this device.")
        case .unauthorized:
            print("Peripheral: Bluetooth usage is not authorized.")
        case .resetting:
            print("Peripheral: Bluetooth is resetting.")
        default:
            break
        }
    }
    
    func startAdvertising() {
        let serviceUUID = CBUUID(string: "E621E1F8-C36C-495A-93FC-0C247A3E6E5F")
        let service = CBMutableService(type: serviceUUID, primary: true)
        
        let characteristicUUID = CBUUID(string: "F621E1F8-C36C-495A-93FC-0C247A3E6E5F")
        let characteristic = CBMutableCharacteristic(type: characteristicUUID,
                                                     properties: [.read, .write, .notify],
                                                     value: nil,
                                                     permissions: [.readable, .writeable])
        
        service.characteristics = [characteristic]
        
        peripheralManager.add(service)
        
        // Set the local name for your device
        let advertisementData: [String: Any] = [CBAdvertisementDataServiceUUIDsKey: [serviceUUID],
                                                   CBAdvertisementDataLocalNameKey: "YourDeviceName"]
        
        peripheralManager.startAdvertising(advertisementData)
        
        print("Peripheral: Started advertising services.")
    }
    
    
}
extension ViewController: UITextFieldDelegate{
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
    }
    
}
