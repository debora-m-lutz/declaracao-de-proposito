#!/bin/bash

# Script de setup para desenvolvimento local

echo "🚀 Configurando ambiente de desenvolvimento..."

# Verificar se Python está instalado
if ! command -v python3 &> /dev/null; then
    echo "❌ Python 3 não encontrado. Por favor instale Python 3."
    exit 1
fi

# Verificar se pip está instalado
if ! command -v pip3 &> /dev/null; then
    echo "❌ pip3 não encontrado. Por favor instale pip."
    exit 1
fi

# Instalar dependências
echo "📦 Instalando dependências..."
pip3 install mkdocs mkdocs-material mkdocs-git-revision-date-localized-plugin

# Verificar instalação
if command -v mkdocs &> /dev/null; then
    echo "✅ MkDocs instalado com sucesso!"
    echo ""
    echo "🎯 Para começar:"
    echo "   mkdocs serve    # Executar servidor local"
    echo "   mkdocs build    # Compilar documentação"
    echo ""
    echo "📖 Acesse: http://localhost:8000"
else
    echo "❌ Erro na instalação do MkDocs"
    exit 1
fi
