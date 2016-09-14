Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bk5bi-0005Od-U5
 for barebox@lists.infradead.org; Wed, 14 Sep 2016 08:31:52 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 14 Sep 2016 10:31:29 +0200
Message-Id: <1473841889-22421-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: karo-tx6: Include correct device tree
To: Barebox List <barebox@lists.infradead.org>

As a i.MX6dl board dts imx6dl-tx6u.dts should include imx6dl.dtsi, not
the i.MX6q variant. This fixes various pinctrl problems.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/imx6dl-tx6u.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/dts/imx6dl-tx6u.dts b/arch/arm/dts/imx6dl-tx6u.dts
index 77fda62..6c26feb 100644
--- a/arch/arm/dts/imx6dl-tx6u.dts
+++ b/arch/arm/dts/imx6dl-tx6u.dts
@@ -1,6 +1,6 @@
 /dts-v1/;
 
-#include <arm/imx6q.dtsi>
+#include <arm/imx6dl.dtsi>
 #include <arm/imx6qdl-tx6.dtsi>
 #include "imx6qdl.dtsi"
 #include "imx6qdl-tx6x.dtsi"
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
