# 🚀 Automação de Testes com Robot Framework - ParaBank

Este repositório contém testes automatizados criados com **Robot Framework** e **SeleniumLibrary**, utilizando como base o site [ParaBank](https://parabank.parasoft.com).  
Os casos de teste implementados até agora incluem:  

- ✅ **Cadastro de novo usuário com sucesso**  
- ✅ **Validação de cadastro já existente (não pode ser criado novamente)**  

Foram utilizados **localizadores CSS, XPath e IDs** para interagir com os elementos da página.  
O objetivo é evoluir e **criar mais testes automatizados ao longo do tempo**, cobrindo diferentes funcionalidades do sistema.  

---

## 📂 Estrutura do Projeto

PARABANK/
│── logs/ # Relatórios de execução (gerados automaticamente)
│── resources/ # Arquivos de recursos (keywords, variáveis etc.)
│ └── resources_parabank.robot
│── tests/ # Casos de teste
│ ├── user_create.robot
│ └── user_login_existente.robot
└── README.md


---

## Executando os testes

- Rodar todos os testes

    robot -d logs tests/

- Rodar um arquivo de teste específico

    robot -d logs tests/user_create.robot
    robot -d logs tests/user_login_existente.robot

- Rodar testes por tag (se definidas no arquivo .robot)

    robot -d logs -i smoke tests/




## 🛠️ Pré-requisitos
- **Python 3.8+** instalado  
- **Google Chrome** (ou Firefox) instalado  
- Recomenda-se criar um ambiente virtual (`venv`)  

---

## ⚙️ Instalação 

### 1. Criar ambiente virtual
Linux / macOS:
```bash
python3 -m venv venv
source venv/bin/activate

Windows (PowerShell):

python -m venv venv
.\venv\Scripts\Activate.ps1

Aqui estão os comandos para instalação das ferramentas:

pip install robotframework
pip install robotframework-seleniumlibrary
pip install selenium



