Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ftfij-0006C6-NJ
 for barebox@lists.infradead.org; Sat, 25 Aug 2018 21:03:47 +0000
Received: by mail-pg1-x544.google.com with SMTP id b129-v6so5730133pga.13
 for <barebox@lists.infradead.org>; Sat, 25 Aug 2018 14:03:35 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat, 25 Aug 2018 14:03:14 -0700
Message-Id: <20180825210315.4661-6-andrew.smirnov@gmail.com>
In-Reply-To: <20180825210315.4661-1-andrew.smirnov@gmail.com>
References: <20180825210315.4661-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 5/6] dts: imx51-babbage: Add USBH1 iomux configuration
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Upstream .dts file specifies NO_PAD_CTRL for USHB1 pins, so add proper
configuration until that is resolved.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/dts/imx51-babbage.dts | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm/dts/imx51-babbage.dts b/arch/arm/dts/imx51-babbage.dts
index b5c81a77c..051629f0a 100644
--- a/arch/arm/dts/imx51-babbage.dts
+++ b/arch/arm/dts/imx51-babbage.dts
@@ -71,5 +71,25 @@
 				MX51_PAD_EIM_A20__GPIO2_14		0x00000085 /* Phy Reset */
 			>;
 		};
+
+		pinctrl_usbh1: usbh1grp {
+			/*
+			 * Ditto for USBH1 iomux settings.
+			*/
+			fsl,pins = <
+				MX51_PAD_USBH1_CLK__USBH1_CLK		0x1e5
+				MX51_PAD_USBH1_DIR__USBH1_DIR		0x1e5
+			        MX51_PAD_USBH1_NXT__USBH1_NXT		0x1e5
+				MX51_PAD_USBH1_STP__USBH1_STP		0x1e5
+				MX51_PAD_USBH1_DATA0__USBH1_DATA0	0x1e5
+				MX51_PAD_USBH1_DATA1__USBH1_DATA1	0x1e5
+				MX51_PAD_USBH1_DATA2__USBH1_DATA2	0x1e5
+				MX51_PAD_USBH1_DATA3__USBH1_DATA3	0x1e5
+				MX51_PAD_USBH1_DATA4__USBH1_DATA4	0x1e5
+				MX51_PAD_USBH1_DATA5__USBH1_DATA5	0x1e5
+				MX51_PAD_USBH1_DATA6__USBH1_DATA6	0x1e5
+				MX51_PAD_USBH1_DATA7__USBH1_DATA7	0x1e5
+			>;
+		};
 	};
 };
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
