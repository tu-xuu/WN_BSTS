# WN_BSTS for LEZ

## Overview

This repository contains the implementation of the **Weather Normalization (WN)** method and **Bayesian Structural Time Series (BSTS)** to evaluate the impact of **Low Emission Zone (LEZ)** policies on air quality.

The analytical framework integrates machine learning–based meteorological normalization with causal inference to quantify policy effects on air pollutants.

---

## Workflow

```mermaid
graph TD
    A[Observed Air Pollution Data] --> B[Weather Normalization (WN)]
    B --> C[Meteorologically Adjusted Concentrations]
    C --> D[BSTS (CausalImpact)]
    D --> E[Counterfactual Estimation]
    E --> F[Policy Effect (Observed - Counterfactual)]
