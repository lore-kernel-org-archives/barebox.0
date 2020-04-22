Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRADg-0003FD-1e
 for barebox@lists.infradead.org; Wed, 22 Apr 2020 07:55:00 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 22 Apr 2020 09:54:51 +0200
Message-Id: <20200422075452.25226-11-s.hauer@pengutronix.de>
In-Reply-To: <20200422075452.25226-1-s.hauer@pengutronix.de>
References: <20200422075452.25226-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/11] usbnet: Be more friendly in the receive path
To: Barebox List <barebox@lists.infradead.org>
Cc: Edmund Henniges <eh@emlix.com>, =?UTF-8?q?Daniel=20Gl=C3=B6ckner?= <dg@emlix.com>

To recognize if we have a receive packet pending we must set up a USB
bulk transfer. When there's no incoming packet we must wait until the
transfer times out. We do this with every poller call which can
considerably slow down the system. With this patch we do two things
against this:

- lower the timeout for the bulk transfer
- When we haven't received a packet for longer then lower the frequency
  of calling into the USB stack to once every 100ms

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/usb/usbnet.c | 19 ++++++++++++++++++-
 include/usb/usbnet.h     |  3 +++
 2 files changed, 21 insertions(+), 1 deletion(-)

diff --git a/drivers/net/usb/usbnet.c b/drivers/net/usb/usbnet.c
index d43b75591a..c3ae94b727 100644
--- a/drivers/net/usb/usbnet.c
+++ b/drivers/net/usb/usbnet.c
@@ -122,12 +122,29 @@ static int usbnet_recv(struct eth_device *edev)
 
 	dev_dbg(&edev->dev, "%s\n",__func__);
 
+	/*
+	 * we must let the usb_bulk_msg below timeout before we realize
+	 * that we have no packet received. Since this function runs
+	 * inside a poller we considerably slow down barebox when we
+	 * wait for the timeout too often. To improve this we only poll
+	 * with full speed when we actually have received a packet in the
+	 * last 100ms.
+	 */
+	if (is_timeout(dev->last_pkt_received, 100 * MSECOND) &&
+	    !is_timeout(dev->last_recv_call, 100 * MSECOND)) {
+		return 0;
+	}
+
+	dev->last_recv_call = get_time_ns();
+
 	len = dev->rx_urb_size;
 
-	ret = usb_bulk_msg(dev->udev, dev->in, dev->rx_buf, len, &alen, 100);
+	ret = usb_bulk_msg(dev->udev, dev->in, dev->rx_buf, len, &alen, 2);
 	if (ret)
 		return ret;
 
+	dev->last_pkt_received = get_time_ns();
+
 	if (alen) {
 		if (info->rx_fixup)
 			return info->rx_fixup(dev, dev->rx_buf, alen);
diff --git a/include/usb/usbnet.h b/include/usb/usbnet.h
index 450db47b40..7ff32f280a 100644
--- a/include/usb/usbnet.h
+++ b/include/usb/usbnet.h
@@ -54,6 +54,9 @@ struct usbnet {
 #		define EVENT_RX_MEMORY	2
 #		define EVENT_STS_SPLIT	3
 #		define EVENT_LINK_RESET	4
+
+	uint64_t last_pkt_received;
+	uint64_t last_recv_call;
 };
 
 #if 0
-- 
2.26.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
