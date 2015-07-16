Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZFemO-0001SN-1u
 for barebox@lists.infradead.org; Thu, 16 Jul 2015 08:44:32 +0000
From: Michael Olbrich <m.olbrich@pengutronix.de>
Date: Thu, 16 Jul 2015 10:43:51 +0200
Message-Id: <1437036236-19096-3-git-send-email-m.olbrich@pengutronix.de>
In-Reply-To: <1437036236-19096-1-git-send-email-m.olbrich@pengutronix.de>
References: <1437036236-19096-1-git-send-email-m.olbrich@pengutronix.de>
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
Subject: [PATCH 2/7] efi: refactor & improve application loading code
To: barebox@lists.infradead.org
Cc: Michael Olbrich <m.olbrich@pengutronix.de>

Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
---

checkpatch.pl complains about the header change here. My change matches the
surrounding declarations, so I left it like this.

 arch/efi/efi/efi-image.c | 57 ++++++++++++++++++++++++++++++++++++++----------
 include/efi.h            |  2 +-
 2 files changed, 46 insertions(+), 13 deletions(-)

diff --git a/arch/efi/efi/efi-image.c b/arch/efi/efi/efi-image.c
index f7bda8dfcb2a..a36a38147657 100644
--- a/arch/efi/efi/efi-image.c
+++ b/arch/efi/efi/efi-image.c
@@ -37,14 +37,13 @@
 #include <mach/efi.h>
 #include <mach/efi-device.h>
 
-static int efi_execute_image(const char *file)
+int efi_load_image(const char *file, efi_loaded_image_t **loaded_image,
+		efi_handle_t *h)
 {
 	void *exe;
 	size_t size;
 	efi_handle_t handle;
-	efi_status_t efiret;
-	const char *options;
-	efi_loaded_image_t *loaded_image;
+	efi_status_t efiret = EFI_SUCCESS;
 
 	exe = read_file(file, &size);
 	if (!exe)
@@ -54,25 +53,59 @@ static int efi_execute_image(const char *file)
 			&handle);
 	if (EFI_ERROR(efiret)) {
 		pr_err("failed to LoadImage: %s\n", efi_strerror(efiret));
-		return -efi_errno(efiret);;
+		goto out;
 	};
 
 	efiret = BS->open_protocol(handle, &efi_loaded_image_protocol_guid,
-			(void **)&loaded_image,
+			(void **)loaded_image,
 			efi_parent_image, NULL, EFI_OPEN_PROTOCOL_GET_PROTOCOL);
-	if (EFI_ERROR(efiret))
-		return -efi_errno(efiret);
+	if (EFI_ERROR(efiret)) {
+		pr_err("failed to OpenProtocol: %s\n", efi_strerror(efiret));
+		BS->unload_image(handle);
+		goto out;
+	}
 
-	options = linux_bootargs_get();
-	loaded_image->load_options = strdup_char_to_wchar(options);
-	loaded_image->load_options_size = (strlen(options) + 1) * sizeof(wchar_t);
+	*h = handle;
+out:
+	memset(exe, 0, size);
+	free(exe);
+	return -efi_errno(efiret);
+}
+
+static int efi_execute_image(const char *file)
+{
+	efi_handle_t handle;
+	efi_loaded_image_t *loaded_image;
+	efi_status_t efiret;
+	struct linux_kernel_header *image_header;
+	const char *options;
+	int ret;
+
+	ret = efi_load_image(file, &loaded_image, &handle);
+	if (ret)
+		return ret;
+
+	image_header = (struct linux_kernel_header *)loaded_image->image_base;
+	if (image_header->boot_flag == 0xAA55 &&
+	    image_header->header == 0x53726448) {
+		pr_debug("Linux kernel detected. Adding bootargs.");
+		options = linux_bootargs_get();
+		pr_err("add linux options '%s'\n", options);
+		loaded_image->load_options = strdup_char_to_wchar(options);
+		loaded_image->load_options_size =
+			(strlen(options) + 1) * sizeof(wchar_t);
+	}
 
 	efiret = BS->start_image(handle, NULL, NULL);
+	if (EFI_ERROR(efiret))
+		pr_err("failed to StartImage: %s\n", efi_strerror(efiret));
+
+	BS->unload_image(handle);
 
 	efi_connect_all();
 	efi_register_devices();
 
-	return 0;
+	return -efi_errno(efiret);
 }
 
 static int do_bootm_efi(struct image_data *data)
diff --git a/include/efi.h b/include/efi.h
index 9b4f16bd9f54..e79a407bc2c8 100644
--- a/include/efi.h
+++ b/include/efi.h
@@ -211,7 +211,7 @@ typedef struct {
 			unsigned long *exitdata_size, s16 **exitdata);
 	efi_status_t(EFIAPI *exit)(efi_handle_t handle,  efi_status_t exit_status,
 			unsigned long exitdata_size, s16 *exitdata);
-	void *unload_image;
+	efi_status_t (EFIAPI *unload_image)(efi_handle_t handle);
 	efi_status_t (EFIAPI *exit_boot_services)(efi_handle_t, unsigned long);
 	void *get_next_monotonic_count;
 	efi_status_t (EFIAPI *stall)(unsigned long usecs);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
