Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ftfik-0006C7-86
 for barebox@lists.infradead.org; Sat, 25 Aug 2018 21:03:47 +0000
Received: by mail-pg1-x541.google.com with SMTP id r1-v6so5737213pgp.11
 for <barebox@lists.infradead.org>; Sat, 25 Aug 2018 14:03:35 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sat, 25 Aug 2018 14:03:15 -0700
Message-Id: <20180825210315.4661-7-andrew.smirnov@gmail.com>
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
Subject: [PATCH 6/6] ARM: imx51-zii-rdu1: Add USBH1,2 iomux configuration
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add iomux configuration for USBH1,2 to match what U-Boot (as well as
Babbage board) would configure those pads to.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/dts/imx51-zii-rdu1.dts | 42 +++++++++++++++++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/arch/arm/dts/imx51-zii-rdu1.dts b/arch/arm/dts/imx51-zii-rdu1.dts
index 9021b04a1..245343dae 100644
--- a/arch/arm/dts/imx51-zii-rdu1.dts
+++ b/arch/arm/dts/imx51-zii-rdu1.dts
@@ -105,3 +105,45 @@
 		};
 	};
 };
+
+&iomuxc {
+	pinctrl_usbh1: usbh1grp {
+
+		/*
+		 * Overwrite upstream USBH1,2 iomux settings to match
+		 * the setting U-Boot would set these to. Remove this
+		 * once this is fixed upstream.
+		 */
+		fsl,pins = <
+			MX51_PAD_USBH1_STP__USBH1_STP		0x1e5
+			MX51_PAD_USBH1_CLK__USBH1_CLK		0x1e5
+			MX51_PAD_USBH1_DIR__USBH1_DIR		0x1e5
+			MX51_PAD_USBH1_NXT__USBH1_NXT		0x1e5
+			MX51_PAD_USBH1_DATA0__USBH1_DATA0	0x1e5
+			MX51_PAD_USBH1_DATA1__USBH1_DATA1	0x1e5
+			MX51_PAD_USBH1_DATA2__USBH1_DATA2	0x1e5
+			MX51_PAD_USBH1_DATA3__USBH1_DATA3	0x1e5
+			MX51_PAD_USBH1_DATA4__USBH1_DATA4	0x1e5
+			MX51_PAD_USBH1_DATA5__USBH1_DATA5	0x1e5
+			MX51_PAD_USBH1_DATA6__USBH1_DATA6	0x1e5
+			MX51_PAD_USBH1_DATA7__USBH1_DATA7	0x1e5
+		>;
+	};
+
+	pinctrl_usbh2: usbh2grp {
+		fsl,pins = <
+			MX51_PAD_EIM_A26__USBH2_STP		0x1e5
+			MX51_PAD_EIM_A24__USBH2_CLK		0x1e5
+			MX51_PAD_EIM_A25__USBH2_DIR		0x1e5
+			MX51_PAD_EIM_A27__USBH2_NXT		0x1e5
+			MX51_PAD_EIM_D16__USBH2_DATA0		0x1e5
+			MX51_PAD_EIM_D17__USBH2_DATA1		0x1e5
+			MX51_PAD_EIM_D18__USBH2_DATA2		0x1e5
+			MX51_PAD_EIM_D19__USBH2_DATA3		0x1e5
+			MX51_PAD_EIM_D20__USBH2_DATA4		0x1e5
+			MX51_PAD_EIM_D21__USBH2_DATA5		0x1e5
+			MX51_PAD_EIM_D22__USBH2_DATA6		0x1e5
+			MX51_PAD_EIM_D23__USBH2_DATA7		0x1e5
+		>;
+	};
+};
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
