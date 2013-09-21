Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 19.mo5.mail-out.ovh.net ([46.105.35.78]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VNOy9-0001dc-Sa
 for barebox@lists.infradead.org; Sat, 21 Sep 2013 15:19:40 +0000
Received: from mail614.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 4F7D6FFAD9B
 for <barebox@lists.infradead.org>; Sat, 21 Sep 2013 17:19:16 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat, 21 Sep 2013 17:20:29 +0200
Message-Id: <1379776829-30964-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH v2] bootm: update os_entry from uimage
To: barebox@lists.infradead.org

if not uimage set 0 by default

today we do not see the issue as the kernel entry point is the same as the
load_addr but on other binary its not necessary the case

as today we ignore the entry point set in the uimage and just assume it's the
same as the load_addr

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/bootm.c |  1 +
 common/bootm.c   | 15 ++++++++++++++-
 2 files changed, 15 insertions(+), 1 deletion(-)

diff --git a/commands/bootm.c b/commands/bootm.c
index a4004df..7acf341 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -104,6 +104,7 @@ static int do_bootm(int argc, char *argv[])
 
 	data.initrd_address = UIMAGE_INVALID_ADDRESS;
 	data.os_address = UIMAGE_SOME_ADDRESS;
+	data.os_entry = UIMAGE_SOME_ADDRESS;
 	data.verify = 0;
 	data.verbose = 0;
 
diff --git a/common/bootm.c b/common/bootm.c
index 1987a09..17c8082 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -46,6 +46,7 @@ static struct image_handler *bootm_find_handler(enum filetype filetype,
 static int bootm_open_os_uimage(struct image_data *data)
 {
 	int ret;
+	int update_ep = 0;
 
 	data->os = uimage_open(data->os_file);
 	if (!data->os)
@@ -70,8 +71,10 @@ static int bootm_open_os_uimage(struct image_data *data)
 		return -EINVAL;
 	}
 
-	if (data->os_address == UIMAGE_SOME_ADDRESS)
+	if (data->os_address == UIMAGE_SOME_ADDRESS) {
 		data->os_address = data->os->header.ih_load;
+		update_ep = 1;
+	}
 
 	if (data->os_address != UIMAGE_INVALID_ADDRESS) {
 		data->os_res = uimage_load_to_sdram(data->os, 0,
@@ -80,6 +83,13 @@ static int bootm_open_os_uimage(struct image_data *data)
 			uimage_close(data->os);
 			return -ENOMEM;
 		}
+
+	}
+
+	if (update_ep && data->os_entry == UIMAGE_SOME_ADDRESS) {
+		data->os_entry = data->os->header.ih_ep;
+		if (data->os_address != UIMAGE_INVALID_ADDRESS)
+			data->os_entry -= data->os_address;
 	}
 
 	return 0;
@@ -232,6 +242,9 @@ int bootm_boot(struct image_data *data)
 		}
 	}
 
+	if (data->os_entry == UIMAGE_SOME_ADDRESS)
+		data->os_entry = 0;
+
 	if (IS_ENABLED(CONFIG_CMD_BOOTM_INITRD) && data->initrd_file) {
 
 		initrd_type = file_name_detect_type(data->initrd_file);
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
