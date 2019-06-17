Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hctEg-0000S2-MC
 for barebox@lists.infradead.org; Mon, 17 Jun 2019 15:07:57 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hctEf-0000j4-15
 for barebox@lists.infradead.org; Mon, 17 Jun 2019 17:07:53 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hctEe-0002GI-GS
 for barebox@lists.infradead.org; Mon, 17 Jun 2019 17:07:52 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 17 Jun 2019 17:07:45 +0200
Message-Id: <20190617150751.3421-7-a.fatoum@pengutronix.de>
In-Reply-To: <20190617150751.3421-1-a.fatoum@pengutronix.de>
References: <20190617150751.3421-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v1 06/12] ARM: dts: stm32mp157a-dk1: enable heartbeat and
 error LEDs
To: barebox@lists.infradead.org

Now that we have GPIO support, add the red LED to the barebox
device tree and override the blue one's default state.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/stm32mp157a-dk1.dtsi | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm/dts/stm32mp157a-dk1.dtsi b/arch/arm/dts/stm32mp157a-dk1.dtsi
index 8cc70129b215..cd3d614d4623 100644
--- a/arch/arm/dts/stm32mp157a-dk1.dtsi
+++ b/arch/arm/dts/stm32mp157a-dk1.dtsi
@@ -8,6 +8,19 @@
 #include <dt-bindings/gpio/gpio.h>
 
 / {
+	led {
+		red {
+			label = "error";
+			gpios = <&gpioa 13 GPIO_ACTIVE_LOW>;
+			default-state = "off";
+			status = "okay";
+		};
+
+		blue {
+			default-state = "on";
+		};
+	};
+
 	sram: sram@10050000 {
 		compatible = "mmio-sram";
 		reg = <0x10050000 0x10000>;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
