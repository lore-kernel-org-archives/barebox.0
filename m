Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W6Psc-0002CE-Al
 for barebox@lists.infradead.org; Thu, 23 Jan 2014 19:24:03 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <mgr@pengutronix.de>) id 1W6PsE-0005RV-Ai
 for barebox@lists.infradead.org; Thu, 23 Jan 2014 20:23:34 +0100
Received: from mgr by dude.hi.pengutronix.de with local (Exim 4.82)
 (envelope-from <mgr@pengutronix.de>) id 1W6PsE-0004Yj-8k
 for barebox@lists.infradead.org; Thu, 23 Jan 2014 20:23:34 +0100
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Thu, 23 Jan 2014 20:23:30 +0100
Message-Id: <1390505010-7546-4-git-send-email-m.grzeschik@pengutronix.de>
In-Reply-To: <1390505010-7546-1-git-send-email-m.grzeschik@pengutronix.de>
References: <1390505010-7546-1-git-send-email-m.grzeschik@pengutronix.de>
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
Subject: [PATCH 3/3] ARM: mvebu: add ethernet node
To: barebox@lists.infradead.org

The patch adds the ethernet node to the dove devicetree, and enables the
support for the dove-cubox. The node is a copy of the kernel devicetree.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 arch/arm/dts/dove-cubox.dts |  4 ++++
 arch/arm/dts/dove.dtsi      | 10 ++++++++++
 2 files changed, 14 insertions(+)

diff --git a/arch/arm/dts/dove-cubox.dts b/arch/arm/dts/dove-cubox.dts
index 61f38fe..f508222 100644
--- a/arch/arm/dts/dove-cubox.dts
+++ b/arch/arm/dts/dove-cubox.dts
@@ -153,3 +153,7 @@
 		marvell,function = "gpio";
 	};
 };
+
+&eth {
+	status = "okay";
+};
diff --git a/arch/arm/dts/dove.dtsi b/arch/arm/dts/dove.dtsi
index 32fbf28..5406a64 100644
--- a/arch/arm/dts/dove.dtsi
+++ b/arch/arm/dts/dove.dtsi
@@ -267,6 +267,16 @@
 			};
 		};
 
+		eth: ethernet-ctrl@72000 {
+			compatible = "marvell,orion-eth";
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <0x72000 0x4000>;
+			clocks = <&gate_clk 2>;
+			marvell,tx-checksum-limit = <1600>;
+			status = "disabled";
+		};
+
 		lcd0: lcd-controller@820000 {
 			compatible = "marvell,dove-lcd";
 			reg = <0x820000 0x200>;
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
