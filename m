Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g9P8m-00067d-5n
 for barebox@lists.infradead.org; Mon, 08 Oct 2018 06:36:19 +0000
Received: by mail-pl1-x644.google.com with SMTP id v5-v6so9572103plz.13
 for <barebox@lists.infradead.org>; Sun, 07 Oct 2018 23:35:29 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun,  7 Oct 2018 23:35:16 -0700
Message-Id: <20181008063518.18164-3-andrew.smirnov@gmail.com>
In-Reply-To: <20181008063518.18164-1-andrew.smirnov@gmail.com>
References: <20181008063518.18164-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 2/4] bbu: Add "handler" parameter to barebox_update()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add "handler" parameter to barebox_update() and remove the code that
was respondible for header lookup before. With this change finding
appropriate handler is caller's responsibility, which makes it
possible to implement custom handler lookup/existence check, chache
it, and then re-use it without calling handler_find_by_* functions for
the second time.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 commands/barebox-update.c       | 11 ++++++++++-
 common/bbu.c                    | 11 +----------
 drivers/usb/gadget/f_fastboot.c |  6 ++++--
 include/bbu.h                   |  2 +-
 4 files changed, 16 insertions(+), 14 deletions(-)

diff --git a/commands/barebox-update.c b/commands/barebox-update.c
index 84798ab0d..903b4068d 100644
--- a/commands/barebox-update.c
+++ b/commands/barebox-update.c
@@ -28,6 +28,7 @@ static int do_barebox_update(int argc, char *argv[])
 {
 	int opt, ret, repair = 0;
 	struct bbu_data data = {};
+	struct bbu_handler *handler;
 	void *image = NULL;
 
 	while ((opt = getopt(argc, argv, "t:yf:ld:r")) > 0) {
@@ -69,7 +70,15 @@ static int do_barebox_update(int argc, char *argv[])
 			return COMMAND_ERROR_USAGE;
 	}
 
-	ret = barebox_update(&data);
+	handler = bbu_find_handler_by_device(data.devicefile);
+
+	if (!handler)
+		handler = bbu_find_handler_by_name(data.handler_name);
+
+	if (!handler)
+		return COMMAND_ERROR_USAGE;
+
+	ret = barebox_update(&data, handler);
 
 	free(image);
 
diff --git a/common/bbu.c b/common/bbu.c
index fabd94966..75c3221d5 100644
--- a/common/bbu.c
+++ b/common/bbu.c
@@ -216,19 +216,10 @@ static int bbu_check_metadata(struct bbu_data *data)
 /*
  * do a barebox update with data from *data
  */
-int barebox_update(struct bbu_data *data)
+int barebox_update(struct bbu_data *data, struct bbu_handler *handler)
 {
-	struct bbu_handler *handler;
 	int ret;
 
-	handler = bbu_find_handler_by_device(data->devicefile);
-
-	if (!handler)
-		handler = bbu_find_handler_by_name(data->handler_name);
-
-	if (!handler)
-		return -ENODEV;
-
 	if (!data->image && !data->imagefile &&
 	    !(handler->flags & BBU_HANDLER_CAN_REFRESH)) {
 		pr_err("No Image file given\n");
diff --git a/drivers/usb/gadget/f_fastboot.c b/drivers/usb/gadget/f_fastboot.c
index ea36fc988..2c137fe7e 100644
--- a/drivers/usb/gadget/f_fastboot.c
+++ b/drivers/usb/gadget/f_fastboot.c
@@ -991,12 +991,14 @@ static void cb_flash(struct f_fastboot *f_fb, const char *cmd)
 	}
 
 	if (IS_ENABLED(CONFIG_BAREBOX_UPDATE) && filetype_is_barebox_image(filetype)) {
+		struct bbu_handler *handler;
 		struct bbu_data data = {
 			.devicefile = filename,
 			.flags = BBU_FLAG_YES,
 		};
 
-		if (!bbu_find_handler_by_device(data.devicefile))
+		handler = bbu_find_handler_by_device(data.devicefile);
+		if (!handler)
 			goto copy;
 
 		fastboot_tx_print(f_fb, "INFOThis is a barebox image...");
@@ -1015,7 +1017,7 @@ static void cb_flash(struct f_fastboot *f_fb, const char *cmd)
 		data.image = f_fb->buf;
 		data.imagefile = sourcefile;
 
-		ret = barebox_update(&data);
+		ret = barebox_update(&data, handler);
 
 		if (ret)
 			fastboot_tx_print(f_fb, "FAILupdate barebox: %s", strerror(-ret));
diff --git a/include/bbu.h b/include/bbu.h
index 775d7a310..0ed355b53 100644
--- a/include/bbu.h
+++ b/include/bbu.h
@@ -40,7 +40,7 @@ int bbu_force(struct bbu_data *, const char *fmt, ...)
 
 int bbu_confirm(struct bbu_data *);
 
-int barebox_update(struct bbu_data *);
+int barebox_update(struct bbu_data *, struct bbu_handler *);
 
 struct bbu_handler *bbu_find_handler_by_name(const char *name);
 struct bbu_handler *bbu_find_handler_by_device(const char *devicepath);
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
