Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZCNO0-0008RZ-6m
 for barebox@lists.infradead.org; Tue, 07 Jul 2015 07:33:49 +0000
From: Philipp Zabel <p.zabel@pengutronix.de>
Date: Tue,  7 Jul 2015 09:33:20 +0200
Message-Id: <1436254400-5271-1-git-send-email-p.zabel@pengutronix.de>
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
Subject: [PATCH] ARM: imx6: fix GK802 DT
To: barebox@lists.infradead.org

From: Philipp Zabel <philipp.zabel@gmail.com>

Including "imx6q.dtsi" after <arm/imx6q-gk802.dts> also includes
<arm/imx6ql.dtsi> again, disabling all peripherals, including the
serial console uart. We can't include it first either, because
arm/imx6q-gk802.dts contains the /dts-v1/ header.
This patch drops the offending include statement and instead adds
the missing IPU aliases manually.

Signed-off-by: Philipp Zabel <philipp.zabel@gmail.com>
---
 arch/arm/dts/imx6q-gk802.dts | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/arch/arm/dts/imx6q-gk802.dts b/arch/arm/dts/imx6q-gk802.dts
index 310d6f0..d712e00 100644
--- a/arch/arm/dts/imx6q-gk802.dts
+++ b/arch/arm/dts/imx6q-gk802.dts
@@ -7,7 +7,13 @@
  */
 
 #include <arm/imx6q-gk802.dts>
-#include "imx6q.dtsi"
+
+/ {
+	aliases {
+		ipu0 = &ipu1;
+		ipu1 = &ipu2;
+	};
+};
 
 /* External USB-A port (USBOTG) */
 &usbotg {
-- 
2.2.1.209.g41e5f3a


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
