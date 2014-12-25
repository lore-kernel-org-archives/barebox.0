Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2001:6f8:1178:4:290:27ff:fe1d:cc33]
 (helo=metis.ext.pengutronix.de)
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Y4Bux-0006Tx-NF
 for barebox@lists.infradead.org; Thu, 25 Dec 2014 17:09:47 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Thu, 25 Dec 2014 18:09:00 +0100
Message-Id: <1419527345-9301-3-git-send-email-jlu@pengutronix.de>
In-Reply-To: <1419527345-9301-1-git-send-email-jlu@pengutronix.de>
References: <1419527345-9301-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH 3/8] fixup! ARM: mxs: Add lowlevel setup from U-Boot
To: barebox@lists.infradead.org

Some boards need to use a different memory setup. Instead of a weak
funktion like u-boot, we make the register data available to the board
code. Also add some early delay and block reset code.

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 arch/arm/mach-mxs/include/mach/init.h |  3 ++
 arch/arm/mach-mxs/mem-init.c          | 91 ++++++++++++++++++++++++++++++++---
 2 files changed, 88 insertions(+), 6 deletions(-)

diff --git a/arch/arm/mach-mxs/include/mach/init.h b/arch/arm/mach-mxs/include/mach/init.h
index d1ac2e4..1f9d8d4 100644
--- a/arch/arm/mach-mxs/include/mach/init.h
+++ b/arch/arm/mach-mxs/include/mach/init.h
@@ -18,6 +18,9 @@ void mx28_power_init(void);
 void mx28_power_init_battery_input(void);
 void mxs_power_wait_pswitch(void);
 
+extern uint32_t mx28_dram_vals[];
+extern uint32_t mx23_dram_vals[];
+
 void mx23_mem_init(void);
 void mx28_mem_init(void);
 void mxs_mem_setup_cpu_and_hbus(void);
diff --git a/arch/arm/mach-mxs/mem-init.c b/arch/arm/mach-mxs/mem-init.c
index f4328b7..9773f94 100644
--- a/arch/arm/mach-mxs/mem-init.c
+++ b/arch/arm/mach-mxs/mem-init.c
@@ -4,6 +4,8 @@
  * Copyright (C) 2011 Marek Vasut <marek.vasut@gmail.com>
  * on behalf of DENX Software Engineering GmbH
  *
+ * Copyright 2013 Stefan Roese <sr@denx.de>
+ *
  * SPDX-License-Identifier:	GPL-2.0+
  */
 
@@ -12,13 +14,80 @@
 #include <io.h>
 #include <mach/imx-regs.h>
 #include <linux/compiler.h>
-#include <stmp-device.h>
 
 #include <mach/init.h>
 #include <mach/regs-power-mx28.h>
-#include <mach/regs-clkctrl-mx28.h>
+#if defined CONFIG_ARCH_IMX23
+# include <mach/regs-clkctrl-mx23.h>
+#endif
+#if defined CONFIG_ARCH_IMX28
+# include <mach/regs-clkctrl-mx28.h>
+#endif
+
+/* 1 second delay should be plenty of time for block reset. */
+#define	RESET_MAX_TIMEOUT	1000000
+
+#define	MXS_BLOCK_SFTRST	(1 << 31)
+#define	MXS_BLOCK_CLKGATE	(1 << 30)
+
+int mxs_early_wait_mask_set(struct mxs_register_32 *reg, uint32_t mask, unsigned
+								int timeout)
+{
+	while (--timeout) {
+		if ((readl(&reg->reg) & mask) == mask)
+			break;
+		mxs_early_delay(1);
+	}
+
+	return !timeout;
+}
+
+int mxs_early_wait_mask_clr(struct mxs_register_32 *reg, uint32_t mask, unsigned
+								int timeout)
+{
+	while (--timeout) {
+		if ((readl(&reg->reg) & mask) == 0)
+			break;
+		mxs_early_delay(1);
+	}
+
+	return !timeout;
+}
+
+int mxs_early_reset_block(struct mxs_register_32 *reg)
+{
+	/* Clear SFTRST */
+	writel(MXS_BLOCK_SFTRST, &reg->reg_clr);
+
+	if (mxs_early_wait_mask_clr(reg, MXS_BLOCK_SFTRST, RESET_MAX_TIMEOUT))
+		return 1;
 
-static uint32_t mx28_dram_vals[] = {
+	/* Clear CLKGATE */
+	writel(MXS_BLOCK_CLKGATE, &reg->reg_clr);
+
+	/* Set SFTRST */
+	writel(MXS_BLOCK_SFTRST, &reg->reg_set);
+
+	/* Wait for CLKGATE being set */
+	if (mxs_early_wait_mask_set(reg, MXS_BLOCK_CLKGATE, RESET_MAX_TIMEOUT))
+		return 1;
+
+	/* Clear SFTRST */
+	writel(MXS_BLOCK_SFTRST, &reg->reg_clr);
+
+	if (mxs_early_wait_mask_clr(reg, MXS_BLOCK_SFTRST, RESET_MAX_TIMEOUT))
+		return 1;
+
+	/* Clear CLKGATE */
+	writel(MXS_BLOCK_CLKGATE, &reg->reg_clr);
+
+	if (mxs_early_wait_mask_clr(reg, MXS_BLOCK_CLKGATE, RESET_MAX_TIMEOUT))
+		return 1;
+
+	return 0;
+}
+
+uint32_t mx28_dram_vals[] = {
 /*
  * i.MX28 DDR2 at 200MHz
  */
@@ -75,7 +144,7 @@ static uint32_t mx28_dram_vals[] = {
 /*
  * i.MX23 DDR at 133MHz
  */
-static uint32_t mx23_dram_vals[] = {
+uint32_t mx23_dram_vals[] = {
 	0x01010001, 0x00010100, 0x01000101, 0x00000001,
 	0x00000101, 0x00000000, 0x00010000, 0x01000001,
 	0x00000000, 0x00000001, 0x07000200, 0x00070202,
@@ -202,9 +271,13 @@ static void mx23_mem_setup_vddmem(void)
 	struct mxs_power_regs *power_regs =
 		(struct mxs_power_regs *)IMX_POWER_BASE;
 
+	/* We must wait before and after disabling the current limiter! */
+	mxs_early_delay(10000);
+
 	clrbits_le32(&power_regs->hw_power_vddmemctrl,
 		POWER_VDDMEMCTRL_ENABLE_ILIMIT);
 
+	mxs_early_delay(10000);
 }
 
 void mx23_mem_init(void)
@@ -221,7 +294,7 @@ void mx23_mem_init(void)
 	 * suffers from memory instability. This thing is mx23 specific and is
 	 * no longer present on mx28.
 	 */
-	stmp_reset_block((struct mxs_register_32 *)IMX_EMI_BASE, 0);
+	mxs_early_reset_block((struct mxs_register_32 *)IMX_EMI_BASE);
 
 	mx23_mem_setup_vddmem();
 
@@ -238,7 +311,13 @@ void mx23_mem_init(void)
 	setbits_le32(IMX_SDRAMC_BASE + 0x20, 1 << 16);
 
 	clrbits_le32(IMX_SDRAMC_BASE + 0x40, 1 << 17);
-	mxs_early_delay(20000);
+
+	/* Wait for EMI_STAT bit DRAM_HALTED */
+	for (;;) {
+		if (!(readl(IMX_EMI_BASE + 0x10) & (1 << 1)))
+			break;
+		mxs_early_delay(1000);
+	}
 
 	/* Adjust EMI port priority. */
 	clrsetbits_le32(0x80020000, 0x1f << 16, 0x2);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
