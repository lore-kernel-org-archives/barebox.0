Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x235.google.com ([2a00:1450:4010:c07::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZtU57-0005yE-Ve
 for barebox@lists.infradead.org; Tue, 03 Nov 2015 05:24:32 +0000
Received: by lffz202 with SMTP id z202so5447741lff.3
 for <barebox@lists.infradead.org>; Mon, 02 Nov 2015 21:24:08 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue,  3 Nov 2015 08:23:54 +0300
Message-Id: <1446528236-30236-8-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1446528236-30236-1-git-send-email-antonynpavlov@gmail.com>
References: <1446528236-30236-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v2 7/9] MIPS: ath79: add pbl_ar9331_ddr1_config macro
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

See also u-boot_mod/u-boot/cpu/mips/ar7240/hornet_ddr_init.S

See also this openocd commit:

    commit f59d2d9ecfee8899df531b87b7acaa468725f238
    Author: Oleksij Rempel <linux@rempel-privat.de>
    Date:   Fri Jan 30 13:05:31 2015 +0100

        tcl/target|board: add config Atheros ar9331

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/mach-ath79/include/mach/pbl_macros.h | 43 ++++++++++++++++++++++++++
 1 file changed, 43 insertions(+)

diff --git a/arch/mips/mach-ath79/include/mach/pbl_macros.h b/arch/mips/mach-ath79/include/mach/pbl_macros.h
index 4ef90dc..c00dd28 100644
--- a/arch/mips/mach-ath79/include/mach/pbl_macros.h
+++ b/arch/mips/mach-ath79/include/mach/pbl_macros.h
@@ -67,6 +67,49 @@
 #define DDR_EMR2		(DDR_BASE | AR933X_DDR_DDR_EMR2)
 #define DDR_EMR3		(DDR_BASE | AR933X_DDR_DDR_EMR3)
 
+.macro	pbl_ar9331_ddr1_config
+	.set	push
+	.set	noreorder
+
+	pbl_reg_writel	0x7fbc8cd0, DDR_CONFIG
+	pbl_reg_writel	0x9dd0e6a8, DDR_CONFIG2
+
+	pbl_reg_writel	DDR_CTRL_PREA, DDR_CTRL
+
+	/* 0x133: on reset Mode Register value */
+	pbl_reg_writel	0x133, DDR_MODE
+	pbl_reg_writel	DDR_CTRL_MRS, DDR_CTRL
+
+	/*
+	 * DDR_EXT_MODE[1] = 1: Reduced Drive Strength
+	 * DDR_EXT_MODE[0] = 0: Enable DLL
+	 */
+	pbl_reg_writel	0x2, DDR_EXT_MODE
+	pbl_reg_writel	DDR_CTRL_EMRS, DDR_CTRL
+
+	pbl_reg_writel	DDR_CTRL_PREA, DDR_CTRL
+
+	/* DLL out of reset, CAS Latency 3 */
+	pbl_reg_writel	0x33, DDR_MODE
+	pbl_reg_writel	DDR_CTRL_MRS, DDR_CTRL
+
+	/* Refresh control. Bit 14 is enable. Bits<13:0> Refresh time */
+	pbl_reg_writel	0x4186, DDR_REFRESH
+	/* This register is used along with DQ Lane 0; DQ[7:0], DQS_0 */
+	pbl_reg_writel	0x8, DDR_TAP_CTRL0
+	/* This register is used along with DQ Lane 1; DQ[15:8], DQS_1 */
+	pbl_reg_writel	0x9, DDR_TAP_CTRL1
+
+	/*
+	 * DDR read and capture bit mask.
+	 * Each bit represents a cycle of valid data.
+	 * 0xff: use 16-bit DDR
+	 */
+	pbl_reg_writel	0xff, DDR_RD_DATA
+
+	.set	pop
+.endm
+
 .macro	pbl_ar9331_ddr2_config
 	.set	push
 	.set	noreorder
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
