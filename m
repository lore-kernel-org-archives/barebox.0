Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z5Tnx-0002yF-51
 for barebox@lists.infradead.org; Thu, 18 Jun 2015 07:00:05 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 18 Jun 2015 08:59:39 +0200
Message-Id: <1434610779-21839-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] device parameters: sort alphabetically
To: Barebox List <barebox@lists.infradead.org>

With many parameters on the global device it becomes increasingly
annoying to find a parameter in the list. Sort it alphabetically
to make this easier.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/parameter.c | 10 +++++++++-
 1 file changed, 9 insertions(+), 1 deletion(-)

diff --git a/lib/parameter.c b/lib/parameter.c
index 865ad9f..4c261b1 100644
--- a/lib/parameter.c
+++ b/lib/parameter.c
@@ -122,6 +122,14 @@ static const char *param_get_generic(struct device_d *dev, struct param_d *p)
 	return p->value ? p->value : "";
 }
 
+static int compare(struct list_head *a, struct list_head *b)
+{
+	char *na = (char*)list_entry(a, struct param_d, list)->name;
+	char *nb = (char*)list_entry(b, struct param_d, list)->name;
+
+	return strcmp(na, nb);
+}
+
 static int __dev_add_param(struct param_d *param, struct device_d *dev, const char *name,
 		int (*set)(struct device_d *dev, struct param_d *p, const char *val),
 		const char *(*get)(struct device_d *dev, struct param_d *p),
@@ -145,7 +153,7 @@ static int __dev_add_param(struct param_d *param, struct device_d *dev, const ch
 
 	param->flags = flags;
 	param->dev = dev;
-	list_add_tail(&param->list, &dev->parameters);
+	list_add_sort(&param->list, &dev->parameters, compare);
 
 	return 0;
 }
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
