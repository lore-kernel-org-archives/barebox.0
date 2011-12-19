Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp6-g21.free.fr ([2a01:e0c:1:1599::15])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RcZLp-0008F4-RT
 for barebox@lists.infradead.org; Mon, 19 Dec 2011 09:17:44 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Mon, 19 Dec 2011 10:17:17 +0100
Message-Id: <1324286241-23083-1-git-send-email-robert.jarzmik@free.fr>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] usb/gadget: add special treatment for PXA cpus
To: barebox@lists.infradead.org

As PXA cpus suffer from a silicon bug which prevents them
from being compound devices, forbid use_acm=1 for PXAs.
---
 drivers/usb/gadget/serial.c |    9 ++++++++-
 1 files changed, 8 insertions(+), 1 deletions(-)

diff --git a/drivers/usb/gadget/serial.c b/drivers/usb/gadget/serial.c
index f6a712b..8ba9ab5 100644
--- a/drivers/usb/gadget/serial.c
+++ b/drivers/usb/gadget/serial.c
@@ -179,6 +179,14 @@ static int __init gserial_init(void)
 	/* We *could* export two configs; that'd be much cleaner...
 	 * but neither of these product IDs was defined that way.
 	 */
+
+	/*
+	 * PXA CPU suffer a silicon bug which prevents them from being a
+	 * compound device, forbiding the ACM configurations.
+	 */
+#ifdef CONFIG_ARCH_PXA2XX
+	use_acm = 0;
+#endif
 	if (use_acm) {
 		serial_config_driver.label = "CDC ACM config";
 		serial_config_driver.bConfigurationValue = 2;
@@ -204,4 +212,3 @@ static int __init gserial_init(void)
 }
 
 late_initcall(gserial_init);
-
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
