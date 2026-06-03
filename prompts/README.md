# Project Prompts

This directory stores AgentOS project context for this software development repository. Keep active context concise and current; move strictly historical detail into dated deep-record files when needed.

## Standard Files

- `README.md`: Explains this directory and its update rules.
- `architecture.md`: Current architecture decisions, dependencies, project structure, interfaces, file formats, and important defaults.
- `plans.md`: Current implementation state, active plans, validation notes, maintenance guidance, and safe-resume context.

## Optional Files

- `prompt_dev_*.md`: Human-authored implementation prompts. Treat these as read-only unless Ben explicitly asks to edit them.
- `*_deep_records_*.md`: Historical or archival context. Do not read during routine development unless Ben explicitly asks for historical context or an active context file points to one for a current question.

## Update Rules

- Update `architecture.md` when architecture, dependencies, file formats, collections, build/deployment behavior, or major interfaces change.
- Update `plans.md` after implementation or validation work with what changed, what was checked, and what remains.
- Keep active files focused on maintainable current state.
- When adding, renaming, or deleting prompt files, update both this file and the root `AGENTS.md`.

## Deep Records Index

Deep-record files are historical archives. Do not read them during routine development unless Ben explicitly asks for historical context or an active file points to one for a current question.

- None yet.
