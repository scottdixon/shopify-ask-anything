# AI Product Assistant Widget

This project is an AI-powered chat widget that can be embedded on a Shopify storefront product page. It acts as an intelligent assistant that can answer customer questions about the specific product they are currently viewing.

This project was originally forked from Shopify's [shop-chat-agent](https://github.com/Shopify/shop-chat-agent) reference app and has been significantly modified to focus on providing product-specific context and answers.

### Overview

- **What it is**: An embeddable "ask about this product" widget that uses AI to provide instant answers to customer questions.
- **Key features**:
  - Answers questions using the product's title, description, and other merchant-provided details from metafields.
  - Can be customized to understand specific product attributes like specifications, materials, or dimensions.
  - Displays customizable suggested questions, which can be set globally or defined per-product via metafields.
  - Seamlessly integrates into any Shopify theme as a theme app extension.
  - Uses a large language model (LLM) to provide natural, conversational answers.

### Screenshot

![AI Product Assistant Widget embedded on a product page](https://screenshot.click/23-21-aflai-kwmlj.png)

## How It Works

The widget is powered by a backend that communicates with an LLM (Claude by Anthropic). When a user asks a question, the widget sends the question along with the current product's context (description, title, and any custom metafields) to the backend. The backend then constructs a prompt for the LLM, which generates a relevant answer based on the provided information.

This approach ensures that the AI's responses are grounded in the specific details of the product the customer is looking at, providing a more accurate and helpful experience than a general-purpose chatbot.

### Architecture

This app consists of two main components:

1.  **Backend**: A Remix app server that handles communication with the LLM and processes chat messages.
2.  **Chat UI**: A Shopify theme extension that provides the customer-facing chat interface on product pages.

### Tech Stack

- **Framework**: [Remix](https://remix.run/)
- **AI**: [Claude by Anthropic](https://www.anthropic.com/claude)
- **Shopify Integration**: [@shopify/shopify-app-remix](https://www.npmjs.com/package/@shopify/shopify-app-remix)
- **Database**: SQLite (via Prisma) for session storage

## Customization

This repository can be easily customized:

- **Edit the Prompt**: You can change the AI's persona, tone, and instructions by editing the prompts in `app/prompts/prompts.json`.
- **Change the Chat Widget UI**: The widget's appearance can be modified by editing the CSS and Liquid files in `extensions/ask-anything/`.
- **Swap out the LLM**: The backend can be adapted to use a different large language model by modifying the service layer in `app/services/claude.server.js`.

## Deployment

Follow standard Shopify app deployment procedures as outlined in the [Shopify documentation](https://shopify.dev/docs/apps/deployment/web).
