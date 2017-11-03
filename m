Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.87 #1 (Red Hat Linux))
 id 1eAZWh-0005gR-Pc
 for barebox@lists.infradead.org; Fri, 03 Nov 2017 10:48:41 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 8C391A0087D
 for <barebox@lists.infradead.org>; Fri,  3 Nov 2017 11:50:12 +0100 (CET)
From: Daniel Schultz <d.schultz@phytec.de>
Date: Fri, 3 Nov 2017 11:48:14 +0100
Message-Id: <1509706096-41266-1-git-send-email-d.schultz@phytec.de>
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
Subject: [PATCH v3 1/3] ARM: dts: AM335x: Add dummy i2c nodes
To: barebox@lists.infradead.org

These i2c nodes are needed for autoenable of i2c clients, because
the autoenable API searches for device tree nodes to get the client
address.

Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
---
 arch/arm/dts/am335x-phytec-phycore-som.dtsi | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm/dts/am335x-phytec-phycore-som.dtsi b/arch/arm/dts/am335x-phytec-phycore-som.dtsi
index dbc6424..cf2eef3 100644
--- a/arch/arm/dts/am335x-phytec-phycore-som.dtsi
+++ b/arch/arm/dts/am335x-phytec-phycore-som.dtsi
@@ -164,6 +164,20 @@
 		pagesize = <32>;
 		reg = <0x52>;
 	};
+
+	/* The following i2c nodes are for the autoenable */
+	i2c_tmp102: temp@4b {
+		compatible = "ti,tmp102";
+		reg = <0x4b>;
+		status = "disabled";
+	};
+
+	i2c_rtc: rtc@68 {
+		compatible = "rv4162";
+		reg = <0x68>;
+		status = "disabled";
+	};
+
 };
 
 &mmc1 {
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
