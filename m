Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WfGSs-0001PG-Ub
 for barebox@lists.infradead.org; Tue, 29 Apr 2014 22:25:27 +0000
From: Lucas Stach <dev@lynxeye.de>
Date: Wed, 30 Apr 2014 00:24:24 +0200
Message-Id: <1398810264-3891-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH] ARM: boards: Makefile: fix whitespace
To: barebox@lists.infradead.org

From: Lucas Stach <l.stach@pengutronix.de>

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/boards/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 16742d91389d..bdde1a4e2d60 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -93,7 +93,7 @@ obj-$(CONFIG_MACH_TX25)				+= karo-tx25/
 obj-$(CONFIG_MACH_TX28)				+= karo-tx28/
 obj-$(CONFIG_MACH_TX51)				+= karo-tx51/
 obj-$(CONFIG_MACH_TX53)				+= karo-tx53/
-obj-$(CONFIG_MACH_UDOO)             += udoo/
+obj-$(CONFIG_MACH_UDOO)				+= udoo/
 obj-$(CONFIG_MACH_USB_A9260)			+= usb-a926x/
 obj-$(CONFIG_MACH_USB_A9263)			+= usb-a926x/
 obj-$(CONFIG_MACH_USB_A9G20)			+= usb-a926x/
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
