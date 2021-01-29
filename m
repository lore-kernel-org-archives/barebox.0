Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l5WMi-0002oi-0t
 for barebox@lists.infradead.org; Fri, 29 Jan 2021 16:11:20 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 29 Jan 2021 17:11:15 +0100
Message-Id: <20210129161116.9971-7-a.fatoum@pengutronix.de>
In-Reply-To: <20210129161116.9971-1-a.fatoum@pengutronix.de>
References: <20210129161116.9971-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 7/8] usb: add fallback ->detect method for USB host drivers
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

We already maintain a list of USB host controllers, so we can use that
to implement a generic detect callback. Currently, all drivers define
their own, which uses driver-specific means to arrive at the struct
usb_host and then call usb_host_detect().

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/usb/core/usb.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index ea244d4bcf6c..938a28e030bf 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -88,11 +88,25 @@ static inline void usb_host_release(struct usb_host *host)
 	slice_release(&host->slice);
 }
 
+static int usb_hw_detect(struct device_d *dev)
+{
+	struct usb_host *host;
+
+	list_for_each_entry(host, &host_list, list) {
+		if (dev == host->hw_dev)
+			return usb_host_detect(host);
+	}
+
+	return -ENODEV;
+}
+
 int usb_register_host(struct usb_host *host)
 {
 	list_add_tail(&host->list, &host_list);
 	host->busnum = host_busnum++;
 	slice_init(&host->slice, dev_name(host->hw_dev));
+	if (!host->hw_dev->detect)
+		host->hw_dev->detect = usb_hw_detect;
 	return 0;
 }
 
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
