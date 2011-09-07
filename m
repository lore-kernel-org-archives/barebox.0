Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from quix.smartspb.net ([217.119.16.133])
	by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R1Fi5-0000N5-3K
	for barebox@lists.infradead.org; Wed, 07 Sep 2011 10:50:26 +0000
Received: from milas.spb.ru ([217.119.30.118])
	by quix.smartspb.net with esmtps (TLSv1:AES256-SHA:256)
	(Exim 4.61 (FreeBSD)) (envelope-from <shc@milas.spb.ru>)
	id 1R1C6l-000Bcq-Ds
	for barebox@lists.infradead.org; Wed, 07 Sep 2011 10:59:39 +0400
Received: from localhost (localhost.localdomain [127.0.0.1])
	by milas.spb.ru (Postfix) with ESMTP id 71EDDC7402
	for <barebox@lists.infradead.org>; Wed,  7 Sep 2011 10:59:08 +0400 (MSD)
Received: from milas.spb.ru ([127.0.0.1])
	by localhost (milas.spb.ru [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3Z5oAfaHe7QI for <barebox@lists.infradead.org>;
	Wed,  7 Sep 2011 10:59:07 +0400 (MSD)
From: Alexander Shiyan <shc@milas.spb.ru>
Message-Id: <1315378747.14373@milas.spb.ru>
Date: Wed, 07 Sep 2011 10:59:07 +0400 (MSD)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="bound1315378747"
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Add SD3 & I2C2 pin definitions for MX51
To: barebox@lists.infradead.org

This is a multi-part message in MIME format.

--bound1315378747
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: 7bit

--- barebox-v2011.09.0.orig/arch/arm/mach-imx/include/mach/iomux-mx51.h	2011-08-26 18:23:46.000000000 +0400
+++ barebox-v2011.09.0/arch/arm/mach-imx/include/mach/iomux-mx51.h	2011-09-05 15:42:19.000000000 +0400
@@ -146,24 +146,37 @@

 #define MX51_PAD_NANDF_CS7__NANDF_CS7			IOMUX_PAD(0x534, 0x14C, 0, 0x0, 0, NO_PAD_CTRL)
 #define MX51_PAD_NANDF_CS7__FEC_TX_EN			IOMUX_PAD(0x534, 0x14C, 1, 0x0, 0, MX51_FEC_PAD_CTRL)
+#define MX51_PAD_NANDF_CS7__SD3_CLK			IOMUX_PAD(0x534, 0x14C, 5, 0x0, 0, MX51_FEC_PAD_CTRL)

 #define MX51_PAD_NANDF_RDY_INT__NANDF_RDY_INT		IOMUX_PAD(0x538, 0x150, 0, 0x0, 0, NO_PAD_CTRL)
 #define MX51_PAD_NANDF_RDY_INT__FEC_TX_CLK		IOMUX_PAD(0x538, 0x150, 1, 0x974, 0, MX51_FEC_PAD_CTRL)
+#define MX51_PAD_NANDF_RDY_INT__SD3_CMD			IOMUX_PAD(0x538, 0x150, 5 | IOMUX_CONFIG_SION, 0, 0, MX51_FEC_PAD_CTRL)

 #define MX51_PAD_NANDF_D15__NANDF_D15			IOMUX_PAD(0x53C, 0x154, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_NANDF_D15__SD3_DATA7			IOMUX_PAD(0x53C, 0x154, 5, 0x0, 0, NO_PAD_CTRL)
+
 #define MX51_PAD_NANDF_D14__NANDF_D14			IOMUX_PAD(0x540, 0x158, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_NANDF_D14__SD3_DATA6			IOMUX_PAD(0x540, 0x158, 5, 0x0, 0, NO_PAD_CTRL)
+
 #define MX51_PAD_NANDF_D13__NANDF_D13			IOMUX_PAD(0x544, 0x15C, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_NANDF_D13__SD3_DATA5			IOMUX_PAD(0x544, 0x15C, 5, 0x0, 0, NO_PAD_CTRL)
+
 #define MX51_PAD_NANDF_D12__NANDF_D12			IOMUX_PAD(0x548, 0x160, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_NANDF_D12__SD3_DATA4			IOMUX_PAD(0x548, 0x160, 5, 0x0, 0, NO_PAD_CTRL)

 #define MX51_PAD_NANDF_D11__NANDF_D11			IOMUX_PAD(0x54C, 0x164, 0, 0x0, 0, NO_PAD_CTRL)
 #define MX51_PAD_NANDF_D11__FEC_RX_DV			IOMUX_PAD(0x54C, 0x164, 2, 0x96c, 0, MX51_FEC_PAD_CTRL)
+#define MX51_PAD_NANDF_D11__SD3_DATA3			IOMUX_PAD(0x54C, 0x164, 5, 0x948, 1, MX51_FEC_PAD_CTRL)

 #define MX51_PAD_NANDF_D10__NANDF_D10			IOMUX_PAD(0x550, 0x168, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_NANDF_D10__SD3_DATA2			IOMUX_PAD(0x550, 0x168, 5, 0x944, 1, NO_PAD_CTRL)

 #define MX51_PAD_NANDF_D9__NANDF_D9			IOMUX_PAD(0x554, 0x16C, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_NANDF_D9__SD3_DATA1			IOMUX_PAD(0x554, 0x16C, 5, 0x940, 1, NO_PAD_CTRL)

 #define MX51_PAD_NANDF_D8__NANDF_D8			IOMUX_PAD(0x558, 0x170, 0, 0x0, 0, NO_PAD_CTRL)
 #define MX51_PAD_NANDF_D8__FEC_TDATA0			IOMUX_PAD(0x558, 0x170, 2, 0x0, 0, MX51_FEC_PAD_CTRL)
+#define MX51_PAD_NANDF_D8__SD3_DATA0			IOMUX_PAD(0x558, 0x170, 5, 0x93c, 1, MX51_FEC_PAD_CTRL)

 #define MX51_PAD_NANDF_D7__NANDF_D7			IOMUX_PAD(0x55C, 0x174, 0, 0x0, 0, NO_PAD_CTRL)
 #define MX51_PAD_NANDF_D6__NANDF_D6			IOMUX_PAD(0x560, 0x178, 0, 0x0, 0, NO_PAD_CTRL)
@@ -337,8 +350,13 @@
 #define MX51_PAD_SD2_DATA1__SD2_DATA1			IOMUX_PAD(0x7C8, 0x3C0, 0, 0x0, 0, NO_PAD_CTRL)
 #define MX51_PAD_SD2_DATA2__SD2_DATA2			IOMUX_PAD(0x7CC, 0x3C4, 0, 0x0, 0, NO_PAD_CTRL)
 #define MX51_PAD_SD2_DATA3__SD2_DATA3			IOMUX_PAD(0x7D0, 0x3C8, 0, 0x0, 0, NO_PAD_CTRL)
+
 #define MX51_PAD_GPIO1_2__GPIO1_2			IOMUX_PAD(0x7D4, 0x3CC, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_GPIO1_2__I2C2_SCL			IOMUX_PAD(0x7D4, 0x3CC, 2 | IOMUX_CONFIG_SION, 0x9b8, 3, NO_PAD_CTRL)
+
 #define MX51_PAD_GPIO1_3__GPIO1_3			IOMUX_PAD(0x7D8, 0x3D0, 0, 0x0, 0, NO_PAD_CTRL)
+#define MX51_PAD_GPIO1_3__I2C2_SDA			IOMUX_PAD(0x7D8, 0x3D0, 2 | IOMUX_CONFIG_SION, 0x9bc, 3, NO_PAD_CTRL)
+
 #define MX51_PAD_PMIC_INT_REQ__PMIC_INT_REQ		IOMUX_PAD(0x7FC, 0x3D4, 0, 0x0, 0, NO_PAD_CTRL)
 #define MX51_PAD_GPIO1_4__GPIO1_4			IOMUX_PAD(0x804, 0x3D8, 0, 0x0, 0, NO_PAD_CTRL)
 #define MX51_PAD_GPIO1_5__GPIO1_5			IOMUX_PAD(0x808, 0x3DC, 0, 0x0, 0, NO_PAD_CTRL)

--bound1315378747
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--bound1315378747--
