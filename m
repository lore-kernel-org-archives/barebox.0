Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1ZAXvV-00052w-10
 for barebox@lists.infradead.org; Thu, 02 Jul 2015 06:24:49 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  2 Jul 2015 08:24:24 +0200
Message-Id: <1435818265-13202-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1435818265-13202-1-git-send-email-s.hauer@pengutronix.de>
References: <1435818265-13202-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] of: export of_platform_device_create
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/platform.c | 2 +-
 include/of.h          | 2 ++
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index ab3ccab..2c075db 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -118,7 +118,7 @@ static void of_device_make_bus_id(struct device_d *dev)
  * Returns pointer to created platform device, or NULL if a device was not
  * registered. Unavailable devices will not get registered.
  */
-static struct device_d *of_platform_device_create(struct device_node *np,
+struct device_d *of_platform_device_create(struct device_node *np,
 						struct device_d *parent)
 {
 	struct device_d *dev;
diff --git a/include/of.h b/include/of.h
index c02f5f4..1db210b 100644
--- a/include/of.h
+++ b/include/of.h
@@ -224,6 +224,8 @@ extern int of_modalias_node(struct device_node *node, char *modalias, int len);
 extern struct device_node *of_get_root_node(void);
 extern int of_set_root_node(struct device_node *node);
 
+extern struct device_d *of_platform_device_create(struct device_node *np,
+						struct device_d *parent);
 extern int of_platform_populate(struct device_node *root,
 				const struct of_device_id *matches,
 				struct device_d *parent);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
