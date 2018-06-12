Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x243.google.com ([2607:f8b0:400e:c00::243])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fSqIq-0007Da-Bd
 for barebox@lists.infradead.org; Tue, 12 Jun 2018 20:54:08 +0000
Received: by mail-pf0-x243.google.com with SMTP id y8-v6so149150pfm.10
 for <barebox@lists.infradead.org>; Tue, 12 Jun 2018 13:53:58 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 12 Jun 2018 13:52:40 -0700
Message-Id: <20180612205310.25745-25-andrew.smirnov@gmail.com>
In-Reply-To: <20180612205310.25745-1-andrew.smirnov@gmail.com>
References: <20180612205310.25745-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v5 24/54] ARM: i.MX: xload-esdhc: Allow custom buffer address,
 device offset
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add code to support specifying different buffer address and SD/MMC
device offset to read it from in esdhc_start_image(). This change is
needed to support i.MX8.

NOTE: We intentionnaly "emulate" reading at arbitrary offset in
esdhc_start_image() as opposed to implementing it in
esdhc_read_blocks() in order to avoid having to detect if units of
blocks or bytes should be used to specify offset to CMD18.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/xload-esdhc.c | 16 +++++++++-------
 1 file changed, 9 insertions(+), 7 deletions(-)

diff --git a/arch/arm/mach-imx/xload-esdhc.c b/arch/arm/mach-imx/xload-esdhc.c
index 4580f53cd..6ab4cabb7 100644
--- a/arch/arm/mach-imx/xload-esdhc.c
+++ b/arch/arm/mach-imx/xload-esdhc.c
@@ -216,10 +216,11 @@ static int esdhc_read_blocks(struct esdhc *esdhc, void *dst, size_t len)
 	return 0;
 }
 
-static int esdhc_start_image(struct esdhc *esdhc)
+static int
+esdhc_start_image(struct esdhc *esdhc, ptrdiff_t address, u32 offset)
 {
-	void *buf = (void *)0x10000000;
-	u32 *ivt = buf + SZ_1K;
+	void *buf = (void *)address;
+	u32 *ivt = buf + offset + SZ_1K;
 	int ret, len;
 	void __noreturn (*bb)(void);
 	unsigned int ofs;
@@ -227,9 +228,10 @@ static int esdhc_start_image(struct esdhc *esdhc)
 	len = imx_image_size();
 	len = ALIGN(len, SECTOR_SIZE);
 
-	ret = esdhc_read_blocks(esdhc, buf, 3 * SECTOR_SIZE);
+	ret = esdhc_read_blocks(esdhc, buf, offset + SZ_1K + SECTOR_SIZE);
 	if (ret)
 		return ret;
+
 	if (*(u32 *)(ivt) != 0x402000d1) {
 		pr_debug("IVT header not found on SD card. Found 0x%08x instead of 0x402000d1\n",
 				*ivt);
@@ -238,7 +240,7 @@ static int esdhc_start_image(struct esdhc *esdhc)
 
 	pr_debug("Check ok, loading image\n");
 
-	ret = esdhc_read_blocks(esdhc, buf, len);
+	ret = esdhc_read_blocks(esdhc, buf, offset + len);
 	if (ret) {
 		pr_err("Loading image failed with %d\n", ret);
 		return ret;
@@ -246,7 +248,7 @@ static int esdhc_start_image(struct esdhc *esdhc)
 
 	pr_debug("Image loaded successfully\n");
 
-	ofs = *(ivt + 1) - *(ivt + 8);
+	ofs = offset + *(ivt + 1) - *(ivt + 8);
 
 	bb = buf + ofs;
 
@@ -288,5 +290,5 @@ int imx6_esdhc_start_image(int instance)
 
 	esdhc.is_mx6 = 1;
 
-	return esdhc_start_image(&esdhc);
+	return esdhc_start_image(&esdhc, 0x10000000, 0);
 }
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
