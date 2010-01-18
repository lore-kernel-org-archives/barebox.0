Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NWqEG-0006Mn-6G
	for barebox@lists.infradead.org; Mon, 18 Jan 2010 11:57:14 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Mon, 18 Jan 2010 12:56:27 +0100
Message-Id: <1263815791-10839-5-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1263815791-10839-4-git-send-email-mkl@pengutronix.de>
References: <1263815791-10839-1-git-send-email-mkl@pengutronix.de>
	<1263815791-10839-2-git-send-email-mkl@pengutronix.de>
	<1263815791-10839-3-git-send-email-mkl@pengutronix.de>
	<1263815791-10839-4-git-send-email-mkl@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 4/8] i.MX35 3stack: clean up indention
To: barebox@lists.infradead.org
Cc: sha@pengutronix.de

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 board/freescale-mx35-3-stack/3stack.c |   12 ++++++------
 1 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/board/freescale-mx35-3-stack/3stack.c b/board/freescale-mx35-3-stack/3stack.c
index f671936..d87808a 100644
--- a/board/freescale-mx35-3-stack/3stack.c
+++ b/board/freescale-mx35-3-stack/3stack.c
@@ -60,8 +60,8 @@ static struct device_d cfi_dev = {
 };
 
 static struct fec_platform_data fec_info = {
-	.xcv_type = MII100,
-	.phy_addr = 0x1F,
+	.xcv_type	= MII100,
+	.phy_addr	= 0x1F,
 };
 
 static struct device_d fec_dev = {
@@ -71,8 +71,8 @@ static struct device_d fec_dev = {
 };
 
 static struct memory_platform_data sdram_pdata = {
-	.name = "ram0",
-	.flags = DEVFS_RDWR,
+	.name	= "ram0",
+	.flags	= DEVFS_RDWR,
 };
 
 static struct device_d sdram_dev = {
@@ -167,7 +167,7 @@ static int f3s_devices_init(void)
 	register_device(&nand_dev);
 	register_device(&cfi_dev);
 
-	switch ( (reg >> 25) & 0x3) {
+	switch ((reg >> 25) & 0x3) {
 	case 0x01:		/* NAND is the source */
 		devfs_add_partition("nand0", 0x00000, 0x40000, PARTITION_FIXED, "self_raw");
 		dev_add_bb_dev("self_raw", "self0");
@@ -332,7 +332,7 @@ static int f3s_core_init(void)
 
 	/* MPR - priority is M4 > M2 > M3 > M5 > M0 > M1 */
 #define MAX_PARAM1 0x00302154
-	writel(MAX_PARAM1, IMX_MAX_BASE + 0x0);   /* for S0 */
+	writel(MAX_PARAM1, IMX_MAX_BASE + 0x000); /* for S0 */
 	writel(MAX_PARAM1, IMX_MAX_BASE + 0x100); /* for S1 */
 	writel(MAX_PARAM1, IMX_MAX_BASE + 0x200); /* for S2 */
 	writel(MAX_PARAM1, IMX_MAX_BASE + 0x300); /* for S3 */
-- 
1.6.6


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
