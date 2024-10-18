ARG JDK_VERSION=19.0.2-al2

FROM amazoncorretto:${JDK_VERSION}

ENV DD_AGENT_VERSION=1.27.0

RUN yum update -y \
    && curl -sSLo dd-java-agent.jar "https://repo1.maven.org/maven2/com/datadoghq/dd-java-agent/${DD_AGENT_VERSION}/dd-java-agent-${DD_AGENT_VERSION}.jar"
