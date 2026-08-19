### Instruções de Uso do Repositório (Como Iniciar)

Para começar o desenvolvimento do projeto, a equipe deve seguir os passos abaixo: 

1. **Fazer o Fork do Repositório:** 

  * Clique no botão **Fork** (no canto superior direito desta página) para criar uma cópia exata deste projeto na conta de um dos membros do grupo.
2. **Adicionar Membros da Equipe:** 

  * No repositório forkado, vá em **Settings** (Configurações) > **Collaborators** > **Add people**.
  * Insira o usuário do GitHub de todos os colegas da equipe para que todos possam enviar alterações (push).
3. **Ativar o GitHub Actions (Obrigatório):** 

  * Siga rigorosamente as orientações do bloco de atenção abaixo antes de realizar qualquer envio.
4. **Personalizar o Conteúdo:** 

  * Altere os arquivos Markdown (.md) para refletir o processo de modelagem, arquitetura e desenvolvimento real do sistema que sua equipe está construindo.

[!CAUTION]
**ATENÇÃO OBRIGATÓRIA (Ativar as Actions):**
O GitHub Actions é o serviço que executa os comandos em uma máquina virtual para construir seus arquivos. Por padrão, o GitHub desativa automações em repositórios clonados por Fork. 

Para que funcione, você **precisa**: 

1. Clicar na aba **Actions** no topo do seu repositório clonado.
2. Clicar no botão verde que diz: **"I understand my workflows, go ahead and enable them"**.

Enquanto você não fizer esse passo, nenhuma versão em PDF ou DOCX será gerada! 

### Como Gerar o DOCX / PDF Automaticamente

Este repositório possui uma automação que compila todos os arquivos de texto e gera os arquivos finais tcc.pdf e tcc.docx formatados. 

Para não sobrecarregar o sistema e gastar processamento à toa a cada alteração simples, a compilação só acontece quando você enviar uma **Tag de Versão** para o servidor. 

Uma tag é basicamente um apelido para o último commit. A automação que gera o PDF fica esperando uma tag ser enviada para o servidor para acionar o script que transforma os arquivos .md em PDF e DOCX. 

Se o seu trabalho já foi comitado e enviado para o servidor, pode enviar só a tag:

```bash
git tag v0.1
git push origin v0.1
```

Depois de fazer algo como isso, o servidor vai detectar que entrou uma tag nova e disparar o processo de geração dos documentos.

* **Envio normal (Apenas salva o trabalho diário):**
Você pode realizar quantos commits e pushes quiser durante a aula para não perder seu código caso o notebook reinicie. 

```bash
git add .
git commit -m "Atualizei o mapeamento de stakeholders"
git push origin main
```

*(O trabalho é salvo na nuvem com segurança, mas nenhum PDF é gerado).*

* **Envio com deração do PDF e DOCX:**
Quando quiser fechar e enviar o seu trabalho, e aproveitar pra atualizar a versão do PDF, pode fazer o commit e push das alterações, e em seguida adicione a tag e faça o outro push só da tag:

```bash
# 1. Salve suas alterações pendentes normalmente
git add .
git commit -m "Finalizando a seção 2 do projeto"
git push origin main

# 2. Crie uma tag com o nome da versão (ex: v1.0, entrega-1, revisao)
git tag v1.0

# 3. Envie especificamente essa tag para o GitHub para disparar o Pandoc
git push origin v1.0
```

*(O GitHub Actions será ativado imediatamente ao receber a tag. Após 1 ou 2 minutos, seus arquivos estarão prontos para download).*

### Onde achar os arquivos PDF e DOCX do seu projeto?

Sempre que você enviar uma **tag**, o GitHub criará uma versão fechada dos seus documentos. Para baixar o PDF e o DOCX prontos e formatados, siga os passos abaixo: 

1. Acesse a página inicial do seu repositório no site do GitHub.
2. No menu superior, clique na aba **Actions** (ao lado de Pull Requests e Projects).
3. Na lista de execuções, clique no **nome do último build que foi executado** (ele terá exatamente o mesmo nome da tag que você enviou, ex: v1.0).
4. Role a página do build totalmente para baixo até encontrar a seção **Artifacts** (Artefatos).
5. Clique no arquivo compactado chamado **documentos-gerados**.
6. Pronto! O download começará automaticamente com os arquivos tcc.pdf e tcc.docx compactados em seu computador.