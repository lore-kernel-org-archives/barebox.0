Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihawe-0007Bx-9D
 for barebox@lists.infradead.org; Wed, 18 Dec 2019 15:09:01 +0000
Received: by mail-pg1-x543.google.com with SMTP id 6so1448288pgk.0
 for <barebox@lists.infradead.org>; Wed, 18 Dec 2019 07:08:59 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 18 Dec 2019 07:08:41 -0800
Message-Id: <20191218150841.30840-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH] ARM: aarch64: Add support for passing initrd to Linux
To: Barebox List <barebox@lists.infradead.org>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

This adds basic support for passing intird to Linux

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/lib64/armlinux.c | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/arch/arm/lib64/armlinux.c b/arch/arm/lib64/armlinux.c
index afa56792f..31bd987f1 100644
--- a/arch/arm/lib64/armlinux.c
+++ b/arch/arm/lib64/armlinux.c
@@ -37,6 +37,7 @@ static int do_bootm_linux(struct image_data *data)
 		       unsigned long x3);
 	resource_size_t start, end;
 	unsigned long text_offset, image_size, devicetree, kernel;
+	unsigned long image_end;
 	int ret;
 	void *fdt;
 
@@ -53,7 +54,18 @@ static int do_bootm_linux(struct image_data *data)
 	if (ret)
 		goto out;
 
-	devicetree = ALIGN(kernel + image_size, PAGE_SIZE);
+	image_end = PAGE_ALIGN(kernel + image_size);
+
+	if (bootm_has_initrd(data)) {
+		ret = bootm_load_initrd(data, image_end);
+		if (ret)
+			return ret;
+
+		image_end += resource_size(data->initrd_res);
+		image_end = PAGE_ALIGN(image_end);
+	}
+
+	devicetree = image_end;
 
 	fdt = bootm_get_devicetree(data);
 	if (IS_ERR(fdt)) {
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
