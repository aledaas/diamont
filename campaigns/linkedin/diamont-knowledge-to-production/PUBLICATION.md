# Public publishing model

## Native LinkedIn index

The recommended public container is a LinkedIn newsletter:

> **Knowledge → Production**

Proposed description:

> Architecture, reusable engineering knowledge, fintech platforms, and AI-assisted production systems. A practical record of how DIAMONT, MINA, Portfolio, Mission Control, and Runner turn intent into traceable software.

LinkedIn setup:

- Title: `Knowledge → Production`
- Frequency: `Weekly`
- Logo: [`assets/newsletter/knowledge-to-production-logo-300.png`](assets/newsletter/knowledge-to-production-logo-300.png)
- Description for the LinkedIn field:

> Architecture, reusable knowledge, fintech platforms and AI-assisted production—from intent to traceable software.

Each long-form article becomes a newsletter edition. The newsletter page provides the native LinkedIn index and subscription surface. A normal feed post distributes each edition.

```text
Distribution post
    ↓
LinkedIn newsletter edition
    ↓
DIAMONT landing
    ↓
Contact
```

## Roles of each destination

- **Newsletter page:** public editorial index and subscription.
- **Newsletter edition/article:** develop one idea and link to related editions.
- **DIAMONT landing:** explain the system and convert qualified interest into contact.
- **GitHub:** optional technical evidence; never the primary campaign CTA.

## Required navigation in every edition

At the bottom of each published edition include:

```text
Knowledge → Production — Edition NN

← Previous: [PREVIOUS_TITLE](PREVIOUS_PUBLICATION_URL)
Series index: [Knowledge → Production](NEWSLETTER_URL)
Next: [NEXT_TITLE](NEXT_PUBLICATION_URL) →

Explore DIAMONT: [LANDING_UTM_URL]
```

Rules:

- Omit `Previous` in edition 01.
- If the next edition is not yet published, use: `Next edition: [title] — follow the newsletter to receive it.`
- After publishing a new edition, edit the preceding edition to replace the anticipation text with the real URL.
- Do not invent `NEWSLETTER_URL` or publication URLs. Persist them only after LinkedIn creates them.

## First publication sequence

1. Create the LinkedIn newsletter `Knowledge → Production` with English as its editorial language.
2. Publish article 01 as edition 01.
3. Persist the newsletter and edition URLs in `status.yaml`.
4. Replace `[PUBLICATION_URL]` in `distribution.en.md` and publish the feed post.
5. Observe reception before publishing edition 02.
6. Publish edition 02 and add reciprocal navigation.
