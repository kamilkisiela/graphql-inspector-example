const { buildSchema } = require('graphql');

const Post = `
  type Post {
    id: ID
    title: String @deprecated(reason: "No more used")
    createdAt: String
    removedAt: String
  }  
`;

const Query = `
  type Query {
    post: Post!
    posts: [Post!]
  }
`;

module.exports = buildSchema(`
  ${Post}
  ${Query}
`);
