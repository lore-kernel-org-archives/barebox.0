Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aw564-0002GF-GO
 for barebox@lists.infradead.org; Fri, 29 Apr 2016 09:52:30 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 29 Apr 2016 11:52:04 +0200
Message-Id: <1461923525-6356-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1461923525-6356-1-git-send-email-s.hauer@pengutronix.de>
References: <1461923525-6356-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/6] bootm: Optionally add a root= option to Kernel command
 line
To: Barebox List <barebox@lists.infradead.org>

It becomes a common case that the Kernel is loaded from the filesystem
which later becomes the rootfs. This adds a possibility to let bootm
automatically append the root= option to the kernel command line. This
is done when global.bootm.appendroot is true.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/user/booting-linux.rst | 14 ++++++++++++++
 commands/bootm.c                     |  1 +
 common/bootm.c                       | 17 +++++++++++++++++
 include/boot.h                       |  5 +++++
 4 files changed, 37 insertions(+)

diff --git a/Documentation/user/booting-linux.rst b/Documentation/user/booting-linux.rst
index 98628fa..f26299e 100644
--- a/Documentation/user/booting-linux.rst
+++ b/Documentation/user/booting-linux.rst
@@ -99,6 +99,20 @@ with addpart to the Kernel:
   Kernel command line: mtdparts=physmap-flash.0:512k(bootloader),512k(env),4M(kernel),-(root);
 			mxc_nand:1M(bootloader),1M(env),4M(kernel),-(root)
 
+Creating root= options for the Kernel
+^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
+
+It's a common case that the Linux Kernel is loaded from a filesystem
+that later becomes the root filesystem for the Kernel. For several
+filesystems barebox can automatically append a suitable root= option
+to the Kernel command line. This is done when ``global.bootm.appendroot``
+is true. How the root= option is appended depends on the device type
+and filesystem the kernel is booted from. For disk like devices (SD/MMC,
+ATA) the partition UUID will be used, the root= option will be something
+like ``root=PARTUUID=deadbeef-1``. For UBIFS fileystems it will be
+``root=ubi0:volname ubi.mtd=mtdpartname rootfstype=ubifs``. NFS
+filesystems will result in ``root=/dev/nfs nfsroot=ip:/path/to/nfsroot,v3,tcp``.
+The ``v3,tcp`` part is configurable in ``global.linux.rootnfsopts``.
 
 The boot command
 ----------------
diff --git a/commands/bootm.c b/commands/bootm.c
index 7a19fa2..bfec62c 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -166,6 +166,7 @@ BAREBOX_MAGICVAR_NAMED(global_bootm_initrd, global.bootm.initrd, "bootm default
 BAREBOX_MAGICVAR_NAMED(global_bootm_initrd_loadaddr, global.bootm.initrd.loadaddr, "bootm default initrd loadaddr");
 BAREBOX_MAGICVAR_NAMED(global_bootm_oftree, global.bootm.oftree, "bootm default oftree");
 BAREBOX_MAGICVAR_NAMED(global_bootm_verify, global.bootm.verify, "bootm default verify level");
+BAREBOX_MAGICVAR_NAMED(global_bootm_appendroot, global.bootm.appendroot, "Add root= option to Kernel to mount rootfs from the device the Kernel comes from");
 
 static struct binfmt_hook binfmt_uimage_hook = {
 	.type = filetype_uimage,
diff --git a/common/bootm.c b/common/bootm.c
index 6d22aab..cad8c73 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -48,6 +48,8 @@ static struct image_handler *bootm_find_handler(enum filetype filetype,
 	return NULL;
 }
 
+static int bootm_appendroot;
+
 void bootm_data_init_defaults(struct bootm_data *data)
 {
 	data->initrd_address = UIMAGE_INVALID_ADDRESS;
@@ -58,6 +60,7 @@ void bootm_data_init_defaults(struct bootm_data *data)
 	getenv_ul("global.bootm.initrd.loadaddr", &data->initrd_address);
 	data->initrd_file = getenv_nonempty("global.bootm.initrd");
 	data->verify = bootm_get_verify_mode();
+	data->appendroot = bootm_appendroot;
 }
 
 static enum bootm_verify bootm_verify_mode = BOOTM_VERIFY_HASH;
@@ -576,6 +579,18 @@ int bootm_boot(struct bootm_data *bootm_data)
 		}
 	}
 
+	if (bootm_data->appendroot) {
+		char *rootarg;
+
+		rootarg = path_get_linux_rootarg(data->os_file);
+		if (!IS_ERR(rootarg)) {
+			printf("Adding \"%s\" to Kernel commandline\n", rootarg);
+			globalvar_add_simple("linux.bootargs.bootm.appendroot",
+					     rootarg);
+			free(rootarg);
+		}
+	}
+
 	printf("\nLoading %s '%s'", file_type_to_string(os_type),
 			data->os_file);
 	if (os_type == filetype_uimage &&
@@ -621,6 +636,7 @@ err_out:
 	if (data->of_root_node && data->of_root_node != of_get_root_node())
 		of_delete_node(data->of_root_node);
 
+	globalvar_remove("linux.bootargs.bootm.appendroot");
 	free(data->os_file);
 	free(data->oftree_file);
 	free(data->initrd_file);
@@ -634,6 +650,7 @@ static int bootm_init(void)
 	globalvar_add_simple("bootm.image", NULL);
 	globalvar_add_simple("bootm.image.loadaddr", NULL);
 	globalvar_add_simple("bootm.oftree", NULL);
+	globalvar_add_simple_bool("bootm.appendroot", &bootm_appendroot);
 	if (IS_ENABLED(CONFIG_CMD_BOOTM_INITRD)) {
 		globalvar_add_simple("bootm.initrd", NULL);
 		globalvar_add_simple("bootm.initrd.loadaddr", NULL);
diff --git a/include/boot.h b/include/boot.h
index 0198cc8..8fcbb7f 100644
--- a/include/boot.h
+++ b/include/boot.h
@@ -21,6 +21,11 @@ struct bootm_data {
 	enum bootm_verify verify;
 	bool force;
 	bool dryrun;
+	/*
+	 * appendroot - if true, try to add a suitable root= Kernel option to
+	 * mount the rootfs from the same device as the Kernel comes from.
+	 */
+	bool appendroot;
 	unsigned long initrd_address;
 	unsigned long os_address;
 	unsigned long os_entry;
-- 
2.8.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
