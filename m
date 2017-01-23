Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.4.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cVi1K-0002jx-TV
 for barebox@lists.infradead.org; Mon, 23 Jan 2017 17:03:10 +0000
From: Michael Olbrich <m.olbrich@pengutronix.de>
Subject: [PATCH 5/5] efi: don't unload drivers
Date: Mon, 23 Jan 2017 18:02:18 +0100
Message-Id: <20170123170218.25139-6-m.olbrich@pengutronix.de>
In-Reply-To: <20170123170218.25139-1-m.olbrich@pengutronix.de>
References: <20170123170218.25139-1-m.olbrich@pengutronix.de>
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
To: barebox@lists.infradead.org
Cc: Michael Olbrich <m.olbrich@pengutronix.de>

EFI applications should be unloaded to avoid leaking memory. However, boot
or runtime services continue in the background. So they must not be
unloaded.

Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
---
 arch/efi/efi/efi-image.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/arch/efi/efi/efi-image.c b/arch/efi/efi/efi-image.c
index c780cad6d447..27f3c1b39c22 100644
--- a/arch/efi/efi/efi-image.c
+++ b/arch/efi/efi/efi-image.c
@@ -130,12 +130,16 @@ static int efi_execute_image(const char *file)
 	efi_status_t efiret;
 	struct linux_kernel_header *image_header;
 	const char *options;
+	bool is_driver;
 	int ret;
 
 	ret = efi_load_image(file, &loaded_image, &handle);
 	if (ret)
 		return ret;
 
+	is_driver = (loaded_image->image_code_type == EFI_BOOT_SERVICES_CODE) ||
+		(loaded_image->image_code_type == EFI_RUNTIME_SERVICES_CODE);
+
 	image_header = (struct linux_kernel_header *)loaded_image->image_base;
 	if (image_header->boot_flag == 0xAA55 &&
 	    image_header->header == 0x53726448) {
@@ -152,7 +156,8 @@ static int efi_execute_image(const char *file)
 	if (EFI_ERROR(efiret))
 		pr_err("failed to StartImage: %s\n", efi_strerror(efiret));
 
-	BS->unload_image(handle);
+	if (!is_driver)
+		BS->unload_image(handle);
 
 	efi_connect_all();
 	efi_register_devices();
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
