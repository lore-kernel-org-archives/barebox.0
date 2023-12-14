Delivery-date: Thu, 14 Dec 2023 16:19:16 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rDnUa-0030jn-0O
	for lore@lore.pengutronix.de;
	Thu, 14 Dec 2023 16:19:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rDnUa-0004Gh-8U
	for lore@pengutronix.de; Thu, 14 Dec 2023 16:19:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jEdEI0y6oPUi38/wUJl7dGCpzwv6dzKlZLwaA/Ar+jo=; b=zNmOFJra5Hkc3ab3E6yoxvxPYb
	xu+zrXcaEG3005+svtXdQLH6eR0YoEUzHM4wgIRwF9pFObOYzUKUuOU5qAZ0xtsbW3fK4tSqU/gtB
	xPRkBTHfVKIQUId30RYBupOYHP/RxFfrHqPvtliaTs9X0EwG1mVn49aDWIPSibcTdZmdrImzBUgd1
	kOhTrDkFz6WhMgt4laMF1reaRYTH4ttlDfjzgaTlJExdcLfQl8m/S3kU8hE/opP/cu2aRxbnWGqfB
	10MmuyLZJ+nSmh0CX1uJxnrpbD0ufnZIyuzhQSQoFsXasKWR1fSVbBnvlPNMsGtm/TjJGykMO6Qu6
	xDdFCRbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDnTZ-000ei1-0a;
	Thu, 14 Dec 2023 15:18:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDnTU-000egX-0U
	for barebox@lists.infradead.org;
	Thu, 14 Dec 2023 15:18:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rDnTS-00033M-RC; Thu, 14 Dec 2023 16:18:06 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rDnTS-00Fphc-E1; Thu, 14 Dec 2023 16:18:06 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rDnTS-006x67-19;
	Thu, 14 Dec 2023 16:18:06 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 14 Dec 2023 16:18:04 +0100
Message-Id: <20231214151805.1657124-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231214151805.1657124-1-a.fatoum@pengutronix.de>
References: <20231214151805.1657124-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231214_071808_216004_C59FBC9A 
X-CRM114-Status: GOOD (  18.07  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/3] ARM: dts: rpi4: add DTs for CM4 and Rpi 400
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

CM4 is quite different from the Rpi4, so we should really not use the
same DT for both. Rpi 400 is nearly the same, but has a different MDIO
clock, so let's ship a different DT for that as well. They are
compressed anyway and the FAT partition should be big enough to handle a
few extra tens of kilobytes.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/raspberry-pi/lowlevel.c |  8 ++++++--
 arch/arm/dts/Makefile                   |  2 +-
 arch/arm/dts/bcm2711-rpi-4.dts          | 15 +++------------
 arch/arm/dts/bcm2711-rpi-400.dts        |  4 ++++
 arch/arm/dts/bcm2711-rpi-cm4-io.dts     |  4 ++++
 arch/arm/dts/bcm2711-rpi.dtsi           | 13 +++++++++++++
 6 files changed, 31 insertions(+), 15 deletions(-)
 create mode 100644 arch/arm/dts/bcm2711-rpi-400.dts
 create mode 100644 arch/arm/dts/bcm2711-rpi-cm4-io.dts
 create mode 100644 arch/arm/dts/bcm2711-rpi.dtsi

diff --git a/arch/arm/boards/raspberry-pi/lowlevel.c b/arch/arm/boards/raspberry-pi/lowlevel.c
index f8078dba677c..a1e195d81151 100644
--- a/arch/arm/boards/raspberry-pi/lowlevel.c
+++ b/arch/arm/boards/raspberry-pi/lowlevel.c
@@ -71,6 +71,8 @@ extern char __dtb_z_bcm2836_rpi_2_start[];
 extern char __dtb_z_bcm2837_rpi_3_start[];
 extern char __dtb_z_bcm2837_rpi_cm3_start[];
 extern char __dtb_z_bcm2711_rpi_4_start[];
