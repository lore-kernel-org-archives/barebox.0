Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihnkH-0003fB-6O
 for barebox@lists.infradead.org; Thu, 19 Dec 2019 04:49:06 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 19 Dec 2019 05:48:59 +0100
Message-Id: <20191219044859.20766-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: rpi: Do not warn when firmware doesn't pass a dtb
To: Barebox List <barebox@lists.infradead.org>

When there is no dtb placed in the boot partition then none is passed by
the firmware to barebox. This may be intended, so do not warn about it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/raspberry-pi/lowlevel.c   |  9 ++++++++-
 arch/arm/boards/raspberry-pi/rpi-common.c | 11 +++++++----
 2 files changed, 15 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boards/raspberry-pi/lowlevel.c b/arch/arm/boards/raspberry-pi/lowlevel.c
index 70f1936522..d58beb6052 100644
--- a/arch/arm/boards/raspberry-pi/lowlevel.c
+++ b/arch/arm/boards/raspberry-pi/lowlevel.c
@@ -11,8 +11,15 @@ static void copy_vc_fdt(void *dest, void *src, unsigned long max_size)
 {
 	struct fdt_header *oftree_src = src;
 	struct fdt_header *oftree_dest = dest;
+	unsigned long size;
 
-	unsigned long size = be32_to_cpu(oftree_src->totalsize);
+	if (!src) {
+		oftree_dest->magic = cpu_to_be32(VIDEOCORE_FDT_ERROR);
+		oftree_dest->totalsize = cpu_to_be32(0);
+		return;
+	}
+
+	size = be32_to_cpu(oftree_src->totalsize);
 	if (size > max_size) {
 		oftree_dest->magic = cpu_to_be32(VIDEOCORE_FDT_ERROR);
 		/* Save an error code after the magic value for easier
diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
index dd6bbd5bdd..acb26f6a64 100644
--- a/arch/arm/boards/raspberry-pi/rpi-common.c
+++ b/arch/arm/boards/raspberry-pi/rpi-common.c
@@ -433,13 +433,16 @@ static void rpi_vc_fdt(void)
 
 	oftree = saved_vc_fdt;
 	magic = be32_to_cpu(oftree->magic);
-	if (magic != FDT_MAGIC) {
-		pr_err("videocore fdt saved in pbl has invalid magic\n");
 
-		if (magic == VIDEOCORE_FDT_ERROR) {
+	if (magic == VIDEOCORE_FDT_ERROR) {
+		if (oftree->totalsize)
 			pr_err("there was an error copying fdt in pbl: %d\n",
 					be32_to_cpu(oftree->totalsize));
-		}
+		return;
+	}
+
+	if (magic != FDT_MAGIC) {
+		pr_err("videocore fdt saved in pbl has invalid magic\n");
 		return;
 	}
 
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
