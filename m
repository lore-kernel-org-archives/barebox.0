Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycore.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1avMM4-0001La-BW
 for barebox@lists.infradead.org; Wed, 27 Apr 2016 10:06:01 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id B27B1A00466
 for <barebox@lists.infradead.org>; Wed, 27 Apr 2016 12:05:36 +0200 (CEST)
From: Stefan Christ <s.christ@phytec.de>
Date: Wed, 27 Apr 2016 12:04:40 +0200
Message-Id: <1461751489-13302-7-git-send-email-s.christ@phytec.de>
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
Subject: [PATCH for next 06/15] ARM: dts: pfla02: use long enough reset for
 ethernet phy
To: barebox@lists.infradead.org

Use a longer reset time for ethernet phy Micrel KSZ9031RNX.  Otherwise a
small percentage of modules have 'transmission timeouts' errors like

   barebox@Phytec phyFLEX-i.MX6 Quad Carrier-Board:/ ifup eth0
   warning: No MAC address set. Using random address 7e:94:4d:02:f8:f3
   eth0: 1000Mbps full duplex link detected
   eth0: transmission timeout
   T eth0: transmission timeout
   T eth0: transmission timeout
   T eth0: transmission timeout
   T eth0: transmission timeout

Signed-off-by: Stefan Christ <s.christ@phytec.de>
Signed-off-by: Christian Hemp <c.hemp@phytec.de>
---
 arch/arm/dts/imx6qdl-phytec-pfla02.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
index aa39fd9..9a8c702 100644
--- a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
+++ b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
@@ -85,6 +85,7 @@
 
 &fec {
 	phy-handle = <&ethphy>;
+	phy-reset-duration = <10>; /* in msecs */
 
 	mdio {
 		#address-cells = <1>;
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
