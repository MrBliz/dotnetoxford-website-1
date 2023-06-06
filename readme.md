This repository is for the http://www.dotnetoxford.com website. It's built using [Statiq](https://www.statiq.dev), which is a static content generation tool.

If you spot any error in the content, please feel free to either create an issue, or a PR with your suggested changes.

### Running locally

Before running locally, you'll need [dotnet 7 installed](https://dotnet.microsoft.com/en-us/download/dotnet/7.0). 

Once dotnet is installed, run the `go.ps1` script, which will build and run the website in both _preview_ and _watch_ mode, allowing you to make changes to the files in the `input` directory, and your browser will automatically live-update when you save those changes.

## Caveats. 

The Clean Blog Theme uses SASS, and [as of yet](https://github.com/statiqdev/Statiq.Framework/issues/232) the Sass Compiler in Statiq will not run on ARM64 architecture
