Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hctEg-0000Rz-MC
 for barebox@lists.infradead.org; Mon, 17 Jun 2019 15:07:56 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hctEe-0000iw-TX
 for barebox@lists.infradead.org; Mon, 17 Jun 2019 17:07:52 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hctEe-0002G3-E8
 for barebox@lists.infradead.org; Mon, 17 Jun 2019 17:07:52 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 17 Jun 2019 17:07:40 +0200
Message-Id: <20190617150751.3421-2-a.fatoum@pengutronix.de>
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
Subject: [PATCH v1 01/12] ARM: dts: stm32mp157a-dk1.dts: include upstream dts
 before barebox'
To: barebox@lists.infradead.org

To allow "stm32mp157c.dtsi" to extend nodes in <arm/stm32mp157c.dtsi>,
it should be included after it. Do this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/stm32mp157a-dk1.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/dts/stm32mp157a-dk1.dts b/arch/arm/dts/stm32mp157a-dk1.dts
index 741284a44472..62c28d396f00 100644
--- a/arch/arm/dts/stm32mp157a-dk1.dts
+++ b/arch/arm/dts/stm32mp157a-dk1.dts
@@ -6,9 +6,9 @@
 
 /dts-v1/;
 
-#include "stm32mp157c.dtsi"
 #include <arm/stm32mp157c.dtsi>
 #include <arm/stm32mp157-pinctrl.dtsi>
+#include "stm32mp157c.dtsi"
 
 / {
 	model = "STMicroelectronics STM32MP157A-DK1 Discovery Board";
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
