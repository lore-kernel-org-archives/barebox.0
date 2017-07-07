Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dTOFr-0003TF-A5
 for barebox@lists.infradead.org; Fri, 07 Jul 2017 08:04:48 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Fri,  7 Jul 2017 10:03:59 +0200
Message-Id: <20170707080401.2785-2-o.rempel@pengutronix.de>
In-Reply-To: <20170707080401.2785-1-o.rempel@pengutronix.de>
References: <20170707080401.2785-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v2 1/3] ARM: riotboard: provide standby on power off option
To: barebox@lists.infradead.org, l.stach@pengutronix.de
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

This board, as well as some other boards with i.MX6 and a PMIC, uses a
"PMIC_STBY_REQ" line to notify the PMIC about a state change.
The PMIC is programmed for a specific state change before triggering the
line.
In this case, PMIC_STBY_REQ can be used for stand by, sleep
and power off modes.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/dts/imx6s-riotboard.dts | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm/dts/imx6s-riotboard.dts b/arch/arm/dts/imx6s-riotboard.dts
index 575887267e..ddd0d5ba2d 100644
--- a/arch/arm/dts/imx6s-riotboard.dts
+++ b/arch/arm/dts/imx6s-riotboard.dts
@@ -42,3 +42,10 @@
 	barebox,provide-mac-address = <&fec 0x620>;
 };
 
+&clks {
+	fsl,pmic-stby-poweroff;
+};
+
+&pmic {
+	fsl,pmic-stby-poweroff;
+};
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
