Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 26.mail-out.ovh.net ([91.121.27.225])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PnNJ6-0000Vs-9L
	for barebox@lists.infradead.org; Thu, 10 Feb 2011 03:35:01 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 10 Feb 2011 04:32:00 +0100
Message-Id: <1297308720-26390-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1297308720-26390-1-git-send-email-plagnioj@jcrosoft.com>
References: <1297308720-26390-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 4/4] devices_shutdown: move remove call to bus
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/base/driver.c   |    4 ++--
 drivers/base/platform.c |    3 ++-
 2 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index bd7464e..6ad61f7 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -259,8 +259,8 @@ void devices_shutdown(void)
 	struct device_d *dev;
 
 	list_for_each_entry(dev, &active, active) {
-		if (dev->driver->remove)
-			dev->driver->remove(dev);
+		if (dev->bus->remove)
+			dev->bus->remove(dev);
 	}
 }
 
diff --git a/drivers/base/platform.c b/drivers/base/platform.c
index f1ee38c..e0a83b9 100644
--- a/drivers/base/platform.c
+++ b/drivers/base/platform.c
@@ -34,7 +34,8 @@ static int platform_probe(struct device_d *dev)
 
 static void platform_remove(struct device_d *dev)
 {
-	dev->driver->remove(dev);
+	if (dev->driver->remove)
+		dev->driver->remove(dev);
 }
 
 struct bus_type platform_bus = {
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
