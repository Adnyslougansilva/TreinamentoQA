describe('Teste de fluxo de compra na Loja Rei do Tereré', () => {
  
  it.only('passes', () => {
    //cy.viewport('macbook-16');
    cy.visit('https://www.lojareidoterere.com.br/');
    
    //User Story 1: Como usuario quero acessar o site para pesquisar produto.
    cy.get('a.toggle-submenu').click();
    cy.get('[data-item="5"] > a').click();

    //U.S 2: Como usuario quero selecionar a erva mate ver os detalhes.
    cy.get('[data-product-id="231916372"] > .product_description > a > .des_producto').click();

    //U.S 3: Como usuario quero calcular o frete para saber o alteraçao no valor do produto
    cy.get('#shipping-zipcode').type('87490-000').should('have.value', '87490-000');
    cy.get('.js-calculate-shipping-wording').click();

    //U.S 4: Como usuario quero alterar o CEP para calcular no final da compra
    cy.get('.js-shipping-calculator-change-zipcode').click();

    //U.S 5: Como usuario quero comprar a erva mate para seguir a compra
    cy.get('.js-prod-submit-form').click();

    //U.S 6: Como usuario quero finalizar a compra para finalizar meu cadastro
    cy.get('#go-to-checkout').click();
    cy.log('Automação atendida. Encerrando o teste.');

    // Encerra este teste
    Cypress.runner.stop();
  })
})