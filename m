Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmBhX-0001vM-Ju
 for barebox@lists.infradead.org; Fri, 19 Jun 2020 07:44:40 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 19 Jun 2020 09:44:22 +0200
Message-Id: <20200619074427.17289-17-s.hauer@pengutronix.de>
In-Reply-To: <20200619074427.17289-1-s.hauer@pengutronix.de>
References: <20200619074427.17289-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 16/21] fastboot: init list head in common
To: Barebox List <barebox@lists.infradead.org>
Cc: =?UTF-8?q?Daniel=20Gl=C3=B6ckner?= <dg@emlix.com>

The list of variables can be initialized in common code, no need to do
the in the different implementations.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/fastboot.c               | 2 ++
 drivers/usb/gadget/f_fastboot.c | 2 --
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/fastboot.c b/common/fastboot.c
index 10ebb8b2a9..3f61208a21 100644
--- a/common/fastboot.c
+++ b/common/fastboot.c
@@ -171,6 +171,8 @@ int fastboot_generic_init(struct fastboot *fb, bool export_bbu)
 	struct file_list_entry *fentry;
 	struct fb_variable *var;
 
+	INIT_LIST_HEAD(&fb->variables);
+
 	var = fb_addvar(fb, "version");
 	fb_setvar(var, "0.4");
 	var = fb_addvar(fb, "bootloader-version");
diff --git a/drivers/usb/gadget/f_fastboot.c b/drivers/usb/gadget/f_fastboot.c
index f8a9c32530..35ad351f73 100644
--- a/drivers/usb/gadget/f_fastboot.c
+++ b/drivers/usb/gadget/f_fastboot.c
@@ -313,8 +313,6 @@ static struct usb_function *fastboot_alloc_func(struct usb_function_instance *fi
 
 	f_fb = xzalloc(sizeof(*f_fb));
 
-	INIT_LIST_HEAD(&f_fb->fastboot.variables);
-
 	f_fb->func.name = "fastboot";
 	f_fb->func.strings = fastboot_strings;
 	f_fb->func.bind = fastboot_bind;
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
