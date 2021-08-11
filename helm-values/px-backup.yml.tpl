---
persistentStorage:
  enabled: true
  storageClassName: ${storage_class_name}
  mysqlVolumeSize: 100Gi
  etcdVolumeSize: 64Gi
  keycloakThemeVolumeSize: 5Gi
  keycloakBackendVolumeSize: 10Gi

storkRequired: false
clusterDomain: cluster.local
pxcentralDBPassword: Password1

caCertsSecretName: ""

oidc:
  centralOIDC:
    enabled: true
    defaultUsername: admin
    defaultPassword: admin
    defaultEmail: admin@portworx.com
    keyCloakBackendUserName: keycloak
    keyCloakBackendPassword: keycloak
    clientId: pxcentral
    updateAdminProfile: true

  externalOIDC:
    enabled: false
    clientID: ""
    clientSecret: ""
    endpoint: ""

pxbackup:
  enabled: true
  orgName: default
  callHome: true

operatorToChartUpgrade: false

securityContext:
  runAsUser: 1000
  fsGroup: 1000
  runAsNonRoot: true

images:

  pullSecrets:
    - docregistry-secret
  pullPolicy: Always

  pxcentralApiServerImage:
    registry: docker.io
    repo: portworx
    imageName: pxcentral-onprem-api
    tag: "1.2.1"
  pxcentralFrontendImage:
    registry: docker.io
    repo: portworx
    imageName: pxcentral-onprem-ui-frontend
    tag: "1.2.3"
  pxcentralBackendImage:
    registry: docker.io
    repo: portworx
    imageName: pxcentral-onprem-ui-backend
    tag: "1.2.3"
  pxcentralMiddlewareImage:
    registry: docker.io
    repo: portworx
    imageName: pxcentral-onprem-ui-lhbackend
    tag: "1.2.3"
  pxBackupImage:
    registry: docker.io
    repo: portworx
    imageName: px-backup
    tag: "1.2.4"
  postInstallSetupImage:
    registry: docker.io
    repo: portworx
    imageName: pxcentral-onprem-post-setup
    tag: "1.2.2"
  etcdImage:
    registry: docker.io
    repo: bitnami
    imageName: etcd
    tag: "3.4.13-debian-10-r22"
  keycloakBackendImage:
    registry: docker.io
    repo: bitnami
    imageName: postgresql
    tag: "11.7.0-debian-10-r9"
  keycloakFrontendImage:
    registry: docker.io
    repo: jboss
    imageName: keycloak
    tag: "9.0.2"
  keycloakLoginThemeImage:
    registry: docker.io
    repo: portworx
    imageName: keycloak-login-theme
    tag: "1.0.4"
  keycloakInitContainerImage:
    registry: docker.io
    repo: library
    imageName: busybox
    tag: "1.31"
  mysqlImage:
    registry: docker.io
    repo: library
    imageName: mysql
    tag: "5.7.22"

