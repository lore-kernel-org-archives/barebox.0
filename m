Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 9.mo1.mail-out.ovh.net ([178.32.108.172]
 helo=mo1.mail-out.ovh.net)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X4YMJ-0008Lm-FQ
 for barebox@lists.infradead.org; Tue, 08 Jul 2014 16:35:13 +0000
Received: from mail191.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 117DBFF9B31
 for <barebox@lists.infradead.org>; Tue,  8 Jul 2014 18:34:46 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue,  8 Jul 2014 18:38:34 +0200
Message-Id: <1404837514-773-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1404837514-773-1-git-send-email-plagnioj@jcrosoft.com>
References: <1404809417-21477-1-git-send-email-s.hauer@pengutronix.de>
 <1404837514-773-1-git-send-email-plagnioj@jcrosoft.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/2] EFI: introduce efi_strguid to convert GUID to human
 readable names
To: barebox@lists.infradead.org

use in devinfo Protocols

Tested today on qemu with all the GUID translated

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/efi/efi/efi-device.c   |   3 +-
 arch/efi/efi/efi.c          |  74 ++++++++++++++++++++++++++++++
 arch/efi/include/mach/efi.h |   1 +
 include/efi.h               | 108 ++++++++++++++++++++++++++++++++++++++++++++
 4 files changed, 185 insertions(+), 1 deletion(-)

diff --git a/arch/efi/efi/efi-device.c b/arch/efi/efi/efi-device.c
index 71526b9..7f49924 100644
--- a/arch/efi/efi/efi-device.c
+++ b/arch/efi/efi/efi-device.c
@@ -86,7 +86,8 @@ static void efi_devinfo(struct device_d *dev)
 	printf("Protocols:\n");
 
 	for (i = 0; i < efidev->num_guids; i++)
-		printf("  %d: %pUl\n", i, &efidev->guids[i]);
+		printf("  %d: %pUl: %s\n", i, &efidev->guids[i],
+					efi_strguid(&efidev->guids[i]));
 }
 
 static efi_handle_t *efi_find_parent(efi_handle_t *handle)
diff --git a/arch/efi/efi/efi.c b/arch/efi/efi/efi.c
index 48b7d9a..736b158 100644
--- a/arch/efi/efi/efi.c
+++ b/arch/efi/efi/efi.c
@@ -36,6 +36,7 @@
 #include <binfmt.h>
 #include <wchar.h>
 #include <envfs.h>
+#include <efi.h>
 #include <mach/efi.h>
 #include <mach/efi-device.h>
 
@@ -227,6 +228,79 @@ int efi_errno(efi_status_t err)
 	return ret;
 }
 
