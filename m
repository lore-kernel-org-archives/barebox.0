Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo5.mail-out.ovh.net ([178.33.111.247]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TGAoJ-0004LH-15
 for barebox@lists.infradead.org; Mon, 24 Sep 2012 15:43:05 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 46D20FFA7A2
 for <barebox@lists.infradead.org>; Mon, 24 Sep 2012 17:48:59 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 24 Sep 2012 17:40:28 +0200
Message-Id: <1348501228-23083-5-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1348501228-23083-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120924152731.GF26553@game.jcrosoft.org>
 <1348501228-23083-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 5/5] bootm: switch globalvar to it's own device
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 .../boards/crystalfontz-cfa10036/env/boot/mmc-ext3 |    4 ++--
 arch/arm/boards/pcm038/env/boot/nand-ubi           |    4 ++--
 commands/bootm.c                                   |   24 ++++++++++++--------
 defaultenv-2/base/boot/initrd                      |    6 ++---
 defaultenv-2/base/boot/net                         |    4 ++--
 defaultenv-2/base/data/boot-template               |    6 ++---
 6 files changed, 27 insertions(+), 21 deletions(-)

diff --git a/arch/arm/boards/crystalfontz-cfa10036/env/boot/mmc-ext3 b/arch/arm/boards/crystalfontz-cfa10036/env/boot/mmc-ext3
index 7d7eb50..163c2fe 100644
--- a/arch/arm/boards/crystalfontz-cfa10036/env/boot/mmc-ext3
+++ b/arch/arm/boards/crystalfontz-cfa10036/env/boot/mmc-ext3
@@ -5,6 +5,6 @@ if [ "$1" = menu ]; then
 	exit
 fi
 
-global.bootm.image="/mnt/disk0.1/zImage-cfa10036"
-global.bootm.oftree="/mnt/disk0.1/oftree-cfa10036"
+bootm.image="/mnt/disk0.1/zImage-cfa10036"
+bootm.oftree="/mnt/disk0.1/oftree-cfa10036"
 bootargs-root-ext -r 3 -m mmcblk0p3
diff --git a/arch/arm/boards/pcm038/env/boot/nand-ubi b/arch/arm/boards/pcm038/env/boot/nand-ubi
index a3f748e..81a4397 100644
--- a/arch/arm/boards/pcm038/env/boot/nand-ubi
+++ b/arch/arm/boards/pcm038/env/boot/nand-ubi
@@ -5,6 +5,6 @@ if [ "$1" = menu ]; then
 	exit
 fi
 
-global.bootm.image="/dev/nand0.kernel.bb"
-#global.bootm.oftree="/env/oftree"
+bootm.image="/dev/nand0.kernel.bb"
+#bootm.oftree="/env/oftree"
 bootargs-root-ubi -r root -m nand0.root
diff --git a/commands/bootm.c b/commands/bootm.c
index 8e51695..c0180d4 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -48,6 +48,12 @@
 #include <asm-generic/memory_layout.h>
 
 static LIST_HEAD(handler_list);
+static device_d *bootm_dev;
+
+static const char* bootm_get_global(const char * var)
+{
+	return dev_get_param(bootm_dev, var);
+}
 
 int register_image_handler(struct image_handler *handler)
 {
@@ -267,10 +273,10 @@ static int do_bootm(int argc, char *argv[])
 	data.verify = 0;
 	data.verbose = 0;
 
-	oftree = getenv("global.bootm.oftree");
-	os_file = getenv("global.bootm.image");
+	oftree = bootm_get_global("oftree");
+	os_file = bootm_get_global("image");
 	if (IS_ENABLED(CONFIG_CMD_BOOTM_INITRD))
-		initrd_file = getenv("global.bootm.initrd");
+		initrd_file = bootm_get_global("initrd");
 
 	while ((opt = getopt(argc, argv, BOOTM_OPTS)) > 0) {
 		switch(opt) {
@@ -440,11 +446,11 @@ err_out:
 
 static int bootm_init(void)
 {
-
-	globalvar_add_simple("bootm.image");
-	globalvar_add_simple("bootm.oftree");
+	bootm_dev = global_add_device("bootm");
+	global_add_simple(bootm_dev, "image");
+	global_add_simple(bootm_dev, "oftree");
 	if (IS_ENABLED(CONFIG_CMD_BOOTM_INITRD))
-		globalvar_add_simple("bootm.initrd");
+		global_add_simple(bootm_dev, "initrd");
 
 	return 0;
 }
@@ -475,8 +481,8 @@ BAREBOX_CMD_START(bootm)
 BAREBOX_CMD_END
 
 BAREBOX_MAGICVAR(bootargs, "Linux Kernel parameters");
-BAREBOX_MAGICVAR_NAMED(global_bootm_image, global.bootm.image, "bootm default boot image");
-BAREBOX_MAGICVAR_NAMED(global_bootm_initrd, global.bootm.initrd, "bootm default initrd");
+BAREBOX_MAGICVAR_NAMED(bootm_image, bootm.image, "bootm default boot image");
+BAREBOX_MAGICVAR_NAMED(bootm_initrd, bootm.initrd, "bootm default initrd");
 
 static struct binfmt_hook binfmt_uimage_hook = {
 	.type = filetype_uimage,
diff --git a/defaultenv-2/base/boot/initrd b/defaultenv-2/base/boot/initrd
index 7c44d07..6bfc11c 100644
--- a/defaultenv-2/base/boot/initrd
+++ b/defaultenv-2/base/boot/initrd
@@ -6,10 +6,10 @@ if [ "$1" = menu ]; then
 fi
 
 path="/mnt/tftp"
-global.bootm.image="${path}/${global.user}-linux-${global.hostname}"
-global.bootm.initrd="${path}/initramfs"
+bootm.image="${path}/${global.user}-linux-${global.hostname}"
+bootm.initrd="${path}/initramfs"
 bootargs-root-initrd
-#global.bootm.oftree=<path to oftree>
+#bootm.oftree=<path to oftree>
 
 global.linux.bootargs.dyn.root="root=/dev/ram0"
 
diff --git a/defaultenv-2/base/boot/net b/defaultenv-2/base/boot/net
index 922bef1..5cc9823 100644
--- a/defaultenv-2/base/boot/net
+++ b/defaultenv-2/base/boot/net
@@ -7,8 +7,8 @@ fi
 
 path="/mnt/tftp"
 
-global.bootm.image="${path}/${global.user}-linux-${global.hostname}"
-#global.bootm.oftree="${path}/${global.user}-oftree-${global.hostname}"
+bootm.image="${path}/${global.user}-linux-${global.hostname}"
+#bootm.oftree="${path}/${global.user}-oftree-${global.hostname}"
 nfsroot="/home/${global.user}/nfsroot/${global.hostname}"
 bootargs-ip
 bootargs-root-nfs -n "$nfsroot"
diff --git a/defaultenv-2/base/data/boot-template b/defaultenv-2/base/data/boot-template
index 1cacf18..d57c852 100644
--- a/defaultenv-2/base/data/boot-template
+++ b/defaultenv-2/base/data/boot-template
@@ -5,9 +5,9 @@ if [ "$1" = menu ]; then
 	exit
 fi
 
-global.bootm.image=<path to image>
-#global.bootm.oftree=<path to oftree>
-#global.bootm.initrd=<path to initrd>
+bootm.image=<path to image>
+#bootm.oftree=<path to oftree>
+#bootm.initrd=<path to initrd>
 
 #bootargs-ip
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
