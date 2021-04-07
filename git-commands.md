# GIT

## CRIANDO UM REPOSITORIO

Insira: `"git init"`, para iniciar um repositório;

Adicione os arquivos desejados ao repositório com
`"git add NomeDoArquivo"`

Crie um commit, usando `"git commit -m "mensagemdo commit"`

Para fazer outro commit após alguma alterção do repositório, use `"git commit -a -m "mensagemdocommit"`. O "-a" faz uma adição do arquivo automaticamente.

O "git status" mostra o status do seu repositório, aruivos com pendencia de commit, arquivos novos....

Caso queira que um arquivo nao seja monitorado pelo git, crie um arquivo chamado ".gitignore", este arquivo nao pode ser um arquivo ".txt", e dentro desse arquivo, coloque os nomes dos arquivos que você deseja ignorar

CONSULTAS DO HISTORICO DE ALTERAÇÃO DO GIT

Para fazer uma consulta de quais arquivos foram alterados no repositório, usa-se "git diff", ou caso esse arquivo tenha sido commitado, usa-se "git diff -- staged"

Caso você queira um resumo de todos os commits feitos anteriormente, use "git log", e assim é retornado um histórico de todas as alterações feitas nos arquivos, mostrando também a mensagem do commit, a data em que ele foi feito e o autor. incluindo uma chave com diversos caracteres, chave essa que pode ser usada para restaurar versões antenteriores do arquivo.

O "git log -p" tem um retorno igual ao mensionado acima, porém com detalhes das alterações feitas

Utilizando o "git log -p -(algum número)" será retornado uma quantia limitada de commits feitos, contendo a quantia que estiver após o "-", lembrando que essa quantia se aplica aos commits mais recentes

O "git log --pretty=oneline" serve para mostrar apenas cada alteração feita no commit e o código chave dela.

O "gitk" abre a interface gráfica do git, deixando mais evidente as alterações feitas, deixando elas mais detalhadas também.

    					EDITANDO / JUNTANDO / DESFAZENDO UM COMMIT

Caso tenha sido feito um commit indesejado, e tenha-se alterações para serem feitas após a conclusão do ultimo commit, é possivel "desfazer" um commit, unindo as alterações presentes nele com novas modificações, para isso, primeiro salve a alteração mais recente (assim o git identificará que foram feitas novas alterações), após isso use "git commit --amend -m "mensagem do commit" "

Para remover um arquivo adicionado da stage-area do git usa-se " git reset HEAD NomeDoArquivo", assim, ele voltará a constar como um arquivo novo
Logo, para readicionar um arquivo removido da stage-area do git, usa-se "git restore --staged NomeDoArquivo"

    Para desfazer mudanças indesejadas feitas em arquivos do repositório, usa-se "git checkout -- NomeDoArquivo", lembrando que esse comando funciona apenas se esses arquivos alterados ainda nao foram commitados.

    Para remover um arquivo do repositório, usa-se

"git rm NomdeDoArquivo"

    		TAGS NO GIT


    Uma tag, é uma estiqueta, um atalho, para um determinado status do sistema, que podem ser usadas para marcar diferentes versões de um sistema. Podem ser usadas também para retornar em determinados pontos do sitema, ponto no qual a tag foi criada.

    Use "git tag -a nomedatag -m "mensagem", para criar uma tag,  por padrão, uma tag é criada no commit atual, porém para criar uma tag em commits anteriores, usa-se

"git tag -a nomedatag chavedocommit -m "mensagem".

    O comando "git tag", mostra as tags existentes

"git show nomedatag" mostra mais informações sobre a tag informada.

    Para restaurar alguma versão do sistema, deve se primeiro criar uma tag na versão desejada, após isso use"git checkout nodedaversão", com isso, o git, voltará o sistema para a versão informada, ou seja, os arquivos voltarão para o status do commit em que a versão foi feita

Logo, para retornar a ultima versão do sistema usa-se "git checkout master"

Para deletar uma tag, use "git tag -d nomedatag"

    		GIT BRANCHS


    Os branchs do git, são as ramificações, as cópias do sistema que podem ser feitas dentro do ambiente de desenvolvimento. Normalmente são usadas par fazer testes ou alterações em um sistema, criando uma ramificação, podem ser feitas alterações ou teste nessa cópia criada, sem afetar o sistema principal, que pode estar em uso.

O branch padrão do git é o master.

    Para criar um branch use "git branch nomdedobranch", agora, para colocar o terminal para atuar dentro deste novo branch, use "git checkout teste"

    Para mostrar todos os branchs existentes no meu repositorio, use "git branch".

    Ou então use "git checkout -b nomedobranch", assim o git cria um novo branch, e já muda o terminal automaticamente para atuar neste novo branch.

