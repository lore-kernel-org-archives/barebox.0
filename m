Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R6zhr-0003DY-O1
	for barebox@lists.infradead.org; Fri, 23 Sep 2011 06:57:56 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 23 Sep 2011 08:57:44 +0200
Message-Id: <1316761066-29811-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1316761066-29811-1-git-send-email-s.hauer@pengutronix.de>
References: <1316761066-29811-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] Modified timeout in the ehci-hcd USB host driver.
To: barebox@lists.infradead.org

From: Rosen Kolev <rosen.kolev@amk-drives.bg>

Increased the asynchronous message timeout for bulk endpoints.
---
 drivers/usb/host/ehci-hcd.c |    5 +++--
 1 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index 60fc181..e092b8d 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -298,7 +298,7 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 	uint32_t c, toggle;
 	uint32_t cmd;
 	int ret = 0;
-	uint64_t start;
+	uint64_t start, timeout_val;
 	static struct QH __qh __attribute__((aligned(32)));
 	static struct qTD __td[3] __attribute__((aligned(32)));
 
@@ -415,13 +415,14 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 	}
 
 	/* Wait for TDs to be processed. */
+	timeout_val = usb_pipebulk(pipe) ? (SECOND << 2) : (SECOND >> 2);
 	start = get_time_ns();
 	vtd = td;
 	do {
 		/* Invalidate dcache */
 		ehci_invalidate_dcache(ehci->qh_list);
 		token = hc32_to_cpu(vtd->qt_token);
-		if (is_timeout(start, SECOND >> 2)) {
+		if (is_timeout(start, timeout_val)) {
 			/* Disable async schedule. */
 			cmd = ehci_readl(&ehci->hcor->or_usbcmd);
 			cmd &= ~CMD_ASE;
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
