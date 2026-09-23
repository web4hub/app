# CUE
 😎 `web4hub/app` can become the core Web4 Super App of the entire ecosystem—not just another Vue app.

# 🚀 Web4Hub App v1.0 — Master Repository Plan

![ABOUT US | CALSOFT](https://images.openai.com/static-rsc-4/cdNwFG3yfyfxHWqz7fOh6DSAf4-Qd7r5UDJPe-FqpBUhl-xcpZgoIZSZ1IXkfqryVpEVCMxudGB9u_ZIjomVr34h9LTcjSdjROwKHJ6SSY3LgEtz_7gebBOli1ANcvcOahwvOY4GGox8zwSng5VhU2boJbuovHJtQ-nG7221xyE?purpose=inline)

![2026 Chatbot Comparison: How AI Is Becoming Workflow Software for Windows | Windows Forum](https://images.openai.com/static-rsc-4/yRoztK6U_lcHQaKRKYES75Ml4iQG1iBR-6aNRBMqT3acKAAQ4PmCSnR3KL2QbucB-CRuHGx6n5G9LRaX9dqd6mWJfoN5LY88x8FE5PIam1EEIP9cOr1IWIpV8d8nhtxwL6qpX8ko5vkiwjTpC3oSkgrGdN1c8jeHOkpqURhra-E?purpose=inline)

![Guardlet Crypto Wallet - Laptop and Mobile Interface](https://images.openai.com/static-rsc-4/0eitwUxj8ezluyrk0ljW5O9b9SjoDmmlVDn76gys3YJtUp4kxsI4V1rRrpmWhebm2vzjyRgGHOgBu6m-KmIbkca0yQgt75LycE4LBeWhwbWoPyFPAFkJ4-QU0QjdsUqLUGzi2NRNiAPhtNseEJIseBQvC7JzLSjUS8HQJ8enVz0?purpose=inline)

6

Repository: `github.com/web4hub/app`

## What we'll build

| Layer                | Purpose                                                  |
| -------------------- | -------------------------------------------------------- |
| 🌐 Web4 Core         | Application runtime, routing, state management, plugins. |
| 🤖 AI Layer          | LMLM, GPT-5-mini, KIBS agents, local AI runtime.         |
| 🪪 Web4 ID           | Identity, biometrics, wallet, device sync.               |
| ⛓️ Fadaka Blockchain | Wallet, smart contracts, NFTs, payments.                 |
| ☁️ Aura Cloud        | Files, photos, messages, backups.                        |
| 🧩 Mini Apps SDK     | Discord Embedded Apps, Web4 Mini Apps.                   |
| ⚙️ Infrastructure    | Docker, Kubernetes, GitHub Actions, Bun.                 |

## Repository Architecture

```
app/
├── apps/
│   ├── dashboard/
│   ├── wallet/
│   ├── chat/
│   ├── files/
│   ├── ai-playground/
│   └── settings/
│
├── packages/
│   ├── web4-core/
│   ├── web4-ui/
│   ├── web4-id/
│   ├── web4-auth/
│   ├── web4-wallet/
│   ├── web4-storage/
│   ├── web4-cli/
│   ├── lmlm-sdk/
│   ├── kibs-sdk/
│   └── fadaka-sdk/
│
├── services/
│   ├── api/
│   ├── auth/
│   ├── ai/
│   ├── blockchain/
│   ├── sync/
│   └── notifications/
│
├── schemas/
│   ├── template.cue
│   ├── ai.cue
│   ├── wallet.cue
│   └── deployment.cue
│
├── docs/
├── docker/
├── kubernetes/
├── .github/
└── Makefile
```

## Super App UI

![Browse thousands of Dark Mode Mobile App images for design inspiration | Dribbble](https://images.openai.com/static-rsc-4/djYdSDc1TVKqasnWzOe9PztTud3nbhZexBbTXYKPhGEQnKcMVR6-3vxH2zg-uvL-UNpcptUp0u_qTd4oGlh9Y1pf1e90x2L5XjSea47aty0PXn52V80I-W_prV-BB4INwTUxCHaf1vY63w-jctFrR5vsNB-Q9h-3gh-vrBDL7QA?purpose=inline)

![Cryptocurrency Mobile Wallet Interface by Nixtio on Dribbble](https://images.openai.com/static-rsc-4/bIuGrBwN1IfGYaEOQr7Jbkm7WqXN0RfHV0YVhirIi3V_IJ5dRKzNwTPRD1bwnLxUtYA0cWzyE4f9GGbhL6SgMWwSZMAi2yyOdY7uIQRDE3TPHGRFqwU9ZC0fyoDd1dRi5U9nHz4Stj3ZpFrv7T3uXNojcTb6xx7BwjGi3ADv8xY?purpose=inline)

![Nebula AI – Cognitive Assistant Web Interface by Capi Product for Capi Creative on Dribbble](https://images.openai.com/static-rsc-4/69oiX8Sz0ht6pptw2FgMTs7QTdZ5Eg6CpwDz2dHMirjEvFK91CphDErH1-v1ECoNY-mHQoM8DateNaHcpiP6aD-mXKRmEPsf0jVaGN_69O9p-nV1S9OGwm7uQ1l8aqaE67jwZ2frEGaI8dSrK6VEhT3zWZQtFA-eECTOfz0BVVE?purpose=inline)

6

Main navigation:

* Dashboard

  AI summary, wallet balance, recent activity, notifications.

* Wallet

  Fadaka coin, NFTs, transfers, Web4 Pay.

* AI

  LMLM Chat, GPT-5-mini, KIBS Agent Studio.

* Cloud

  Files, photos, documents, backups.

* Identity

  Web4 ID, Face ID, fingerprint, devices.

* Developer

  API Keys, Playground, Logs, CLI.

## Tech Stack

| Technology     | Choice                     |
| -------------- | -------------------------- |
| Frontend       | Vue 3 + Vite + TypeScript  |
| Backend        | Bun + Elysia               |
| Database       | PostgreSQL + Drizzle ORM   |
| Cache          | Redis                      |
| Storage        | Web4 Drive / S3            |
| Authentication | Web4 ID + JWT + OAuth      |
| Blockchain     | Fadaka SDK                 |
| AI Runtime     | LMLM + KIBS + GPT Provider |

## Built-in AI Providers

![The Vertical AI - AI-Native Enterprise OS for Conversations](https://images.openai.com/static-rsc-4/_ApatfrxKl-f8cttl43W2OeHxQn_eGjZlvp_nJqAn1noePembSrW93DuLHc120Vy9UkAKV9eHc8kXCWRrsft1NuzjDYREUCOLk-wwreXz2CzKARpee6p8XZkY6Zn-91GyoIAS40oq91dSp5r3Hdc1vwFVbh0Zw_fvPr1EDc3a8k?purpose=inline)

![Soporte TIC | Servicios de Redes y Chatbots IA](https://images.openai.com/static-rsc-4/CijQICjZXi_LSYAJV3PPB0v5whAmaRWM7fME5Nda-Bx-xn-_jPf9iQMvILO8Zdx_QiMl58wWBDOonTTEW7p7rlvcNZYKJTSW9FwVYUZTUWpJUyaR-KruxYJdXF_pGksmliWOqyE7nxG93-7hdX37KgmxmH5FRIlcFXdMJGhylHM?purpose=inline)

![AI Agents: The Trade-Off Between Extreme Productivity and Total Risk | by Wesley Tomé | Feb, 2026 | Medium](https://images.openai.com/static-rsc-4/5W3vPDXV5SJRlQuSM5jtaTyuY4DkpeP262aMkX9SRpTQdokrSEODQk5_yLl1a89EQsuu8RRxgUxktr2GBCpuHMhLMl4Fr-eJFtbvkkqog0hrh531XtZx9RqZP22ydNIs36Kh1hXSIBcpCGBCf3JuwKGyDpcO-1KFybOsM3-1dkY?purpose=inline)

6

YAML

```
providers:
  - LMLM
  - GPT-5-mini
  - KIBS
  - Local Ollama
  - OpenAI Compatible API
```

Every provider implements one interface:

TypeScript

```
interface AIProvider {
  chat()
  embeddings()
  completion()
  speech()
  vision()
}
```

## Web4 ID

![Rishit Saxena | ML Researcher & AI Engineer](https://images.openai.com/static-rsc-4/O8GvkOwGCKlBk-KFwgxSLayiEwJyux82KzFJWUj4Y-TlbfCQ__jI2CDLS8da_LsjUofEWF9kW1FMhN9FCQ5oAhVaN-mUEDlVtUq2SLxjSjBIE4DeUWO9WQ9qmOtzP9aVcj-T6vk1n-YyNbqGDMXkmi14LVpA5_Tjb_zJ9DKG1fg?purpose=inline)

![Задачи биометрии](https://images.openai.com/static-rsc-4/KTIqpFINCT6RB28NiZIWIK_rMwj4mSQ9R7ZqxACvwZRkXuHJ0lGcjiwrHX9LXyeROOdNj99X3hhwtKTtjcAdvCVA-oIcUhx_DBTHILPtS3HnWvadb3n9GcoVAZG_hDU-onQ8hnA5XH0zgwAN17QJIhf1VxLPJh8aoDqKx5ogbgw?purpose=inline)

![Identity Verification Methods in Banking: Ensuring Security in the Digital Age](https://images.openai.com/static-rsc-4/7O-zkRNJm_5sDCZpg7Z_9CvnnPcGV3s09KI8KwZz_YP3MR0HcljkHfV9xkByqHjBr7UOFUUl_BxzpR7WXZvLx5xeosSvQ8Glj6WR2ieo52MkiXo_ejqMAo7pwgEqGqqzMCuyjY5ZG2mfboUp94CG1DYqXLH-bq4qsdJCxRi_pZo?purpose=inline)

6

Features:

* Face authentication.

* Fingerprint authentication.

* Device pairing.

* Recovery keys.

* Passkeys.

* Wallet binding.

* Cloud sync.

## Fadaka Wallet

![Crypto Wallet App UI — Dark Mode Experience by Hira on Dribbble](https://images.openai.com/static-rsc-4/k0PdnfEPpmQDhZrPoCyhZqhXjHxds1RagdTDoWbLTVHKQi8kqj9_l9eQrQ_-6oXq8eP-YT1Mie87qXGfIACMD-_BuPySlajGHawiHxUIupy-Th2Bw1L8rPFKO5HhG2DEi_bqYwov2aE5cH_17kFbhVoSyAR3QSAUCmCVGyE-9Xc?purpose=inline)

![Bitcoin Transaction: f349d70fcc193db1a682cc28f90cb1038bd7c2c745d597f168c43d301ce6d358](https://images.openai.com/static-rsc-4/RVU2hWuxWRjxXO5nvg7lEu9CGTh7Ct4fjrwODnCJmLYmR9g4VH_mCWl4lX2T2mCfqmiA0Cmm8ZbDFUdOiQpZ26yMKuvNeuVesN2_jSqGoUt7zwL8JIFRsTDI-B194IqJ5Z-LmblPSbf2POIlM7VI3_pHhhFBP6iC0DMgUgvSKq4?purpose=inline)

![Coinbox — Crypto Wallet App Design :: Behance](https://images.openai.com/static-rsc-4/pYP0R4yvBsMNk74fQx6bFJ0y1fX8XK2XVw_3Y_zh1KaDxwFBPx8QnlWvDamQrb_4gzCcswjXLe32SP7nlC-mbO9rop2YOGBfZluvSQyA3RuHgcMJYqZ2aKt-ehudgmoeXiWjsPWYh2QyT8VCMX61_KUNxny7N_HS9aNJ9EuM-_A?purpose=inline)

5

Modules:

```
wallet/
├── accounts/
├── assets/
├── staking/
├── nft/
├── transactions/
├── contacts/
└── payments/
```

Supports:

* QR payments.

* Username payments (`@kubulee`).

* Multi-chain bridge.

## AI Playground

![Integrate Hyperstack LLM API with OpenCode for Smarter AI Applications](https://images.openai.com/static-rsc-4/WYSZ0PQb8Jn5Mma7Fd06MT_7isSASCYcIu6M3rpO0CZ7rd5jMFurn7Ru_owV6nfS6Kjrd4jnATkovtS78zfOQK4RyidbDCvuZAqUprBLdEF2cgQyZbn6O0J0yPjXaqmDnzfJdhj4VPk1tkJQZQuqeK8i97yGUAv0DflN5QvUNEU?purpose=inline)

![](https://images.openai.com/static-rsc-4/bwARUJ6a_QYImnEHBtm64cI1gnL7fR6v8ZLvNa756KaF-TY3NbkLjwOd4vPymCdzia6J4eIjwfGlDXeX21kyYsXDE3uIdAU-yjQzsCjOvOqj2Era9qGyn-ECXkx1TjkCVz5e3oIbGSPOOhX_QfeU86B6xtUOF-RV9aqoqFwTayg?purpose=inline)

![Tidalflow helps any software play nice with ChatGPT and other LLM ecosystems | TechCrunch | Sebastian Jorna | 140 comments](https://images.openai.com/static-rsc-4/ORk5oqnj3sGQV_f20BJ0P5prYYF9pNxeiUWDiI7soVAhQp-G2qIPDxE5Lkn9ZrmWZwm6XbeByKuNjhVb3HRb9Ywfo9iuJoicc4OmXd40sSLa0opdfpV8Elk6j0TWuZ1SCwePQfrb47V3rpC7myYq6HLKdS9vdLV6dr4zHE5KeEc?purpose=inline)

5

Capabilities:

* Prompt Builder.

* Model Switcher.

* Memory Inspector.

* Tool Calling.

* Agent Builder.

* Vision.

* Voice.

## Cloud Drive

![SaaS - Cloud File management Dashboard :: Behance](https://images.openai.com/static-rsc-4/0DPRYBHFo-7mXWOgpJCuxYC4SO13zBp-4Mtad81_1ar7RWgYxLWpcG4SF8ee-1RTnPispFN8TBsx66Nr6MJ5p0QtoLt3-yMUJ-aKt_0-O_2s36MUC9Knk1YyN4JA3NTTcJMiFe0xHAHB9QGkIJK87OHiElEaNAiyQyv4AOj3jac?purpose=inline)

![pCloud Photos | Galería inteligente, editor de fotos y vista de mapa](https://images.openai.com/static-rsc-4/dsrMMLK8UWTaKbYNhRDA9jou0EiKKv0QoqzH4t264gtpywe8DNQt4SOkFOrlvGG92OsLmL51dWHrBgbAu8zmuvr4IrxHLR0Zi3wUu6okJmo3ZMwJFVJdwxkYh-vUEBZ6X1vXgAc5o3FYFzEeY-cl3mqn0LEJUlQxYsFML-Ptyx8?purpose=inline)

![Browse thousands of Ai File images for design inspiration | Dribbble](https://images.openai.com/static-rsc-4/urRFsWVPiIs8NGyonlCcedyoTfh7IzfSyWrm7GApkRAWNqzEvZS2ybsR8x1NdBG0TLKA63GN6kRnDOjKCTElynF4IpQKD171XSr0hJKhaZ8S7pfxQD2SYXUup18YKsIwIYqTlrZR3nFWbXhF4gny7fdGKryopLpvvkjiHKdZt0w?purpose=inline)

7

Supports:

* Photos.

* Videos.

* PDFs.

* Music.

* Notes.

* Contacts.

* Backups.

## GitHub Actions

```
.github/workflows/

build.yml
test.yml
release.yml
docker.yml
cue.yml
security.yml
publish.yml
```

Pipelines include:

* Bun build.

* Vue tests.

* CUE validation.

* Docker image publishing.

* Release automation.

## Docker + Kubernetes

![🔥 Keys to Cloud Native Application Development](https://images.openai.com/static-rsc-4/KL4Ao09g3qPjWDrD1zLz9XOep7XmcTF4mjgluMxcjsEd-soE7Ks8ACyXChCr_123TFwFvcT6zum90D6JHudPt75SayDmmKDgLLYSSJQVi_gXeyedS5DBQvNl9Cb194QdbE6wIQJLiDI2mICeLxy-Gi4HBhDTJPweA-gqIJf4tEg?purpose=inline)

![Running Kubernetes on Scaleway bare-metal with Terraform and kubeadm | by Stefan Prodan | Medium](https://images.openai.com/static-rsc-4/W8J9sO5eRD8rNNoqE-XEwxujEQTq0P_44zC0-ohtto_6_ESUwyCgiPIRb9T6E0KcycK6_J21t18f6TKJRpUoajXXGmfDoChAt8LNvH9WNT_CZsZe_KQcz1LgHWpcCilFvQVrVt8u12pa4Cdxc5yQvyRwnbClOhDatQmeh086heY?purpose=inline)

![Giant Swarm - The Curated Platform Engineering Stack](https://images.openai.com/static-rsc-4/XXVbEriHiJNkiu7aj-iwMd_G4ToOu1WFnCC1hnWrGyftAH8fVbhAsBWB_Lpcw57twpJY6Uu86bmZRKM8TqjNCOqjUNaudxjpZFeUSMmSZISvTHLjeA1EbsFGGgIPUp3n6WyI3vWkjF742cY4amERNGCbpQHGheKv428QBlYz1pQ?purpose=inline)

5

Generated automatically from CUE:

Bash

```
make docker
make kubernetes
make deploy
```

## Design System (`web4-ui`)

![Glassmorphism dashboard Vectors - Download Free High-Quality Vectors | Magnific (formerly Freepik)](https://images.openai.com/static-rsc-4/U3TU9d5MXHsCmHWpA4JZwsChBZSoDsLbug1WmodEL2orXTtyEV7f9JBSCmutWrY-yJ7W-SpXFz4BYerL9_8HvSBRARUAZJ9HIwckx4pr7u-RHedmHSUGF2vHvbgvkFo8oeC55qUAQMYVMbshalUY-paUDYVVv6Z6ffyu4bjnsgU?purpose=inline)

![winches (@wincheshe) on X](https://images.openai.com/static-rsc-4/4XAsHa-AvP7WRerXj3W6aoiprVxSLVaN6h9_2yIir8dI4GNIus6aZvy4cwrJNpNGAdRtjARV0UkGVr8OWWVhBFYFNTSHBp5ROoOJfour-8sk981oBZz1zPZZEncxWp3KCS-ji68YgiEuws-GGDAX2Kt9WIb-CW0Bb2Pz4sI-KGI?purpose=inline)

![User Interface Glassmorphism Dark Blue Vector Art & Graphics | freevector.com](https://images.openai.com/static-rsc-4/fVzGt8xVR9oqOpSfTF_MnoygERNhAraS3pqAMcORlMpTKbQlbzaedo0CQ7xXdY-R4VDQn5gJclix5Pii6qEIrgiHkQJ_ygU-7qa6XON0RL7qCNHOu7ba6dTKcwpbGtwdMewkYgleoeFV7LZQCjbUEZ3xzsjesXf6vTnFW5ozqq8?purpose=inline)

6

Components include:

* GlassCard

* AuraButton

* AuraInput

* AIChatBubble

* WalletCard

* Avatar

* NotificationCenter

* Charts

* QR Scanner

## Roadmap (10 Releases)

| Version | Focus                   |
| ------- | ----------------------- |
| v1.0    | Web4 Core + Dashboard   |
| v1.1    | Web4 ID                 |
| v1.2    | LMLM AI Runtime         |
| v1.3    | KIBS Multi-Agent Studio |
| v1.4    | Fadaka Wallet           |
| v1.5    | Cloud Drive             |
| v1.6    | Mini Apps SDK           |
| v1.7    | Developer Playground    |
| v1.8    | Marketplace             |
| v2.0    | Distributed Web4 OS     |

## This will be a monorepo

The repository will use:

* pnpm workspaces

* Bun runtime

* TurboRepo for builds and caching

* CUE as the configuration engine

* TypeScript across packages

That makes `web4hub/app` the central application framework that every other Web4Hub repository (OmniSkel-AI, LMLM, KIBS, Qubuhub, Fadaka, Aura Cloud, etc.) can plug into.
