Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1avMLh-0001GG-NV
 for barebox@lists.infradead.org; Wed, 27 Apr 2016 10:05:40 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id B15FBA00450
 for <barebox@lists.infradead.org>; Wed, 27 Apr 2016 12:05:36 +0200 (CEST)
From: Stefan Christ <s.christ@phytec.de>
Date: Wed, 27 Apr 2016 12:04:39 +0200
Message-Id: <1461751489-13302-6-git-send-email-s.christ@phytec.de>
In-Reply-To: <1461751489-13302-1-git-send-email-s.christ@phytec.de>
References: <1461751489-13302-1-git-send-email-s.christ@phytec.de>
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
Subject: [PATCH for next 05/15] ARM: dts: imx6: phyboards: reduce clock speed
 for usdhc3
To: barebox@lists.infradead.org

Due to hardware issues the usdhc3 interface on phyBOARD-ALCOR i.MX6 and
phyBOARD-SUBRA i.MX6 doesn't work reliable at 50Mhz.  You get
communication errors like

    barebox@Phytec phyBOARD SUBRA:/ ls /mnt/mmc/
    mmc2: detected SD card version 2.0
    mmc2: registered mmc2
    imx-esdhc 2198000.usdhc: timeout 2
    mmc2: Cannot read MBR/partition table

Therefore reduce the maximum clock speed to avoid these problems.

Signed-off-by: Stefan Christ <s.christ@phytec.de>
---
 arch/arm/dts/imx6q-phytec-phyboard-alcor.dts    | 1 +
 arch/arm/dts/imx6qdl-phytec-phyboard-subra.dtsi | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/arm/dts/imx6q-phytec-phyboard-alcor.dts b/arch/arm/dts/imx6q-phytec-phyboard-alcor.dts
index a60fc18..1c4a785 100644
--- a/arch/arm/dts/imx6q-phytec-phyboard-alcor.dts
+++ b/arch/arm/dts/imx6q-phytec-phyboard-alcor.dts
@@ -35,4 +35,5 @@
 
 &usdhc3 {
 	status = "okay";
+	max-frequency = <25000000>; /* 25 Mhz */
 };
diff --git a/arch/arm/dts/imx6qdl-phytec-phyboard-subra.dtsi b/arch/arm/dts/imx6qdl-phytec-phyboard-subra.dtsi
index 1efc632..a38765b 100644
--- a/arch/arm/dts/imx6qdl-phytec-phyboard-subra.dtsi
+++ b/arch/arm/dts/imx6qdl-phytec-phyboard-subra.dtsi
@@ -26,4 +26,5 @@
 
 &usdhc3 {
 	status = "okay";
+	max-frequency = <25000000>; /* 25 Mhz */
 };
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
