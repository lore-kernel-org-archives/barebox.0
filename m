Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b0NSb-0002jX-Q9
 for barebox@lists.infradead.org; Wed, 11 May 2016 06:17:30 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 11 May 2016 08:17:00 +0200
Message-Id: <1462947420-24562-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1462947420-24562-1-git-send-email-s.hauer@pengutronix.de>
References: <1462947420-24562-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] bootm: make verbosity controllable via global variable
To: Barebox List <barebox@lists.infradead.org>

When the bootm code is not called directly by the bootm command it is
useful to control the verbosity with a globalvar. This introduces
global.bootm.verbose for this.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/bootm.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/common/bootm.c b/common/bootm.c
index 66a5bf3..27d20f2 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -50,6 +50,7 @@ static struct image_handler *bootm_find_handler(enum filetype filetype,
 }
 
 static int bootm_appendroot;
+static int bootm_verbosity;
 
 void bootm_data_init_defaults(struct bootm_data *data)
 {
@@ -62,6 +63,7 @@ void bootm_data_init_defaults(struct bootm_data *data)
 	data->initrd_file = getenv_nonempty("global.bootm.initrd");
 	data->verify = bootm_get_verify_mode();
 	data->appendroot = bootm_appendroot;
+	data->verbose = bootm_verbosity;
 }
 
 static enum bootm_verify bootm_verify_mode = BOOTM_VERIFY_HASH;
@@ -661,6 +663,8 @@ static int bootm_init(void)
 	if (IS_ENABLED(CONFIG_BOOTM_FORCE_SIGNED_IMAGES))
 		bootm_verify_mode = BOOTM_VERIFY_SIGNATURE;
 
+	globalvar_add_simple_int("bootm.verbose", &bootm_verbosity, "%u");
+
 	globalvar_add_simple_enum("bootm.verify", (unsigned int *)&bootm_verify_mode,
 				  bootm_verify_names, ARRAY_SIZE(bootm_verify_names));
 
@@ -675,4 +679,5 @@ BAREBOX_MAGICVAR_NAMED(global_bootm_initrd, global.bootm.initrd, "bootm default
 BAREBOX_MAGICVAR_NAMED(global_bootm_initrd_loadaddr, global.bootm.initrd.loadaddr, "bootm default initrd loadaddr");
 BAREBOX_MAGICVAR_NAMED(global_bootm_oftree, global.bootm.oftree, "bootm default oftree");
 BAREBOX_MAGICVAR_NAMED(global_bootm_verify, global.bootm.verify, "bootm default verify level");
+BAREBOX_MAGICVAR_NAMED(global_bootm_verbose, global.bootm.verify, "bootm default verbosity level (0=quiet)");
 BAREBOX_MAGICVAR_NAMED(global_bootm_appendroot, global.bootm.appendroot, "Add root= option to Kernel to mount rootfs from the device the Kernel comes from");
-- 
2.8.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
