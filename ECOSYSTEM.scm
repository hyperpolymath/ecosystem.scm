;; SPDX-License-Identifier: MIT
;; SPDX-FileCopyrightText: 2025 Jonathan D.A. Jewell
;; ECOSYSTEM.scm - Ecosystem Description Format Specification
;; Version: 1.0.0-draft
;; Canonical Reference Implementation
;; Family: SCM Format Family

(ecosystem
  (version "1.0.0-draft")
  (name "ECOSYSTEM.scm")
  (type "specification")
  (purpose "Declarative format for describing software project ecosystems and inter-project relationships")

  ;; =========================================================================
  ;; SCM FORMAT FAMILY MEMBERSHIP
  ;; =========================================================================

  (family
    (name "SCM Format Family")
    (role "family-member")
    (family-spec "spec/family/SCM-FAMILY.adoc")
    (shared-grammar "spec/family/scm-core.abnf")
    (siblings
      (sibling
        (name "STATE.scm")
        (domain "session-state")
        (media-type "application/vnd.state+scm"))
      (sibling
        (name "ECOSYSTEM.scm")
        (domain "project-context")
        (media-type "application/vnd.ecosystem+scm"))))

  ;; =========================================================================
  ;; ECOSYSTEM POSITION
  ;; =========================================================================

  (position-in-ecosystem
    "Part of the SCM Format Family - a collection of declarative S-expression
     formats for capturing software development context.

     ECOSYSTEM.scm defines the PROJECT CONTEXT layer:
     - What a project IS and IS NOT
     - Where it fits in the broader ecosystem
     - Relationships to other projects
     - Integration boundaries and intentions

     Complements STATE.scm which handles SESSION STATE:
     - Conversation context and preferences
     - Project progress and velocity
     - Decision queues and action items

     Together they provide complete context for AI-assisted development.")

  ;; =========================================================================
  ;; RELATED PROJECTS
  ;; =========================================================================

  (related-projects
    ;; Primary sibling
    (project
      (name "STATE.scm")
      (url "https://github.com/hyperpolymath/state.scm")
      (relationship "sibling-standard")
      (description "Stateful Context Tracking Engine for AI Conversation Continuity")
      (differentiation
        "STATE.scm captures TEMPORAL context:
         - Session state, conversation history
         - Project progress tracking
         - Decision queues, velocity metrics

         ECOSYSTEM.scm captures STRUCTURAL context:
         - Project identity and boundaries
         - Inter-project relationships
         - Ecosystem position and integration")
      (integration-notes
        "Use both together for complete context:
         - ECOSYSTEM.scm in repository root (static, versioned with code)
         - STATE.scm for session persistence (dynamic, conversation-specific)

         Cross-reference pattern:
         (state
           (metadata
             (ecosystem-ref \"./ECOSYSTEM.scm\")))"))

    ;; Potential consumers
    (project
      (name "echomesh")
      (url "https://github.com/hyperpolymath/echomesh")
      (relationship "potential-consumer")
      (description "Conversation context preservation across sessions")
      (integration-notes
        "Could use SCM family formats:
         - ECOSYSTEM.scm for project topology
         - STATE.scm for session handoff"))

    ;; Inspirations
    (project
      (name "Schema.org")
      (url "https://schema.org")
      (relationship "inspiration")
      (description "Structured data vocabulary for the web")
      (differentiation
        "Schema.org = Web-focused, JSON-LD/microdata
         SCM Family = Developer-focused, S-expression native"))

    (project
      (name "SPDX")
      (url "https://spdx.dev")
      (relationship "inspiration")
      (description "Software Package Data Exchange - license and component metadata")
      (differentiation
        "SPDX = Supply chain, licensing, SBOM
         ECOSYSTEM.scm = Project relationships, boundaries")))

  ;; =========================================================================
  ;; WHAT THIS IS / IS NOT
  ;; =========================================================================

  (what-this-is
    "A declarative S-expression format for describing:

     IDENTITY
     - Project name, type, and purpose
     - Version and authorship

     RELATIONSHIPS
     - Related projects with typed relationships
     - Consumer/producer/sibling/alternative/etc.
     - Differentiation statements

     BOUNDARIES
     - What this project IS (capabilities, scope)
     - What this project IS NOT (explicit non-goals)
     - Integration intentions

     DESIGN PRINCIPLES
     - Human-readable and version-control friendly
     - Self-documenting through explicit relationship types
     - Minimal required fields, rich optional metadata
     - S-expression syntax for tooling compatibility
     - Part of unified SCM Format Family")

  (what-this-is-not
    "- NOT a package manifest (see Cargo.toml, package.json)
     - NOT a build configuration (see justfile, Makefile)
     - NOT dependency lock file (see Cargo.lock, package-lock.json)
     - NOT API documentation (see rustdoc, typedoc)
     - NOT runtime configuration (see .env, config.toml)
     - NOT session state (see STATE.scm for that)
     - NOT CI/CD configuration (see .github/workflows)")

  ;; =========================================================================
  ;; SPECIFICATION METADATA
  ;; =========================================================================

  (specification
    (format "S-expression (symbolic expression)")
    (encoding "UTF-8")
    (file-extension ".scm")
    (media-type "application/vnd.ecosystem+scm")
    (grammar-definition "spec/ecosystem.abnf")
    (shared-grammar "spec/family/scm-core.abnf")
    (json-schema "spec/ecosystem.schema.json")
    (internet-draft "spec/draft/draft-jewell-ecosystem-scm-00.txt")
    (family-spec "spec/family/SCM-FAMILY.adoc"))

  ;; =========================================================================
  ;; STANDARDS & FUTURE
  ;; =========================================================================

  (standards-track
    (body "IETF")
    (type "Informational RFC")
    (status "draft")
    (coordination "Unified with STATE.scm as SCM Format Family")
    (roadmap "STANDARDS-ROADMAP.adoc"))

  (future-integration
    "Standards track progression (coordinated with STATE.scm):
     1. Community review and iteration (current)
     2. Reference implementations (Rust, TypeScript)
     3. IETF Internet-Draft submission (coordinated family)
     4. IANA media type registration (family batch)
     5. Tooling ecosystem development

     Potential future family members:
     - BUILD.scm (declarative build configuration)
     - CONFIG.scm (application configuration)
     - DEPLOY.scm (deployment context)"))
