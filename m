Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aW0Ht-0003IU-RA
 for barebox@lists.infradead.org; Wed, 17 Feb 2016 11:28:54 +0000
From: Markus Pargmann <mpa@pengutronix.de>
Date: Wed, 17 Feb 2016 12:28:17 +0100
Message-Id: <1455708500-980-1-git-send-email-mpa@pengutronix.de>
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
Subject: [PATCH v2 1/4] bbu: Add barebox_update search by device
To: barebox@lists.infradead.org

bbu_data includes a devicefile information. Add the possibility to make
an update based on the given devicefile. This is in addition to the
normal search for a barebox update handler by its name.

Signed-off-by: Markus Pargmann <mpa@pengutronix.de>
---
 common/bbu.c | 20 +++++++++++++++++++-
 1 file changed, 19 insertions(+), 1 deletion(-)

diff --git a/common/bbu.c b/common/bbu.c
index 4d71fa4a87cb..bf3790d13fff 100644
--- a/common/bbu.c
+++ b/common/bbu.c
@@ -97,6 +97,20 @@ static struct bbu_handler *bbu_find_handler(const char *name)
 	return NULL;
 }
 
+static struct bbu_handler *bbu_find_handler_by_device(const char *devicepath)
+{
+	struct bbu_handler *handler;
+
+	if (!devicepath)
+		return NULL;
+
+	list_for_each_entry(handler, &bbu_image_handlers, list)
+		if (!strcmp(handler->devicefile, devicepath))
+			return handler;
+
+	return NULL;
+}
+
 /*
  * do a barebox update with data from *data
  */
@@ -105,7 +119,11 @@ int barebox_update(struct bbu_data *data)
 	struct bbu_handler *handler;
 	int ret;
 
-	handler = bbu_find_handler(data->handler_name);
+	handler = bbu_find_handler_by_device(data->devicefile);
+
+	if (!handler)
+		handler = bbu_find_handler(data->handler_name);
+
 	if (!handler)
 		return -ENODEV;
 
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
