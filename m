Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7Lgl-0004FN-T6
 for barebox@lists.infradead.org; Thu, 27 Feb 2020 16:07:05 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>) id 1j7Lgi-0000Oc-Mb
 for barebox@lists.infradead.org; Thu, 27 Feb 2020 17:07:00 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu, 27 Feb 2020 17:07:00 +0100
Message-Id: <20200227160700.28904-1-l.stach@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] ARM64: add support for booting a FIT image
To: barebox@lists.infradead.org

Add the image type handler to the ARM64 boot code. The only difference
in the boot handling is that we need to look at the FIT loaded OS image
header to get the image load and text offsets, as the os_header is the
FIT header, not the kernel header.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/lib64/armlinux.c | 15 +++++++++++++--
 1 file changed, 13 insertions(+), 2 deletions(-)

diff --git a/arch/arm/lib64/armlinux.c b/arch/arm/lib64/armlinux.c
index 31bd987f10db..bcff770793e7 100644
--- a/arch/arm/lib64/armlinux.c
+++ b/arch/arm/lib64/armlinux.c
@@ -33,6 +33,8 @@
 
 static int do_bootm_linux(struct image_data *data)
 {
+	const void *kernel_header =
+			data->os_fit ? data->fit_kernel : data->os_header;
 	void (*fn)(unsigned long dtb, unsigned long x1, unsigned long x2,
 		       unsigned long x3);
 	resource_size_t start, end;
@@ -41,8 +43,8 @@ static int do_bootm_linux(struct image_data *data)
 	int ret;
 	void *fdt;
 
-	text_offset = le64_to_cpup(data->os_header + 8);
-	image_size = le64_to_cpup(data->os_header + 16);
+	text_offset = le64_to_cpup(kernel_header + 8);
+	image_size = le64_to_cpup(kernel_header+ 16);
 
 	ret = memory_bank_first_find_space(&start, &end);
 	if (ret)
@@ -101,6 +103,12 @@ static struct image_handler aarch64_linux_handler = {
         .filetype = filetype_arm64_linux_image,
 };
 
+static struct image_handler aarch64_fit_handler = {
+	.name = "FIT image",
+	.bootm = do_bootm_linux,
+	.filetype = filetype_oftree,
+};
+
 static int do_bootm_barebox(struct image_data *data)
 {
 	void (*fn)(unsigned long x0, unsigned long x1, unsigned long x2,
@@ -144,6 +152,9 @@ static int aarch64_register_image_handler(void)
 	register_image_handler(&aarch64_linux_handler);
 	register_image_handler(&aarch64_barebox_handler);
 
+	if (IS_ENABLED(CONFIG_FITIMAGE))
+		register_image_handler(&aarch64_fit_handler);
+
 	return 0;
 }
 late_initcall(aarch64_register_image_handler);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
