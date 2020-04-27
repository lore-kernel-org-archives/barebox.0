Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSyST-0003Gw-F8
 for barebox@lists.infradead.org; Mon, 27 Apr 2020 07:45:42 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 27 Apr 2020 09:45:34 +0200
Message-Id: <20200427074534.25259-1-a.fatoum@pengutronix.de>
In-Reply-To: <20200424160111.10532-2-a.fatoum@pengutronix.de>
References: <20200424160111.10532-2-a.fatoum@pengutronix.de>
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
Subject: [PATCH] fixup! ARM: stm32mp: add Linux Automation MC-1 support
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, sha@pengutronix.de

Board code uses of_device_enable_path to enable the correct node,
so make them disabled-by-default.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/stm32mp157c-lxa-mc1.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/dts/stm32mp157c-lxa-mc1.dts b/arch/arm/dts/stm32mp157c-lxa-mc1.dts
index 742739424ea7..57baaf4005d2 100644
--- a/arch/arm/dts/stm32mp157c-lxa-mc1.dts
+++ b/arch/arm/dts/stm32mp157c-lxa-mc1.dts
@@ -11,11 +11,13 @@
 		environment-sd {
 			compatible = "barebox,environment";
 			device-path = &sdmmc1, "partname:barebox-environment";
+			status = "disabled";
 		};
 
 		environment-emmc {
 			compatible = "barebox,environment";
 			device-path = &sdmmc2, "partname:barebox-environment";
+			status = "disabled";
 		};
 	};
 
-- 
2.26.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
