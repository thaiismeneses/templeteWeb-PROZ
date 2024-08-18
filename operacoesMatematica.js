function mostrarOperacoes(num1, num2) {
  console.log(`${num1} + ${num2} = ${num1 + num2}`);
  console.log(`${num1} - ${num2} = ${num1 - num2}`);
  console.log(`${num1} x ${num2} = ${num1 * num2}`);
  console.log(`${num1} / ${num2} = ${(num2 !== 0 ? num1 / num2 : 'Não é possível dividir por zero')}`);
}

// Exemplo de uso da função
mostrarOperacoes(4, 5);
