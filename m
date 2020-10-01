Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNtcY-0007CH-OY
 for barebox@lists.infradead.org; Thu, 01 Oct 2020 08:07:24 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  1 Oct 2020 10:07:07 +0200
Message-Id: <20201001080708.636-2-s.hauer@pengutronix.de>
In-Reply-To: <20201001080708.636-1-s.hauer@pengutronix.de>
References: <20201001080708.636-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] magicvar: Replace BAREBOX_MAGICVAR_NAMED with
 BAREBOX_MAGICVAR
To: Barebox List <barebox@lists.infradead.org>

BAREBOX_MAGICVAR now generates a unique identifier automatically,
so we can convert users of BAREBOX_MAGICVAR_NAMED to the simpler
BAREBOX_MAGICVAR macro.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 .../boards/crystalfontz-cfa10036/hwdetect.c   |  2 +-
 arch/arm/boards/kindle-mx50/board.c           |  4 +--
 arch/arm/boards/kindle3/kindle3.c             |  4 +--
 arch/arm/lib32/bootm.c                        |  4 +--
 common/boot.c                                 |  4 +--
 common/bootargs.c                             |  6 ++--
 common/bootchooser.c                          | 30 ++++++++-----------
 common/bootm.c                                | 22 +++++++-------
 common/console.c                              |  4 +--
 common/fastboot.c                             | 11 +++----
 common/globalvar.c                            |  2 +-
 common/machine_id.c                           |  2 +-
 common/misc.c                                 |  4 +--
 common/password.c                             |  4 +--
 common/startup.c                              | 15 ++++------
 common/usbgadget.c                            | 15 ++++------
 drivers/mtd/peb.c                             | 20 +++++--------
 drivers/pci/pci-layerscape.c                  |  5 ++--
 fs/ubifs/ubifs.c                              |  9 +++---
 net/dhcp.c                                    | 20 ++++++-------
 net/fastboot.c                                |  5 ++--
 net/ifup.c                                    |  5 ++--
 net/net.c                                     |  6 ++--
 23 files changed, 90 insertions(+), 113 deletions(-)

diff --git a/arch/arm/boards/crystalfontz-cfa10036/hwdetect.c b/arch/arm/boards/crystalfontz-cfa10036/hwdetect.c
index 83c77feb89..fc39f0849a 100644
--- a/arch/arm/boards/crystalfontz-cfa10036/hwdetect.c
+++ b/arch/arm/boards/crystalfontz-cfa10036/hwdetect.c
@@ -99,4 +99,4 @@ void cfa10036_detect_hw(void)
 	pr_info("Booting on a CFA10036 with %s\n", board_name);
 }
 
-BAREBOX_MAGICVAR_NAMED(global_board_variant, global.board.variant, "The board variant");
+BAREBOX_MAGICVAR(global.board.variant, "The board variant");
diff --git a/arch/arm/boards/kindle-mx50/board.c b/arch/arm/boards/kindle-mx50/board.c
index a8d733c6ba..8fc5af8320 100644
--- a/arch/arm/boards/kindle-mx50/board.c
+++ b/arch/arm/boards/kindle-mx50/board.c
@@ -60,9 +60,9 @@ static const char *get_env_16char_tag(const char *tag)
 	return value;
 }
 
