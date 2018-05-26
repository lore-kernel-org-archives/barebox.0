Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x242.google.com ([2607:f8b0:400e:c00::242])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fMg5e-00070n-3h
 for barebox@lists.infradead.org; Sat, 26 May 2018 20:47:03 +0000
Received: by mail-pf0-x242.google.com with SMTP id w129-v6so4092992pfd.3
 for <barebox@lists.infradead.org>; Sat, 26 May 2018 13:46:49 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat, 26 May 2018 13:44:28 -0700
Message-Id: <20180526204451.16530-26-andrew.smirnov@gmail.com>
In-Reply-To: <20180526204451.16530-1-andrew.smirnov@gmail.com>
References: <20180526204451.16530-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 25/48] ARM: i.MX: xload-esdhc: Allow custom buffer address,
 device offset
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add code to support specifying different buffer address and SD/MMC
device offset to read it from in esdhc_start_image(). This change is
needed to support i.MX8.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/xload-esdhc.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm/mach-imx/xload-esdhc.c b/arch/arm/mach-imx/xload-esdhc.c
index 4580f53cd..d4c1dfa28 100644
--- a/arch/arm/mach-imx/xload-esdhc.c
+++ b/arch/arm/mach-imx/xload-esdhc.c
@@ -176,7 +176,7 @@ esdhc_send_cmd(struct esdhc *esdhc, struct mci_cmd *cmd, struct mci_data *data)
 	return 0;
 }
 
-static int esdhc_read_blocks(struct esdhc *esdhc, void *dst, size_t len)
+static int esdhc_read_blocks(struct esdhc *esdhc, u32 offset, void *dst, size_t len)
 {
 	struct mci_cmd cmd;
 	struct mci_data data;
@@ -193,7 +193,7 @@ static int esdhc_read_blocks(struct esdhc *esdhc, void *dst, size_t len)
 	writel(val, esdhc->regs + SDHCI_CLOCK_CONTROL__TIMEOUT_CONTROL__SOFTWARE_RESET);
 
 	cmd.cmdidx = MMC_CMD_READ_MULTIPLE_BLOCK;
-	cmd.cmdarg = 0;
+	cmd.cmdarg = offset;
 	cmd.resp_type = MMC_RSP_R1;
 
 	data.dest = dst;
@@ -216,9 +216,9 @@ static int esdhc_read_blocks(struct esdhc *esdhc, void *dst, size_t len)
 	return 0;
 }
 
-static int esdhc_start_image(struct esdhc *esdhc)
+static int esdhc_start_image(struct esdhc *esdhc, ptrdiff_t address, u32 offset)
 {
-	void *buf = (void *)0x10000000;
+	void *buf = (void *)address;
 	u32 *ivt = buf + SZ_1K;
 	int ret, len;
 	void __noreturn (*bb)(void);
@@ -227,7 +227,7 @@ static int esdhc_start_image(struct esdhc *esdhc)
 	len = imx_image_size();
 	len = ALIGN(len, SECTOR_SIZE);
 
-	ret = esdhc_read_blocks(esdhc, buf, 3 * SECTOR_SIZE);
+	ret = esdhc_read_blocks(esdhc, offset, buf, 3 * SECTOR_SIZE);
 	if (ret)
 		return ret;
 	if (*(u32 *)(ivt) != 0x402000d1) {
@@ -238,7 +238,7 @@ static int esdhc_start_image(struct esdhc *esdhc)
 
 	pr_debug("Check ok, loading image\n");
 
-	ret = esdhc_read_blocks(esdhc, buf, len);
+	ret = esdhc_read_blocks(esdhc, offset, buf, len);
 	if (ret) {
 		pr_err("Loading image failed with %d\n", ret);
 		return ret;
@@ -288,5 +288,5 @@ int imx6_esdhc_start_image(int instance)
 
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
