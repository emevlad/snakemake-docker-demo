Как я использовал нейросети для домашних заданий

Какие нейросети я использовал
1. ChatGPT
2. DeepSeek

Как я с ними работал
Когда я не понимал или не мог решить задание я обычно копировал его и отправлял в чат с нейросетью 
со словами объясни подробно и пошагово как его сделать

Пример моего запроса
Домашнее задание:
- Установить Git или работать в том же Docker контейнере debian. VS Code позволяет подключиться к докер контейнеру, на счёт продуктов JetBrains точно не могу сказать, но скорее всего тоже можно
- Зарегистрироваться на GitHub/GitLab
- Создать git репозиторий git init (или следовать инструкции в GitHub/GitLab после создания репы) и создать новую ветку
- Создать Snakemake/Nextflow workflow с любой командой на ваш выбор. Это может быть что угодно, bash команда, R/Python скрипт, мб что-то ещё, главное чтобы корректно отработало
- Закоммитить и запушить ваши изменения в удалённую репу. Удобнее всего это делать не через терминал, а через редакторы кода, но на ваш выбор
- В вашем репозитории создать Pull Request на внесение изменений в вашу основную ветку
Обясни подробно и пошагово как это сделать

Пример ответа нейросети
# Домашнее задание: Snakemake Workflow с Git/GitHub

## **1. Настройка окружения**
```bash
# Установите Git и Snakemake
sudo apt update && sudo apt install -y git python3-pip
pip3 install snakemake pandas matplotlib
```

## **2. GitHub настройка**
1. Зарегистрируйтесь на [github.com](https://github.com)
2. Настройте Git:
```bash
git config --global user.name "Ваше Имя"
git config --global user.email "ваш@email.com"
```

## **3. Создание репозитория**
```bash
# Локально
mkdir snakemake-project && cd snakemake-project
git init

# На GitHub создайте пустой репозиторий, затем:
git remote add origin https://github.com/ваш-логин/snakemake-project.git
git checkout -b develop
```

## **4. Создание Snakemake Workflow**

**Создайте структуру:**
```bash
mkdir -p scripts data results
```

**Данные (`data/genes.txt`):**
```
geneA 15
geneB 42
geneC 8
geneD 33
```

**Скрипт (`scripts/count_genes.py`):**
```python
import sys
input_file = sys.argv[1]
with open(input_file) as f:
    lines = f.readlines()
print(f"Total genes: {len(lines)}")
```

**Snakefile:**
```python
rule all:
    input: "results/gene_count.txt"

rule count_genes:
    input: "data/genes.txt"
    output: "results/gene_count.txt"
    script: "scripts/count_genes.py"
```

## **5. Запуск и тестирование**
```bash
# Запустите workflow
snakemake --cores 1

# Проверьте результат
cat results/gene_count.txt
```

## **6. Коммит и пуш в GitHub**
```bash
git add .
git commit -m "Add Snakemake workflow with gene counter"
git push -u origin develop
```

## **7. Создание Pull Request**
1. На GitHub перейдите в репозиторий
2. Нажмите "Compare & pull request"
3. Выберите: base → `main`, compare → `develop`
4. Заполните описание и создайте PR

## **Проверка:**
- ✅ Workflow выполняется без ошибок
- ✅ Результаты в папке `results/`
- ✅ Код в ветке `develop` на GitHub
- ✅ Pull Request создан

Что в итоге получилось
[Опиши своими словами:
- Нейросеть помогла мне сделать дз и разобраться в нем
- С нейросетями время выполнения дз значительно уменьшилось
- И я стал понимать лучше темы
