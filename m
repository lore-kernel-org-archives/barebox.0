Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x22f.google.com ([2a00:1450:400c:c00::22f])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wznsw-00081X-OB
 for barebox@lists.infradead.org; Wed, 25 Jun 2014 14:09:17 +0000
Received: by mail-wg0-f47.google.com with SMTP id k14so2070083wgh.6
 for <barebox@lists.infradead.org>; Wed, 25 Jun 2014 07:08:51 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Wed, 25 Jun 2014 16:08:46 +0200
Message-Id: <1403705328-9924-3-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1403705328-9924-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1403705328-9924-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH RFC 2/4] ARM: dts: add new USB nodes to Kirkwood Guruplug
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org, Jason Cooper <jason@lakedaemon.net>, Andrew Lunn <andrew@lunn.ch>

Add new MVEBU usb controller nodes to Guruplug dts overlay to show
how it should be included upstream.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
Cc: Jason Cooper <jason@lakedaemon.net>
Cc: Andrew Lunn <andrew@lunn.ch>
Cc: Gregory Clement <gregory.clement@free-electrons.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
---
 arch/arm/dts/kirkwood-guruplug-server-plus-bb.dts | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm/dts/kirkwood-guruplug-server-plus-bb.dts b/arch/arm/dts/kirkwood-guruplug-server-plus-bb.dts
index aba7c06160d0..eaf9869e9483 100644
--- a/arch/arm/dts/kirkwood-guruplug-server-plus-bb.dts
+++ b/arch/arm/dts/kirkwood-guruplug-server-plus-bb.dts
@@ -11,4 +11,24 @@
 			barebox,default-trigger = "heartbeat";
 		};
 	};
+
+	ocp@f1000000 {
+		musb0: usb@50000 {
+			compatible = "marvell,mvebu-usb";
+			reg = <0x50000 0x400>;
+			interrupts = <19>;
+			clocks = <&gate_clk 3>;
+			usb-phy = <&usb_phy0>;
+			dr_mode = "host";
+			status = "okay";
+		};
+
+		usb_phy0: phy@50400 {
+			compatible = "marvell,mvebu-usb-phy-65nm";
+			reg = <0x50400 0x100>;
+			clocks = <&gate_clk 3>;
+			#phy-cells = <0>;
+			status = "okay";
+		};
+	};
 };
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
