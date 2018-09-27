Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g5Nf3-0007xp-UB
 for barebox@lists.infradead.org; Thu, 27 Sep 2018 04:12:23 +0000
Received: by mail-pg1-x544.google.com with SMTP id d19-v6so915363pgv.1
 for <barebox@lists.infradead.org>; Wed, 26 Sep 2018 21:11:52 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 26 Sep 2018 21:11:27 -0700
Message-Id: <20180927041129.29584-2-andrew.smirnov@gmail.com>
In-Reply-To: <20180927041129.29584-1-andrew.smirnov@gmail.com>
References: <20180927041129.29584-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 1/3] bbu: Expose bbu_find_handler_by_*() functions
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Expose bbu_find_handler_by_device() and bbu_find_handler_by_name() as
public functions and convert the only user of
barebox_update_handler_exists() to use the former function instead.

With this done, barebox_update_handler_exists() is no longer used
anywhere in the code and can be removed.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 common/bbu.c                    | 24 +++++-------------------
 drivers/usb/gadget/f_fastboot.c |  2 +-
 include/bbu.h                   |  3 ++-
 3 files changed, 8 insertions(+), 21 deletions(-)

diff --git a/common/bbu.c b/common/bbu.c
index 3974bf672..fabd94966 100644
--- a/common/bbu.c
+++ b/common/bbu.c
@@ -99,7 +99,7 @@ int bbu_confirm(struct bbu_data *data)
 	return -EINTR;
 }
 
-static struct bbu_handler *bbu_find_handler(const char *name)
+struct bbu_handler *bbu_find_handler_by_name(const char *name)
 {
 	struct bbu_handler *handler;
 
@@ -117,7 +117,7 @@ static struct bbu_handler *bbu_find_handler(const char *name)
 	return NULL;
 }
 
-static struct bbu_handler *bbu_find_handler_by_device(const char *devicepath)
+struct bbu_handler *bbu_find_handler_by_device(const char *devicepath)
 {
 	struct bbu_handler *handler;
 
@@ -140,20 +140,6 @@ static struct bbu_handler *bbu_find_handler_by_device(const char *devicepath)
 	return NULL;
 }
 
-bool barebox_update_handler_exists(struct bbu_data *data)
-{
-	struct bbu_handler *handler;
-
-	handler = bbu_find_handler_by_device(data->devicefile);
-	if (handler)
-		return true;
-
-	if (!data->handler_name)
-		return false;
-
-	return bbu_find_handler(data->handler_name) != NULL;
-}
-
 static int bbu_check_of_compat(struct bbu_data *data)
 {
 	struct device_node *root_node;
@@ -238,7 +224,7 @@ int barebox_update(struct bbu_data *data)
 	handler = bbu_find_handler_by_device(data->devicefile);
 
 	if (!handler)
-		handler = bbu_find_handler(data->handler_name);
+		handler = bbu_find_handler_by_name(data->handler_name);
 
 	if (!handler)
 		return -ENODEV;
@@ -292,11 +278,11 @@ void bbu_handlers_list(void)
  */
 int bbu_register_handler(struct bbu_handler *handler)
 {
-	if (bbu_find_handler(handler->name))
+	if (bbu_find_handler_by_name(handler->name))
 		return -EBUSY;
 
 	if (handler->flags & BBU_HANDLER_FLAG_DEFAULT &&
-			bbu_find_handler(NULL))
+	    bbu_find_handler_by_name(NULL))
 		return -EBUSY;
 
 	list_add_tail(&handler->list, &bbu_image_handlers);
diff --git a/drivers/usb/gadget/f_fastboot.c b/drivers/usb/gadget/f_fastboot.c
index 74fb524c1..ea36fc988 100644
--- a/drivers/usb/gadget/f_fastboot.c
+++ b/drivers/usb/gadget/f_fastboot.c
@@ -996,7 +996,7 @@ static void cb_flash(struct f_fastboot *f_fb, const char *cmd)
 			.flags = BBU_FLAG_YES,
 		};
 
-		if (!barebox_update_handler_exists(&data))
+		if (!bbu_find_handler_by_device(data.devicefile))
 			goto copy;
 
 		fastboot_tx_print(f_fb, "INFOThis is a barebox image...");
diff --git a/include/bbu.h b/include/bbu.h
index d1ab9f563..775d7a310 100644
--- a/include/bbu.h
+++ b/include/bbu.h
@@ -42,7 +42,8 @@ int bbu_confirm(struct bbu_data *);
 
 int barebox_update(struct bbu_data *);
 
-bool barebox_update_handler_exists(struct bbu_data *);
+struct bbu_handler *bbu_find_handler_by_name(const char *name);
+struct bbu_handler *bbu_find_handler_by_device(const char *devicepath);
 
 void bbu_handlers_list(void);
 
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