+#define EFI_GUID_STRING(guid, short, long) do {	\
+	if (!efi_guidcmp(guid, *g))		\
+		return long;			\
+	} while(0)
+
+const char *efi_strguid(efi_guid_t *g)
+{
+	EFI_GUID_STRING(EFI_NULL_GUID, "NULL", "NULL GUID");
+	EFI_GUID_STRING(EFI_MPS_TABLE_GUID, "MPS Table", "MPS Table GUID in EFI System Table");
+	EFI_GUID_STRING(EFI_ACPI_TABLE_GUID, "ACPI Table", "ACPI 1.0 Table GUID in EFI System Table");
+	EFI_GUID_STRING(EFI_ACPI_20_TABLE_GUID, "ACPI 2.0 Table", "ACPI 2.0 Table GUID in EFI System Table");
+	EFI_GUID_STRING(EFI_SMBIOS_TABLE_GUID, "SMBIOS Table", "SMBIOS Table GUID in EFI System Table");
+	EFI_GUID_STRING(EFI_SAL_SYSTEM_TABLE_GUID, "SAL System Table", "SAL System Table GUID in EFI System Table");
+	EFI_GUID_STRING(EFI_HCDP_TABLE_GUID, "HDCP Table", "HDCP Table GUID in EFI System Table");
+	EFI_GUID_STRING(EFI_UGA_IO_PROTOCOL_GUID, "UGA Protocol", "EFI 1.1 UGA Protocol");
+	EFI_GUID_STRING(EFI_GLOBAL_VARIABLE_GUID, "Efi", "Efi Variable GUID");
+	EFI_GUID_STRING(EFI_UV_SYSTEM_TABLE_GUID, "SAL System Table", "SAL System Table GUID in EFI System Table");
+	EFI_GUID_STRING(EFI_LINUX_EFI_CRASH_GUID, "Linux EFI Crash", "Linux EFI Crash GUID");
+	EFI_GUID_STRING(EFI_LOADED_IMAGE_PROTOCOL_GUID, "LoadedImage Protocol", "EFI 1.0 Loaded Image Protocol");
+	EFI_GUID_STRING(EFI_GRAPHICS_OUTPUT_PROTOCOL_GUID, "EFI Graphics Output Protocol", "UEFI Graphics Output Protocol");
+	EFI_GUID_STRING(EFI_UGA_PROTOCOL_GUID, "UGA Draw Protocol", "EFI 1.1 UGA Draw Protocol");
+	EFI_GUID_STRING(EFI_UGA_IO_PROTOCOL_GUID, "UGA Protocol", "EFI 1.1 UGA Protocol");
+	EFI_GUID_STRING(EFI_PCI_IO_PROTOCOL_GUID, "PCI IO Protocol", "EFI 1.1 PCI IO Protocol");
+	EFI_GUID_STRING(EFI_FILE_INFO_GUID, "File Info", "EFI File Infom");
+	EFI_GUID_STRING(EFI_SIMPLE_FILE_SYSTEM_GUID, "Filesystem", "EFI 1.0 Simple FileSystem");
+	EFI_GUID_STRING(EFI_DEVICE_TREE_GUID, "Device Tree", "EFI Device Tree GUID");
+	EFI_GUID_STRING(EFI_DEVICE_PATH_PROTOCOL_GUID, "Device Path Protocol", "EFI 1.0 Device Path protocol");
+	EFI_GUID_STRING(EFI_SIMPLE_NETWORK_PROTOCOL_GUID, "Simple Network Protocol", "EFI 1.0 Simple Network Protocol");
+	EFI_GUID_STRING(EFI_SIMPLE_FILE_SYSTEM_PROTOCOL_GUID, "Filesystem Protocol", "EFI 1.0 Simple FileSystem Protocol");
+	EFI_GUID_STRING(EFI_UNKNOWN_DEVICE_GUID, "Efi Unknown Device", "Efi Unknown Device GUID");
+	EFI_GUID_STRING(EFI_BLOCK_IO_PROTOCOL_GUID, "BlockIo Protocol", "EFI 1.0 Block IO protocol");
+
+	EFI_GUID_STRING(EFI_FIRMWARE_VOLUME2_PROTOCOL_GUID, "FirmwareVolume2Protocol", "Efi FirmwareVolume2Protocol");
+	EFI_GUID_STRING(EFI_FIRMWARE_VOLUME_BLOCK_PROTOCOL_GUID, "FirmwareVolumeBlock Protocol", "Firmware Volume Block protocol");
+	EFI_GUID_STRING(EFI_PCI_ROOT_BRIDGE_IO_PROTOCOL_GUID, "PciRootBridgeIo Protocol", "EFI 1.1 Pci Root Bridge IO Protocol");
+	EFI_GUID_STRING(EFI_ISA_ACPI_PROTOCOL_GUID, "ISA Acpi Protocol", "ISA Acpi Protocol");
+	EFI_GUID_STRING(EFI_ISA_IO_PROTOCOL_GUID, "ISA IO Protocol", "ISA IO Protocol");
+	EFI_GUID_STRING(EFI_STANDARD_ERROR_DEVICE_GUID, "Standard Error Device Guid", "EFI Standard Error Device Guid");
+	EFI_GUID_STRING(EFI_CONSOLE_OUT_DEVICE_GUID, "Console Out Device Guid", "EFI Console Out Device Guid");
+	EFI_GUID_STRING(EFI_CONSOLE_IN_DEVICE_GUID, "Console In Device Guid", "EFI Conosle In Device Guid");
+	EFI_GUID_STRING(EFI_SIMPLE_TEXT_OUT_PROTOCOL_GUID, "Simple Text Out Protocol", "EFI 1.0 Simple Text Out Protocol");
+	EFI_GUID_STRING(EFI_SIMPLE_TEXT_INPUT_EX_PROTOCOL_GUID, "Simple Text Input Ex Protocol", "UEFI 2.1 Simple Text Input Ex Protocol");
+	EFI_GUID_STRING(EFI_SIMPLE_TEXT_IN_PROTOCOL_GUID, "Simple Text In Protocol", "EFI 1.0 Simple Text In Protocol");
+	EFI_GUID_STRING(EFI_DISK_IO_PROTOCOL_GUID, "DiskIo Protocol", "EFI 1.0 Disk IO Protocol");
+	EFI_GUID_STRING(EFI_IDE_CONTROLLER_INIT_PROTOCOL_GUID, "IDE Controller Init Protocol", "Platform IDE Init Protocol");
+	EFI_GUID_STRING(EFI_DISK_INFO_PROTOCOL_GUID, "Disk Info Protocol", "Disk Info Protocol");
+	EFI_GUID_STRING(EFI_SERIAL_IO_PROTOCOL_GUID, "SerialIo Protocol", "EFI 1.0 Serial IO Protocol");
+	EFI_GUID_STRING(EFI_BUS_SPECIFIC_DRIVER_OVERRIDE_PROTOCOL_GUID, "Bus Specific Driver Override Protocol", "EFI 1.1 Bus Specific Driver Override Protocol");
+	EFI_GUID_STRING(EFI_LOAD_FILE2_PROTOCOL_GUID, "LoadFile2 Protocol", "EFI Load File 2 Protocol");
+	EFI_GUID_STRING(EFI_MTFTP4_SERVICE_BINDING_PROTOCOL_GUID, "MTFTP4 Service Binding Protocol", "MTFTP4 Service Binding Protocol");
+	EFI_GUID_STRING(EFI_DHCP4_PROTOCOL_GUID, "DHCP4 Protocol", "DHCP4 Protocol");
+	EFI_GUID_STRING(EFI_UDP4_SERVICE_BINDING_PROTOCOL_GUID, "UDP4 Service Binding Protocol", "UDP4 Service Binding Protocol");
+	EFI_GUID_STRING(EFI_TCP4_SERVICE_BINDING_PROTOCOL_GUID, "TCP4 Service Binding Protocol", "TCP4 Service Binding Protocol");
+	EFI_GUID_STRING(EFI_IP4_SERVICE_BINDING_PROTOCOL_GUID, "IP4 Service Binding Protocol", "IP4 Service Binding Protocol");
+	EFI_GUID_STRING(EFI_IP4_CONFIG_PROTOCOL_GUID, "Ip4Config Protocol", "Ip4Config Protocol");
+	EFI_GUID_STRING(EFI_ARP_SERVICE_BINDING_PROTOCOL_GUID, "ARP Service Binding Protocol", "ARP Service Binding Protocol");
+	EFI_GUID_STRING(EFI_MANAGED_NETWORK_SERVICE_BINDING_PROTOCOL_GUID, "Managed Network Service Binding Protocol", "Managed Network Service Binding Protocol");
+	EFI_GUID_STRING(EFI_VLAN_CONFIG_PROTOCOL_GUID, "VlanConfig Protocol", "VlanConfig Protocol");
+	EFI_GUID_STRING(EFI_HII_CONFIG_ACCESS_PROTOCOL_GUID, "HII Config Access Protocol", "HII Config Access 2.1 protocol");
+	EFI_GUID_STRING(LOAD_FILE_PROTOCOL_GUID, "LoadFile Protocol", "EFI 1.0 Load File Protocol");
+	EFI_GUID_STRING(EFI_COMPONENT_NAME2_PROTOCOL_GUID, "Component Name2 Protocol", "UEFI 2.0 Component Name2 Protocol");
+	EFI_GUID_STRING(EFI_NETWORK_INTERFACE_IDENTIFIER_PROTOCOL_GUID_31, "Network Interface Identifier Protocol_31",  "EFI1.1 Network Interface Identifier Protocol");
+	EFI_GUID_STRING(EFI_NETWORK_INTERFACE_IDENTIFIER_PROTOCOL_GUID, "Network Interface Identifier Protocol", "EFI Network Interface Identifier Protocol");
+
+	/* File */
+	EFI_GUID_STRING(EFI_IDEBUSDXE_INF_GUID, "IdeBusDxe.inf", "EFI IdeBusDxe.inf File GUID");
+	EFI_GUID_STRING(EFI_TERMINALDXE_INF_GUID, "TerminalDxe.inf", "EFI TerminalDxe.inf File GUID");
+	EFI_GUID_STRING(EFI_ISCSIDXE_INF_GUID, "IScsiDxe.inf", "EFI IScsiDxe.inf File GUID");
+	EFI_GUID_STRING(EFI_VLANCONFIGDXE_INF_GUID, "VlanConfigDxe.inf", "EFI VlanConfigDxe.inf File GUID");
+
+	return "unknown";
+}
+
 static struct NS16550_plat ns16550_plat = {
 	.clock = 115200 * 16,
 };
