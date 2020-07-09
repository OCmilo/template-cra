# template-cra

Personal template for create-react-app projects.

# Requisitos

- NodeJS 14.4
- Yarn 1.X
- Docker 19.03

# Setup

Para instalar as depêndencias e checar a integridade do código, digite no seu terminal na raiz do projeto:

    yarn setup

Se nenhum erro ocorrer, o projeto está pronto para uso.

# Desenvolvimento

No terminal, na raiz do projeto:

    yarn start

Você verá uma mensagem assim se tudo ocorrer bem:

```
Compiled successfully!

You can now view admin-front in the browser.

  Local:            http://localhost:3000
  On Your Network:  http://192.168.1.195:3000

Note that the development build is not optimized.
To create a production build, use yarn build.
```

E uma aba para `localhost:3000` deverá abrir automaticamente no seu navegador. Caso não abra, navegue manualmente:
http://localhost:3000

Você está pronto para desenvolver!

O Ambiente de desenvolvimento conta com _Hot Reloading_, ou seja, sempre que houver uma alteração no código-fonte, a página atualizará automaticamente para representar a nova alteração.

# Linter

O template utiliza Eslint como linter para o projeto. Garantindo qualidade
de código. O projeto extende as configurações de eslint do airbnb com algumas
modificações, isso pode ser alterado no arquivo: ./.eslintrc.js

# Tema & Estilização

A estilização do projeto ficou com uma lib de css-in-js conhecida como
styled-components. Entre outra razões, esta abordagem foi escolhida pois
permite:

1. Simplicidade na hora de testar a aplicação (Não precisa lembrar das
   dependencias de css modules ou então mocks)
2. Reutilizar do código
3. Manutenção

O projeto conta com theming extensivo fornecido pelo Theme Context do
styled-components.

# Testes

O Projeto utiliza a suite de testes popular **jest**. Além dele, foi escolhido `@testing-library/react` como ferramenta para facilitar os testes do framework.

No estilo do create-react-app, os testes unitários se encontram em pastas **tests** próximos aos módulos que estão sendo testados, e também possuem a extensão `.test.js` no final para reconhecimento das ferramentas.

# Deploy

Para realizar o build e rodar o container:

    docker build -t template-cra .
    docker run -d -p 80:80 --name="template-cra-container" template-cra

Para remover após uso:

    docker container rm -f template-cra
    docker image prune

# Referências

- [React](https://reactjs.org/)
- [create-react-app](https://create-react-app.dev/)
- [Eslint](https://eslint.org/)
- [Jest](https://jestjs.io/)
- [Testing Library](https://testing-library.com/docs/)
- [Styled Components](https://styled-components.com/)