+extern char __dtb_z_bcm2711_rpi_400_start[];
+extern char __dtb_z_bcm2711_rpi_cm4_io_start[];
 
 RPI_ENTRY_FUNCTION(start_raspberry_pi1, SZ_128M, fdt)
 {
@@ -132,9 +134,11 @@ static void *rpi_get_board_fdt(int rev)
 		return DT_IF_ENABLED(__dtb_z_bcm2837_rpi_cm3_start, CONFIG_MACH_RPI_CM3);
 
 	case BCM2711_BOARD_REV_4_B:
-	case BCM2711_BOARD_REV_400:
-	case BCM2711_BOARD_REV_CM4:
 		return DT_IF_ENABLED(__dtb_z_bcm2711_rpi_4_start, CONFIG_MACH_RPI4);
+	case BCM2711_BOARD_REV_400:
+		return DT_IF_ENABLED(__dtb_z_bcm2711_rpi_400_start, CONFIG_MACH_RPI4);
+	case BCM2711_BOARD_REV_CM4:
+		return DT_IF_ENABLED(__dtb_z_bcm2711_rpi_cm4_io_start, CONFIG_MACH_RPI4);
 	}
 
 	return NULL;
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 4d837b13411c..04af3bd64687 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -123,7 +123,7 @@ lwl-$(CONFIG_MACH_RPI) += bcm2835-rpi.dtb.o
 lwl-$(CONFIG_MACH_RPI2) += bcm2836-rpi-2.dtb.o
 lwl-$(CONFIG_MACH_RPI3) += bcm2837-rpi-3.dtb.o
 lwl-$(CONFIG_MACH_RPI_CM3) += bcm2837-rpi-cm3.dtb.o
-lwl-$(CONFIG_MACH_RPI4) += bcm2711-rpi-4.dtb.o
+lwl-$(CONFIG_MACH_RPI4) += bcm2711-rpi-4.dtb.o bcm2711-rpi-400.dtb.o bcm2711-rpi-cm4-io.dtb.o
 lwl-$(CONFIG_MACH_SABRELITE) += imx6q-sabrelite.dtb.o imx6dl-sabrelite.dtb.o
 lwl-$(CONFIG_MACH_SABRESD) += imx6q-sabresd.dtb.o imx6qp-sabresd.dtb.o
 lwl-$(CONFIG_MACH_FREESCALE_IMX6SX_SABRESDB) += imx6sx-sdb.dtb.o
diff --git a/arch/arm/dts/bcm2711-rpi-4.dts b/arch/arm/dts/bcm2711-rpi-4.dts
index de748e2fc65b..6d46dd3b839c 100644
--- a/arch/arm/dts/bcm2711-rpi-4.dts
+++ b/arch/arm/dts/bcm2711-rpi-4.dts
@@ -1,13 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
+
 #include <arm64/broadcom/bcm2711-rpi-4-b.dts>
-
-&{/memory@0} {
-	reg = <0x0 0x0 0x0>;
-};
-
-&uart1 {
-	/* VPU core clock is reported at 200MHz, but needs to be 500Mhz
-	 * for ns16550 driver to set correct baudrate. Until that's
-	 * figured out, hardcode clock frequency to the expected value
-	 */
-	clock-frequency = <500000000>;
-};
+#include "bcm2711-rpi.dtsi"
diff --git a/arch/arm/dts/bcm2711-rpi-400.dts b/arch/arm/dts/bcm2711-rpi-400.dts
new file mode 100644
index 000000000000..fb9cccb2b914
--- /dev/null
+++ b/arch/arm/dts/bcm2711-rpi-400.dts
@@ -0,0 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#include <arm64/broadcom/bcm2711-rpi-400.dts>
+#include "bcm2711-rpi.dtsi"
diff --git a/arch/arm/dts/bcm2711-rpi-cm4-io.dts b/arch/arm/dts/bcm2711-rpi-cm4-io.dts
new file mode 100644
index 000000000000..115491e7a638
--- /dev/null
+++ b/arch/arm/dts/bcm2711-rpi-cm4-io.dts
@@ -0,0 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#include <arm64/broadcom/bcm2711-rpi-cm4-io.dts>
+#include "bcm2711-rpi.dtsi"
diff --git a/arch/arm/dts/bcm2711-rpi.dtsi b/arch/arm/dts/bcm2711-rpi.dtsi
new file mode 100644
index 000000000000..cb2952ccac85
--- /dev/null
+++ b/arch/arm/dts/bcm2711-rpi.dtsi
@@ -0,0 +1,13 @@
+// SPDX-License-Identifier: GPL-2.0
+
+&{/memory@0} {
+	reg = <0x0 0x0 0x0>;
+};
+
+&uart1 {
+	/* VPU core clock is reported at 200MHz, but needs to be 500Mhz
+	 * for ns16550 driver to set correct baudrate. Until that's
+	 * figured out, hardcode clock frequency to the expected value
+	 */
+	clock-frequency = <500000000>;
+};
-- 
2.39.2