diff --git a/arch/efi/include/mach/efi.h b/arch/efi/include/mach/efi.h
index 1e9782a..eb5171e 100644
--- a/arch/efi/include/mach/efi.h
+++ b/arch/efi/include/mach/efi.h
@@ -4,6 +4,7 @@
 #include <efi.h>
 
 const char *efi_strerror(efi_status_t err);
+const char *efi_strguid(efi_guid_t *g);
 
 extern efi_system_table_t *efi_sys_table;
 extern efi_handle_t efi_parent_image;
diff --git a/include/efi.h b/include/efi.h
index c624eb3..861dc50 100644
--- a/include/efi.h
+++ b/include/efi.h
@@ -354,6 +354,114 @@ extern efi_runtime_services_t *RT;
 #define EFI_BLOCK_IO_PROTOCOL_GUID \
 	EFI_GUID(0x964e5b21, 0x6459, 0x11d2, 0x8e, 0x39, 0x00, 0xa0, 0xc9, 0x69, 0x72, 0x3b)
 
+/* additional GUID from EDK2 */
+#define EFI_FIRMWARE_VOLUME2_PROTOCOL_GUID \
+	EFI_GUID(0x220e73b6, 0x6bdb, 0x4413, 0x84, 0x5, 0xb9, 0x74, 0xb1, 0x8, 0x61, 0x9a)
+
+#define EFI_FIRMWARE_VOLUME_BLOCK_PROTOCOL_GUID \
+	EFI_GUID(0x8f644fa9, 0xe850, 0x4db1, 0x9c, 0xe2, 0xb, 0x44, 0x69, 0x8e, 0x8d, 0xa4)
+
+#define EFI_PCI_ROOT_BRIDGE_IO_PROTOCOL_GUID \
+	EFI_GUID(0x2f707ebb, 0x4a1a, 0x11d4, 0x9a, 0x38, 0x00, 0x90, 0x27, 0x3f, 0xc1, 0x4d)
+
+#define EFI_ISA_ACPI_PROTOCOL_GUID \
+	EFI_GUID(0x64a892dc, 0x5561, 0x4536, 0x92, 0xc7, 0x79, 0x9b, 0xfc, 0x18, 0x33, 0x55)
+
+#define EFI_ISA_IO_PROTOCOL_GUID \
+	EFI_GUID(0x7ee2bd44, 0x3da0, 0x11d4, 0x9a, 0x38, 0x0, 0x90, 0x27, 0x3f, 0xc1, 0x4d)
+
+#define EFI_STANDARD_ERROR_DEVICE_GUID \
+	EFI_GUID(0xd3b36f2d, 0xd551, 0x11d4, 0x9a, 0x46, 0x0, 0x90, 0x27, 0x3f, 0xc1, 0x4d)
+
+#define EFI_CONSOLE_OUT_DEVICE_GUID \
+	EFI_GUID(0xd3b36f2c, 0xd551, 0x11d4, 0x9a, 0x46, 0x0, 0x90, 0x27, 0x3f, 0xc1, 0x4d)
+
+#define EFI_CONSOLE_IN_DEVICE_GUID \
+	EFI_GUID(0xd3b36f2b, 0xd551, 0x11d4, 0x9a, 0x46, 0x0, 0x90, 0x27, 0x3f, 0xc1, 0x4d)
+
+#define EFI_SIMPLE_TEXT_OUT_PROTOCOL_GUID \
+	EFI_GUID(0x387477c2, 0x69c7, 0x11d2, 0x8e, 0x39, 0x0, 0xa0, 0xc9, 0x69, 0x72, 0x3b)
+
+#define EFI_SIMPLE_TEXT_INPUT_EX_PROTOCOL_GUID \
+	EFI_GUID(0xdd9e7534, 0x7762, 0x4698, 0x8c, 0x14, 0xf5, 0x85, 0x17, 0xa6, 0x25, 0xaa)
+
+#define EFI_SIMPLE_TEXT_IN_PROTOCOL_GUID \
+	EFI_GUID(0x387477c1, 0x69c7, 0x11d2, 0x8e, 0x39, 0x0, 0xa0, 0xc9, 0x69, 0x72, 0x3b)
+
+#define EFI_DISK_IO_PROTOCOL_GUID \
+	EFI_GUID(0xce345171, 0xba0b, 0x11d2, 0x8e, 0x4f, 0x0, 0xa0, 0xc9, 0x69, 0x72, 0x3b)
+
+#define EFI_IDE_CONTROLLER_INIT_PROTOCOL_GUID \
+	EFI_GUID(0xa1e37052, 0x80d9, 0x4e65, 0xa3, 0x17, 0x3e, 0x9a, 0x55, 0xc4, 0x3e, 0xc9)
+
+#define EFI_DISK_INFO_PROTOCOL_GUID \
+	EFI_GUID(0xd432a67f, 0x14dc, 0x484b, 0xb3, 0xbb, 0x3f, 0x2, 0x91, 0x84, 0x93, 0x27)
+
+#define EFI_SERIAL_IO_PROTOCOL_GUID \
+	EFI_GUID(0xbb25cf6f, 0xf1d4, 0x11d2, 0x9a, 0x0c, 0x00, 0x90, 0x27, 0x3f, 0xc1, 0xfd)
+
+#define EFI_BUS_SPECIFIC_DRIVER_OVERRIDE_PROTOCOL_GUID \
+	EFI_GUID(0x3bc1b285, 0x8a15, 0x4a82, 0xaa, 0xbf, 0x4d, 0x7d, 0x13, 0xfb, 0x32, 0x65)
+
+#define EFI_LOAD_FILE2_PROTOCOL_GUID \
+	EFI_GUID(0x4006c0c1, 0xfcb3, 0x403e, 0x99, 0x6d, 0x4a, 0x6c, 0x87, 0x24, 0xe0, 0x6d)
+
+#define EFI_MTFTP4_SERVICE_BINDING_PROTOCOL_GUID \
+	EFI_GUID(0x2fe800be, 0x8f01, 0x4aa6, 0x94, 0x6b, 0xd7, 0x13, 0x88, 0xe1, 0x83, 0x3f)
+
+#define EFI_DHCP4_PROTOCOL_GUID \
+	EFI_GUID(0x9d9a39d8, 0xbd42, 0x4a73, 0xa4, 0xd5, 0x8e, 0xe9, 0x4b, 0xe1, 0x13, 0x80)
+
+#define EFI_UDP4_SERVICE_BINDING_PROTOCOL_GUID \
+	EFI_GUID(0x83f01464, 0x99bd, 0x45e5, 0xb3, 0x83, 0xaf, 0x63, 0x05, 0xd8, 0xe9, 0xe6)
+
+#define EFI_TCP4_SERVICE_BINDING_PROTOCOL_GUID \
+	EFI_GUID(0x00720665, 0x67EB, 0x4a99, 0xBA, 0xF7, 0xD3, 0xC3, 0x3A, 0x1C, 0x7C, 0xC9)
+
+#define EFI_IP4_SERVICE_BINDING_PROTOCOL_GUID \
+	EFI_GUID(0xc51711e7, 0xb4bf, 0x404a, 0xbf, 0xb8, 0x0a, 0x04, 0x8e, 0xf1, 0xff, 0xe4)
+
+#define EFI_IP4_CONFIG_PROTOCOL_GUID \
+	EFI_GUID(0x3b95aa31, 0x3793, 0x434b, 0x86, 0x67, 0xc8, 0x07, 0x08, 0x92, 0xe0, 0x5e)
+
+#define EFI_ARP_SERVICE_BINDING_PROTOCOL_GUID\
+	EFI_GUID(0xf44c00ee, 0x1f2c, 0x4a00, 0xaa, 0x9, 0x1c, 0x9f, 0x3e, 0x8, 0x0, 0xa3)
+
+#define EFI_MANAGED_NETWORK_SERVICE_BINDING_PROTOCOL_GUID \
+	EFI_GUID(0xf36ff770, 0xa7e1, 0x42cf, 0x9e, 0xd2, 0x56, 0xf0, 0xf2, 0x71, 0xf4, 0x4c)
+
+#define EFI_VLAN_CONFIG_PROTOCOL_GUID \
+	EFI_GUID(0x9e23d768, 0xd2f3, 0x4366, 0x9f, 0xc3, 0x3a, 0x7a, 0xba, 0x86, 0x43, 0x74)
+
+#define EFI_HII_CONFIG_ACCESS_PROTOCOL_GUID \
+	EFI_GUID(0x330d4706, 0xf2a0, 0x4e4f, 0xa3, 0x69, 0xb6, 0x6f, 0xa8, 0xd5, 0x43, 0x85)
+
+#define LOAD_FILE_PROTOCOL_GUID \
+	EFI_GUID(0x56ec3091, 0x954c, 0x11d2, 0x8e, 0x3f, 0x00, 0xa0, 0xc9, 0x69, 0x72, 0x3b)
+
+#define EFI_COMPONENT_NAME2_PROTOCOL_GUID \
+	EFI_GUID(0x6a7a5cff, 0xe8d9, 0x4f70, 0xba, 0xda, 0x75, 0xab, 0x30, 0x25, 0xce, 0x14)
+
+#define EFI_IDEBUSDXE_INF_GUID \
+	EFI_GUID(0x69fd8e47, 0xa161, 0x4550, 0xb0, 0x1a, 0x55, 0x94, 0xce, 0xb2, 0xb2, 0xb2)
+
+#define EFI_TERMINALDXE_INF_GUID \
+	EFI_GUID(0x9e863906, 0xa40f, 0x4875, 0x97, 0x7f, 0x5b, 0x93, 0xff, 0x23, 0x7f, 0xc6)
+
+#define EFI_NETWORK_INTERFACE_IDENTIFIER_PROTOCOL_GUID_31 \
+	EFI_GUID(0x1aced566, 0x76ed, 0x4218, 0xbc, 0x81, 0x76, 0x7f, 0x1f, 0x97, 0x7a, 0x89)
+
+#define EFI_NETWORK_INTERFACE_IDENTIFIER_PROTOCOL_GUID \
+	EFI_GUID(0xe18541cd, 0xf755, 0x4f73, 0x92, 0x8d, 0x64, 0x3c, 0x8a, 0x79, 0xb2, 0x29)
+
+#define EFI_ISCSIDXE_INF_GUID \
+	EFI_GUID(0x4579b72d, 0x7ec4, 0x4dd4, 0x84, 0x86, 0x08, 0x3c, 0x86, 0xb1, 0x82, 0xa7)
+
+#define EFI_VLANCONFIGDXE_INF_GUID \
+	EFI_GUID(0xe4f61863, 0xfe2c, 0x4b56, 0xa8, 0xf4, 0x08, 0x51, 0x9b, 0xc4, 0x39, 0xdf)
+
+
+
 extern efi_guid_t efi_file_info_id;
 extern efi_guid_t efi_simple_file_system_protocol_guid;
 extern efi_guid_t efi_device_path_protocol_guid;
-- 
1.9.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
