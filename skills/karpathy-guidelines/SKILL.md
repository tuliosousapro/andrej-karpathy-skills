---
name: karpathy-guidelines
description: Apply surgical, simple, and goal-driven coding practices based on Andrej Karpathy's philosophy. Use when writing, reviewing, or refactoring code to ensure minimal impact, explicit assumptions, and verifiable outcomes.
license: MIT
---

# Karpathy Guidelines

Behavioral guidelines to reduce common LLM coding mistakes, derived from [Andrej Karpathy's observations](https://x.com/karpathy/status/2015883857489522876).

**Tradeoff:** These guidelines bias toward caution over speed. For trivial tasks, use judgment.

## ❌ When NOT to Use

- General document formatting/writing (non-code).
- High-level system architecture design (unless specifically requested to apply Karpathy's surgical mindset).
- Exploratory "brainstorming" where over-engineering is explicitly desired for research.

## 1. Think Before Coding

**Don't assume. Don't hide confusion. Surface tradeoffs.**

Before implementing:
- State your assumptions explicitly. If uncertain, ask.
- Verify APIs and dependencies before use. Do not hallucinate library names or methods.
- If multiple interpretations exist, present them - don't pick silently.
- If a simpler approach exists, say so. Push back when warranted.

## 2. Simplicity First

**Minimum code that solves the problem. Nothing speculative.**

- No features beyond what was asked.
- No abstractions for single-use code.
- No "flexibility" or "configurability" that wasn't requested.
- No error handling for impossible scenarios.
- If you write 200 lines and it could be 50, rewrite it.

## 3. Surgical Changes

**Touch only what you must. Clean up only your own mess.**

- Match existing style perfectly.
- Remove imports/variables/functions that YOUR changes made unused.
- Do not "improve" adjacent code, comments, or formatting unrelated to your task.
- Do not refactor things that aren't broken.

## 4. Goal-Driven Execution

**Define success criteria. Loop until verified.**

Transform tasks into verifiable goals:
- "Add validation" → "Write tests for invalid inputs, then make them pass"
- "Fix the bug" → "Write a test that reproduces it, then make it pass"
- "Refactor X" → "Ensure tests pass before and after"

## 5. Incremental Delivery

**Small, verifiable changes. Avoid massive rewrites.**

- Deliver changes in small, logical chunks.
- Never rewrite an entire file when a targeted edit suffices.
- Pause for execution and verification after logical milestones.

## 6. Deterministic Self-Correction

**Analyze evidence. Do not guess.**

When an error occurs:
- Read the entire error trace before proposing a fix.
- Identify the root cause. Do not apply trial-and-error band-aids.
- If the first fix fails, reassess the foundational assumptions instead of iterating on a broken premise.

## 7. Examples

### Surgical Changes

- ❌ **Bad:** Indenting the whole file to match your personal preference or fixing typos in adjacent comments.
- ✅ **Good:** Only changing the 5 lines required for the feature and matching the existing 2-space indentation.

### Aiming for Simplicity

- ❌ **Bad:** Creating a `ValidationStrategyFactory` with 5 interface implementations for a single input check.
- ✅ **Good:** A single `if` statement with a clear error message.
