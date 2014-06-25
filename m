Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x232.google.com ([2a00:1450:400c:c03::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wznsw-000822-CP
 for barebox@lists.infradead.org; Wed, 25 Jun 2014 14:09:17 +0000
Received: by mail-we0-f178.google.com with SMTP id x48so2115043wes.23
 for <barebox@lists.infradead.org>; Wed, 25 Jun 2014 07:08:51 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Wed, 25 Jun 2014 16:08:48 +0200
Message-Id: <1403705328-9924-5-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH RFC 4/4] ARM: dts: add new USB nodes to Armada 370 Mirabox
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org, Jason Cooper <jason@lakedaemon.net>, Andrew Lunn <andrew@lunn.ch>

Add new MVEBU usb controller nodes to Mirabox dts overlay to show
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
 arch/arm/dts/armada-370-mirabox-bb.dts | 35 ++++++++++++++++++++++++++++++++++
 1 file changed, 35 insertions(+)

diff --git a/arch/arm/dts/armada-370-mirabox-bb.dts b/arch/arm/dts/armada-370-mirabox-bb.dts
index de37a75bb960..a1a5d48aefb2 100644
--- a/arch/arm/dts/armada-370-mirabox-bb.dts
+++ b/arch/arm/dts/armada-370-mirabox-bb.dts
@@ -20,6 +20,41 @@
 					barebox,default-trigger = "heartbeat";
 				};
 			};
+
+			/* USB 2.0 Hub + uSD USB controllers */
+			usb0: usb@50000 {
+				compatible = "marvell,mvebu-usb";
+				reg = <0x50000 0x400>;
+				interrupts = <45>;
+				clocks = <&coreclk 0>;
+				usb-phy = <&usb_phy 0>;
+				dr_mode = "host";
+				status = "okay";
+			};
+
+			usb_phy: phy@50800 {
+				compatible = "marvell,mvebu-usb-phy-40nm";
+				reg = <0x50800 0x100>;
+				clocks = <&coreclk 0>;
+				#phy-cells = <1>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				status = "okay";
+
+				port@0 { reg = <0>; };
+				port@1 { reg = <1>; };
+			};
+
+			/* mini-PCIe slot */
+			usb1: usb@51000 {
+				compatible = "marvell,mvebu-usb";
+				reg = <0x51000 0x400>;
+				interrupts = <46>;
+				clocks = <&coreclk 0>;
+				usb-phy = <&usb_phy 1>;
+				dr_mode = "host";
+				status = "okay";
+			};
 		};
 	};
 };
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
