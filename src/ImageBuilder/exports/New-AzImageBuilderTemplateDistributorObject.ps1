
# ----------------------------------------------------------------------------------
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# Code generated by Microsoft (R) AutoRest Code Generator.Changes may cause incorrect behavior and will be lost if the code
# is regenerated.
# ----------------------------------------------------------------------------------

<#
.Synopsis
Create an in-memory object for ImageTemplateDistributor.
.Description
Create an in-memory object for ImageTemplateDistributor.
.Example
New-AzImageBuilderTemplateDistributorObject -ManagedImageDistributor -ArtifactTag @{tag='lucasManage'} -ImageId /subscriptions/9e223dbe-3399-4e19-88eb-0975f02ac87f/resourceGroups/wyunchi-imagebuilder/providers/Microsoft.Compute/images/lucas-linux-imageshare -RunOutputName luacas-runout -Location eastus
.Example
New-AzImageBuilderTemplateDistributorObject -ArtifactTag @{tag='vhd'} -VhdDistributor -RunOutputName image-vhd
.Example
New-AzImageBuilderTemplateDistributorObject -SharedImageDistributor -ArtifactTag @{tag='dis-share'} -GalleryImageId '/subscriptions/9e223dbe-3399-4e19-88eb-0975f02ac87f/resourceGroups/wyunchi-imagebuilder/providers/Microsoft.Compute/galleries/myimagegallery/images/lcuas-linux-share' -ReplicationRegion eastus2 -RunOutputName 'outname' -ExcludeFromLatest $false 

.Outputs
Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Models.Api20220214.ImageTemplateManagedImageDistributor
.Outputs
Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Models.Api20220214.ImageTemplateSharedImageDistributor
.Outputs
Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Models.Api20220214.ImageTemplateVhdDistributor
.Notes
COMPLEX PARAMETER PROPERTIES

To create the parameters described below, construct a hash table containing the appropriate properties. For information on hash tables, run Get-Help about_Hash_Tables.

ARTIFACTTAG <IImageTemplateDistributorArtifactTags>: Tags that will be applied to the artifact once it has been created/updated by the distributor.
  [(Any) <String>]: This indicates any property can be added to this object.
