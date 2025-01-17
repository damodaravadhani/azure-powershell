// <auto-generated>
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for
// license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is
// regenerated.
// </auto-generated>

namespace Microsoft.Azure.Management.RecoveryServices.SiteRecovery.Models
{
    using Newtonsoft.Json;
    using System.Linq;

    /// <summary>
    /// Abstract model class for event details of a HyperVReplica E2E event.
    /// </summary>
    [Newtonsoft.Json.JsonObject("HyperVReplicaBaseEventDetails")]
    public partial class HyperVReplicaBaseEventDetails : EventProviderSpecificDetails
    {
        /// <summary>
        /// Initializes a new instance of the HyperVReplicaBaseEventDetails
        /// class.
        /// </summary>
        public HyperVReplicaBaseEventDetails()
        {
            CustomInit();
        }

        /// <summary>
        /// Initializes a new instance of the HyperVReplicaBaseEventDetails
        /// class.
        /// </summary>
        /// <param name="containerName">The container friendly name.</param>
        /// <param name="fabricName">The fabric friendly name.</param>
        /// <param name="remoteContainerName">The remote container
        /// name.</param>
        /// <param name="remoteFabricName">The remote fabric name.</param>
        public HyperVReplicaBaseEventDetails(string containerName = default(string), string fabricName = default(string), string remoteContainerName = default(string), string remoteFabricName = default(string))
        {
            ContainerName = containerName;
            FabricName = fabricName;
            RemoteContainerName = remoteContainerName;
            RemoteFabricName = remoteFabricName;
            CustomInit();
        }

        /// <summary>
        /// An initialization method that performs custom operations like setting defaults
        /// </summary>
        partial void CustomInit();

        /// <summary>
        /// Gets or sets the container friendly name.
        /// </summary>
        [JsonProperty(PropertyName = "containerName")]
        public string ContainerName { get; set; }

        /// <summary>
        /// Gets or sets the fabric friendly name.
        /// </summary>
        [JsonProperty(PropertyName = "fabricName")]
        public string FabricName { get; set; }

        /// <summary>
        /// Gets or sets the remote container name.
        /// </summary>
        [JsonProperty(PropertyName = "remoteContainerName")]
        public string RemoteContainerName { get; set; }

        /// <summary>
        /// Gets or sets the remote fabric name.
        /// </summary>
        [JsonProperty(PropertyName = "remoteFabricName")]
        public string RemoteFabricName { get; set; }

    }
}
