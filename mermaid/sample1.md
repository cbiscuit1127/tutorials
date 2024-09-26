```mermaid
erDiagram
    ENTITY1 {
        INT id PK
        VARCHAR name
    }

    ENTITY2 {
        INT id PK
        VARCHAR description
        INT entity1_id FK
    }

    ENTITY1 ||--o{ ENTITY2 : "has"