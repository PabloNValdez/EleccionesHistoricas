import { Component, OnInit } from '@angular/core';
import { saveAs } from 'file-saver';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent implements OnInit {

  mesas = [
    { nombre: 'da29_21', nombreVisible: 'Mesa1', display: false, tipos: [
    { tipo: 'csv'},
    { tipo: 'sql'},
    ]},
    { nombre: 'dj2_19', nombreVisible: 'Mesa2', display: false, tipos: [
    { tipo: 'csv'},
    { tipo: 'sql'},
    ]},
    { nombre: 'dj27_19', nombreVisible: 'Mesa3',display: false, tipos: [
    { tipo: 'csv'},
    { tipo: 'sql'},
    ]},
    { nombre: 'dn14_21', nombreVisible: 'Mesa4', display: false, tipos: [
    { tipo: 'csv'},
    { tipo: 'sql'},
    ]},
    { nombre: 'do22_17', nombreVisible: 'Mesa5', display: false, tipos: [
    { tipo: 'csv'},
    { tipo: 'sql'},
    ]},
    ];

  filePath: string = "../../assets/Mesas/"; //En dónde se almacenan los archivos

  constructor() { }

  ngOnInit(): void {
  }

  toggleDisplay(mesa: any){
    mesa.display = !mesa.display;
  }

  descargarCSV(mesa: any){
    let fullPath = this.filePath + 'CSV/' + mesa.nombre + '.csv';
    fetch(fullPath)
    .then(res => res.blob())
    .then(blob => {
      saveAs(blob, mesa.nombre + '.csv');
  });
  }

  descargarSQL(mesa: any){
    let fullPath = this.filePath + 'SQL/' + mesa.nombre + '.sql';
    fetch(fullPath)
    .then(res => res.blob())
    .then(blob => {
    saveAs(blob, mesa.nombre + '.sql');
  });
  }
}
