// Método simples: Adicionar o título ao body
document.body.insertAdjacentHTML('afterbegin', '<h1 id="titulo">Bem-vindo à Loja</h1>');

// Método complexo: Adicionar um elemento de produto com nome, descrição e preço
const produtoDiv = document.getElementById('produto');

// Criar um novo elemento para o produto
const produto = document.createElement('div');
produto.classList.add('produto');

// Criar e adicionar os elementos filhos
const nome = document.createElement('h2');
nome.textContent = 'Produto Exemplo';

const descricao = document.createElement('p');
descricao.textContent = 'Descrição do produto: Este é um produto de exemplo.';

const preco = document.createElement('p');
preco.textContent = 'Preço: R$ 99,99';

// Adicionar todos os elementos ao div do produto
produto.appendChild(nome);
produto.appendChild(descricao);
produto.appendChild(preco);

// Adicionar o div do produto ao elemento com id 'produto'
produtoDiv.appendChild(produto);
