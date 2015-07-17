Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZGBEE-0002Sf-T7
 for barebox@lists.infradead.org; Fri, 17 Jul 2015 19:23:32 +0000
From: Michael Olbrich <m.olbrich@pengutronix.de>
Date: Fri, 17 Jul 2015 21:22:42 +0200
Message-Id: <1437160969-31517-10-git-send-email-m.olbrich@pengutronix.de>
In-Reply-To: <1437160969-31517-1-git-send-email-m.olbrich@pengutronix.de>
References: <1437160969-31517-1-git-send-email-m.olbrich@pengutronix.de>
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
Subject: [PATCH 09/16] efi: write volatile EFI variables used by systemd
To: barebox@lists.infradead.org
Cc: Michael Olbrich <m.olbrich@pengutronix.de>

LoaderTimeInitUSec and LoaderTimeExecUSec are used e.g. in systemd-analyze
to calculate the time spent in the firmare and barebox.

LoaderDevicePartUUID is used to mount the EFI partition to /boot.

Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
---
v2: use xstrdup_char_to_wchar() and free uuid/uuid16

 arch/efi/efi/efi-image.c |  5 +++++
 arch/efi/efi/efi.c       | 16 ++++++++++++++++
 common/efi-guid.c        |  1 +
 include/efi.h            |  5 +++++
 4 files changed, 27 insertions(+)

diff --git a/arch/efi/efi/efi-image.c b/arch/efi/efi/efi-image.c
index de9b27755663..b6437f40787b 100644
--- a/arch/efi/efi/efi-image.c
+++ b/arch/efi/efi/efi-image.c
@@ -17,6 +17,7 @@
  *
  */
 
+#include <clock.h>
 #include <common.h>
 #include <linux/sizes.h>
 #include <memory.h>
@@ -242,6 +243,10 @@ static int do_bootm_efi(struct image_data *data)
 			       boot_header->ramdisk_image);
 		printf("...\n");
 	}
+
+	efi_set_variable_usec("LoaderTimeExecUSec", &efi_systemd_vendor_guid,
+			      get_time_ns()/1000);
+
 	linux_efi_handover(handle, boot_header);
 
 	return 0;
diff --git a/arch/efi/efi/efi.c b/arch/efi/efi/efi.c
index b0e98f95b02b..1f0deed577f0 100644
--- a/arch/efi/efi/efi.c
+++ b/arch/efi/efi/efi.c
@@ -340,6 +340,7 @@ efi_status_t efi_main(efi_handle_t image, efi_system_table_t *sys_table)
 	efi_physical_addr_t mem;
 	size_t memsize;
 	efi_status_t efiret;
+	char *uuid;
 
 #ifdef DEBUG
 	sys_table->con_out->output_string(sys_table->con_out, L"barebox\n");
@@ -377,6 +378,21 @@ efi_status_t efi_main(efi_handle_t image, efi_system_table_t *sys_table)
 	mem_malloc_init((void *)mem, (void *)mem + memsize);
 
 	efi_clocksource_init();
+	efi_set_variable_usec("LoaderTimeInitUSec", &efi_systemd_vendor_guid,
+			      get_time_ns()/1000);
+
+	uuid = device_path_to_partuuid(device_path_from_handle(
+				       efi_loaded_image->device_handle));
+	if (uuid) {
+		wchar_t *uuid16 = xstrdup_char_to_wchar(uuid);
+		efi_set_variable("LoaderDevicePartUUID",
+				 &efi_systemd_vendor_guid,
+				 EFI_VARIABLE_BOOTSERVICE_ACCESS |
+				 EFI_VARIABLE_RUNTIME_ACCESS,
+				 uuid16, (strlen(uuid)+1) * sizeof(wchar_t));
+		free(uuid);
+		free(uuid16);
+	}
 
 	start_barebox();
 
diff --git a/common/efi-guid.c b/common/efi-guid.c
index f6b040410522..f4ff7feadfe4 100644
--- a/common/efi-guid.c
+++ b/common/efi-guid.c
@@ -9,6 +9,7 @@ efi_guid_t efi_unknown_device_guid = EFI_UNKNOWN_DEVICE_GUID;
 efi_guid_t efi_null_guid = EFI_NULL_GUID;
 efi_guid_t efi_global_variable_guid = EFI_GLOBAL_VARIABLE_GUID;
 efi_guid_t efi_block_io_protocol_guid = EFI_BLOCK_IO_PROTOCOL_GUID;
+efi_guid_t efi_systemd_vendor_guid = EFI_SYSTEMD_VENDOR_GUID;
 
 #define EFI_GUID_STRING(guid, short, long) do {	\
 	if (!efi_guidcmp(guid, *g))		\
diff --git a/include/efi.h b/include/efi.h
index 830e0457dd1c..5b0de119fb74 100644
--- a/include/efi.h
+++ b/include/efi.h
@@ -473,6 +473,10 @@ extern efi_runtime_services_t *RT;
 #define EFI_BAREBOX_VENDOR_GUID \
 	EFI_GUID(0x5b91f69c, 0x8b88, 0x4a2b, 0x92, 0x69, 0x5f, 0x1d, 0x80, 0x2b, 0x51, 0x75)
 
+/* for systemd */
+#define EFI_SYSTEMD_VENDOR_GUID \
+	EFI_GUID(0x4a67b082, 0x0a4c, 0x41cf, 0xb6, 0xc7, 0x44, 0x0b, 0x29, 0xbb, 0x8c, 0x4f)
+
 extern efi_guid_t efi_file_info_id;
 extern efi_guid_t efi_simple_file_system_protocol_guid;
 extern efi_guid_t efi_device_path_protocol_guid;
@@ -481,6 +485,7 @@ extern efi_guid_t efi_unknown_device_guid;
 extern efi_guid_t efi_null_guid;
 extern efi_guid_t efi_global_variable_guid;
 extern efi_guid_t efi_block_io_protocol_guid;
+extern efi_guid_t efi_systemd_vendor_guid;
 
 #define EFI_SYSTEM_TABLE_SIGNATURE ((u64)0x5453595320494249ULL)
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
