Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TjGex-0006hz-4t
 for barebox@lists.infradead.org; Thu, 13 Dec 2012 21:49:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 13 Dec 2012 22:49:10 +0100
Message-Id: <1355435350-20348-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1355435350-20348-1-git-send-email-s.hauer@pengutronix.de>
References: <1355435350-20348-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 7/7] USB ehci: Add powerup fixup for EfikaSB
To: barebox@lists.infradead.org

The EfikaSB has a bug requiring to write to an ULPI register after
powerup. It doesn't seem that this this bug is present on any other
hardware, so add a workaround directly into the driver.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/host/ehci-hcd.c |   23 ++++++++++++++++++++++-
 1 file changed, 22 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index 02ec714..9b9e049 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -426,6 +426,27 @@ static inline int min3(int a, int b, int c)
 	return a;
 }
 
+#ifdef CONFIG_MACH_EFIKA_MX_SMARTBOOK
+#include <usb/ulpi.h>
+/*
+ * Add support for setting CHRGVBUS to workaround a hardware bug on efika mx/sb
+ * boards.
+ * See http://lists.infradead.org/pipermail/linux-arm-kernel/2011-January/037341.html
+ */
+void ehci_powerup_fixup(struct ehci_priv *ehci)
+{
+	void *viewport = (void *)ehci->hcor + 0x30;
+
+	if (ehci->dev->id > 0)
+		ulpi_write(ULPI_OTG_CHRG_VBUS, ULPI_OTGCTL + ULPI_REG_SET,
+				viewport);
+}
+#else
+static inline void ehci_powerup_fixup(struct ehci_priv *ehci)
+{
+}
+#endif
+
 static int
 ehci_submit_root(struct usb_device *dev, unsigned long pipe, void *buffer,
 		 int length, struct devrequest *req)
@@ -611,7 +632,7 @@ ehci_submit_root(struct usb_device *dev, unsigned long pipe, void *buffer,
 				 * usb 2.0 specification say 50 ms resets on
 				 * root
 				 */
-				ehci_powerup_fixup(ehci->dev, &reg);
+				ehci_powerup_fixup(ehci);
 
 				wait_ms(50);
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
