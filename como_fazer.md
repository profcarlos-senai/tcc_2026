### Instruções para as Equipes (Como Iniciar)

Para começar o desenvolvimento do projeto, a equipe deve seguir os passos abaixo:

1. **Fazer o Fork do Repositório:** 

  * Clique no botão **Fork** (no canto superior direito desta página) para criar uma cópia exata deste projeto na conta de um dos membros do grupo.
2. **Adicionar Membros da Equipe:** 

  * No repositório forkado, vá em **Settings** (Configurações) > **Collaborators** > **Add people**.
  * Insira o usuário do GitHub de todos os colegas da equipe para que todos possam enviar alterações (push).
3. **Personalizar o Conteúdo:** 

  * Altere os arquivos Markdown (.md) listados abaixo para refletir o processo de modelagem, arquitetura e desenvolvimento real do sistema que sua equipe está construindo.

### Como Gerar o DOCX / PDF Automaticamente

Este repositório possui uma automação que compila todos os arquivos de texto e gera os arquivos finais tcc.pdf e tcc.docx formatados. 

Para não sobrecarregar o sistema a cada alteração simples, a compilação só acontece quando você enviar (git push) uma atualização que tenha o `gerar pdf' na mensagem de commit.

**Para isso acontecer, você precisa ativar o GitHub Actions (Obrigatório):** 

GitHub Actions é um serviço que executa comandos numa máquina virtual, acionados por eventos do repositório (normalmente `push` ou `pull request` na branch `main`).

  * Por padrão, o GitHub desativa automações em repositórios clonados por Fork.
  * Clique na aba **Actions** no topo do seu repositório.
  * Clique no botão verde que diz: **"I understand my workflows, go ahead and enable them"**.

* **Envio normal (Apenas salva o trabalho):** 

```bash
git commit -m "Atualizei o mapeamento de stakeholders"
git push origin main
```

*(O trabalho é salvo na nuvem com segurança, mas nenhum PDF é gerado).*

* **Envio com Compilação (Gera o PDF e DOCX):**
Adicione o termo gerar pdf (em minúsculo ou maiúsculo) ao final da sua mensagem de commit: 


```bash
git commit -m "Finalizando a seção 2 gerar pdf"
git push origin main
```

*(O GitHub Actions será ativado por causa da frase "gerar pdf". Após 1 ou 2 minutos, você poderá baixar os arquivos prontos na aba **Actions** do seu repositório).*

---

### Onde achar os arquivos PDF e DOCX do seu projeto?

Sempre que você enviar uma **tag**, o GitHub criará uma versão fechada dos seus documentos técnicos. Para baixar o PDF e o DOCX prontos e formatados, siga os passos abaixo: 

1. Acesse a página inicial do seu repositório no site do GitHub.
2. No menu superior, clique na aba **Actions** (ao lado de Pull Requests e Projects).
3. Na lista de execuções, clique no **nome do último build que foi executado** (ele terá o mesmo nome da tag que você enviou).
4. Role a página do build totalmente para baixo até encontrar a seção **Artifacts** (Artefatos).
5. Clique no arquivo compactado chamado **documentos-gerados**.
6. Pronto! O download começará automaticamente com os arquivos tcc.pdf e tcc.docx em seu computador.