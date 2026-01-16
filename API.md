
/** This is the contract section of the API 
 * Think of this as the ethical contract before the code starts
 * This endpoint does NOT rank users, compute desireability, 
 * or expose engagement-based metrics. 

 * Invariant: responses must be symmetric for both users. 

 * Purpose:
 *  Will determine whether two users are eligible for 
 *  an introduction based on mutually stated preferences
 *
 *   Ethical Boundaries: No numeric lists to rank users
 *
 *  Can determine if two users can be introduced to each other
 *   based on a mutual preference. 
 *
 *   Contract: Response is stored with a boolean + explanatory tags. 
 *
 *   Ethical Boundary:
 *   No read receipts, typing indicators, or delivery metadata
 *   are exposed to either participant.

 * Before any endpoints, these are the non-negotiable rules of this universe
 *
 * No global scores
 *
 * No ranking people
 *
 * No popularity/engagement metrics
 *
 * No passive surveillance signals
 *
 * Interactions are symmetric and consented

 * Let's create an Identity & Profile API
*/

// GET /users/{id}
// Returns a public profile view

// This app is explicitly excluding education ranks
// Excluding exact I.Q. proxies

// There are no last-active timestamps. 
// No engagement stats. 

// POST /match/check
// This is how we check if two users are eligible to be introduced. 

{
    "user_a_id": "246",
    "user_b_id": "135"
}

// Output

{
    "eligible": true, 
    "shared_context": [
        "prefers deep conversation",
        "looking for a similar communication pace"
    ]
}

// POST /users
// Will create a user with minimal, self-declared profile
// Location is coarse-grained

{
    "display_name": "Sadie",
    "age_range": "30-35",
    "location_region": "Boston",
    "bio": "Interested in systems design, books, and app development.",
    "cognitive_preferences": {
        "conversation_depth": "deep",
        "communication_pace": "async",
        "disagreement_style": "curious"
    }
}

// POST /introductions

{
    "from_user_id": "123",
    "to_user_id": "456",
    "opening_prompt": "What new inventions have you seen."
}

// POST /introductions/{id}/accept
// Accept introductions from users

{
    "conversation_id": "567",
    "expires_at": "2026-04-01T00:00:00Z"
}

// The conversations will expire by default "so they aren't 
// just left hanging

// POST /conversations{id}/messages

{
    "sender_id": 123,
    "content": ""I’ve been thinking about how systems fail quietly long before they break loudly."
}

// What are the guard rails?
// Rate-limited per user
// No "seen at" metadata to prevent drama

// Let's end a conversation gracefully

// POST /conversations/{id}/close

{
    "status": "closed",
    "reason": "user_initiated"
}

// The algorithm does not punish

// There is a Minimal Moderation API
// No shadow reputation scoring

{
    "conversation_id": "567",
    "report_type": "boundary_violation",
    "notes": "Repeatedly asked this user to not talk about workplace drama"
}

// GET /metrics/system_health
// This data is restricted to the founder. 

{
    "active_conversations_7d": 123,
    "intro_accept_rate": 0.65,
    "reports_7d" : 4
}

// This is not Tinder with pretensions
