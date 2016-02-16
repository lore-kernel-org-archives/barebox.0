Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.visioncatalog.com ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aVdAN-0006cJ-0a
 for barebox@lists.infradead.org; Tue, 16 Feb 2016 10:47:36 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id AB2A9A00443
 for <barebox@lists.infradead.org>; Tue, 16 Feb 2016 11:47:09 +0100 (CET)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Tue, 16 Feb 2016 11:45:01 +0100
Message-Id: <1455619502-19908-7-git-send-email-t.remmet@phytec.de>
In-Reply-To: <1455619502-19908-1-git-send-email-t.remmet@phytec.de>
References: <1455619502-19908-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 6/7] ARM: dts: beaglebone: Strip clocks in MLO device tree
To: barebox@lists.infradead.org

Reduce even more size of beaglebone MLO device tree with stripping
the clocks.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 arch/arm/dts/am335x-bone-common.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/dts/am335x-bone-common.dts b/arch/arm/dts/am335x-bone-common.dts
index 91745d3..0488cbe 100644
--- a/arch/arm/dts/am335x-bone-common.dts
+++ b/arch/arm/dts/am335x-bone-common.dts
@@ -9,6 +9,7 @@
 
 #include "am33xx.dtsi"
 #include "am33xx-strip.dtsi"
+#include "am33xx-clocks-strip.dtsi"
 #include "am335x-bone-common.dtsi"
 
 / {
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
