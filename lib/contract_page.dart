import 'package:flutter/material.dart';

class ContractPage extends StatelessWidget {
  const ContractPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Laundry Service',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
            icon: const Icon(Icons.arrow_back)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'สาขา',
                hintText: 'Enter Address',
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
              child: Image.asset(
                'assets/images/main.png',
                height: 300,
              ),
            ),
            const Card(
              color: Color.fromARGB(255, 172, 201, 255),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                child: Text(
                  '00 : 31 : 45',
                  style: TextStyle(fontSize: 36),
                ),
              ),
            ),
            const Row(
              children: [
                Icon(Icons.local_laundry_service),
                Text(
                  'Laundry #1',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const Row(
              children: [
                Icon(Icons.timer),
                Text(
                  'เวลาเริ่ม',
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
                Spacer(),
                Text(
                  '13:00',
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
            const Row(
              children: [
                Icon(Icons.calendar_today),
                Text(
                  'วันที่',
                  style: TextStyle(fontSize: 18.0),
                ),
                Spacer(),
                Text(
                  '1 ธ.ค. 2024',
                  style: TextStyle(fontSize: 18.0),
                ),
              ],
            ),
            const Row(
              children: [
                Text(
                  'ประเภทที่ซัก',
                  style: TextStyle(fontSize: 18.0),
                ),
                Spacer(),
                Text(
                  'ผ้าปูที่นอน',
                  style: TextStyle(fontSize: 18.0),
                ),
              ],
            ),
            const Row(
              children: [
                Text(
                  'ค่าบริการ',
                  style: TextStyle(fontSize: 18.0),
                ),
                Spacer(),
                Text(
                  '40 บาท',
                  style: TextStyle(fontSize: 18.0),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Column(children: [
                      Image.asset(
                        'assets/images/Machine.png',
                        height: 80,
                      ),
                      const Text('#2',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold)),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              WidgetStateProperty.all<Color>(Colors.green),
                        ),
                        onPressed: () {
                          debugPrint('Go Laundry #2');
                        },
                        child: const Text(
                          'Empty',
                          style: TextStyle(fontSize: 20.0, color: Colors.white),
                        ),
                      ),
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Column(children: [
                      Image.asset(
                        'assets/images/Machine.png',
                        height: 80,
                      ),
                      const Text('#3',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold)),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              WidgetStateProperty.all<Color>(Colors.red),
                        ),
                        onPressed: () {
                          debugPrint('Go Laundry #3');
                        },
                        child: const Text(
                          'Full',
                          style: TextStyle(fontSize: 20.0, color: Colors.white),
                        ),
                      ),
                    ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Column(children: [
                      Image.asset(
                        'assets/images/Machine.png',
                        height: 80,
                      ),
                      const Text('#4',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold)),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              WidgetStateProperty.all<Color>(Colors.green),
                        ),
                        onPressed: () {
                          debugPrint('Go Laundry #4');
                        },
                        child: const Text(
                          'Empty',
                          style: TextStyle(fontSize: 20.0, color: Colors.white),
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
