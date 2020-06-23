Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jnimZ-0001Ui-1s
 for barebox@lists.infradead.org; Tue, 23 Jun 2020 13:16:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 23 Jun 2020 15:16:00 +0200
Message-Id: <20200623131606.16316-15-s.hauer@pengutronix.de>
In-Reply-To: <20200623131606.16316-1-s.hauer@pengutronix.de>
References: <20200623131606.16316-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 14/20] mfd: Add pca9440 register map
To: Barebox List <barebox@lists.infradead.org>

The pca9440 is a PMIC found on the i.MX8MP-EVK board. This adds the
register map for it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/mfd/pca9450.h | 55 +++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 55 insertions(+)
 create mode 100644 include/mfd/pca9450.h

diff --git a/include/mfd/pca9450.h b/include/mfd/pca9450.h
new file mode 100644
index 0000000000..256f661911
--- /dev/null
+++ b/include/mfd/pca9450.h
@@ -0,0 +1,55 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+/*
+ * Copyright 2019 NXP
+ */
+
+#ifndef PCA9450_H_
+#define PCA9450_H_
+
+enum {
+	PCA9450_REG_DEV_ID      = 0x00,
+	PCA9450_INT1            = 0x01,
+	PCA9450_INT1_MSK        = 0x02,
+	PCA9450_STATUS1         = 0x03,
+	PCA9450_STATUS2         = 0x04,
+	PCA9450_PWRON_STAT      = 0x05,
+	PCA9450_SW_RST          = 0x06,
+	PCA9450_PWR_CTRL        = 0x07,
+	PCA9450_RESET_CTRL      = 0x08,
+	PCA9450_CONFIG1         = 0x09,
+	PCA9450_CONFIG2         = 0x0A,
+	PCA9450_BUCK123_DVS     = 0x0C,
+	PCA9450_BUCK1OUT_LIMIT  = 0x0D,
+	PCA9450_BUCK2OUT_LIMIT  = 0x0E,
+	PCA9450_BUCK3OUT_LIMIT  = 0x0F,
+	PCA9450_BUCK1CTRL       = 0x10,
+	PCA9450_BUCK1OUT_DVS0   = 0x11,
+	PCA9450_BUCK1OUT_DVS1   = 0x12,
+	PCA9450_BUCK2CTRL       = 0x13,
+	PCA9450_BUCK2OUT_DVS0   = 0x14,
+	PCA9450_BUCK2OUT_DVS1   = 0x15,
+	PCA9450_BUCK3CTRL       = 0x16,
+	PCA9450_BUCK3OUT_DVS0   = 0x17,
+	PCA9450_BUCK3OUT_DVS1   = 0x18,
+	PCA9450_BUCK4CTRL       = 0x19,
+	PCA9450_BUCK4OUT        = 0x1A,
+	PCA9450_BUCK5CTRL       = 0x1B,
+	PCA9450_BUCK5OUT        = 0x1C,
+	PCA9450_BUCK6CTRL       = 0x1D,
+	PCA9450_BUCK6OUT        = 0x1E,
+	PCA9450_LDO_AD_CTRL     = 0x20,
+	PCA9450_LDO1CTRL        = 0x21,
+	PCA9450_LDO2CTRL        = 0x22,
+	PCA9450_LDO3CTRL        = 0x23,
+	PCA9450_LDO4CTRL        = 0x24,
+	PCA9450_LDO5CTRL_L      = 0x25,
+	PCA9450_LDO5CTRL_H      = 0x26,
+	PCA9450_LOADSW_CTRL     = 0x2A,
+	PCA9450_VRFLT1_STS      = 0x2B,
+	PCA9450_VRFLT2_STS      = 0x2C,
+	PCA9450_VRFLT1_MASK     = 0x2D,
+	PCA9450_VRFLT2_MASK     = 0x2E,
+	PCA9450_REG_NUM,
+};
+
+#endif
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
