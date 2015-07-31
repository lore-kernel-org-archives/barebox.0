Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.tricorecenter.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZL41E-00058k-8O
 for barebox@lists.infradead.org; Fri, 31 Jul 2015 06:42:13 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 13A43A0032D
 for <barebox@lists.infradead.org>; Fri, 31 Jul 2015 08:43:36 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Fri, 31 Jul 2015 08:40:39 +0200
Message-Id: <1438324839-38714-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH] ARM: dts: beaglebone: Strip MLO device tree
To: barebox@lists.infradead.org

Reduce size of beaglebone MLO image.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
Tested-by: Daniel Schultz <d.schultz@phytec.de>
---
 arch/arm/dts/am335x-bone-common.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/dts/am335x-bone-common.dts b/arch/arm/dts/am335x-bone-common.dts
index 5d3d2ed..91745d3 100644
--- a/arch/arm/dts/am335x-bone-common.dts
+++ b/arch/arm/dts/am335x-bone-common.dts
@@ -8,6 +8,7 @@
  */
 
 #include "am33xx.dtsi"
+#include "am33xx-strip.dtsi"
 #include "am335x-bone-common.dtsi"
 
 / {
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
