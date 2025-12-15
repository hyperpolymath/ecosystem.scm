;; SPDX-License-Identifier: MIT
;; SPDX-FileCopyrightText: 2025 Jonathan D.A. Jewell
;; ECOSYSTEM.scm - Ecosystem Description Format Specification
;; Version: 1.0.0-draft
;; Canonical Reference Implementation

(ecosystem
  (version "1.0.0-draft")
  (name "ECOSYSTEM.scm")
  (type "specification")
  (purpose "Declarative format for describing software project ecosystems and inter-project relationships")

  (position-in-ecosystem
    "This is the SPECIFICATION layer - defines the format itself.
     Tool implementations consume this format to understand project relationships.
     Enables automated dependency mapping, documentation generation, and ecosystem visualization.")

  (related-projects
    (project
      (name "STATE.scm")
      (url "https://github.com/hyperpolymath/state.scm")
      (relationship "sibling-standard")
      (description "Stateful Context Tracking Engine for AI Conversation Continuity")
      (differentiation
        "STATE.scm = Conversation/session persistence format
         ECOSYSTEM.scm = Project relationship and context format"))

    (project
      (name "echomesh")
      (url "https://github.com/hyperpolymath/echomesh")
      (relationship "potential-consumer")
      (description "Conversation context preservation across sessions")
      (integration-notes
        "Could use ECOSYSTEM.scm to declare project relationships
         and STATE.scm for conversation persistence"))

    (project
      (name "Schema.org")
      (url "https://schema.org")
      (relationship "inspiration")
      (description "Structured data vocabulary for the web")
      (differentiation
        "Schema.org = Web-focused, JSON-LD/microdata
         ECOSYSTEM.scm = Developer-focused, S-expression native")))

  (what-this-is
    "A declarative S-expression format for describing:
     - Project identity (name, type, purpose)
     - Ecosystem position and relationships
     - Related projects with typed relationships
     - Explicit boundaries (what-this-is / what-this-is-not)
     - Integration intentions and differentiation

     Design principles:
     - Human-readable and version-control friendly
     - Self-documenting through explicit relationship types
     - Minimal required fields, rich optional metadata
     - S-expression syntax for tooling compatibility")

  (what-this-is-not
    "- NOT a package manifest (see Cargo.toml, package.json)
     - NOT a build configuration (see justfile, Makefile)
     - NOT dependency lock file (see Cargo.lock, package-lock.json)
     - NOT API documentation (see rustdoc, typedoc)
     - NOT runtime configuration (see .env, config.toml)")

  (specification
    (format "S-expression (symbolic expression)")
    (encoding "UTF-8")
    (file-extension ".scm")
    (media-type "application/vnd.ecosystem+scm")
    (grammar-definition "spec/ecosystem.abnf")
    (json-schema "spec/ecosystem.schema.json"))

  (future-integration
    "Standards track progression:
     1. Community review and iteration (current)
     2. IETF Internet-Draft submission
     3. IANA media type registration
     4. Tooling ecosystem development"))
