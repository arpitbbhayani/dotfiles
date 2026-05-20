if ! command -v claude &> /dev/null; then
    curl -fsSL https://claude.ai/install.sh | bash
fi

if ! command -v gemini &> /dev/null; then
    npm install -g @google/gemini-cli
fi

if ! command -v antigravity &> /dev/null; then
    curl -fsSL https://antigravity.google/cli/install.sh | bash
fi

if [ ! -f ~/.claude/CLAUDE.md ]; then
    mkdir -p ~/.claude
    curl -o ~/.claude/CLAUDE.md https://raw.githubusercontent.com/drona23/claude-token-efficient/main/CLAUDE.md
fi
