# GitHub Readme Stats Docker Image

This project provides Docker images of the [github-readme-stats](https://github.com/anuraghazra/github-readme-stats) project for self-hosting purposes.

## Overview

The GitHub Readme Stats project allows you to generate stats cards for your GitHub profile README. This repository provides pre-built Docker images that you can use to self-host the application locally or on your own infrastructure.

## Docker Images

Docker images are automatically built and published to the GitHub Container Registry (GHCR) on a daily schedule (using the latest commits from upstream master branch).

### Image Tags

- `latest`: Points to the most recent image built from the upstream master branch
- `<commit-sha>`: Specific commit SHA tag

## Usage

### Running the Container

```bash
docker run -it -p 9000:9000 ghcr.io/fim-sh/github-readme-stats-docker:latest
```

### Environment Variables

All customization is done using envirment variables. For more information check the [upstream repository](https://github.com/anuraghazra/github-readme-stats), however, you probably want to configure these variables:
<table>
  <thead>
    <tr>
      <th>Name</th>
      <th>Description</th>
      <th>Supported values</th>
    </tr>
  </thead>
  <tbody>
      <tr>
      <td><code>PAT_1</code></td>
      <td>GitHub's Personal Access Token. If you like to only use this instance to display public data, it doesn't need any additional permissions.</td>
      <td></td>
    </tr>
    <tr>
      <td><code>CACHE_SECONDS</code></td>
      <td>Sets the cache duration in seconds for the generated cards. This variable takes precedence over the default cache timings for the public instance. If this variable is not set, the default cache duration is 24 hours (86,400 seconds).</td>
      <td>Any positive integer or <code>0</code> to disable caching</td>
    </tr>
    <tr>
      <td><code>WHITELIST</code></td>
      <td>A comma-separated list of GitHub usernames that are allowed to access your instance. If this variable is not set, all usernames are allowed.</td>
      <td>Comma-separated GitHub usernames</td>
    </tr>
    <tr>
      <td><code>GIST_WHITELIST</code></td>
      <td>A comma-separated list of GitHub Gist IDs that are allowed to be accessed on your instance. If this variable is not set, all Gist IDs are allowed.</td>
      <td>Comma-separated GitHub Gist IDs</td>
    </tr>
    <tr>
      <td><code>EXCLUDE_REPO</code></td>
      <td>A comma-separated list of repositories that will be excluded from stats and top languages cards on your instance. This allows repository exclusion without exposing repository names in public URLs. This enhances privacy for self-hosted instances that include private repositories in stats cards.</td>
      <td>Comma-separated repository names</td>
    </tr>
    <tr>
      <td><code>FETCH_MULTI_PAGE_STARS</code></td>
      <td>Enables fetching all starred repositories for accurate star counts, especially for users with more than 100 repositories. This may increase response times and API points usage, so it is disabled on the public instance.</td>
      <td><code>true</code> or <code>false</code></td>
    </tr>
  </tbody>
</table>


## License

The github-readme-stats is licensed under the MIT License. For more information, see the original repository at https://github.com/anuraghazra/github-readme-stats.