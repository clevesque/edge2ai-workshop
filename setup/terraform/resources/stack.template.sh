#!/usr/bin/env bash

CM_SERVICES=BASE,ZOOKEEPER,HDFS,YARN,HIVE,HUE,IMPALA,KAFKA,KUDU,NIFI,OOZIE,SCHEMAREGISTRY,SPARK_ON_YARN,SMM,CDSW,FLINK,RANGER,SOLR

#####  Java Package
JAVA_PACKAGE_NAME=java-1.8.0-openjdk-devel

#####  CM
CM_VERSION=6.3.1
CM_BASE_URL=https://archive.cloudera.com
CM_MAJOR_VERSION=${CM_VERSION%%.*}
CM_REPO_FILE_URL=${CM_BASE_URL}/cm${CM_MAJOR_VERSION}/${CM_VERSION}/redhat7/yum/cloudera-manager.repo

#####  CDH
CDH_VERSION=6.3.2
CDH_BUILD=${CDH_VERSION}-1.cdh${CDH_VERSION}.p0.1605554
CDH_MAJOR_VERSION=${CDH_VERSION%%.*}
CDH_PARCEL_REPO=${CM_BASE_URL}/cdh${CDH_MAJOR_VERSION}/${CDH_VERSION}/parcels/

#####  CFM
CFM_VERSION=1.0.1.0
CFM_BUILD=${CFM_VERSION}-12
NIFI_VERSION=1.9.0
NIFI_REGISTRY_VERSION=0.3.0
CFM_BASE_URL=$CM_BASE_URL/CFM
CFM_PARCEL_REPO=${CFM_BASE_URL}/parcels/${CFM_VERSION}/
CFM_NIFI_CSD_URL=${CFM_BASE_URL}/csd/${CFM_VERSION}/NIFI-${NIFI_VERSION}.${CFM_BUILD}.jar
CFM_NIFICA_CSD_URL=${CFM_BASE_URL}/csd/${CFM_VERSION}/NIFICA-${NIFI_VERSION}.${CFM_BUILD}.jar
CFM_NIFIREG_CSD_URL=${CFM_BASE_URL}/csd/${CFM_VERSION}/NIFIREGISTRY-${NIFI_REGISTRY_VERSION}.${CFM_BUILD}.jar

#####  Anaconda
ANACONDA_VERSION=5.1.0.1
ANACONDA_PARCEL_REPO=https://repo.continuum.io/pkgs/misc/parcels/archive/

#####  CDSW
# If version is set, install will be attempted
CDSW_VERSION=1.6.1
CDSW_BUILD=${CDSW_VERSION}.p1.1504243
CDSW_PARCEL_REPO=${CM_BASE_URL}/cdsw1/${CDSW_VERSION}/parcels/
CDSW_CSD_URL=${CM_BASE_URL}/cdsw1/${CDSW_VERSION}/csd/CLOUDERA_DATA_SCIENCE_WORKBENCH-CDH6-${CDSW_VERSION}.jar

#####  CSP
CSP_VERSION=2.0.1.0-29
CSP_MAJOR_VERSION=${CSP_VERSION%%.*}
SCHEMAREGISTRY_VERSION=0.8.0
SCHEMAREGISTRY_BUILD=${SCHEMAREGISTRY_VERSION}.${CSP_VERSION}
STREAMS_MESSAGING_MANAGER_VERSION=2.1.0
STREAMS_MESSAGING_MANAGER_BUILD=${STREAMS_MESSAGING_MANAGER_VERSION}.${CSP_VERSION}
CSP_BASE_URL=<CHANGE_ME>
CSP_PARCEL_REPO=${CSP_BASE_URL}/parcel/
SCHEMAREGISTRY_CSD_URL=${CSP_BASE_URL}/parcel/SCHEMAREGISTRY-${SCHEMAREGISTRY_VERSION}.jar
STREAMS_MESSAGING_MANAGER_CSD_URL=${CSP_BASE_URL}/parcel/STREAMS_MESSAGING_MANAGER-${STREAMS_MESSAGING_MANAGER_VERSION}.jar

#####  CEM
CEM_VERSION=1.0.0.0
CEM_MAJOR_VERSION=${CEM_VERSION%%.*}
CEM_TARBALL=CEM-${CEM_VERSION}-centos7-tars-tarball.tar.gz
CEM_URL=${CM_BASE_URL}/CEM/centos7/${CEM_MAJOR_VERSION}.x/updates/${CEM_VERSION}/CEM-${CEM_VERSION}-centos7-tars-tarball.tar.gz

#####   CSA
CSA_VERSION=1.0.0.0
FLINK_VERSION=1.9.0
FLINK_BUILD=${FLINK_VERSION}-csa${CSA_VERSION}-cdh6.3.0
CSA_PARCEL_REPO=${CM_BASE_URL}/csa/${CSA_VERSION}/parcels/
FLINK_CSD_URL=${CM_BASE_URL}/csa/${CSA_VERSION}/csd/FLINK-${FLINK_BUILD}.jar

# Parcels to be pre-downloaded during install.
# Cloudera Manager will download any parcels that are not already downloaded previously.
PARCEL_URLS=(
)
#  nifi           "$CFM_VERSION"                     "$CFM_PARCEL_REPO"
#  hadoop         "$CDH_BUILD"                       "$CDH_PARCEL_REPO"
#  cdsw           "$CDSW_BUILD"                      "$CDSW_PARCEL_REPO"
#  Anaconda       "$ANACONDA_VERSION"                "$ANACONDA_PARCEL_REPO"
#  schemaregistry "$SCHEMAREGISTRY_BUILD"            "$CSP_PARCEL_REPO"
#  streamsmsgmgr  "$STREAMS_MESSAGING_MANAGER_BUILD" "$CSP_PARCEL_REPO"

CSD_URLS=(
  $CFM_NIFI_CSD_URL
  $CFM_NIFICA_CSD_URL
  $CFM_NIFIREG_CSD_URL
  $CDSW_CSD_URL
  $SCHEMAREGISTRY_CSD_URL
  $STREAMS_MESSAGING_MANAGER_CSD_URL
  $FLINK_CSD_URL
)
