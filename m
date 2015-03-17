Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YXkxK-0006Az-HZ
 for barebox@lists.infradead.org; Tue, 17 Mar 2015 06:26:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 17 Mar 2015 07:25:54 +0100
Message-Id: <1426573554-14478-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1426573554-14478-1-git-send-email-s.hauer@pengutronix.de>
References: <1426573554-14478-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] driver: Call bus->remove instead of driver->remove
To: Barebox List <barebox@lists.infradead.org>

In devices_shutdown we should call the busses remove function
which in turn calls the drivers remove function. Otherwise for
example PCI devices never get removed since they do not have
a remove function but a pcidev->remove function instead.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/base/driver.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 453966b..590c97c 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -399,8 +399,8 @@ void devices_shutdown(void)
 	struct device_d *dev;
 
 	list_for_each_entry(dev, &active, active) {
-		if (dev->driver->remove)
-			dev->driver->remove(dev);
+		if (dev->bus->remove)
+			dev->bus->remove(dev);
 	}
 }
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
