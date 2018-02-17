Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from cyberdimension.org ([2001:910:1314:ffff::1]
 helo=lime1-a20.localdomain)
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1en7O0-0007Y1-AB
 for barebox@lists.infradead.org; Sat, 17 Feb 2018 18:39:03 +0000
From: Denis 'GNUtoo' Carikli <GNUtoo@no-log.org>
Date: Sat, 17 Feb 2018 19:31:46 +0100
Message-Id: <20180217183146.17833-1-GNUtoo@no-log.org>
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
Subject: [PATCH] Backport "ARM: dts: am335x-bone*: usb0 is hardwired for
 peripheral" from linux
To: barebox@lists.infradead.org
Cc: Denis 'GNUtoo' Carikli <GNUtoo@no-log.org>

This is a backport of the following commit:
  commit 67fd14b3eca63b14429350e9eadc5fab709a8821
  Author: Robert Nelson <robertcnelson@gmail.com>
  Date:   Tue Feb 24 10:10:43 2015 -0600

      ARM: dts: am335x-bone*: usb0 is hardwired for peripheral

      Fixes: http://bugs.elinux.org/issues/127

      the bb.org community was seeing random reboots before this change.

      Signed-off-by: Robert Nelson <robertcnelson@gmail.com>
      Reviewed-by: Felipe Balbi <balbi@ti.com>
      Acked-by: Felipe Balbi <balbi@ti.com>
      Signed-off-by: Tony Lindgren <tony@atomide.com>

This patch makes the USB peripheral work on the BeagleBone Green.

Signed-off-by: Denis 'GNUtoo' Carikli <GNUtoo@no-log.org>
---
 arch/arm/dts/am335x-bone-common.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/dts/am335x-bone-common.dtsi b/arch/arm/dts/am335x-bone-common.dtsi
index ef97d9066..0413724e0 100644
--- a/arch/arm/dts/am335x-bone-common.dtsi
+++ b/arch/arm/dts/am335x-bone-common.dtsi
@@ -194,6 +194,7 @@
 
 &usb0 {
 	status = "okay";
+	dr_mode = "peripheral";
 };
 
 &usb1 {
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
