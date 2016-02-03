Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aQv09-0000mU-OD
 for barebox@lists.infradead.org; Wed, 03 Feb 2016 10:49:34 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Wed,  3 Feb 2016 11:49:03 +0100
Message-Id: <1454496543-15791-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH] ARM: i.MX25: fixup broken DryIce GPR
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Fixup the DryIce Non-Non-Volatile-Memory GPR register.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/mach-imx/imx25.c | 26 ++++++++++++++++++++++++++
 1 file changed, 26 insertions(+)

diff --git a/arch/arm/mach-imx/imx25.c b/arch/arm/mach-imx/imx25.c
index 8761d636820f..3cfeebbe9348 100644
--- a/arch/arm/mach-imx/imx25.c
+++ b/arch/arm/mach-imx/imx25.c
@@ -20,6 +20,9 @@
 #include <mach/generic.h>
 #include <linux/sizes.h>
 
+#define MX25_BOOTROM_HAB_MAGIC		0x3c95cac6
+#define MX25_DRYICE_GPR			0x3c
+
 void imx25_setup_weimcs(size_t cs, unsigned upper, unsigned lower,
 		unsigned additional)
 {
@@ -55,9 +58,32 @@ u64 imx_uid(void)
 
 int imx25_init(void)
 {
+	int val;
+
 	imx25_boot_save_loc((void *)MX25_CCM_BASE_ADDR);
 	add_generic_device("imx25-esdctl", 0, NULL, MX25_ESDCTL_BASE_ADDR, 0x1000, IORESOURCE_MEM, NULL);
 
+	/*
+	 * When the i.MX25 is used with internal boot, the boot ROM always
+	 * performs some HAB actions. These will copy the value from DryIce
+	 * GPR (0x53ffc03c) to a location in SRAM (0x78001734) and then overwrites
+	 * the GPR with 0x3c95cac6.
+	 * After the HAB routine is done, the boot ROM should copy the previously
+	 * saved value from SRAM back to the GPR. The last step is not done.
+	 * The boot ROM is officially broken in this regard.
+	 * This renders the Non-volatile memory to a Non-Non-volatile memory.
+	 * To still be able to use the GPR for its intended purpose, copy the
+	 * saved SRAM value back manually.
+	 */
+	val = readl(MX25_IRAM_BASE_ADDR + 0x1734);
+
+	/*
+	 * When there is a different value in SRAM than the magic value
+	 * it must be a value saved to the GPR.
+	 */
+	if (val != MX25_BOOTROM_HAB_MAGIC)
+		writel(val, MX25_DRYICE_BASE_ADDR + MX25_DRYICE_GPR);
+
 	return 0;
 }
 
-- 
2.7.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
