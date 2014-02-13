Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WDtUV-0001IP-UV
 for barebox@lists.infradead.org; Thu, 13 Feb 2014 10:26:00 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 13 Feb 2014 11:25:30 +0100
Message-Id: <1392287135-445-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1392287135-445-1-git-send-email-s.hauer@pengutronix.de>
References: <1392287135-445-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/8] device: remove parameters when unregistering a device
To: barebox@lists.infradead.org

Otherwise we loose memory on each device_unregister. The ethernet
code used to do this before calling unregister_device. This can
now be removed.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/base/driver.c | 2 ++
 net/eth.c             | 2 --
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index b5fe346..37560fd 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -182,6 +182,8 @@ int unregister_device(struct device_d *old_dev)
 
 	dev_dbg(old_dev, "unregister\n");
 
+	dev_remove_parameters(old_dev);
+
 	if (old_dev->driver)
 		old_dev->bus->remove(old_dev);
 
diff --git a/net/eth.c b/net/eth.c
index 37dd9e0..8c4798c 100644
--- a/net/eth.c
+++ b/net/eth.c
@@ -380,8 +380,6 @@ void eth_unregister(struct eth_device *edev)
 	if (edev == eth_current)
 		eth_current = NULL;
 
-	dev_remove_parameters(&edev->dev);
-
 	if (IS_ENABLED(CONFIG_OFDEVICE) && edev->nodepath)
 		free(edev->nodepath);
 
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
