Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1ORj0N-00067E-4z
	for barebox@lists.infradead.org; Thu, 24 Jun 2010 09:45:57 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 24 Jun 2010 11:45:49 +0200
Message-Id: <1277372751-15797-5-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/6] ehci: use is_timeout for timeout instead of udelay counter
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/usb_ehci_core.c |   12 +++++++-----
 1 files changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/usb/usb_ehci_core.c b/drivers/usb/usb_ehci_core.c
index c5d4da3..e70e871 100644
--- a/drivers/usb/usb_ehci_core.c
+++ b/drivers/usb/usb_ehci_core.c
@@ -213,18 +213,20 @@ static inline void ehci_invalidate_dcache(struct QH *qh)
 static int handshake(uint32_t *ptr, uint32_t mask, uint32_t done, int usec)
 {
 	uint32_t result;
+	uint64_t start;
 
-	do {
+	start = get_time_ns();
+
+	while (1) {
 		result = ehci_readl(ptr);
 		if (result == ~(uint32_t)0)
 			return -1;
 		result &= mask;
 		if (result == done)
 			return 0;
-		udelay(1);
-		usec--;
-	} while (usec > 0);
-	return -1;
+		if (is_timeout(start, usec * USECOND))
+			return -ETIMEDOUT;
+	}
 }
 
 static int ehci_reset(struct ehci_priv *ehci)
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
