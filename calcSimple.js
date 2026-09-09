// Calculadora de interés simple

let capital = 100000;
let tasa = 5;
let tiempo = 2;

let interes = capital * (tasa / 100) * tiempo;
let total = capital + interes;

console.log("Interés: $" + interes);
console.log("Total: $" + total);