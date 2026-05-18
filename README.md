# ELON Codex Skill

ELON is a mission-first engineering skill for Codex.

It helps Codex stay focused on the real bottleneck, inspect the live code before advising, question requirements, delete before optimizing, simplify before accelerating, automate last, conserve credits, avoid product bloat, and return proof-backed findings in plain language.

This package has no personal or project-specific context.

## Not Affiliated

This project is not affiliated with, endorsed by, or sponsored by Elon Musk, Tesla, SpaceX, X, or any related company. The name refers to an engineering-style operating mode.

## Quick Install

1. Download and unzip this folder.
2. Open Terminal in the unzipped folder.
3. Run:

```bash
./install.sh
```

4. Restart Codex.
5. Use it with:

```text
Use $elon to inspect the live codebase before advising or changing anything.
```

## Manual Install

If you do not want to run the installer:

1. Copy the `elon` folder.
2. Paste it into:

```text
~/.codex/skills/elon
```

3. Restart Codex.

If you use a custom `CODEX_HOME`, copy the folder to:

```text
$CODEX_HOME/skills/elon
```

## What Is Included

- `elon/`: the Codex skill folder.
- `elon/SKILL.md`: the actual skill instructions.
- `elon/agents/openai.yaml`: Codex UI metadata.
- `extras/AGENTS.md`: optional repo-level instructions for projects that use `AGENTS.md`.
- `extras/ELON_CORE.md`: optional pasteable version for other AI tools.
- `install.sh`: simple installer for Codex.

## Good Prompts

```text
Use $elon to review this repo for the highest-risk infrastructure issue. Do not edit until the review is complete.
```

```text
Use $elon to diagnose this failure. Inspect the code first, separate facts from assumptions, and show proof.
```

```text
Use $elon to simplify this feature. Delete before optimizing and avoid adding new moving parts unless required.
```

## Update

To update, replace the existing `~/.codex/skills/elon` folder with the new `elon` folder, then restart Codex.

Running `./install.sh` will back up an existing `elon` skill before installing the new one.

## Remove

Delete this folder:

```text
~/.codex/skills/elon
```

Then restart Codex.

## License

MIT. See `LICENSE`.
