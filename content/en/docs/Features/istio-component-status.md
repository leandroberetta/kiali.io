---
title: "Istio Infrastructure Status"
linkTitle: "Istio Status"
description: "How Kiali monitors your Istio infrastructure."
---

A service mesh simplifies application services by deferring the non-business logic to the mesh. But for healthy applications the service mesh infrastructure must also be running normally.  Kiali monitors the multiple components that make up the service mesh, letting you know if there is an underlying problem.

![Istio component status](/images/documentation/features/istio-status-masthead.png "Istio component status")

A component *status* will be one of: `Not found`, `Not ready`, `Unreachable`, `Not healthy` and `Healthy`. `Not found` means that Kiali is not able to find the deployment. `Not ready` means no pods are running.  `Unreachable` means that Kiali hasn't been successfully able to communicate with the component (Prometheus, Grafana and Jaeger). `Not healthy` means that the deployment doesn't have the desired amount of replicas running. Otherwise, the component is `Healthy` and it won't be shown in the list.

Regarding the *severity* of each component, there are only two options: `core` or `add-on`. The `core` components are those shown as errors (in red) whereas the `add-ons` are displayed as warnings (in orange).

By default, Kiali checks that the `core` components "istiod", "ingress", and "egress" are installed and running in the control plane namespace, and that the `add-ons` "prometheus", "grafana" and "jaeger" are available.