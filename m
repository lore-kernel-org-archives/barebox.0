Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1ORj0N-00067G-57
	for barebox@lists.infradead.org; Thu, 24 Jun 2010 09:45:57 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 24 Jun 2010 11:45:50 +0200
Message-Id: <1277372751-15797-6-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/6] ehci: Force a ehci_halt before trying to reset
To: barebox@lists.infradead.org

As observed on OMAP some controllers do not like being
resetted when running.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/usb_ehci_core.c |   21 +++++++++++++++++++++
 1 files changed, 21 insertions(+), 0 deletions(-)

diff --git a/drivers/usb/usb_ehci_core.c b/drivers/usb/usb_ehci_core.c
index e70e871..fe988c3 100644
--- a/drivers/usb/usb_ehci_core.c
+++ b/drivers/usb/usb_ehci_core.c
@@ -770,12 +770,33 @@ unknown:
 	return -1;
 }
 
+/* force HC to halt state from unknown (EHCI spec section 2.3) */
+static int ehci_halt(struct ehci_priv *ehci)
+{
+	u32	temp = ehci_readl(&ehci->hcor->or_usbsts);
+
+	/* disable any irqs left enabled by previous code */
+	ehci_writel(&ehci->hcor->or_usbintr, 0);
+
+	if (temp & STS_HALT)
+		return 0;
+
+	temp = ehci_readl(&ehci->hcor->or_usbcmd);
+	temp &= ~CMD_RUN;
+	ehci_writel(&ehci->hcor->or_usbcmd, temp);
+
+	return handshake(&ehci->hcor->or_usbsts,
+			  STS_HALT, STS_HALT, 16 * 125);
+}
+
 static int ehci_init(struct usb_host *host)
 {
 	struct ehci_priv *ehci = to_ehci(host);
 	uint32_t reg;
 	uint32_t cmd;
 
+	ehci_halt(ehci);
+
 	/* EHCI spec section 4.1 */
 	if (ehci_reset(ehci) != 0)
 		return -1;
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
