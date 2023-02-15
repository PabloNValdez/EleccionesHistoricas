import { Component, OnInit } from '@angular/core';
import { saveAs } from 'file-saver';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent implements OnInit {

  mesas = [
    { nombre: 'dn14_21', nombreVisible: 'Escrutinio Definitivo 14 de Noviembre 2021', display: false, tipos: [
      { tipo: 'csv'},
      { tipo: 'sql'},
    ]},
    { nombre: 'da29_21', nombreVisible: 'Escrutinio Definitivo 29 de Agosto 2021', display: false, tipos: [
    { tipo: 'csv'},
    { tipo: 'sql'},
    ]},
    { nombre: 'dj27_19', nombreVisible: 'Escrutinio Definitivo 27 de Junio 2019',display: false, tipos: [
      { tipo: 'csv'},
      { tipo: 'sql'},
      ]},
    { nombre: 'dj2_19', nombreVisible: 'Escrutinio Definitivo 2 de Junio 2019', display: false, tipos: [
    { tipo: 'csv'},
    { tipo: 'sql'},
    ]},
    { nombre: 'do22_17', nombreVisible: 'Escrutinio Definitivo 22 de Octubre 2017', display: false, tipos: [
    { tipo: 'csv'},
    { tipo: 'sql'},
    ]},
    ];

  filePath: string = "../../assets/Mesas/"; //En dónde se almacenan los archivos

  currentMesa: number = -1;

  constructor() { }

  ngOnInit(): void {
  }

  toggleDisplay(mesa: any, index: any) {
    if (this.currentMesa === index) {
      this.currentMesa = -1;
    } else {
      this.currentMesa = index;
    }
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