Para voltar a atuar no branch principal, use "git checkout master"

    Caso eu tenha feito alguma alteração com sucesso, e queira unir um branch criado, com o branch principal, passando as alterações feitas para ele, use "git merge nomedobranch". Esse "nomedobranch", se refere ao branch em que foram feitas as alterações

Caso eu queira apagar um branch, use "git branch -d nomedobranch"

    Se forem feitas alterações no mesmo local do código em 2 branchs diferentes, e você tentar unir esse mesmos dois branchs, o git acusará um conflito, e quando você entrear neste local de arquivo, o git deixará em evidencia as duas alterações feitas no mesmo local;


    	       GIT EM UM SERVIDOR


    Para criar um repositório em um servidor, para ser acessado por mais de uma pessoa, usa-se "git init --bare", dentro da pasta desejada no servidor.
    Para ter um acesso ao repositorio de diferentes estações, a pessoa que quiser acessar este repositorio, deve clonar ele, para isso, use:

"git clone file://// caminhoParaAPastadoRepositorio". Caso o usuário deseje, tem como dar outro nome para o clone que ele fez do servidor principal, basta inserir o nome novo após o caminho do repositório.
Após isso, o usuário terá um repositório clonado na máquina, e pode trabalhar normalmente no projeto, fazendo commits, criando tags....
Para enviar o as alterações feitas em máquinas locais para o servidor, primeiro deve-se descobrir o nome do servidor remoto que a pessoa está usando, para descobrir isso, use "git remote".
Depois, para envirar o projeto local para o servidor, use
"git push nomeDoServidorRemoto nomeDoBranchàSerEnviado"
Para verficar se alterações foram feitas, crie outro clone, após ter sido feito o "git push", e todas as alterações devem estar neste novo clone.
Digamos que em uma máquina, esteja sendo desenvolvido um projeto, e foi feita uma alteração nele. Porém, outra pessoa precisa ter acesso a esta alteração, só que sem fazer outro clone, posi ela já esta trabalhando em um. Essa pessoa quer apenas colocar as modificações feitas no clone que ela já possui, para isso, use
"git pull nomedoServidorRemotoEmQueFoiFeitaaAlteração nomeDoBranchQueSeraAfetadoPelasAlterações" ATENÇÃO : Ao ser feito um "git pull" as alterações importadas do para o clone local, serão automaticamente mescladas / implantadas no local em que a pessoa esta trabalhando, ou seja, de certa forma, é feito um "git merge" automatico.
Para importar essa alterações, mas sem fazewr esse merge automático, use o código acima, trocando o "pull", por "fetch"

    	           GIT COM GITHUB


    Para usar um repositorio no github, primeiro crie um repositorio pelo site do github.
    Depois, copiea chave ssh gerada pelo proprio site, na aba "code", no terminal do gitbash use

"git clone nomedachaveSSH", pode se também dar outro nome para essa clonagem, colocando-o após o nome da chaveSSH.
Assim feito, na pasta em que o terminal estava atuando, será criado uma pasta com o nome do repositorio, pasta essa que conterá os arquivos do repositório do github.
Depois mova o terminal do git para atuar dentro da pasta clonada do github.
A partir deste ponto, todas as alterações feitas devem ser adicionadas a stage-area do repositorio...... e aqui podem ser feitas todas as ações que ja foram vistas acima, usando os comando vistos acima.
Para colocar as alterações no repositório do github use o "git push origin master", assim, todas as alterações feitas serão colocadas no repositorio central do github. Deste repositorio, podem ser feitas outras clonagens, podem ser feitos
''git push" entre os clones do repositorio...

    	GIT EM PROJETOS OPEN SOURSE


    Para trabalhar em projetos open sourse pelo git, deve-se primeiro acessar o repositorio do mesmo no github, depois faça um fork deste repositorio dentro do github, assim, você está fazendo um clone deste projeto para trabalhar nele, logo, no seu perfil dentro do github, esse repositorio clonado, aparecerá como mais um dos seus repositorios.
    Depois disso, faça um clone deste repositorio presente no seu perfil pelo terminal do gitbash. Assim você terá os arquivos do projeto na sua máquina.
    Após ter feito mudanças no projeto, use os comandos visto acima para commitar as alterações, e faça um push para o clone do projeto principal, que estará dentro do seu perfil do github, ATENÇÃO:  Ao ser feito esse push, as mudanças ainda nao alterarão o projeto principal, apenas chegarão no clone do projeto principal que foi feito com o fork, no seu perfil do github.
    Para enviar a sua colaboração para o projeto original, faça um pull request do seu repositorio, para o autor original, e então cabe ao autor decidir se implantará suas alterações no projeto ou não.

    Para deletar um repositorio do github, entre nas stettings do repositorio >  dlete this reporitorie, e confirme o nome do repositorio.

