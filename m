Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b7fUu-0005C8-Qv
 for barebox@lists.infradead.org; Tue, 31 May 2016 08:58:01 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1b7fUY-0008HQ-1A
 for barebox@lists.infradead.org; Tue, 31 May 2016 10:57:38 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue, 31 May 2016 10:57:37 +0200
Message-Id: <1464685057-4267-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH] ARM: mba53: include barebox TQMa53 overlay DT
To: barebox@lists.infradead.org

The barebox specific properties have not been applied as
the TQMa53 overlay DT has not been included. Fix this.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/dts/imx53-mba53.dts   | 2 ++
 arch/arm/dts/imx53-tqma53.dtsi | 3 ---
 2 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/arch/arm/dts/imx53-mba53.dts b/arch/arm/dts/imx53-mba53.dts
index 28f463c451f4..6998e4c0cb2d 100644
--- a/arch/arm/dts/imx53-mba53.dts
+++ b/arch/arm/dts/imx53-mba53.dts
@@ -11,6 +11,8 @@
  */
 
 #include <arm/imx53-mba53.dts>
+#include "imx53-tqma53.dtsi"
+#include "imx53.dtsi"
 
 / {
 	chosen {
diff --git a/arch/arm/dts/imx53-tqma53.dtsi b/arch/arm/dts/imx53-tqma53.dtsi
index 6880f2c27fb0..860fb64df2b9 100644
--- a/arch/arm/dts/imx53-tqma53.dtsi
+++ b/arch/arm/dts/imx53-tqma53.dtsi
@@ -10,9 +10,6 @@
  * http://www.gnu.org/copyleft/gpl.html
  */
 
-#include "imx53.dtsi"
-#include <arm/imx53-tqma53.dtsi>
-
 / {
 	chosen {
 		environment-emmc {
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
