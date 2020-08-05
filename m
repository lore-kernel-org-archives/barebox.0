Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k3GTU-0005eu-Mi
 for barebox@lists.infradead.org; Wed, 05 Aug 2020 10:16:46 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Wed,  5 Aug 2020 12:16:28 +0200
Message-Id: <20200805101628.4698-14-o.rempel@pengutronix.de>
In-Reply-To: <20200805101628.4698-1-o.rempel@pengutronix.de>
References: <20200805101628.4698-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v2 13/13] ARM: dts: imx6q-prti6q: add barebox,
 serial-number node
To: barebox@lists.infradead.org, david@protonic.nl
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

Add serial-number node provider

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/dts/imx6qdl-prti6q.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/dts/imx6qdl-prti6q.dtsi b/arch/arm/dts/imx6qdl-prti6q.dtsi
index ed526d185f..968617f372 100644
--- a/arch/arm/dts/imx6qdl-prti6q.dtsi
+++ b/arch/arm/dts/imx6qdl-prti6q.dtsi
@@ -9,6 +9,12 @@
 / {
 	chosen {
 		stdout-path = &uart4;
+
+		serial {
+			compatible = "barebox,serial-number";
+			nvmem-cell-names = "serial-number";
+			/* nvmem-cells will be added board code */
+		};
 	};
 
 	reg_1v8: regulator-1v8 {
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