git checkout numerodocommit --nomedoarquivo restaura o arquivo indicado para a versão do commit indicado.
Para recuperar um arquivo deletado do repositorio, use
" git checkout --nomedoarquivo ", assim, o git vai retornar ao ultimo commit feito, em que este arquivo foi encontrado, e traze-lo para você.

<!-- Commands -->

`git diff ==> show` will show the files alterations since the last commit
`git reset HEAD~1 --soft` ==> will reset the last commit and put the files commited previously in the current staged area
`git reset HEAD~1 --hard` || `git reset --hard` ==> will reset the last commit but will delete the files commited before
`git checkout filename` ==> will return the file to the last commit state
`git checkout commit-hash filename` ==> will return the file to the commit passed (commit hash)
`git rm filename` ==> will remove some file from the staged area

`git checkout -b brach_name` ==> will create a new branch and move to this new branch
output ==> _Switched to a new branch 'branch_name'_
`git checkout master` ==> will return to main branch
`git merge branch_name` ==> you must change to branch master and to do the merge with other brach, and he alterations made in this other branch will be inserted in branch master.

By default the commit of the branch merged will be inserted together master's commit.

But if you use the flag `--squash`, the merge will be done, but the files form the others branchs wont be commited, and will be in the staged area.

If you want undo the merge made in branch master, use `git reset HEAD~1 --hard`

`git rebase branch_name` ==> will merge two branchs, but will insert all the commits done in secondary branch in the moment the this secondary branch was created (warning). Is normally used to merge master branch in other branchs, ans not secondary branchs in master.

<!-- https://www.youtube.com/watch?v=jisXznpf7AQ -->

`git stash` ==> will hide the alterations made in one branch that mustn't be commited, you just need to use `git add .` before
To access this changes done, you can use:
`git stash push file_name` ==> will hide a single file
`git stash apply` ==> will get the alterations in stash, but the stash point will remain in stash list, after the word "apply" you can pass the stash number, that you want to return (1,2,3,4...)
`git stash pop` ==> will get the alterations in stash, but will remove the last stash item in the list
`git stash save 'stash_name'` ==> will name one stash
`git stash drop` ==> will drop one stash, you just need to pass the stash number eg: "git stash drop 1"
`git stash clear` ==> will drop all stashs

`git commit --amend --no-edit` ==> will do an amend commit, but will use the commit message used in the last commit

Git `reflog` and `cherry-pick` are used to recover a wrong change made in some commit and sended to the repository. You need to use ` git reflog` that will show the last changes in the repository, after you can get the commit hash that you need to recover the files. And after `git cherry-pick commit-hash` and this will return the commit hash state. If you want, you can use `git push` to "fix" the repository, sending de files recovered.

`git pull` ==> will load and merge in your local repository, the files in the remote repository
`git fetch` ==> will load but wont merge in your local repository, the files in the remote repository, the files loaded will be stored in branch 'origin/master' and if you want to read this file, use `git checkout origin/master`, after read this files, if you want to merge this files in your master local branch, use `git merge origin/master`

<!-- git flow -->

[tutorial](https://www.youtube.com/watch?v=wzxBR4pOTTs&list=PLDqnSpzNKDvkfF_ZMfukmOG3MtGKfXlfJ&index=5)
[diagram](https://tdn.totvs.com/download/attachments/527828376/1_9yJY7fyscWFUVRqnx0BM6A.png?version=1&modificationDate=1577129236577&api=v2)

`git flow init` ==> will initialize a git flow repo with some default branchs(master, develop, feature, bugfix...) and will put you in the 'develop'
`git flow feature start new-feature-brach-name` ==> will create a new branch witch will be used to create new features
`git flow feature finish feature-brach-name` ==> will merge the files created and changed in the `feature-brach-name` in branch `develop` and will delete the `feature-brach-name`.

`git flow release start release-version` ==> will create a new release, here, the implementations are almost finished, usually you need to create a release with the release version dg: 1.0.0, 0.0.1...
`git flow release finish release-version` ==> will merge the files in this branch into branch master, and will create, into branch master, a tag with the release's name. _this branch will be deleted_. **just finish one release if the files are really finished, because them will to branch master**

Using git flow, the commits are merged together the branchs, so if you finish a functionality and wants to merge it into other branch, the commits created in this branch will together. When you use `git push`, **only the branch main(master) will be pushed in remote repo**

Gihub flow is a little simpler, see in the [diagram](data:image/png;base64,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)
