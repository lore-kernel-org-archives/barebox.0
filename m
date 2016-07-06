Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bKiwm-00016W-Va
 for barebox@lists.infradead.org; Wed, 06 Jul 2016 09:16:45 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  6 Jul 2016 11:16:22 +0200
Message-Id: <1467796582-23000-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] usb: ehci: honour timeout value
To: Barebox List <barebox@lists.infradead.org>

usb_control_msg() and usb_bulk_msg() have a timeout parameter. Honour
this in the ehci driver instead of using a default timeout.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/host/ehci-hcd.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index b0bf922..35cf6aa 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -215,7 +215,7 @@ static int ehci_td_buffer(struct qTD *td, void *buf, size_t sz)
 
 static int
 ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
-		   int length, struct devrequest *req)
+		   int length, struct devrequest *req, int timeout_ms)
 {
 	struct usb_host *host = dev->host;
 	struct ehci_priv *ehci = to_ehci(host);
@@ -364,7 +364,7 @@ ehci_submit_async(struct usb_device *dev, unsigned long pipe, void *buffer,
 	}
 
 	/* Wait for TDs to be processed. */
-	timeout_val = usb_pipebulk(pipe) ? (SECOND << 2) : (SECOND >> 2);
+	timeout_val = timeout_ms * MSECOND;
 	start = get_time_ns();
 	vtd = td;
 	do {
@@ -893,7 +893,7 @@ submit_bulk_msg(struct usb_device *dev, unsigned long pipe, void *buffer,
 		dev_dbg(ehci->dev, "non-bulk pipe (type=%lu)", usb_pipetype(pipe));
 		return -1;
 	}
-	return ehci_submit_async(dev, pipe, buffer, length, NULL);
+	return ehci_submit_async(dev, pipe, buffer, length, NULL, timeout);
 }
 
 static int
@@ -913,7 +913,7 @@ submit_control_msg(struct usb_device *dev, unsigned long pipe, void *buffer,
 			dev->speed = USB_SPEED_HIGH;
 		return ehci_submit_root(dev, pipe, buffer, length, setup);
 	}
-	return ehci_submit_async(dev, pipe, buffer, length, setup);
+	return ehci_submit_async(dev, pipe, buffer, length, setup, timeout);
 }
 
 static int
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
