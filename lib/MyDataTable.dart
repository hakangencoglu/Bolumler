import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'FakulteDataModel.dart';
import 'Fakulteler.dart';

class MyDataTable extends StatelessWidget
    {
  //const MyDataTable({super.key, required this.datalist});
  //const MyDataTable({Key? key, required this.data}) : super(key: key);
  MyDataTable(this.data,{super.key});
  final FakulteDataModel data;

  @override
  Widget build(context) //__
  {
    return DataTable(
      sortAscending: true,
      sortColumnIndex: 1,
      showBottomBorder: false,
      columns: const [
        DataColumn(
            label: Text('ID', style: Fakulteler.contentStyleHeader),
            numeric: true),
        DataColumn(
            label:
            Text('Description', style: Fakulteler.contentStyleHeader)),

        DataColumn(
            label: Text('Price', style: Fakulteler.contentStyleHeader),
            numeric: true),
        DataColumn(
            label: Text('Price', style: Fakulteler.contentStyleHeader),
            numeric: true),

      ],

      /*
      rows: datalist
          .map(
        //maping each rows with datalist data
              (data) => DataRow(cells: [
            DataCell(
              Text(data.FakulteAdi,
                  style: const TextStyle(
                      fontSize: 25, fontWeight: FontWeight.w500)),
            ),
            DataCell(Text(data.BolumAdi.toString(),
                style: const TextStyle(
                    fontSize: 26, fontWeight: FontWeight.w500))),
            DataCell(
              Text(data.BolumKodu.toString(),
                  style: const TextStyle(
                      fontSize: 26, fontWeight: FontWeight.w500)),
            ),
          ]))
          .toList(), // converting at last into list.
      */



      rows:  [
      DataRow(
        cells: [
          DataCell(Text(data.FakulteKodu,
              style: Fakulteler.contentStyle, textAlign: TextAlign.right)),
          DataCell(Text(data.FakulteAdi, style: Fakulteler.contentStyle)),
          DataCell(Text(data.BolumAdi,
                style: Fakulteler.contentStyle, textAlign: TextAlign.right)),
          DataCell(Text(data.BolumKodu,
              style: Fakulteler.contentStyle, textAlign: TextAlign.right))


        ],
      ),
        /*
        DataRow(
          cells: [
            DataCell(Text('MDBF',
                style: Fakulteler.contentStyle, textAlign: TextAlign.right)),
            DataCell(Text('Bilgisayar Mühendisliği', style: Fakulteler.contentStyle)),
            /*
            DataCell(Text(r'$ 199.99',
                style: Fakulteler.contentStyle, textAlign: TextAlign.right))
            */

          ],
        ),
        DataRow(
          cells: [
            DataCell(Text('MDBF',
                style: Fakulteler.contentStyle, textAlign: TextAlign.right)),
            DataCell(
                Text('Elektrik-Elektronik Mühendisliği (%30 İngilizce)', style: Fakulteler.contentStyle)),
            /*DataCell(Text(r'$ 79.00',
                style: Fakulteler.contentStyle, textAlign: TextAlign.right))*/
          ],
        ),
        DataRow(
          cells: [
            DataCell(Text('MDBF',
                style: Fakulteler.contentStyle, textAlign: TextAlign.right)),
            DataCell(
                Text('Endüstri Mühendisliği (%30 İngilizce)', style: Fakulteler.contentStyle)),
            /*DataCell(Text(r'$ 9.99',
                style: Fakulteler.contentStyle, textAlign: TextAlign.right))*/
          ],
        ),
        DataRow(
          cells: [
            DataCell(Text('MDBF',
                style: Fakulteler.contentStyle, textAlign: TextAlign.right)),
            DataCell(Text('Gıda Mühendisliği (%30 İngilizce)',
                style: Fakulteler.contentStyle)),
            /*DataCell(Text(r'$ 19.99',
                style: Fakulteler.contentStyle, textAlign: TextAlign.right))*/
          ],
        ),
        DataRow(
          cells: [
            DataCell(Text('MDBF',
                style: Fakulteler.contentStyle, textAlign: TextAlign.right)),
            DataCell(Text('İç Mimarlık ve Çevre Tasarımı',
                style: Fakulteler.contentStyle)),
            /*DataCell(Text(r'$ 19.99',
                style: Fakulteler.contentStyle, textAlign: TextAlign.right))*/
          ],
        ),
        DataRow(
          cells: [
            DataCell(Text('MDBF',
                style: Fakulteler.contentStyle, textAlign: TextAlign.right)),
            DataCell(Text('Mimarlık',
                style: Fakulteler.contentStyle)),
            /*DataCell(Text(r'$ 19.99',
                style: Fakulteler.contentStyle, textAlign: TextAlign.right))*/
          ],
        ),
        DataRow(
          cells: [
            DataCell(Text('MDBF',
                style: Fakulteler.contentStyle, textAlign: TextAlign.right)),
            DataCell(Text('Moleküler Biyoloji ve Genetik ( %30 İngilizce )',
                style: Fakulteler.contentStyle)),
            /*DataCell(Text(r'$ 19.99',
                style: Fakulteler.contentStyle, textAlign: TextAlign.right))*/
          ],
        ),
        DataRow(
          cells: [
            DataCell(Text('MDBF',
                style: Fakulteler.contentStyle, textAlign: TextAlign.right)),
            DataCell(Text('Yazılım Mühendisliği (%30 İngilizce)',
                style: Fakulteler.contentStyle)),
            /*DataCell(Text(r'$ 19.99',
                style: Fakulteler.contentStyle, textAlign: TextAlign.right))*/
          ],
        ),
        */
      ],





    );



  }
}