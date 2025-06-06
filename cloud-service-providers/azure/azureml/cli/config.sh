#!/bin/bash

# Copyright (c) 2021, NVIDIA CORPORATION. All rights reserved.
# 
# Permission is hereby granted, free of charge, to any person obtaining
# a copy of this software and associated documentation files (the
# "Software"), to deal in the Software without restriction, including
# without limitation the rights to use, copy, modify, merge, publish,
# distribute, sublicense, and/or sell copies of the Software, and to
# permit persons to whom the Software is furnished to do so, subject to
# the following conditions:
# 
# The above copyright notice and this permission notice shall be
# included in all copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
# LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
# OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
# WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

# AzureML Workspace and corresponding container registry related information
subscription_id="<your-azure-subscription-id>"
resource_group="<your-resource-group>"
workspace="<your-azureml-workspace-name>"
location="<your-azureml-region>" # eg: "southcentralus", "westeurope" etc.

# Azure keyvault creation related information
ngc_api_key="<your-ngc-api-key>"
keyvault_name="NGC-Credentials"
email_address="<your-email-address>"

# Container related information
 # NOTE: Verify that your AML workspace can access this ACR
acr_registry_name="<your-azureml-registry-name>"
image_name="<custom-name-for-nim-image>"
ngc_container="nvcr.io/nim/meta/llama3-8b-instruct:latest"

# Endpoint related information
endpoint_name="llama-3-1-8b-nim-endpoint-aml-1"

# Deployment related information
deployment_name="llama3-1-8b-nim-deployment-aml-1"
instance_type="Standard_NC24ads_A100_v4"
