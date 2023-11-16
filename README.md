# Federated Mutual Aid

The idea is to create a Federated Server (like Mastodon) for Mutual Aid Networks.

[This will be a library of things project.](https://librarysocialism.org/)

Each mutual aid network can have a server, and each server can federate with other servers.

Servers can then prompt members of the server to help with requests from other users on the server, or from other servers.

## What will this look like

1. Get an invite from someone you know who is already on the network.
2. Participate on mastadon with the bot (not yet released, hypothetical) following the instructions.
3. You may ask the bot for a thing or service, and it will try to provide it given you have reached a trust threshold. It will reach out to its database and to the network to find someone who can provide it and prompt them to do so, preventing overloading any one person.
4. You may also provide the bot a promise of a thing or service, and it will try to find someone who needs it, and will ask you to provide it when it has. If you fulfill the promise, you will gain trust.
5. If you have requested something of common ownership on the network, and you receive it, you will periodically be asked to return it to the network after an alloted rent timer established in the request. If you do not return it, you will lose trust.

## What are it's primary immediate uses?

1. Medium sized local mutual aid networks in need of inventory management.
2. Libraries of things. Buy nothing groups.
3. Small scale local economies. (cults? amish? commune? whatever. no judgement.)
4. Gig economy, rideshare, etc (coming eventually.)

## FAQ

1. Will I be told what to do? - You will be requested to participate, and will get out of participation what you put into it. You will be able to choose what you do, and how much you do it. You will gain trust as you give, and will be able to take more as you gain trust.
2. Will my time be valued equal to others? - Yes, your time as a quantity will be measured as equal to others. However, the qualitative review will play a part in the relative value of your time. A person in high demand also has high freedom to choose their work, and the network will make it easy to find work that is most worthy of your time.
3. Will I be able to get what I need? - Yes, you will be able to request what you need, and the network will find the best way to get it to you. The goal is to make this seemless, no bidding, no haggling, no competing, no budget, just a request and a delivery.

## Theories

### Valueless Philosophy

1. In order to prevent imposing a "theory of value" so to speak, and thus appealing to many types of systems, we are going to record non fungible, in-kind mass quantities. In essence, simple record keeping of the facts of an entity or transaction and their relationships.
2. Entities and transactions will be qualitatively reviewed as well as quantitatively measured, to handle the subjective and relative natures of value, rather than trying to create a universal and fungable theory of value. This can be toggleable.
3. Entities will be recorded relative to each other via transactions (either realized or unrealized). For example, that way you can track the number of similar entities (perhaps determined via embeddings, a supply so to speak) and quantity*quality of unrealized transactions those entities are involved in (their demand so to speak). This information can factor into allocation.
4. The server host can use these mechanisms to write heuristics to determine the distribution of resources. For example, manual price setting, first come first serve, labor time, I suppose even USD exchange value if they are boring. This prevents the mechanics of the technology from imposing an ideology, but the servers themselves will certainly be ideological.

This is more similar to a gift economy, but done on a social media scale.

How will this scale? With data analytics of course! We will be able to use transparent data analytics to use the facts-of-the-matter to determine distribution of resources, mostly via human input, rather than trying to create a theory of value.

For example by showing the provider the facts of the matter, they are able to make a best decision on how to distribute their resource. By incentivising them with good will and participation, they are likely to make the best decision for their network.

### Commodity Types

We will not be using commodity, service, etc to distinguish categories. We will be dividing things into "entities" (stuff of mass, including time), "transactions" (edges), and "users". A service might be a transaction of an entity of labor time between users. A comodity trade would be two transactions of moving two entities of mass between two users. A gift would be a transaction of an entity of mass from one user to another. Rent (say of a spare bedroom) would be a transaction of an entity of mass with a quantity of time associated, etc. All entities will also contain an optional (but highly encouraged) location, for the purpose of minimizing transportation costs, and tracking usufruct entities owned in common, and also in the future handling gig economy type work, as well as for an emphasis on green living and local economies.

### Trust

Trust is going to be very much vibes. Server moderators will have control of this metric more than any. Think Discourse. Removing the human element from the distribution of resources is one of many cardinal sins of modern economics.

Trust would, in general, be gained or lost by the following.

Gain:
1. Providing a thing or service to someone who needs it.
2. Returning a thing or service to the network when it is no longer needed.
3. Getting good reviews from people you have provided things or services to.
4. Simply being active.

Loss:
1. Not returning a thing or service to the network when its contract expires.
2. Breaking a moderation rule.

I don't believe overconsuption will be a problem. The bot can simply rate limit the priority of your requests based on your trust score. If theres plenty of supply this will still be fast. If theres not enough supply, maybe you should contribute that supply.

### Consumables

Basically the same as any entity, but definitely TBD for any special handling.

### Social Media

We will learn from past social media in a few ways:

1. Trust will be established by the trust in the server, which will include moderation, and invitation. We will not be using crypto, as crypto does not enhance either trust or security, only complexity, obfuscation, and a thousand other problems.
2. Invitation will always be peer to peer, so we can regulate supply/demand on the servers and establish networks of trust (to prevent bot attacks). Banning an individual should be able to easily ban their entire tree of invitees, who could then re-add themselves with another invite without data-loss (data is never deleted automatically).
3. Qualitative review, as far as it is measured in a fungible way, will be done soley through positive feedback (upvote analogues). This is to prevent toxicity and brigading. Moderation is sufficient to prevent bad actors from being able to participate in the network.
4. Things and services will be mediated through the bot rather than directly accessed by the user. This will prevent brigading and burnout, and "social media culture".

## AI

All AI activities will be local-hostable on small-scale and "green" hardware. Probably at most an embedding LLM and an instruct LLM, as well as data processing on the scale of XGBoost or those provided by sklearn. At the same time, all elements of this app are designed to be AI-first. The AI philosophy will be trustable, transparent, and made to provide modern convienience and more complicated economic decision making easier but also ethically.