Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1ORj0N-00067F-5F
	for barebox@lists.infradead.org; Thu, 24 Jun 2010 09:45:56 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 24 Jun 2010 11:45:51 +0200
Message-Id: <1277372751-15797-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1277372751-15797-1-git-send-email-s.hauer@pengutronix.de>
References: <1277372751-15797-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/6] ehci: remove unused code
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/usb_ehci.h      |    4 ----
 drivers/usb/usb_ehci_core.c |    5 -----
 2 files changed, 0 insertions(+), 9 deletions(-)

diff --git a/drivers/usb/usb_ehci.h b/drivers/usb/usb_ehci.h
index b3c1d5d..af49249 100644
--- a/drivers/usb/usb_ehci.h
+++ b/drivers/usb/usb_ehci.h
@@ -187,8 +187,4 @@ struct QH {
 	uint8_t fill[16];
 };
 
-/* Low level init functions */
-int ehci_hcd_init(void);
-int ehci_hcd_stop(void);
-
 #endif /* USB_EHCI_H */
diff --git a/drivers/usb/usb_ehci_core.c b/drivers/usb/usb_ehci_core.c
index fe988c3..af066de 100644
--- a/drivers/usb/usb_ehci_core.c
+++ b/drivers/usb/usb_ehci_core.c
@@ -801,11 +801,6 @@ static int ehci_init(struct usb_host *host)
 	if (ehci_reset(ehci) != 0)
 		return -1;
 
-#if defined(CONFIG_EHCI_HCD_INIT_AFTER_RESET)
-	if (ehci_hcd_init() != 0)
-		return -1;
-#endif
-
 	/* Set head of reclaim list */
 	ehci->qhp = xzalloc(sizeof(struct QH) + 32);
 	ehci->qh_list = (struct QH *)(((unsigned long)ehci->qhp + 32) & ~31);
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
