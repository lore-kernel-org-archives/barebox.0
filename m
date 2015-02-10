Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YL82P-0002lU-3t
 for barebox@lists.infradead.org; Tue, 10 Feb 2015 10:27:25 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1YL822-0006Z0-TS
 for barebox@lists.infradead.org; Tue, 10 Feb 2015 11:27:02 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue, 10 Feb 2015 11:27:02 +0100
Message-Id: <1423564022-526-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH] fixup! arm: hummingboard: fix fallout from upstream DT usage
 --- This additional include is needed for the PWM and IPU aliases,
 so those new features also work.
To: barebox@lists.infradead.org

---
 arch/arm/dts/imx6dl-hummingboard.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/dts/imx6dl-hummingboard.dts b/arch/arm/dts/imx6dl-hummingboard.dts
index 7953fc1c34f4..24f6bfa8171c 100644
--- a/arch/arm/dts/imx6dl-hummingboard.dts
+++ b/arch/arm/dts/imx6dl-hummingboard.dts
@@ -6,6 +6,7 @@
  */
 
 #include <arm/imx6dl-hummingboard.dts>
+#include "imx6qdl.dtsi"
 
 / {
 	chosen {
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
