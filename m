Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UfW0c-0005fK-S0
 for barebox@lists.infradead.org; Thu, 23 May 2013 13:56:49 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 23 May 2013 15:56:15 +0200
Message-Id: <1369317377-17153-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1369317377-17153-1-git-send-email-s.hauer@pengutronix.de>
References: <1369317377-17153-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] param: Add info function
To: barebox@lists.infradead.org

Some parameters may wish to provide some information about their
meaning or possible values. Provide an info callback for parameters.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/base/driver.c | 8 ++++++--
 include/param.h       | 1 +
 2 files changed, 7 insertions(+), 2 deletions(-)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index edd49b3..30a4bc5 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -495,8 +495,12 @@ static int do_devinfo(int argc, char *argv[])
 		printf("%s\n", list_empty(&dev->parameters) ?
 				"no parameters available" : "Parameters:");
 
-		list_for_each_entry(param, &dev->parameters, list)
-			printf("%16s = %s\n", param->name, dev_get_param(dev, param->name));
+		list_for_each_entry(param, &dev->parameters, list) {
+			printf("%16s = %s", param->name, dev_get_param(dev, param->name));
+			if (param->info)
+				param->info(param);
+			printf("\n");
+		}
 #ifdef CONFIG_OFDEVICE
 		if (dev->device_node) {
 			printf("\ndevice node: %s\n", dev->device_node->full_name);
diff --git a/include/param.h b/include/param.h
index 4af2d09..54dea56 100644
--- a/include/param.h
+++ b/include/param.h
@@ -12,6 +12,7 @@ typedef unsigned long          IPaddr_t;
 struct param_d {
 	const char* (*get)(struct device_d *, struct param_d *param);
 	int (*set)(struct device_d *, struct param_d *param, const char *val);
+	void (*info)(struct param_d *param);
 	unsigned int flags;
 	char *name;
 	char *value;
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
