Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycore.de ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.87 #1 (Red Hat Linux))
 id 1e85mA-0006T3-0Q
 for barebox@lists.infradead.org; Fri, 27 Oct 2017 14:38:22 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 9DC58A009D7
 for <barebox@lists.infradead.org>; Fri, 27 Oct 2017 16:39:35 +0200 (CEST)
From: Daniel Schultz <d.schultz@phytec.de>
Date: Fri, 27 Oct 2017 16:37:40 +0200
Message-Id: <1509115061-4385-2-git-send-email-d.schultz@phytec.de>
In-Reply-To: <1509115061-4385-1-git-send-email-d.schultz@phytec.de>
References: <1509115061-4385-1-git-send-email-d.schultz@phytec.de>
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
Subject: [PATCH 2/3] ARM: dts: AM335x: Add dummy i2c nodes
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
