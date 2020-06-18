Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlqZf-0001qV-6H
 for barebox@lists.infradead.org; Thu, 18 Jun 2020 09:11:08 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Jun 2020 11:10:56 +0200
Message-Id: <20200618091102.30150-10-a.fatoum@pengutronix.de>
In-Reply-To: <20200618091102.30150-1-a.fatoum@pengutronix.de>
References: <20200618091102.30150-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 09/15] ARM: i.MX6UL: dts: remove defunct override of
 pico-hobbit memory node
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Prior to 8226f7f90973 ("of: base: parse all available memory nodes"),
barebox first looked at a /memory node, then at a node with a
device_type = "memory" property when probing available memory banks from
device tree. Linux instead only considered nodes with device_type =
"memory". The imx6ul-pico-hobbit predates the change in barebox behavior,
so it's unclear what is gained from dropping device_type = "memory" as
barebox used to parse the node by name anyway and Linux only saw the new
fixed up node.

Since then the Linux device tree has been split into a SoM and carrier
board device tree and the node name is now called memory@80000000 with
a size of 0 in the reg property. Because it's already used for boards
with differing memory size, we assume this will remain so and thus we
just drop the defunct barebox memory node override.

Cc: Michael Grzeschik <m.grzeschik@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/dts/imx6ul-pico-hobbit.dts | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm/dts/imx6ul-pico-hobbit.dts b/arch/arm/dts/imx6ul-pico-hobbit.dts
index 2f37b724b6e1..0c543de8c916 100644
--- a/arch/arm/dts/imx6ul-pico-hobbit.dts
+++ b/arch/arm/dts/imx6ul-pico-hobbit.dts
@@ -9,10 +9,6 @@
 			device-path = &environment_usdhc1;
 		};
 	};
-
-	memory {
-		/delete-property/ device_type;
-	};
 };
 
 &usdhc1 {
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
