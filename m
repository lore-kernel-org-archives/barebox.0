Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3fop-0000v5-0L
 for barebox@lists.infradead.org; Mon, 17 Feb 2020 12:48:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 17 Feb 2020 13:46:14 +0100
Message-Id: <20200217124623.14520-34-s.hauer@pengutronix.de>
In-Reply-To: <20200217124623.14520-1-s.hauer@pengutronix.de>
References: <20200217124623.14520-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 33/42] mfd: Add Rohm bd71837 header file
To: Barebox List <barebox@lists.infradead.org>

The Rohm bd71837 is a PMIC used on the NXP i.MX8MM EVK eval board. For
now only add the register definitions to be used by the lowlevel code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/mfd/bd71837.h | 103 ++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 103 insertions(+)
 create mode 100644 include/mfd/bd71837.h

diff --git a/include/mfd/bd71837.h b/include/mfd/bd71837.h
new file mode 100644
index 0000000000..75e07e1de3
--- /dev/null
+++ b/include/mfd/bd71837.h
@@ -0,0 +1,103 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/* Copyright (C) 2018 ROHM Semiconductors */
+
+#ifndef BD718XX_H_
+#define BD718XX_H_
+
+#define BD718XX_REGULATOR_DRIVER "bd718x7_regulator"
+
+enum {
+	ROHM_CHIP_TYPE_BD71837 = 0,
+	ROHM_CHIP_TYPE_BD71847,
+	ROHM_CHIP_TYPE_BD70528,
+	ROHM_CHIP_TYPE_AMOUNT
+};
+
+enum {
+	BD718XX_REV			= 0x00,
+	BD718XX_SWRESET			= 0x01,
+	BD718XX_I2C_DEV			= 0x02,
+	BD718XX_PWRCTRL0		= 0x03,
+	BD718XX_PWRCTRL1		= 0x04,
+	BD718XX_BUCK1_CTRL		= 0x05,
+	BD718XX_BUCK2_CTRL		= 0x06,
+	BD71837_BUCK3_CTRL		= 0x07,
+	BD71837_BUCK4_CTRL		= 0x08,
+	BD718XX_1ST_NODVS_BUCK_CTRL	= 0x09,
+	BD718XX_2ND_NODVS_BUCK_CTRL	= 0x0a,
+	BD718XX_3RD_NODVS_BUCK_CTRL	= 0x0b,
+	BD718XX_4TH_NODVS_BUCK_CTRL	= 0x0c,
+	BD718XX_BUCK1_VOLT_RUN		= 0x0d,
+	BD718XX_BUCK1_VOLT_IDLE		= 0x0e,
+	BD718XX_BUCK1_VOLT_SUSP		= 0x0f,
+	BD718XX_BUCK2_VOLT_RUN		= 0x10,
+	BD718XX_BUCK2_VOLT_IDLE		= 0x11,
+	BD71837_BUCK3_VOLT_RUN		= 0x12,
+	BD71837_BUCK4_VOLT_RUN		= 0x13,
+	BD718XX_1ST_NODVS_BUCK_VOLT	= 0x14,
+	BD718XX_2ND_NODVS_BUCK_VOLT	= 0x15,
+	BD718XX_3RD_NODVS_BUCK_VOLT	= 0x16,
+	BD718XX_4TH_NODVS_BUCK_VOLT	= 0x17,
+	BD718XX_LDO1_VOLT		= 0x18,
+	BD718XX_LDO2_VOLT		= 0x19,
+	BD718XX_LDO3_VOLT		= 0x1a,
+	BD718XX_LDO4_VOLT		= 0x1b,
+	BD718XX_LDO5_VOLT		= 0x1c,
+	BD718XX_LDO6_VOLT		= 0x1d,
+	BD71837_LDO7_VOLT		= 0x1e,
+	BD718XX_TRANS_COND0		= 0x1f,
+	BD718XX_TRANS_COND1		= 0x20,
+	BD718XX_VRFAULTEN		= 0x21,
+	BD718XX_MVRFLTMASK0		= 0x22,
+	BD718XX_MVRFLTMASK1		= 0x23,
+	BD718XX_MVRFLTMASK2		= 0x24,
+	BD718XX_RCVCFG			= 0x25,
+	BD718XX_RCVNUM			= 0x26,
+	BD718XX_PWRONCONFIG0		= 0x27,
+	BD718XX_PWRONCONFIG1		= 0x28,
+	BD718XX_RESETSRC		= 0x29,
+	BD718XX_MIRQ			= 0x2a,
+	BD718XX_IRQ			= 0x2b,
+	BD718XX_IN_MON			= 0x2c,
+	BD718XX_POW_STATE		= 0x2d,
+	BD718XX_OUT32K			= 0x2e,
+	BD718XX_REGLOCK			= 0x2f,
+	BD718XX_MUXSW_EN		= 0x30,
+	BD718XX_REG_OTPVER		= 0xff,
+	BD718XX_MAX_REGISTER		= 0x100,
+};
+
+#define BD718XX_REGLOCK_PWRSEQ		0x1
+#define BD718XX_REGLOCK_VREG		0x10
+
+#define BD718XX_BUCK_EN			0x01
+#define BD718XX_LDO_EN			0x40
+#define BD718XX_BUCK_SEL		0x02
+#define BD718XX_LDO_SEL			0x80
+
+#define DVS_BUCK_RUN_MASK		0x3f
+#define BD718XX_1ST_NODVS_BUCK_MASK	0x07
+#define BD718XX_3RD_NODVS_BUCK_MASK	0x07
+#define BD718XX_4TH_NODVS_BUCK_MASK	0x3f
+
+#define BD71847_BUCK3_MASK		0x07
+#define BD71847_BUCK3_RANGE_MASK	0xc0
+#define BD71847_BUCK4_MASK		0x03
+#define BD71847_BUCK4_RANGE_MASK	0x40
+
+#define BD71837_BUCK5_RANGE_MASK	0x80
+#define BD71837_BUCK6_MASK		0x03
+
+#define BD718XX_LDO1_MASK		0x03
+#define BD718XX_LDO1_RANGE_MASK		0x20
+#define BD718XX_LDO2_MASK		0x20
+#define BD718XX_LDO3_MASK		0x0f
+#define BD718XX_LDO4_MASK		0x0f
+#define BD718XX_LDO6_MASK		0x0f
+
+#define BD71837_LDO5_MASK		0x0f
+#define BD71847_LDO5_MASK		0x0f
+#define BD71847_LDO5_RANGE_MASK		0x20
+#define BD71837_LDO7_MASK		0x0f
+
+#endif
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
