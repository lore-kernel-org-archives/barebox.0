Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 10.mo4.mail-out.ovh.net ([188.165.33.109]
	helo=mo4.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QmgHQ-0003zw-EV
	for barebox@lists.infradead.org; Fri, 29 Jul 2011 06:10:42 +0000
Received: from mail182.ha.ovh.net (b6.ovh.net [213.186.33.56])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id B77CEFFA2D6
	for <barebox@lists.infradead.org>;
	Fri, 29 Jul 2011 08:11:25 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 29 Jul 2011 07:52:52 +0200
Message-Id: <1311918777-26719-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1311918777-26719-1-git-send-email-plagnioj@jcrosoft.com>
References: <1311918777-26719-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/7] devinfo: switch to resource
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 drivers/base/driver.c |   16 +++++++++++++---
 1 files changed, 13 insertions(+), 3 deletions(-)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 3efb538..1bb74ee 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -340,6 +340,8 @@ static int do_devinfo(struct command *cmdtp, int argc, char *argv[])
 	struct device_d *dev;
 	struct driver_d *drv;
 	struct param_d *param;
+	int i;
+	struct resource *res;
 
 	if (argc == 1) {
 		printf("devices:\n");
@@ -360,9 +362,17 @@ static int do_devinfo(struct command *cmdtp, int argc, char *argv[])
 			return -1;
 		}
 
-		printf("base  : 0x%08x\nsize  : 0x%08x\ndriver: %s\n\n",
-			dev->map_base, dev->size,
-			dev->driver ? 
+		printf("resources:\n");
+		for (i = 0; i < dev->num_resources; i++) {
+			res = &dev->resource[i];
+			printf("num   : %d\n", i);
+			if (res->name)
+				printf("name  : %s\n", res->name);
+			printf("start : 0x%08x\nsize  : 0x%08x\n",
+			       res->start, res->size);
+		}
+
+		printf("driver: %s\n\n", dev->driver ?
 				dev->driver->name : "none");
 
 		if (dev->driver)
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