.Link
https://learn.microsoft.com/powershell/module/az.ImageBuilder/new-azimagebuildertemplatedistributorobject
#>
function New-AzImageBuilderTemplateDistributorObject {
[OutputType([Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Models.Api20220214.ImageTemplateManagedImageDistributor], [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Models.Api20220214.ImageTemplateSharedImageDistributor], [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Models.Api20220214.ImageTemplateVhdDistributor])]
[CmdletBinding(DefaultParameterSetName='VhdDistributor', PositionalBinding=$false)]
param(
    [Parameter(Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Category('Body')]
    [System.String]
    # The name to be used for the associated RunOutput.
    ${RunOutputName},

    [Parameter(ParameterSetName='ManagedImageDistributor', Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Category('Body')]
    [System.String]
    # Resource Id of the Managed Disk Image.
    ${ImageId},

    [Parameter(ParameterSetName='ManagedImageDistributor', Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Category('Body')]
    [System.String]
    # Azure location for the image, should match if image already exists.
    ${Location},

    [Parameter(ParameterSetName='ManagedImageDistributor', Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Distribute as a Managed Disk Image.
    ${ManagedImageDistributor},

    [Parameter()]
    [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Models.Api20220214.IImageTemplateDistributorArtifactTags]
    # Tags that will be applied to the artifact once it has been created/updated by the distributor.
    # To construct, see NOTES section for ARTIFACTTAG properties and create a hash table.
    ${ArtifactTag},

    [Parameter(ParameterSetName='SharedImageDistributor', Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Category('Body')]
    [System.String]
    # Resource Id of the Shared Image Gallery image.
    ${GalleryImageId},

    [Parameter(ParameterSetName='SharedImageDistributor', Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Category('Body')]
    [System.String[]]
    # A list of regions that the image will be replicated to.
    ${ReplicationRegion},

    [Parameter(ParameterSetName='SharedImageDistributor', Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Distribute via Shared Image Gallery.
    ${SharedImageDistributor},

    [Parameter(ParameterSetName='SharedImageDistributor')]
    [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Category('Body')]
    [System.Boolean]
    # Flag that indicates whether created image version should be excluded from latest.
    # Omit to use the default (false).
    ${ExcludeFromLatest},

    [Parameter(ParameterSetName='SharedImageDistributor')]
    [ArgumentCompleter([Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Support.SharedImageStorageAccountType])]
    [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Category('Body')]
    [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Support.SharedImageStorageAccountType]
    # Storage account type to be used to store the shared image.
    # Omit to use the default (Standard_LRS).
    ${StorageAccountType},

    [Parameter(ParameterSetName='VhdDistributor', Mandatory)]
    [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Category('Body')]
    [System.Management.Automation.SwitchParameter]
    # Distribute via VHD in a storage account.
    ${VhdDistributor}
)

begin {
    try {
        $outBuffer = $null
        if ($PSBoundParameters.TryGetValue('OutBuffer', [ref]$outBuffer)) {
            $PSBoundParameters['OutBuffer'] = 1
        }
        $parameterSet = $PSCmdlet.ParameterSetName

        if ($null -eq [Microsoft.WindowsAzure.Commands.Utilities.Common.AzurePSCmdlet]::PowerShellVersion) {
            [Microsoft.WindowsAzure.Commands.Utilities.Common.AzurePSCmdlet]::PowerShellVersion = $Host.Version.ToString()
        }         
        $preTelemetryId = [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::TelemetryId
        if ($preTelemetryId -eq '') {
            [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::TelemetryId =(New-Guid).ToString()
            [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.module]::Instance.Telemetry.Invoke('Create', $MyInvocation, $parameterSet, $PSCmdlet)
        } else {
            $internalCalledCmdlets = [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::InternalCalledCmdlets
            if ($internalCalledCmdlets -eq '') {
                [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::InternalCalledCmdlets = $MyInvocation.MyCommand.Name
            } else {
                [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::InternalCalledCmdlets += ',' + $MyInvocation.MyCommand.Name
            }
            [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::TelemetryId = 'internal'
        }

        $mapping = @{
            ManagedImageDistributor = 'Az.ImageBuilder.custom\New-AzImageBuilderTemplateDistributorObject_ManagedImageDistributor';
            SharedImageDistributor = 'Az.ImageBuilder.custom\New-AzImageBuilderTemplateDistributorObject_SharedImageDistributor';
            VhdDistributor = 'Az.ImageBuilder.custom\New-AzImageBuilderTemplateDistributorObject_VhdDistributor';
        }
        $cmdInfo = Get-Command -Name $mapping[$parameterSet]
        [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.Runtime.MessageAttributeHelper]::ProcessCustomAttributesAtRuntime($cmdInfo, $MyInvocation, $parameterSet, $PSCmdlet)
        $wrappedCmd = $ExecutionContext.InvokeCommand.GetCommand(($mapping[$parameterSet]), [System.Management.Automation.CommandTypes]::Cmdlet)
        $scriptCmd = {& $wrappedCmd @PSBoundParameters}
        $steppablePipeline = $scriptCmd.GetSteppablePipeline($MyInvocation.CommandOrigin)
        $steppablePipeline.Begin($PSCmdlet)
    } catch {
        [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::ClearTelemetryContext()
        throw
    }
}

process {
    try {
        $steppablePipeline.Process($_)
    } catch {
        [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::ClearTelemetryContext()
        throw
    }

    finally {
        $backupTelemetryId = [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::TelemetryId
        $backupInternalCalledCmdlets = [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::InternalCalledCmdlets
        [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::ClearTelemetryContext()
    }

}
end {
    try {
        $steppablePipeline.End()

        [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::TelemetryId = $backupTelemetryId
        [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::InternalCalledCmdlets = $backupInternalCalledCmdlets
        if ($preTelemetryId -eq '') {
            [Microsoft.Azure.PowerShell.Cmdlets.ImageBuilder.module]::Instance.Telemetry.Invoke('Send', $MyInvocation, $parameterSet, $PSCmdlet)
            [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::ClearTelemetryContext()
        }
        [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::TelemetryId = $preTelemetryId

    } catch {
        [Microsoft.WindowsAzure.Commands.Common.MetricHelper]::ClearTelemetryContext()
        throw
    }
} 
}
