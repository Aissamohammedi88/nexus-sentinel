# nexus-sentinel
🛡️ Nexus Sentinel: The 4 missing pillars of enterprise AI. SCP (Project Context Graph), Zero-Path Firewall (Prolog logic), Cognitive Snapshots, and Universal AI Gateway. Built in Rust &amp; Go. 100% local-first, zero-cloud. The infrastructure Google and Microsoft wish they built.
<div align="center">
  <h1>🛡️ NEXUS SENTINEL</h1>
  <p><strong>The Four Pillars of Sovereign AI Infrastructure.</strong></p>
  
  [![Rust](https://img.shields.io/badge/Core-Rust-000000?style=for-the-badge&logo=rust&logoColor=white)](#)
  [![Go](https://img.shields.io/badge/Gateway-Go-00ADD8?style=for-the-badge&logo=go&logoColor=white)](#)
  [![Prolog](https://img.shields.io/badge/Logic-Prolog-00ff9d?style=for-the-badge)](#)
  [![License](https://img.shields.io/badge/License-MIT-blue?style=for-the-badge)](#)
</div>

---

## 🧬 Overview

**Nexus Sentinel** is a suite of 4 independent, local-first modules designed to solve the fundamental flaws of modern AI agents. Today, AI agents are **blind** (they don't know the project structure), **amnesiac** (they forget context), and **undisciplined** (they execute dangerous actions).

Nexus Sentinel fixes this with a strict, zero-dependency architecture.

**The Rule of Nexus Sentinel:** *If it's not local, deterministic, and auditable, it doesn't exist.*

---

## 🏗️ The Four Modules

### 1. 🌐 Sovereign Context Protocol (SCP)
**The GPS for Agents.**
An agent shouldn't have to read 100,000 lines of code to understand a project. The SCP indexes the project's tree, dependencies, and security rules into a Directed Acyclic Graph (DAG).
- **API:** `GET /context?file=path/to/file` returns direct dependencies, indirect dependencies, and security rules.
- **Language:** Rust.
- **Performance:** Index 10,000 files in < 2 seconds.

### 2. 🛡️ Agent Firewall (Zero-Path)
**The Immunity.**
Enterprises are terrified of AI agents executing `rm -rf /`. This firewall analyzes the agent's intent before execution. If the action violates a security rule, it is blocked at the root (`ZeroPath`).
- **API:** `POST /gate` with `{"action": "execute", "args": ["rm", "-rf", "/"]}` returns `{"allowed": false, "reason": "ZeroPath"}`.
- **Language:** Rust + native Prolog engine.
- **Performance:** < 1 ms evaluation per rule.

### 3. 💾 Cognitive State Snapshot
**The Teleportation of State.**
When a session crashes or you switch machines, you lose all context. This module captures the exact state of the agent (memory, context, intent, current code) and allows it to be restored.
- **CLI:** `snapshot save <file>` and `snapshot load <file>`.
- **Language:** Rust (using `bincode`).
- **Performance:** Save a 1 MB snapshot in < 50 ms.

### 4. 🌉 Sovereign AI Gateway
**The Universal Bridge.**
Enterprises use OpenAI, Anthropic, Gemini, and local models. This gateway exposes a unified API (OpenAI format) and routes requests to the best model based on the task.
- **API:** `POST /v1/chat/completions` (OpenAI format).
- **Language:** Go.
- **Performance:** Added latency < 10 ms, supports 1,000 req/sec.

---

## 🧪 Validation Protocol

For every module, the build process MUST:
1. Compile with `cargo build --release` (or `go build`).
2. Launch the binary and verify the API responds on the specified port.
3. Execute a validation test (e.g., an unauthorized action returns `ZeroPath`).
4. Generate a test report (PASS/FAIL).

---

## 🚀 Quick Start

```bash
git clone https://github.com/Aissamohammedi88/nexus-sentinel.git
cd nexus-sentinel
./build.sh
./test.sh
