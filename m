Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k3cDD-0008D2-Hj
 for barebox@lists.infradead.org; Thu, 06 Aug 2020 09:29:24 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1k3cDB-0007ww-Bn
 for barebox@lists.infradead.org; Thu, 06 Aug 2020 11:29:21 +0200
Received: from mfe by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1k3cDB-0002Mm-2U
 for barebox@lists.infradead.org; Thu, 06 Aug 2020 11:29:21 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Thu,  6 Aug 2020 11:29:18 +0200
Message-Id: <20200806092919.1892-2-m.felsch@pengutronix.de>
In-Reply-To: <20200806092919.1892-1-m.felsch@pengutronix.de>
References: <20200806092919.1892-1-m.felsch@pengutronix.de>
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
Subject: [PATCH 2/3] ARM: imx6ul: add fec bits to GPR syscon definition
To: barebox@lists.infradead.org

The commit is based on linux commit:
8<-----------------------------------------------------------
commit 9f55eb92441883a1afca48dc8d32bf62c4d8e833
Author: Fugang Duan <b38611@freescale.com>
Date:   Tue Jul 28 15:30:39 2015 +0800

    ARM: imx6ul: add fec bits to GPR syscon definition

    FEC requires additional bits to select refrence clock.

    Signed-off-by: Fugang Duan <B38611@freescale.com>
    Signed-off-by: Shawn Guo <shawnguo@kernel.org>
8<-----------------------------------------------------------

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 include/mfd/imx6q-iomuxc-gpr.h | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/include/mfd/imx6q-iomuxc-gpr.h b/include/mfd/imx6q-iomuxc-gpr.h
index b2c9da6579..16c83a778c 100644
--- a/include/mfd/imx6q-iomuxc-gpr.h
+++ b/include/mfd/imx6q-iomuxc-gpr.h
@@ -344,4 +344,12 @@
 #define IMX6Q_GPR13_SATA_PHY_1_MED		(0x1 << 0)
 #define IMX6Q_GPR13_SATA_PHY_1_SLOW		(0x2 << 0)
 
+/* For imx6ul iomux gpr register field define */
+#define IMX6UL_GPR1_ENET1_CLK_DIR		(0x1 << 17)
+#define IMX6UL_GPR1_ENET2_CLK_DIR		(0x1 << 18)
+#define IMX6UL_GPR1_ENET1_CLK_OUTPUT		(0x1 << 17)
+#define IMX6UL_GPR1_ENET2_CLK_OUTPUT		(0x1 << 18)
+#define IMX6UL_GPR1_ENET_CLK_DIR		(0x3 << 17)
+#define IMX6UL_GPR1_ENET_CLK_OUTPUT		(0x3 << 17)
+
 #endif /* __LINUX_IMX6Q_IOMUXC_GPR_H */
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
