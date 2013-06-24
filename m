Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UrA8d-0007MW-2V
 for barebox@lists.infradead.org; Mon, 24 Jun 2013 17:01:12 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 24 Jun 2013 19:00:39 +0200
Message-Id: <1372093242-11699-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/4] usb: ehci: Fixup efika hack for devicetree
To: barebox@lists.infradead.org

We used to distinguish which USB port to fixup by pdev->id. This
is < 0 for devicetree probed devices all the time, so this won't
work anymore once we switch to devicetree. Do the fixup on every
port instead, it doesn't hurt.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/host/ehci-hcd.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index 840aa1a..6a459b9 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -443,9 +443,8 @@ void ehci_powerup_fixup(struct ehci_priv *ehci)
 {
 	void *viewport = (void *)ehci->hcor + 0x30;
 
-	if (ehci->dev->id > 0)
-		ulpi_write(ULPI_OTG_CHRG_VBUS, ULPI_OTGCTL + ULPI_REG_SET,
-				viewport);
+	ulpi_write(ULPI_OTG_CHRG_VBUS, ULPI_OTGCTL + ULPI_REG_SET,
+			viewport);
 }
 #else
 static inline void ehci_powerup_fixup(struct ehci_priv *ehci)
-- 
1.8.3.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
