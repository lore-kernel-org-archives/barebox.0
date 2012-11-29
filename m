Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Te9MV-0008C0-R5
 for barebox@lists.infradead.org; Thu, 29 Nov 2012 19:01:33 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 29 Nov 2012 20:01:21 +0100
Message-Id: <1354215684-25235-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/4] barebox update: fix finding default handler
To: barebox@lists.infradead.org

It was not possible to register another handler when already
a default handler is registered. Fix this.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/bbu.c |   13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/common/bbu.c b/common/bbu.c
index 92f8d2b..e31f645 100644
--- a/common/bbu.c
+++ b/common/bbu.c
@@ -71,13 +71,13 @@ int bbu_confirm(struct bbu_data *data)
 	return -EINTR;
 }
 
-static struct bbu_handler *bbu_find_handler(const char *name, unsigned long flags)
+static struct bbu_handler *bbu_find_handler(const char *name)
 {
 	struct bbu_handler *handler;
 
 	list_for_each_entry(handler, &bbu_image_handlers, list) {
 		if (!name) {
-			if (flags & BBU_HANDLER_FLAG_DEFAULT)
+			if (handler->flags & BBU_HANDLER_FLAG_DEFAULT)
 				return handler;
 			continue;
 		}
@@ -97,10 +97,13 @@ int barebox_update(struct bbu_data *data)
 	struct bbu_handler *handler;
 	int ret;
 
-	handler = bbu_find_handler(data->handler_name, data->flags);
+	handler = bbu_find_handler(data->handler_name);
 	if (!handler)
 		return -ENODEV;
 
+	if (!data->handler_name)
+		data->handler_name = handler->name;
+
 	if (!data->devicefile)
 		data->devicefile = handler->devicefile;
 
@@ -137,11 +140,11 @@ void bbu_handlers_list(void)
  */
 int bbu_register_handler(struct bbu_handler *handler)
 {
-	if (bbu_find_handler(handler->name, 0))
+	if (bbu_find_handler(handler->name))
 		return -EBUSY;
 
 	if (handler->flags & BBU_HANDLER_FLAG_DEFAULT &&
-			bbu_find_handler(NULL, BBU_HANDLER_FLAG_DEFAULT))
+			bbu_find_handler(NULL))
 		return -EBUSY;
 
 	list_add_tail(&handler->list, &bbu_image_handlers);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
