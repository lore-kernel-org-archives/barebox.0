Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kkm4k-0006ZK-Gh
 for barebox@lists.infradead.org; Thu, 03 Dec 2020 10:43:03 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  3 Dec 2020 11:42:56 +0100
Message-Id: <20201203104257.8263-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2 1/2] usb: host: ehci: fix mismatch in format string
To: barebox@lists.infradead.org
Cc: ukl@pengutronix.de, Ahmad Fatoum <a.fatoum@pengutronix.de>

sz is of type size_t. Use the appropriate format string specifier for
printing it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Cc: ukl@pengutronix.de
v1 -> v2: fix broken English in commit message (Uwe)
---
 drivers/usb/host/ehci-hcd.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index 38999927c5a8..287849102d68 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -240,7 +240,7 @@ static int ehci_td_buffer(struct qTD *td, dma_addr_t addr, size_t sz)
 	}
 
 	if (idx == buffer_count) {
-		pr_debug("out of buffer pointers (%u bytes left)\n", sz);
+		pr_debug("out of buffer pointers (%zu bytes left)\n", sz);
 		return -ENOMEM;
 	}
 
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
