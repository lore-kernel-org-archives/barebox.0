Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1ORj0N-00067C-7C
	for barebox@lists.infradead.org; Thu, 24 Jun 2010 09:45:56 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 24 Jun 2010 11:45:47 +0200
Message-Id: <1277372751-15797-3-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/6] ehci: Handle hub port reset properly
To: barebox@lists.infradead.org

This has been copied from the U-Boot ehci driver.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/usb_ehci_core.c |   18 ++++++++++++++++++
 1 files changed, 18 insertions(+), 0 deletions(-)

diff --git a/drivers/usb/usb_ehci_core.c b/drivers/usb/usb_ehci_core.c
index f3611cd..c5d4da3 100644
--- a/drivers/usb/usb_ehci_core.c
+++ b/drivers/usb/usb_ehci_core.c
@@ -676,6 +676,8 @@ ehci_submit_root(struct usb_device *dev, unsigned long pipe, void *buffer,
 				ehci_writel(status_reg, reg);
 				break;
 			} else {
+				int ret;
+
 				reg |= EHCI_PS_PR;
 				reg &= ~EHCI_PS_PE;
 				ehci_writel(status_reg, reg);
@@ -686,6 +688,22 @@ ehci_submit_root(struct usb_device *dev, unsigned long pipe, void *buffer,
 				 */
 				wait_ms(50);
 				ehci->portreset |= 1 << le16_to_cpu(req->index);
+				/* terminate the reset */
+				ehci_writel(status_reg, reg & ~EHCI_PS_PR);
+				/*
+				 * A host controller must terminate the reset
+				 * and stabilize the state of the port within
+				 * 2 milliseconds
+				 */
+				ret = handshake(status_reg, EHCI_PS_PR, 0,
+						2 * 1000);
+				if (!ret)
+					ehci->portreset |=
+						1 << le16_to_cpu(req->index);
+				else
+					printf("port(%d) reset error\n",
+						le16_to_cpu(req->index) - 1);
+
 			}
 			break;
 		default:
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
