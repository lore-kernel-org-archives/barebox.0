Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.microcatalog.org.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z8OoS-0003bx-86
 for barebox@lists.infradead.org; Fri, 26 Jun 2015 08:16:41 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 35D5AA003D2
 for <barebox@lists.infradead.org>; Fri, 26 Jun 2015 10:17:51 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Fri, 26 Jun 2015 10:14:36 +0200
Message-Id: <1435306477-5949-2-git-send-email-t.remmet@phytec.de>
In-Reply-To: <1435306477-5949-1-git-send-email-t.remmet@phytec.de>
References: <1435306477-5949-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH 2/3] ARM: dts: am33xx-strip: Keep devices we can boot from
To: barebox@lists.infradead.org

As we can boot from mmc2 don't strip it.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 arch/arm/dts/am33xx-strip.dtsi | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/arm/dts/am33xx-strip.dtsi b/arch/arm/dts/am33xx-strip.dtsi
index 3dc9a57..085200e 100644
--- a/arch/arm/dts/am33xx-strip.dtsi
+++ b/arch/arm/dts/am33xx-strip.dtsi
@@ -11,8 +11,6 @@
 	aliases {
 		/delete-property/ i2c1;
 		/delete-property/ i2c2;
-		/delete-property/ mmc0;
-		/delete-property/ mmc1;
 		/delete-property/ mmc2;
 		/delete-property/ d_can0;
 		/delete-property/ d_can1;
@@ -21,7 +19,6 @@
 
 /delete-node/ &i2c1;
 /delete-node/ &i2c2;
-/delete-node/ &mmc2;
 /delete-node/ &mmc3;
 /delete-node/ &hwspinlock;
 /delete-node/ &wdt2;
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
