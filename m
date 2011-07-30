Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 18.mo4.mail-out.ovh.net ([188.165.54.143]
	helo=mo4.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1Qn0KJ-0001lW-RZ
	for barebox@lists.infradead.org; Sat, 30 Jul 2011 03:35:03 +0000
Received: from mail182.ha.ovh.net (b6.ovh.net [213.186.33.56])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id D98FBFFA030
	for <barebox@lists.infradead.org>;
	Sat, 30 Jul 2011 05:35:47 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 30 Jul 2011 05:17:11 +0200
Message-Id: <1311995831-25350-10-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20110729155356.GF25658@game.jcrosoft.org>
References: <20110729155356.GF25658@game.jcrosoft.org>
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
Subject: [PATCH 23/23] driver: remove map_base
To: barebox@lists.infradead.org

as now all the drivers and board have been switch to resource when can drop
map_base and size from device_d

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/base/driver.c |   20 --------------------
 include/driver.h      |    6 ------
 2 files changed, 0 insertions(+), 26 deletions(-)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 4ceb346..84f9c81 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -103,26 +103,6 @@ int register_device(struct device_d *new_device)
 {
 	struct driver_d *drv;
 
-	/* if no map_base available use the first resource if available
-	 * so we do not need to duplicate it
-	 * Temporary fixup until we get rid of map_base and size
-	 */
-	if (new_device->map_base) {
-		if (new_device->resource) {
-			dev_err(new_device, "map_base and resource specifed\n");
-			return -EIO;
-		}
-		dev_warn(new_device, "uses map_base. Please convert to use resources\n");
-		new_device->resource = xzalloc(sizeof(struct resource));
-		new_device->resource[0].start = new_device->map_base;
-		new_device->resource[0].size = new_device->size;
-		new_device->resource[0].flags = IORESOURCE_MEM;
-		new_device->num_resources = 1;
-	} else if (new_device->resource) {
-		new_device->map_base = new_device->resource[0].start;
-		new_device->size = new_device->resource[0].size;
-	}
-
 	if (new_device->id < 0) {
 		new_device->id = get_free_deviceid(new_device->name);
 	} else {
diff --git a/include/driver.h b/include/driver.h
index baf8d88..b011f98 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -71,12 +71,6 @@ struct device_d {
 	 * something like eth0 or nor0. */
 	int id;
 
-	resource_size_t size;
-
-	/*! For devices which are directly mapped into memory, i.e. NOR
-	 * Flash or SDRAM. */
-	resource_size_t map_base;
-
 	struct resource *resource;
 	int num_resources;
 
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
