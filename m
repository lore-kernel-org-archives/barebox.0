Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo173.mail-out.ovh.net ([46.105.34.219])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ck3nj-0000R2-Cj
 for barebox@lists.infradead.org; Sat, 04 Mar 2017 07:08:25 +0000
Received: from player791.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo173.mail-out.ovh.net (Postfix) with ESMTP id 9C0392880A
 for <barebox@lists.infradead.org>; Sat,  4 Mar 2017 08:08:00 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat,  4 Mar 2017 08:14:07 +0100
Message-Id: <1488611648-22773-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20170304071241.GG4120@mail.ovh.net>
References: <20170304071241.GG4120@mail.ovh.net>
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
Subject: [PATCH 1/2] driver: remove the const of struct platform_device_id
 *id_table
To: barebox@lists.infradead.org

so we can generate the hash at register time

This will allow speed up the device/driver matching as strcmp is slow.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/base/bus.c | 4 ++--
 include/driver.h   | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/base/bus.c b/drivers/base/bus.c
index b889a4866..03feba502 100644
--- a/drivers/base/bus.c
+++ b/drivers/base/bus.c
@@ -55,7 +55,7 @@ int device_match(struct device_d *dev, struct driver_d *drv)
 		return of_match(dev, drv);
 
 	if (drv->id_table) {
-		const struct platform_device_id *id = drv->id_table;
+		struct platform_device_id *id = drv->id_table;
 
 		while (id->name) {
 			if (!strcmp(id->name, dev->name)) {
@@ -73,7 +73,7 @@ int device_match(struct device_d *dev, struct driver_d *drv)
 
 int device_match_of_modalias(struct device_d *dev, struct driver_d *drv)
 {
-	const struct platform_device_id *id = drv->id_table;
+	struct platform_device_id *id = drv->id_table;
 	const char *of_modalias = NULL, *p;
 	int cplen;
 	const char *compat;
diff --git a/include/driver.h b/include/driver.h
index 6abaaad8b..db7f9c780 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -107,7 +107,7 @@ struct driver_d {
 
 	struct bus_type *bus;
 
-	const struct platform_device_id *id_table;
+	struct platform_device_id *id_table;
 	const struct of_device_id *of_compatible;
 };
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
