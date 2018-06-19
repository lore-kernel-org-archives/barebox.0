Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fV9pa-0007tM-4s
 for barebox@lists.infradead.org; Tue, 19 Jun 2018 06:09:32 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 19 Jun 2018 08:09:14 +0200
Message-Id: <20180619060915.13141-5-s.hauer@pengutronix.de>
In-Reply-To: <20180619060915.13141-1-s.hauer@pengutronix.de>
References: <20180619060915.13141-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/5] ARM: dts: imx6q-var-custom: remove some accidently pasted
 text
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/imx6q-var-custom.dts | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/arch/arm/dts/imx6q-var-custom.dts b/arch/arm/dts/imx6q-var-custom.dts
index 9fc364ed9a..ddb220fb0a 100644
--- a/arch/arm/dts/imx6q-var-custom.dts
+++ b/arch/arm/dts/imx6q-var-custom.dts
@@ -8,13 +8,6 @@
  *
  * http://www.opensource.org/licenses/gpl-license.html
  * http://www.gnu.org/copyleft/gpl.html
- *
- *
- * 		environment@0 {
-			compatible = "barebox,environment";
-			device-path = &usdhc2, "partname:barebox-environment";
-		};
-
  *
  */
 
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
