Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WBh6p-0007nt-Aa
 for barebox@lists.infradead.org; Fri, 07 Feb 2014 08:48:29 +0000
Received: from tellur.localdomain (p57B5E0F6.dip0.t-ipconnect.de
 [87.181.224.246]) by lynxeye.de (Postfix) with ESMTPA id 62B9718B425F
 for <barebox@lists.infradead.org>; Fri,  7 Feb 2014 09:47:32 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Fri,  7 Feb 2014 09:48:43 +0100
Message-Id: <1391762936-2747-2-git-send-email-dev@lynxeye.de>
In-Reply-To: <1391762936-2747-1-git-send-email-dev@lynxeye.de>
References: <1391762936-2747-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 01/14] remove redundant NULL check on free
To: barebox@lists.infradead.org

free() already checks the pointer to be non
NULL. No need to do it again.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 common/environment.c   | 3 +--
 drivers/eeprom/at25.c  | 3 +--
 drivers/usb/core/usb.c | 3 +--
 lib/parameter.c        | 3 +--
 net/eth.c              | 2 +-
 5 files changed, 5 insertions(+), 9 deletions(-)

diff --git a/common/environment.c b/common/environment.c
index 6f06bfc..ab82103 100644
--- a/common/environment.c
+++ b/common/environment.c
@@ -371,8 +371,7 @@ skip:
 	ret = 0;
 out:
 	close(envfd);
-	if (buf_free)
-		free(buf_free);
+	free(buf_free);
 	return ret;
 }
 
diff --git a/drivers/eeprom/at25.c b/drivers/eeprom/at25.c
index 68b4710..0a099e1 100644
--- a/drivers/eeprom/at25.c
+++ b/drivers/eeprom/at25.c
@@ -294,8 +294,7 @@ static int at25_probe(struct device_d *dev)
 	return 0;
 
 fail:
-	if (at25)
-		free(at25);
+	free(at25);
 
 	return err;
 }
diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index 68a51d1..fe1ac02 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -504,8 +504,7 @@ int usb_host_detect(struct usb_host *host, int force)
 
 		list_del(&dev->list);
 		unregister_device(&dev->dev);
-		if (dev->hub)
-			free(dev->hub);
+		free(dev->hub);
 		dma_free(dev->setup_packet);
 		dma_free(dev->descriptor);
 		free(dev);
diff --git a/lib/parameter.c b/lib/parameter.c
index c5c6426..a0bae3e 100644
--- a/lib/parameter.c
+++ b/lib/parameter.c
@@ -108,8 +108,7 @@ int dev_set_param(struct device_d *dev, const char *name, const char *val)
 int dev_param_set_generic(struct device_d *dev, struct param_d *p,
 		const char *val)
 {
-	if (p->value)
-		free(p->value);
+	free(p->value);
 	if (!val) {
 		p->value = NULL;
 		return 0;
diff --git a/net/eth.c b/net/eth.c
index 37dd9e0..cb59e76 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -382,7 +382,7 @@ void eth_unregister(struct eth_device *edev)
 
 	dev_remove_parameters(&edev->dev);
 
-	if (IS_ENABLED(CONFIG_OFDEVICE) && edev->nodepath)
+	if (IS_ENABLED(CONFIG_OFDEVICE))
 		free(edev->nodepath);
 
 	unregister_device(&edev->dev);
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
