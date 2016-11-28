Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cBHYy-0005ZM-Ue
 for barebox@lists.infradead.org; Mon, 28 Nov 2016 08:45:26 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id DFF3EA00322
 for <barebox@lists.infradead.org>; Mon, 28 Nov 2016 09:45:43 +0100 (CET)
From: Stefan Lengfeld <s.lengfeld@phytec.de>
Date: Mon, 28 Nov 2016 09:44:59 +0100
Message-Id: <1480322700-3529-2-git-send-email-s.lengfeld@phytec.de>
In-Reply-To: <1480322700-3529-1-git-send-email-s.lengfeld@phytec.de>
References: <1480322700-3529-1-git-send-email-s.lengfeld@phytec.de>
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
Subject: [PATCH 2/3] ARM: dts: phycore-imx6: fix missing ?xc-skew-ps settings
 for ethphy
To: barebox@lists.infradead.org

Add the missing txc-skew-ps and rxc-skew-ps settings for the Micrel PHY.
I have seen problems with 1GBit ethernet on a phyCORE-i.MX6 Solo. Oddly
enough the missing skew values are no problems for all our other
modules.

Signed-off-by: Stefan Lengfeld <s.lengfeld@phytec.de>
---
 arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi b/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
index 9649817..76777e8 100644
--- a/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
+++ b/arch/arm/dts/imx6qdl-phytec-phycore-som.dtsi
@@ -88,6 +88,8 @@
 
 		ethphy: ethernet-phy@3 {
 			reg = <3>;
+			txc-skew-ps = <1680>;
+			rxc-skew-ps = <1860>;
 		};
 	};
 };
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
