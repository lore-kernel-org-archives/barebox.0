Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjfJz-0006Rm-1C
 for barebox@lists.infradead.org; Fri, 12 Jun 2020 08:45:56 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 12 Jun 2020 10:45:52 +0200
Message-Id: <20200612084552.395-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] fastboot: Use make_temp() to create temporary file
To: Barebox List <barebox@lists.infradead.org>

make_temp() was created for this purpose, so use it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/fastboot.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/common/fastboot.c b/common/fastboot.c
index 6f54e939e7..c32b0a0e77 100644
--- a/common/fastboot.c
+++ b/common/fastboot.c
@@ -176,7 +176,6 @@ int fastboot_generic_init(struct fastboot *fb, bool export_bbu)
 	int ret;
 	struct file_list_entry *fentry;
 	struct fb_variable *var;
-	static int instance;
 
 	var = fb_addvar(fb, "version");
 	fb_setvar(var, "0.4");
@@ -187,7 +186,9 @@ int fastboot_generic_init(struct fastboot *fb, bool export_bbu)
 		fb_setvar(var, "%u", fastboot_max_download_size);
 	}
 
-	fb->tempname = basprintf(".fastboot.%d.img", instance++);
+	fb->tempname = make_temp("fastboot");
+	if (!fb->tempname)
+		return -ENOMEM;
 
 	if (IS_ENABLED(CONFIG_BAREBOX_UPDATE) && export_bbu)
 		bbu_handlers_iterate(fastboot_add_bbu_variables, fb);
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
