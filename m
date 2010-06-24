Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1ORj0N-00067B-73
	for barebox@lists.infradead.org; Thu, 24 Jun 2010 09:45:57 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 24 Jun 2010 11:45:46 +0200
Message-Id: <1277372751-15797-2-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/6] ehci: Make has_tt configurable via platform data
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/usb_ehci_core.c |   18 ++++++++++++------
 include/usb/ehci.h          |   10 ++++++++++
 2 files changed, 22 insertions(+), 6 deletions(-)
 create mode 100644 include/usb/ehci.h

diff --git a/drivers/usb/usb_ehci_core.c b/drivers/usb/usb_ehci_core.c
index d7efaad..f3611cd 100644
--- a/drivers/usb/usb_ehci_core.c
+++ b/drivers/usb/usb_ehci_core.c
@@ -31,6 +31,7 @@
 #include <xfuncs.h>
 #include <clock.h>
 #include <errno.h>
+#include <usb/ehci.h>
 #include <asm/mmu.h>
 
 #include "usb_ehci.h"
@@ -43,6 +44,7 @@ struct ehci_priv {
 	struct QH *qh_list;
 	void *qhp;
 	int portreset;
+	unsigned long flags;
 };
 
 #define to_ehci(ptr) container_of(ptr, struct ehci_priv, host)
@@ -112,13 +114,8 @@ static struct descriptor {
 		255		/* bInterval */
 	},
 };
-#define CONFIG_EHCI_IS_TDI // FIXME
 
-#if defined(CONFIG_EHCI_IS_TDI)
-#define ehci_is_TDI()	(1)
-#else
-#define ehci_is_TDI()	(0)
-#endif
+#define ehci_is_TDI()	(ehci->flags & EHCI_HAS_TT)
 
 #ifdef CONFIG_MMU
 /*
@@ -861,10 +858,19 @@ static int ehci_probe(struct device_d *dev)
 	struct usb_host *host;
 	struct ehci_priv *ehci;
 	uint32_t reg;
+	struct ehci_platform_data *pdata = dev->platform_data;
 
 	ehci = xmalloc(sizeof(struct ehci_priv));
 	host = &ehci->host;
 
+	if (pdata)
+		ehci->flags = pdata->flags;
+	else
+		/* default to EHCI_HAS_TT to not change behaviour of boards
+		 * with platform_data
+		 */
+		ehci->flags = EHCI_HAS_TT;
+
 	host->init = ehci_init;
 	host->submit_int_msg = submit_int_msg;
 	host->submit_control_msg = submit_control_msg;
diff --git a/include/usb/ehci.h b/include/usb/ehci.h
new file mode 100644
index 0000000..3304b60
--- /dev/null
+++ b/include/usb/ehci.h
@@ -0,0 +1,10 @@
+#ifndef __USB_EHCI_H
+#define __USB_EHCI_H
+
+#define EHCI_HAS_TT	(1 << 0)
+
+struct ehci_platform_data {
+	unsigned long flags;
+};
+
+#endif  /* __USB_EHCI_H */
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
