Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1ORj0N-00067D-4r
	for barebox@lists.infradead.org; Thu, 24 Jun 2010 09:45:56 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 24 Jun 2010 11:45:48 +0200
Message-Id: <1277372751-15797-4-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/6] usb: Check return value of host controller init
To: barebox@lists.infradead.org

And do not scan the bus if initialization failed.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/usb.c |    5 ++++-
 1 files changed, 4 insertions(+), 1 deletions(-)

diff --git a/drivers/usb/usb.c b/drivers/usb/usb.c
index 1ad4bab..76e033e 100644
--- a/drivers/usb/usb.c
+++ b/drivers/usb/usb.c
@@ -453,6 +453,7 @@ static int __usb_init(void)
 {
 	struct usb_device *dev, *tmp;
 	struct usb_host *host;
+	int ret;
 
 	list_for_each_entry_safe(dev, tmp, &usb_device_list, list) {
 		list_del(&dev->list);
@@ -466,7 +467,9 @@ static int __usb_init(void)
 	dev_index = 0;
 
 	list_for_each_entry(host, &host_list, list) {
-		host->init(host);
+		ret = host->init(host);
+		if (ret)
+			continue;
 
 		dev = usb_alloc_new_device();
 		dev->host = host;
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
