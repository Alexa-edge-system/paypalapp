#!/bin/bash
echo "Running pre-push checks for paypalapp..."

# Example checks
echo "Checking for linting issues..."
npm run lint

echo "Running unit tests..."
npm test

echo "Checking Git status..."
git status

echo "✅ All checks complete!"

