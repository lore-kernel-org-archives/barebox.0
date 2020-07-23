Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jyYXf-0000mh-5d
 for barebox@lists.infradead.org; Thu, 23 Jul 2020 10:33:37 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Thu, 23 Jul 2020 12:33:26 +0200
Message-Id: <20200723103326.23226-12-o.rempel@pengutronix.de>
In-Reply-To: <20200723103326.23226-1-o.rempel@pengutronix.de>
References: <20200723103326.23226-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v1 11/11] ARM: dts: imx6q-prti6q: add barebox.serial node
To: barebox@lists.infradead.org, david@protonic.nl
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

Add serial node provider

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/dts/imx6q-prti6q.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/dts/imx6q-prti6q.dts b/arch/arm/dts/imx6q-prti6q.dts
index 76bb4d53d3..67e7f63979 100644
--- a/arch/arm/dts/imx6q-prti6q.dts
+++ b/arch/arm/dts/imx6q-prti6q.dts
@@ -18,6 +18,11 @@
 			compatible = "barebox,environment";
 			device-path = &ecspi1, "partname:env";
 		};
+		serial {
+			compatible = "barebox,serial";
+			nvmem-cell-names = "serial-number";
+			/* nvmem-cells will added board code */
+		};
 	};
 
 	memory@10000000 {
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
