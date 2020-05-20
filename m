Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbLGh-0007xv-72
 for barebox@lists.infradead.org; Wed, 20 May 2020 09:44:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 20 May 2020 11:43:49 +0200
Message-Id: <20200520094403.12651-6-s.hauer@pengutronix.de>
In-Reply-To: <20200520094403.12651-1-s.hauer@pengutronix.de>
References: <20200520094403.12651-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 05/19] fastboot: Use unique tempfile name
To: Barebox List <barebox@lists.infradead.org>
Cc: Edmund Henniges <eh@emlix.com>, =?UTF-8?q?Daniel=20Gl=C3=B6ckner?= <dg@emlix.com>

With fastboot over ethernet we now can have two instances of fastboot
running in parallel. Make sure that both instances use a different
temporary file to store data so that they do not influence each other.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/fastboot.c  | 21 ++++++++++++---------
 include/fastboot.h |  1 +
 2 files changed, 13 insertions(+), 9 deletions(-)

diff --git a/common/fastboot.c b/common/fastboot.c
index 1e12f99915..6f54e939e7 100644
--- a/common/fastboot.c
+++ b/common/fastboot.c
@@ -45,8 +45,6 @@
 
 #define FASTBOOT_VERSION		"0.4"
 
-#define FASTBOOT_TMPFILE		"/.fastboot.img"
-
 static unsigned int fastboot_max_download_size = SZ_8M;
 
 struct fb_variable {
@@ -178,6 +176,7 @@ int fastboot_generic_init(struct fastboot *fb, bool export_bbu)
 	int ret;
 	struct file_list_entry *fentry;
 	struct fb_variable *var;
+	static int instance;
 
 	var = fb_addvar(fb, "version");
 	fb_setvar(var, "0.4");
@@ -188,6 +187,8 @@ int fastboot_generic_init(struct fastboot *fb, bool export_bbu)
 		fb_setvar(var, "%u", fastboot_max_download_size);
 	}
 
+	fb->tempname = basprintf(".fastboot.%d.img", instance++);
+
 	if (IS_ENABLED(CONFIG_BAREBOX_UPDATE) && export_bbu)
 		bbu_handlers_iterate(fastboot_add_bbu_variables, fb);
 
@@ -211,6 +212,8 @@ void fastboot_generic_free(struct fastboot *fb)
 		free(var);
 	}
 
+	free(fb->tempname);
+
 	fb->active = false;
 }
 
@@ -372,7 +375,7 @@ static void cb_download(struct fastboot *fb, const char *cmd)
 			return;
 		}
 	} else {
-		fb->download_fd = open(FASTBOOT_TMPFILE, O_WRONLY | O_CREAT | O_TRUNC);
+		fb->download_fd = open(fb->tempname, O_WRONLY | O_CREAT | O_TRUNC);
 		if (fb->download_fd < 0) {
 			fastboot_tx_print(fb, FASTBOOT_MSG_FAIL,
 					  "internal error");
@@ -405,7 +408,7 @@ static void __maybe_unused cb_boot(struct fastboot *fb, const char *opt)
 	globalvar_set_match("linux.bootargs.dyn.", "");
 	globalvar_set_match("bootm.image", "");
 
-	data.os_file = FASTBOOT_TMPFILE;
+	data.os_file = fb->tempname;
 
 	ret = bootm_boot(&data);
 
@@ -534,7 +537,7 @@ static int fastboot_handle_sparse(struct fastboot *fb,
 	if (ret)
 		goto out_close_fd;
 
-	sparse = sparse_image_open(FASTBOOT_TMPFILE);
+	sparse = sparse_image_open(fb->tempname);
 	if (IS_ERR(sparse)) {
 		pr_err("Cannot open sparse image\n");
 		ret = PTR_ERR(sparse);
@@ -629,8 +632,8 @@ static void cb_flash(struct fastboot *fb, const char *cmd)
 		sourcefile = NULL;
 		filetype = file_detect_type(fb->buf, fb->download_bytes);
 	} else {
-		sourcefile = FASTBOOT_TMPFILE;
-		filetype = file_name_detect_type(FASTBOOT_TMPFILE);
+		sourcefile = fb->tempname;
+		filetype = file_name_detect_type(fb->tempname);
 	}
 
 	fastboot_tx_print(fb, FASTBOOT_MSG_INFO, "Copying file to %s...",
@@ -735,7 +738,7 @@ copy:
 	if (fastboot_download_to_buf(fb))
 		ret = write_file(filename, fb->buf, fb->download_size);
 	else
-		ret = copy_file(FASTBOOT_TMPFILE, filename, 1);
+		ret = copy_file(fb->tempname, filename, 1);
 
 	if (ret)
 		fastboot_tx_print(fb, FASTBOOT_MSG_FAIL,
@@ -749,7 +752,7 @@ out:
 	fb->buf = NULL;
 
 	if (!fastboot_download_to_buf(fb))
-		unlink(FASTBOOT_TMPFILE);
+		unlink(fb->tempname);
 }
 
 static void cb_erase(struct fastboot *fb, const char *cmd)
diff --git a/include/fastboot.h b/include/fastboot.h
index 3b6cae8a58..b3e7155efa 100644
--- a/include/fastboot.h
+++ b/include/fastboot.h
@@ -25,6 +25,7 @@ struct fastboot {
 			 const char *filename, const void *buf, size_t len);
 	int download_fd;
 	void *buf;
+	char *tempname;
 
 	bool active;
 
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
