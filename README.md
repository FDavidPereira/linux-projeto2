# Provisionamento automatizado de servidor web Linux

Projeto desenvolvido para praticar automação de infraestrutura com Shell Script.

O script prepara um servidor Linux, instala o Apache e publica automaticamente uma aplicação web no diretório padrão do servidor.

## Objetivo

Automatizar o provisionamento de um servidor web, reduzindo a quantidade de comandos manuais necessários para configurar o ambiente e disponibilizar uma aplicação.

## Funcionalidades

O script realiza as seguintes tarefas:

- Atualização da lista de pacotes do sistema
- Atualização dos pacotes instalados
- Instalação do servidor web Apache
- Instalação da ferramenta Unzip
- Download de uma aplicação web hospedada no GitHub
- Extração dos arquivos da aplicação
- Publicação dos arquivos em `/var/www/html`

## Fluxo de execução

1. Atualiza o sistema operacional
2. Instala as dependências necessárias
3. Acessa o diretório temporário `/tmp`
4. Baixa a aplicação compactada
5. Extrai o arquivo
6. Copia a aplicação para o diretório do Apache
7. Disponibiliza o site pelo servidor web

## Tecnologias utilizadas

- Linux
- Shell Script
- Bash
- Apache HTTP Server
- Wget
- Unzip
- GitHub
- Infraestrutura como código

## Pré-requisitos

- Distribuição Linux baseada em Debian ou Ubuntu
- Acesso à internet
- Usuário com privilégios administrativos
- Ambiente de laboratório ou máquina virtual

## Como executar

Clone o repositório:

```bash
git clone https://github.com/FDavidPereira/linux-projeto2.git
```

Entre no diretório:

```bash
cd linux-projeto2
```

Conceda permissão de execução ao script:

```bash
chmod +x script-iac2.sh
```

Execute com privilégios administrativos:

```bash
sudo ./script-iac2.sh
```

## Como verificar

Confira se o Apache está funcionando:

```bash
systemctl status apache2
```

Verifique os arquivos publicados:

```bash
ls -la /var/www/html
```

Consulte o endereço IP do servidor:

```bash
hostname -I
```

Depois, acesse o endereço IP pelo navegador:

```text
http://IP_DO_SERVIDOR
```

## Aplicação utilizada

A aplicação web utilizada neste laboratório está disponível no repositório:

[denilsonbonatti/linux-site-dio](https://github.com/denilsonbonatti/linux-site-dio)

## Observações de segurança

Este projeto foi desenvolvido para fins educacionais e deve ser executado preferencialmente em uma máquina virtual ou ambiente controlado.

Antes de executar scripts com privilégios administrativos, é importante revisar todo o código e verificar a origem dos arquivos baixados.

Em um ambiente real, também devem ser considerados:

- Validação da integridade dos arquivos
- Uso de HTTPS
- Configuração de firewall
- Aplicação do princípio do menor privilégio
- Hardening do servidor Apache
- Monitoramento de logs e atualizações de segurança

## Aprendizados

Com este projeto, pratiquei:

- Automação de infraestrutura
- Instalação de pacotes pelo terminal
- Configuração básica de servidor web
- Download e extração de arquivos
- Publicação de aplicações no Apache
- Execução de scripts administrativos
- Documentação técnica de projetos

## Autor

**David de Assis Pereira**

[LinkedIn](https://www.linkedin.com/in/f-david-pereira/) | [GitHub](https://github.com/FDavidPereira)