-BAREBOX_MAGICVAR_NAMED(global_atags_serial16, global.board.serial16,
+BAREBOX_MAGICVAR(global.board.serial16,
 	"Pass the kindle Serial as vendor-specific ATAG to linux");
-BAREBOX_MAGICVAR_NAMED(global_atags_revision16, global.board.revision16,
+BAREBOX_MAGICVAR(global.board.revision16,
 	"Pass the kindle BoardId as vendor-specific ATAG to linux");
 
 /* The Kindle Kernel expects two custom ATAGs, ATAG_REVISION16 describing
diff --git a/arch/arm/boards/kindle3/kindle3.c b/arch/arm/boards/kindle3/kindle3.c
index 14e04deb94..a593dc424d 100644
--- a/arch/arm/boards/kindle3/kindle3.c
+++ b/arch/arm/boards/kindle3/kindle3.c
@@ -64,9 +64,9 @@ static const char *get_env_16char_tag(const char *tag)
 	return value;
 }
 
-BAREBOX_MAGICVAR_NAMED(global_atags_serial16, global.board.serial16,
+BAREBOX_MAGICVAR(global.board.serial16,
 	"Pass the kindle Serial as vendor-specific ATAG to linux");
-BAREBOX_MAGICVAR_NAMED(global_atags_revision16, global.board.revision16,
+BAREBOX_MAGICVAR(global.board.revision16,
 	"Pass the kindle BoardId as vendor-specific ATAG to linux");
 
 /* The Kindle3 Kernel expects two custom ATAGs, ATAG_REVISION16 describing
diff --git a/arch/arm/lib32/bootm.c b/arch/arm/lib32/bootm.c
index c33ecc2ad8..ad807fb1d6 100644
--- a/arch/arm/lib32/bootm.c
+++ b/arch/arm/lib32/bootm.c
@@ -745,8 +745,8 @@ static struct binfmt_hook binfmt_barebox_hook = {
 	.exec = "bootm",
 };
 
-BAREBOX_MAGICVAR_NAMED(global_bootm_boot_atag, global.bootm.boot_atag,
-		       "If true, ignore device tree and boot using ATAGs");
+BAREBOX_MAGICVAR(global.bootm.boot_atag,
+		 "If true, ignore device tree and boot using ATAGs");
 
 static int armlinux_register_image_handler(void)
 {
diff --git a/common/boot.c b/common/boot.c
index f546fce62c..90d504e3c3 100644
--- a/common/boot.c
+++ b/common/boot.c
@@ -136,7 +136,7 @@ static int init_boot(void)
 }
 late_initcall(init_boot);
 
-BAREBOX_MAGICVAR_NAMED(global_watchdog_timeout, global.boot.watchdog_timeout,
+BAREBOX_MAGICVAR(global.boot.watchdog_timeout,
 		"Watchdog enable timeout in seconds before booting");
 
 int boot_entry(struct bootentry *be, int verbose, int dryrun)
@@ -361,4 +361,4 @@ void bootsources_list(struct bootentries *bootentries)
 		printf("%-20s %s\n", entry->title, entry->description);
 }
 
-BAREBOX_MAGICVAR_NAMED(global_boot_default, global.boot.default, "default boot order");
+BAREBOX_MAGICVAR(global.boot.default, "default boot order");
diff --git a/common/bootargs.c b/common/bootargs.c
index 97d0e15eaf..fc345560ec 100644
--- a/common/bootargs.c
+++ b/common/bootargs.c
@@ -84,6 +84,6 @@ int linux_bootargs_overwrite(const char *bootargs)
 	return 0;
 }
 
-BAREBOX_MAGICVAR_NAMED(global_linux_bootargs_, global.linux.bootargs.*, "Linux bootargs variables");
-BAREBOX_MAGICVAR_NAMED(global_linux_mtdparts_, global.linux.mtdparts.*, "Linux mtdparts variables");
-BAREBOX_MAGICVAR_NAMED(global_linux_blkdevparts_, global.linux.blkdevparts.*, "Linux blkdevparts variables");
+BAREBOX_MAGICVAR(global.linux.bootargs.*, "Linux bootargs variables");
+BAREBOX_MAGICVAR(global.linux.mtdparts.*, "Linux mtdparts variables");
+BAREBOX_MAGICVAR(global.linux.blkdevparts.*, "Linux blkdevparts variables");
diff --git a/common/bootchooser.c b/common/bootchooser.c
index c08db03eba..7aa59d8a82 100644
--- a/common/bootchooser.c
+++ b/common/bootchooser.c
@@ -954,21 +954,15 @@ static int bootchooser_init(void)
 }
 device_initcall(bootchooser_init);
 
-BAREBOX_MAGICVAR_NAMED(global_bootchooser_disable_on_zero_attempts,
-		       global.bootchooser.disable_on_zero_attempts,
-		       "bootchooser: Disable target when remaining attempts counter reaches 0");
-BAREBOX_MAGICVAR_NAMED(global_bootchooser_retry,
-		       global.bootchooser.retry,
-		       "bootchooser: Try again when booting a target fails");
-BAREBOX_MAGICVAR_NAMED(global_bootchooser_targets,
-		       global.bootchooser.targets,
-		       "bootchooser: Space separated list of target names");
-BAREBOX_MAGICVAR_NAMED(global_bootchooser_default_attempts,
-		       global.bootchooser.default_attempts,
-		       "bootchooser: Default number of attempts for a target");
-BAREBOX_MAGICVAR_NAMED(global_bootchooser_default_priority,
-		       global.bootchooser.default_priority,
-		       "bootchooser: Default priority for a target");
-BAREBOX_MAGICVAR_NAMED(global_bootchooser_state_prefix,
-		       global.bootchooser.state_prefix,
-		       "bootchooser: state name prefix, empty for nv backend");
+BAREBOX_MAGICVAR(global.bootchooser.disable_on_zero_attempts,
+		 "bootchooser: Disable target when remaining attempts counter reaches 0");
+BAREBOX_MAGICVAR(global.bootchooser.retry,
+		 "bootchooser: Try again when booting a target fails");
+BAREBOX_MAGICVAR(global.bootchooser.targets,
+		 "bootchooser: Space separated list of target names");
+BAREBOX_MAGICVAR(global.bootchooser.default_attempts,
+		 "bootchooser: Default number of attempts for a target");
+BAREBOX_MAGICVAR(global.bootchooser.default_priority,
+		 "bootchooser: Default priority for a target");
+BAREBOX_MAGICVAR(global.bootchooser.state_prefix,
+		 "bootchooser: state name prefix, empty for nv backend");
diff --git a/common/bootm.c b/common/bootm.c
index 60b8bf10a8..8219183b8b 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -847,14 +847,14 @@ static int bootm_init(void)
 late_initcall(bootm_init);
 
 BAREBOX_MAGICVAR(bootargs, "Linux kernel parameters");
-BAREBOX_MAGICVAR_NAMED(global_bootm_image, global.bootm.image, "bootm default boot image");
-BAREBOX_MAGICVAR_NAMED(global_bootm_image_loadaddr, global.bootm.image.loadaddr, "bootm default boot image loadaddr");
-BAREBOX_MAGICVAR_NAMED(global_bootm_initrd, global.bootm.initrd, "bootm default initrd");
-BAREBOX_MAGICVAR_NAMED(global_bootm_initrd_loadaddr, global.bootm.initrd.loadaddr, "bootm default initrd loadaddr");
-BAREBOX_MAGICVAR_NAMED(global_bootm_oftree, global.bootm.oftree, "bootm default oftree");
-BAREBOX_MAGICVAR_NAMED(global_bootm_tee, global.bootm.tee, "bootm default tee image");
-BAREBOX_MAGICVAR_NAMED(global_bootm_verify, global.bootm.verify, "bootm default verify level");
-BAREBOX_MAGICVAR_NAMED(global_bootm_verbose, global.bootm.verbose, "bootm default verbosity level (0=quiet)");
-BAREBOX_MAGICVAR_NAMED(global_bootm_appendroot, global.bootm.appendroot, "Add root= option to Kernel to mount rootfs from the device the Kernel comes from (default, device can be overridden via global.bootm.root_dev)");
-BAREBOX_MAGICVAR_NAMED(global_bootm_root_dev, global.bootm.root_dev, "bootm default root device (overrides default device in global.bootm.appendroot)");
-BAREBOX_MAGICVAR_NAMED(global_bootm_provide_machine_id, global.bootm.provide_machine_id, "If true, add systemd.machine_id= with value of global.machine_id to Kernel");
+BAREBOX_MAGICVAR(global.bootm.image, "bootm default boot image");
+BAREBOX_MAGICVAR(global.bootm.image.loadaddr, "bootm default boot image loadaddr");
+BAREBOX_MAGICVAR(global.bootm.initrd, "bootm default initrd");
+BAREBOX_MAGICVAR(global.bootm.initrd.loadaddr, "bootm default initrd loadaddr");
+BAREBOX_MAGICVAR(global.bootm.oftree, "bootm default oftree");
+BAREBOX_MAGICVAR(global.bootm.tee, "bootm default tee image");
+BAREBOX_MAGICVAR(global.bootm.verify, "bootm default verify level");
+BAREBOX_MAGICVAR(global.bootm.verbose, "bootm default verbosity level (0=quiet)");
+BAREBOX_MAGICVAR(global.bootm.appendroot, "Add root= option to Kernel to mount rootfs from the device the Kernel comes from (default, device can be overridden via global.bootm.root_dev)");
+BAREBOX_MAGICVAR(global.bootm.root_dev, "bootm default root device (overrides default device in global.bootm.appendroot)");
+BAREBOX_MAGICVAR(global.bootm.provide_machine_id, "If true, add systemd.machine_id= with value of global.machine_id to Kernel");
diff --git a/common/console.c b/common/console.c
index 3375ecb7e5..ffb5c0f75f 100644
--- a/common/console.c
+++ b/common/console.c
@@ -628,8 +628,8 @@ void console_ctrlc_forbid(void)
 	ctrlc_allowed = 0;
 }
 
-BAREBOX_MAGICVAR_NAMED(global_console_ctrlc_allowed, global.console.ctrlc_allowed,
+BAREBOX_MAGICVAR(global.console.ctrlc_allowed,
 		"If true, scripts can be aborted with ctrl-c");
 
-BAREBOX_MAGICVAR_NAMED(global_linux_bootargs_console, global.linux.bootargs.console,
+BAREBOX_MAGICVAR(global.linux.bootargs.console,
 		"console= argument for Linux from the stdout-path property in /chosen node");
diff --git a/common/fastboot.c b/common/fastboot.c
index bcfadfad3d..1b6dc28d8e 100644
--- a/common/fastboot.c
+++ b/common/fastboot.c
@@ -959,12 +959,9 @@ static int fastboot_globalvars_init(void)
 
 device_initcall(fastboot_globalvars_init);
 
-BAREBOX_MAGICVAR_NAMED(global_fastboot_max_download_size,
-		       global.fastboot.max_download_size,
-		       "Fastboot maximum download size");
-BAREBOX_MAGICVAR_NAMED(global_fastboot_partitions,
-		       global.fastboot.partitions,
+BAREBOX_MAGICVAR(global.fastboot.max_download_size,
+		 "Fastboot maximum download size");
+BAREBOX_MAGICVAR(global.fastboot.partitions,
 		       "Partitions exported for update via fastboot");
-BAREBOX_MAGICVAR_NAMED(global_fastboot_bbu,
-		       global.fastboot.bbu,
+BAREBOX_MAGICVAR(global.fastboot.bbu,
 		       "Export barebox update handlers via fastboot");
diff --git a/common/globalvar.c b/common/globalvar.c
index 5bde86aad0..aab9c19694 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -656,7 +656,7 @@ static int globalvar_init(void)
 }
 pure_initcall(globalvar_init);
 
-BAREBOX_MAGICVAR_NAMED(global_version, global.version, "The barebox version");
+BAREBOX_MAGICVAR(global.version, "The barebox version");
 
 /**
  * nvvar_save - save NV variables to persistent environment
diff --git a/common/machine_id.c b/common/machine_id.c
index e678bb7fe8..c1309ccafd 100644
--- a/common/machine_id.c
+++ b/common/machine_id.c
@@ -66,4 +66,4 @@ out:
 }
 late_initcall(machine_id_set_bootarg);
 
-BAREBOX_MAGICVAR_NAMED(global_machine_id, global.machine_id, "Persistent device-specific, hexadecimal, 32-character id");
+BAREBOX_MAGICVAR(global.machine_id, "Persistent device-specific, hexadecimal, 32-character id");
diff --git a/common/misc.c b/common/misc.c
index 1c7f937608..cbee3b6e3e 100644
--- a/common/misc.c
+++ b/common/misc.c
@@ -154,7 +154,7 @@ const char *barebox_get_model(void)
 }
 EXPORT_SYMBOL(barebox_get_model);
 
-BAREBOX_MAGICVAR_NAMED(global_model, global.model, "Product name of this hardware");
+BAREBOX_MAGICVAR(global.model, "Product name of this hardware");
 
 static char *hostname;
 
@@ -184,7 +184,7 @@ void barebox_set_hostname_no_overwrite(const char *__hostname)
 }
 EXPORT_SYMBOL(barebox_set_hostname_no_overwrite);
 
-BAREBOX_MAGICVAR_NAMED(global_hostname, global.hostname,
+BAREBOX_MAGICVAR(global.hostname,
 		"shortname of the board. Also used as hostname for DHCP requests");
 
 void __noreturn panic(const char *fmt, ...)
diff --git a/common/password.c b/common/password.c
index 3c08ab782e..a119717400 100644
--- a/common/password.c
+++ b/common/password.c
@@ -449,7 +449,7 @@ static int login_global_init(void)
 }
 late_initcall(login_global_init);
 
-BAREBOX_MAGICVAR_NAMED(global_login_fail_command, global.login.fail_command,
+BAREBOX_MAGICVAR(global.login.fail_command,
 		"command to run when password entry failed");
-BAREBOX_MAGICVAR_NAMED(global_login_timeout, global.login.timeout,
+BAREBOX_MAGICVAR(global.login.timeout,
 		"timeout to type the password");
diff --git a/common/startup.c b/common/startup.c
index ea7ce6b8da..848c0806e6 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -438,12 +438,9 @@ void shutdown_barebox(void)
 	}
 }
 
-BAREBOX_MAGICVAR_NAMED(autoboot_state,
-                       global.autoboot,
-                       "Autoboot state. Possible values: countdown (default), abort, menu, boot");
-BAREBOX_MAGICVAR_NAMED(global_autoboot_abort_key,
-                       global.autoboot_abort_key,
-                       "Which key allows to interrupt autoboot. Possible values: any, ctrl-c");
-BAREBOX_MAGICVAR_NAMED(global_autoboot_timeout,
-                       global.autoboot_timeout,
-                       "Timeout before autoboot starts in seconds");
+BAREBOX_MAGICVAR(global.autoboot,
+                 "Autoboot state. Possible values: countdown (default), abort, menu, boot");
+BAREBOX_MAGICVAR(global.autoboot_abort_key,
+                 "Which key allows to interrupt autoboot. Possible values: any, ctrl-c");
+BAREBOX_MAGICVAR(global.autoboot_timeout,
+                 "Timeout before autoboot starts in seconds");
diff --git a/common/usbgadget.c b/common/usbgadget.c
index b4f4ba04ca..51ee9c106c 100644
--- a/common/usbgadget.c
+++ b/common/usbgadget.c
@@ -124,12 +124,9 @@ static int usbgadget_globalvars_init(void)
 }
 device_initcall(usbgadget_globalvars_init);
 
-BAREBOX_MAGICVAR_NAMED(global_usbgadget_autostart,
-		       global.usbgadget.autostart,
-		       "usbgadget: Automatically start usbgadget on boot");
-BAREBOX_MAGICVAR_NAMED(global_usbgadget_acm,
-		       global.usbgadget.acm,
-		       "usbgadget: Create CDC ACM function");
-BAREBOX_MAGICVAR_NAMED(global_usbgadget_dfu_function,
-		       global.usbgadget.dfu_function,
-		       "usbgadget: Create DFU function");
+BAREBOX_MAGICVAR(global.usbgadget.autostart,
+		 "usbgadget: Automatically start usbgadget on boot");
+BAREBOX_MAGICVAR(global.usbgadget.acm,
+		 "usbgadget: Create CDC ACM function");
+BAREBOX_MAGICVAR(global.usbgadget.dfu_function,
+		 "usbgadget: Create DFU function");
diff --git a/drivers/mtd/peb.c b/drivers/mtd/peb.c
index d10a8a024d..b47d04b4c0 100644
--- a/drivers/mtd/peb.c
+++ b/drivers/mtd/peb.c
@@ -88,18 +88,14 @@ static int mtd_peb_debug_init(void)
 }
 device_initcall(mtd_peb_debug_init);
 
-BAREBOX_MAGICVAR_NAMED(global_mtd_peb_emulate_bitflip,
-		       global.mtd_peb.emulate_bitflip,
-		       "random bitflips, on average every #nth access returns -EUCLEAN");
-BAREBOX_MAGICVAR_NAMED(global_mtd_peb_emulate_write_failure,
-		       global.mtd_peb.emulate_write_failure,
-		       "random write failures, on average every #nth access returns write failure");
-BAREBOX_MAGICVAR_NAMED(global_mtd_peb_emulate_erase_failures,
-		       global.mtd_peb.emulate_erase_failures,
-		       "random erase failures, on average every #nth access returns erase failure");
-BAREBOX_MAGICVAR_NAMED(global_mtd_peb_chk_io,
-		       global.mtd_peb.chk_io,
-		       "If true, written data will be verified");
+BAREBOX_MAGICVAR(global.mtd_peb.emulate_bitflip,
+		 "random bitflips, on average every #nth access returns -EUCLEAN");
+BAREBOX_MAGICVAR(global.mtd_peb.emulate_write_failure,
+		 "random write failures, on average every #nth access returns write failure");
+BAREBOX_MAGICVAR(global.mtd_peb.emulate_erase_failures,
+		 "random erase failures, on average every #nth access returns erase failure");
+BAREBOX_MAGICVAR(global.mtd_peb.chk_io,
+		 "If true, written data will be verified");
 
 #endif
 
diff --git a/drivers/pci/pci-layerscape.c b/drivers/pci/pci-layerscape.c
index 53be43b28f..d8f03fa599 100644
--- a/drivers/pci/pci-layerscape.c
+++ b/drivers/pci/pci-layerscape.c
@@ -363,9 +363,8 @@ static phandle ls_pcie_get_iommu_handle(struct device_node *np, phandle *handle)
  */
 static int ls_pcie_share_stream_id;
 
-BAREBOX_MAGICVAR_NAMED(global_ls_pcie_share_stream_id,
-		       global.layerscape_pcie.share_stream_ids,
-		       "If true, use a stream_id per host controller and not per device");
+BAREBOX_MAGICVAR(global.layerscape_pcie.share_stream_ids,
+		 "If true, use a stream_id per host controller and not per device");
 
 static int ls_pcie_of_fixup(struct device_node *root, void *ctx)
 {
diff --git a/fs/ubifs/ubifs.c b/fs/ubifs/ubifs.c
index fd35619246..eda62497e7 100644
--- a/fs/ubifs/ubifs.c
+++ b/fs/ubifs/ubifs.c
@@ -517,8 +517,7 @@ static int ubifs_init(void)
 
 coredevice_initcall(ubifs_init);
 
-BAREBOX_MAGICVAR_NAMED(global_ubifs_allow_encrypted, global.ubifs.allow_encrypted,
-		       "If true, allow to mount UBIFS with encrypted files");
-BAREBOX_MAGICVAR_NAMED(global_ubifs_allow_authenticated_unauthenticated,
-		       global.ubifs.allow_authenticated_unauthenticated,
-		       "If true, allow to mount authenticated UBIFS images without doing authentication");
+BAREBOX_MAGICVAR(global.ubifs.allow_encrypted,
+		 "If true, allow to mount UBIFS with encrypted files");
+BAREBOX_MAGICVAR(global.ubifs.allow_authenticated_unauthenticated,
+		 "If true, allow to mount authenticated UBIFS images without doing authentication");
diff --git a/net/dhcp.c b/net/dhcp.c
index a27fa89996..e701a5f717 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -647,13 +647,13 @@ static int dhcp_global_init(void)
 late_initcall(dhcp_global_init);
 #endif
 
-BAREBOX_MAGICVAR_NAMED(global_dhcp_bootfile, global.dhcp.bootfile, "bootfile returned from DHCP request");
-BAREBOX_MAGICVAR_NAMED(global_dhcp_rootpath, global.dhcp.rootpath, "rootpath returned from DHCP request");
-BAREBOX_MAGICVAR_NAMED(global_dhcp_vendor_id, global.dhcp.vendor_id, "vendor id to send to the DHCP server");
-BAREBOX_MAGICVAR_NAMED(global_dhcp_client_uuid, global.dhcp.client_uuid, "client uuid to send to the DHCP server");
-BAREBOX_MAGICVAR_NAMED(global_dhcp_client_id, global.dhcp.client_id, "client id to send to the DHCP server");
-BAREBOX_MAGICVAR_NAMED(global_dhcp_user_class, global.dhcp.user_class, "user class to send to the DHCP server");
-BAREBOX_MAGICVAR_NAMED(global_dhcp_tftp_server_name, global.dhcp.tftp_server_name, "TFTP server Name returned from DHCP request");
-BAREBOX_MAGICVAR_NAMED(global_dhcp_oftree_file, global.dhcp.oftree_file, "OF tree returned from DHCP request (option 224)");
-BAREBOX_MAGICVAR_NAMED(global_dhcp_retries, global.dhcp.retries, "retry limit");
-BAREBOX_MAGICVAR_NAMED(global_dhcp_option224, global.dhcp.option224, "private data to send to the DHCP server (option 224)");
+BAREBOX_MAGICVAR(global.dhcp.bootfile, "bootfile returned from DHCP request");
+BAREBOX_MAGICVAR(global.dhcp.rootpath, "rootpath returned from DHCP request");
+BAREBOX_MAGICVAR(global.dhcp.vendor_id, "vendor id to send to the DHCP server");
+BAREBOX_MAGICVAR(global.dhcp.client_uuid, "client uuid to send to the DHCP server");
+BAREBOX_MAGICVAR(global.dhcp.client_id, "client id to send to the DHCP server");
+BAREBOX_MAGICVAR(global.dhcp.user_class, "user class to send to the DHCP server");
+BAREBOX_MAGICVAR(global.dhcp.tftp_server_name, "TFTP server Name returned from DHCP request");
+BAREBOX_MAGICVAR(global.dhcp.oftree_file, "OF tree returned from DHCP request (option 224)");
+BAREBOX_MAGICVAR(global.dhcp.retries, "retry limit");
+BAREBOX_MAGICVAR(global.dhcp.option224, "private data to send to the DHCP server (option 224)");
diff --git a/net/fastboot.c b/net/fastboot.c
index a664fc8163..9082aa48f6 100644
--- a/net/fastboot.c
+++ b/net/fastboot.c
@@ -578,6 +578,5 @@ static void fastboot_net_exit(void)
 postenvironment_initcall(fastboot_on_boot);
 predevshutdown_exitcall(fastboot_net_exit);
 
-BAREBOX_MAGICVAR_NAMED(global_fastboot_net_autostart,
-		       global.fastboot.net.autostart,
-		       "If true, automatically start fastboot over UDP during startup");
+BAREBOX_MAGICVAR(global.fastboot.net.autostart,
+		 "If true, automatically start fastboot over UDP during startup");
diff --git a/net/ifup.c b/net/ifup.c
index 6b56c3a49b..4b69777c16 100644
--- a/net/ifup.c
+++ b/net/ifup.c
@@ -318,9 +318,8 @@ static int ifup_all_init(void)
 }
 late_initcall(ifup_all_init);
 
-BAREBOX_MAGICVAR_NAMED(global_net_ifup_force_detect,
-                       global.net.ifup_force_detect,
-                       "net: force detection of devices on ifup -a");
+BAREBOX_MAGICVAR(global.net.ifup_force_detect,
+                 "net: force detection of devices on ifup -a");
 
 #if IS_ENABLED(CONFIG_NET_CMD_IFUP)
 
diff --git a/net/net.c b/net/net.c
index cfe54ef904..e6ac4c68fa 100644
--- a/net/net.c
+++ b/net/net.c
@@ -753,6 +753,6 @@ static int net_init(void)
 
 postcore_initcall(net_init);
 
-BAREBOX_MAGICVAR_NAMED(global_net_nameserver, global.net.nameserver, "The DNS server used for resolving host names");
-BAREBOX_MAGICVAR_NAMED(global_net_domainname, global.net.domainname, "Domain name used for DNS requests");
-BAREBOX_MAGICVAR_NAMED(global_net_server, global.net.server, "Standard server used for NFS/TFTP");
+BAREBOX_MAGICVAR(global.net.nameserver, "The DNS server used for resolving host names");
+BAREBOX_MAGICVAR(global.net.domainname, "Domain name used for DNS requests");
+BAREBOX_MAGICVAR(global.net.server, "Standard server used for NFS/TFTP");
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
