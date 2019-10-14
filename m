Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJu0u-0006Fz-4q
 for barebox@lists.infradead.org; Mon, 14 Oct 2019 06:39:33 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Oct 2019 08:39:19 +0200
Message-Id: <20191014063922.17233-3-a.fatoum@pengutronix.de>
In-Reply-To: <20191014063922.17233-1-a.fatoum@pengutronix.de>
References: <20191014063922.17233-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 2/5] ARM: dts: stm32mp: add barebox-enviroment on DK boards
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

From: Oleksij Rempel <o.rempel@pengutronix.de>

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/dts/stm32mp157a-dk1.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm/dts/stm32mp157a-dk1.dtsi b/arch/arm/dts/stm32mp157a-dk1.dtsi
index cd3d614d4623..f7fbdcd1749a 100644
--- a/arch/arm/dts/stm32mp157a-dk1.dtsi
+++ b/arch/arm/dts/stm32mp157a-dk1.dtsi
@@ -8,6 +8,13 @@
 #include <dt-bindings/gpio/gpio.h>
 
 / {
+	chosen {
+		environment {
+			compatible = "barebox,environment";
+			device-path = &sdmmc1, "partname:barebox-environment";
+		};
+	};
+
 	led {
 		red {
 			label = "error";
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
