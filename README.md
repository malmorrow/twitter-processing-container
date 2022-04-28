# twitter-processing-container

The goal is to intercept some tweets using GKE containers, and stream them to a pipeline:
![Twitter processing architecture](architecture-1.png "Twitter processing architecture")

To help keep the costs down, I've figured out how to use Deployment Manager to deploy and destroy the cluster on demand.

Next steps:
* Create the container image that streams desired tweets from Twitter to Pub/Sub.
* Integrate the [Pub/Sub emulator](https://medium.com/google-cloud/things-i-wish-i-knew-about-pub-sub-part-3-b8947b49224b) for testing reasons.
* Provide alternative configurations for:
  * Local machine testing using emulator.
  * GKE integration on GCP.
* Deploy container into GKE.
* Create push subscription onto Dataflow.
* Format the tweets in Dataflow to get something interesting out of them.
* Write the results into BigQuery.

# Pub/Sub emulator

`scripts/start-pubsub-emulator.sh` will run the emulator from the command line in a container. I have yet to figure out how to get it to run in background (`-d` flag?) and then communicate with it. Also, how to set up topics, publishers and subscribers.

Another approach to the emulator is to [create a docker image](https://hub.docker.com/r/markkrijgsman/pubsub) that creates a container that runs it. This is set up in `src/test/resources/docker`.