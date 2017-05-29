Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.87 #1 (Red Hat Linux))
 id 1dFR7j-000277-B6
 for barebox@lists.infradead.org; Mon, 29 May 2017 20:18:44 +0000
Received: from tellur.fritz.box (a89-183-58-206.net-htp.de [89.183.58.206])
 by lynxeye.de (Postfix) with ESMTPA id 26E71E7421F
 for <barebox@lists.infradead.org>; Mon, 29 May 2017 22:17:49 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Mon, 29 May 2017 22:17:46 +0200
Message-Id: <20170529201746.32046-1-dev@lynxeye.de>
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
Subject: [PATCH] ARM: imx6: gw54xx: use wdog1 for barebox
To: barebox@lists.infradead.org

As Barebox isn't changing the external PMIC power rails the internal
watchdog reset is fine for the Barebox reset purposes. Watchdog 2 is
only usable on boards with revision E or later, as this on is incapable
of executing an internal reset.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/dts/imx6q-gw54xx.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/dts/imx6q-gw54xx.dts b/arch/arm/dts/imx6q-gw54xx.dts
index 8113542..ec0f363 100644
--- a/arch/arm/dts/imx6q-gw54xx.dts
+++ b/arch/arm/dts/imx6q-gw54xx.dts
@@ -22,3 +22,11 @@
 &sata {
 	status = "okay";
 };
+
+&wdog1 {
+	status = "okay";
+};
+
+&wdog2 {
+	status = "disabled";
+};
-- 
2.9.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
