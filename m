Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1asQDy-00033r-5W
 for barebox@lists.infradead.org; Tue, 19 Apr 2016 07:37:38 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 19 Apr 2016 09:36:45 +0200
Message-Id: <1461051412-25711-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1461051412-25711-1-git-send-email-s.hauer@pengutronix.de>
References: <1461051412-25711-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/14] string: Fix (v)asprintf prototypes
To: Barebox List <barebox@lists.infradead.org>

Our asprintf and vasprintf have different prototypes than the glibc
functions. This causes trouble when we want to share barebox code
with userspace code. Change the prototypes for (v)asprintf to match
the glibc prototypes. Since the current (v)asprintf are convenient
to use change the existing functions to b(v)asprintf.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/edb93xx/edb93xx.c         |  2 +-
 arch/arm/boards/embedsky-e9/board.c       |  4 +--
 arch/arm/boards/phytec-som-imx6/board.c   | 10 +++----
 arch/arm/boards/raspberry-pi/rpi-common.c |  6 ++--
 arch/arm/mach-imx/iim.c                   |  2 +-
 arch/arm/mach-omap/omap_generic.c         |  2 +-
 arch/arm/mach-omap/xload.c                |  4 +--
 commands/boot.c                           |  6 ++--
 commands/clk.c                            |  2 +-
 commands/crc.c                            |  4 +--
 commands/defaultenv.c                     |  4 +--
 commands/hashsum.c                        |  2 +-
 commands/tftp.c                           |  4 +--
 common/blspec.c                           | 34 +++++++++++-----------
 common/bootargs.c                         |  6 ++--
 common/console.c                          |  4 +--
 common/env.c                              |  2 +-
 common/environment.c                      |  4 +--
 common/firmware.c                         |  2 +-
 common/globalvar.c                        |  7 +++--
 common/menutree.c                         |  4 +--
 common/partitions.c                       |  2 +-
 common/state.c                            |  4 +--
 crypto/hmac.c                             |  4 +--
 drivers/ata/disk_ata_drive.c              |  2 +-
 drivers/ata/disk_bios_drive.c             |  2 +-
 drivers/eeprom/at24.c                     |  2 +-
 drivers/mci/mci-core.c                    |  6 ++--
 drivers/mfd/stmpe-i2c.c                   |  4 +--
 drivers/misc/sram.c                       |  3 +-
 drivers/mtd/core.c                        | 12 ++++----
 drivers/mtd/devices/docg3.c               |  4 +--
 drivers/mtd/mtdoob.c                      |  2 +-
 drivers/mtd/mtdraw.c                      |  2 +-
 drivers/mtd/nand/nand-bb.c                |  2 +-
 drivers/mtd/ubi/barebox.c                 |  4 +--
 drivers/net/ksz8864rmn.c                  |  2 +-
 drivers/of/barebox.c                      |  2 +-
 drivers/of/base.c                         |  3 +-
 drivers/of/of_path.c                      |  2 +-
 drivers/of/partition.c                    |  2 +-
 drivers/pci/pci-mvebu.c                   |  4 +--
 drivers/pinctrl/pinctrl.c                 |  2 +-
 drivers/pwm/pwm-imx.c                     |  5 ++--
 drivers/pwm/pwm-mxs.c                     |  2 +-
 drivers/pwm/pxa_pwm.c                     |  2 +-
 drivers/regulator/core.c                  |  2 +-
 drivers/spi/gpio_spi.c                    |  2 +-
 drivers/usb/gadget/composite.c            |  2 +-
 drivers/usb/gadget/f_fastboot.c           |  7 +++--
 drivers/usb/storage/usb.c                 |  2 +-
 drivers/video/edid.c                      |  9 ++++--
 drivers/video/fb.c                        |  2 +-
 drivers/video/imx-ipu-v3/imx-ldb.c        |  8 +++---
 drivers/video/imx-ipu-v3/ipu-di.c         |  3 +-
 drivers/video/imx-ipu-v3/ipufb.c          |  2 +-
 drivers/w1/slaves/w1_ds2431.c             |  2 +-
 drivers/w1/slaves/w1_ds2433.c             |  2 +-
 fs/bpkfs.c                                |  6 ++--
 fs/efi.c                                  |  4 +--
 fs/efivarfs.c                             |  4 +--
 fs/fs.c                                   |  7 +++--
 fs/nfs.c                                  |  9 +++---
 fs/ubifs/ubifs.c                          |  4 +--
 fs/uimagefs.c                             | 10 +++----
 include/stdio.h                           |  6 ++--
 include/w1_mac_address.h                  |  2 +-
 lib/libfile.c                             |  6 ++--
 lib/logo/logo.c                           |  2 +-
 lib/parameter.c                           |  8 +++---
 lib/stringlist.c                          |  2 +-
 lib/uncompress.c                          |  3 +-
 lib/vsprintf.c                            | 48 +++++++++++++++++++++++++------
 lib/xfuncs.c                              |  2 +-
 net/dhcp.c                                |  6 ++--
 net/dns.c                                 |  4 +--
 net/ifup.c                                |  4 +--
 77 files changed, 211 insertions(+), 165 deletions(-)

diff --git a/arch/arm/boards/edb93xx/edb93xx.c b/arch/arm/boards/edb93xx/edb93xx.c
index 0fb93d2..3b8e668 100644
--- a/arch/arm/boards/edb93xx/edb93xx.c
+++ b/arch/arm/boards/edb93xx/edb93xx.c
@@ -123,7 +123,7 @@ static int edb93xx_console_init(void)
 	else
 		shortname = "unknown";
 
-	board = asprintf("Cirrus Logic %s", shortname);
+	board = basprintf("Cirrus Logic %s", shortname);
 	barebox_set_model(board);
 	free(board);
 	barebox_set_hostname(shortname);
diff --git a/arch/arm/boards/embedsky-e9/board.c b/arch/arm/boards/embedsky-e9/board.c
index 23bfec1..251bfee 100644
--- a/arch/arm/boards/embedsky-e9/board.c
+++ b/arch/arm/boards/embedsky-e9/board.c
@@ -70,8 +70,8 @@ static int e9_devices_init(void)
 
 	armlinux_set_architecture(3980);
 
-	environment_path = asprintf("/chosen/environment-mmc%d",
-				bootsource_get_instance());
+	environment_path = basprintf("/chosen/environment-mmc%d",
+				       bootsource_get_instance());
 
 	ret = of_device_enable_path(environment_path);
 
diff --git a/arch/arm/boards/phytec-som-imx6/board.c b/arch/arm/boards/phytec-som-imx6/board.c
index 85ad8cb..bf8703e 100644
--- a/arch/arm/boards/phytec-som-imx6/board.c
+++ b/arch/arm/boards/phytec-som-imx6/board.c
@@ -124,20 +124,20 @@ static int physom_imx6_devices_init(void)
 
 	switch (bootsource_get()) {
 	case BOOTSOURCE_MMC:
-		environment_path = asprintf("/chosen/environment-sd%d",
-					bootsource_get_instance() + 1);
+		environment_path = basprintf("/chosen/environment-sd%d",
+					       bootsource_get_instance() + 1);
 		envdev = "MMC";
 		break;
 	case BOOTSOURCE_NAND:
-		environment_path = asprintf("/chosen/environment-nand");
+		environment_path = basprintf("/chosen/environment-nand");
 		envdev = "NAND flash";
 		break;
 	case BOOTSOURCE_SPI:
-		environment_path = asprintf("/chosen/environment-spinor");
+		environment_path = basprintf("/chosen/environment-spinor");
 		envdev = "SPI NOR flash";
 		break;
 	default:
-		environment_path = asprintf(default_environment_path);
+		environment_path = basprintf(default_environment_path);
 		envdev = default_envdev;
 		break;
 	}
diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
index 0e17587..147fce9 100644
--- a/arch/arm/boards/raspberry-pi/rpi-common.c
+++ b/arch/arm/boards/raspberry-pi/rpi-common.c
@@ -201,8 +201,8 @@ static void rpi_get_board_rev(void)
 	if (!rpi_board_rev)
 		goto unknown_rev;
 
-	name = asprintf("RaspberryPi %s %s", rpi_models[rpi_board_rev].name,
-			rpi_model_string);
+	name = basprintf("RaspberryPi %s %s",
+			   rpi_models[rpi_board_rev].name, rpi_model_string);
 	barebox_set_model(name);
 	free(name);
 
@@ -210,7 +210,7 @@ static void rpi_get_board_rev(void)
 
 unknown_rev:
 	rpi_board_rev = 0;
-	name = asprintf("RaspberryPi %s", rpi_model_string);
+	name = basprintf("RaspberryPi %s", rpi_model_string);
 	barebox_set_model(name);
 	free(name);
 }
diff --git a/arch/arm/mach-imx/iim.c b/arch/arm/mach-imx/iim.c
index dbd8ccf..ecaa7e6 100644
--- a/arch/arm/mach-imx/iim.c
+++ b/arch/arm/mach-imx/iim.c
@@ -330,7 +330,7 @@ static void imx_iim_add_mac_param(struct iim_priv *iim, int macnum, int bank, in
 	iimmac->offset = offset;
 	iimmac->bank = iim->bank[bank];
 
-	name = asprintf("ethaddr%d", macnum);
+	name = basprintf("ethaddr%d", macnum);
 
 	dev_add_param_mac(&iim->dev, name, imx_iim_set_mac,
 			imx_iim_get_mac, iimmac->ethaddr, iimmac);
diff --git a/arch/arm/mach-omap/omap_generic.c b/arch/arm/mach-omap/omap_generic.c
index 34ed940..d27c7a8 100644
--- a/arch/arm/mach-omap/omap_generic.c
+++ b/arch/arm/mach-omap/omap_generic.c
@@ -130,7 +130,7 @@ static int omap_env_init(void)
 
 	device_detect_by_name(diskdev);
 
-	partname = asprintf("/dev/%s.0", diskdev);
+	partname = basprintf("/dev/%s.0", diskdev);
 
 	mkdir("/boot", 0666);
 	ret = mount(partname, "fat", "/boot", NULL);
diff --git a/arch/arm/mach-omap/xload.c b/arch/arm/mach-omap/xload.c
index 8805930..7793819 100644
--- a/arch/arm/mach-omap/xload.c
+++ b/arch/arm/mach-omap/xload.c
@@ -115,7 +115,7 @@ static void *omap_xload_boot_mmc(void)
 
 	device_detect_by_name(diskdev);
 
-	partname = asprintf("%s.0", diskdev);
+	partname = basprintf("%s.0", diskdev);
 
 	ret = mount(partname, NULL, "/", NULL);
 
@@ -280,7 +280,7 @@ static void *am33xx_net_boot(void)
 		return NULL;
 	}
 
-	file = asprintf("%s/%s", TFTP_MOUNT, bootfile);
+	file = basprintf("%s/%s", TFTP_MOUNT, bootfile);
 
 	buf = read_file(file, &len);
 	if (!buf)
diff --git a/commands/boot.c b/commands/boot.c
index f403010..bd1be4b 100644
--- a/commands/boot.c
+++ b/commands/boot.c
@@ -156,7 +156,7 @@ static int bootscript_scan_path(struct blspec *blspec, const char *path)
 		return 1;
 	}
 
-	files = asprintf("%s/*", path);
+	files = basprintf("%s/*", path);
 
 	glob(files, 0, NULL, &globb);
 
@@ -208,7 +208,7 @@ static int bootentry_parse_one(struct blspec *blspec, const char *name)
 		char *path;
 
 		if (*name != '/')
-			path = asprintf("/env/boot/%s", name);
+			path = basprintf("/env/boot/%s", name);
 		else
 			path = xstrdup(name);
 
@@ -233,7 +233,7 @@ static struct blspec *bootentries_collect(char *entries[], int num_entries)
 	blspec = blspec_alloc();
 
 	if (IS_ENABLED(CONFIG_MENU))
-		blspec->menu->display = asprintf("boot");
+		blspec->menu->display = basprintf("boot");
 
 	if (!num_entries)
 		bootscript_scan_path(blspec, "/env/boot");
diff --git a/commands/clk.c b/commands/clk.c
index e9459a3..65832d4 100644
--- a/commands/clk.c
+++ b/commands/clk.c
@@ -110,7 +110,7 @@ static int do_clk_get_rate(int argc, char *argv[])
 	if (variable_name) {
 		char *t;
 
-		t = asprintf("%lu", rate);
+		t = basprintf("%lu", rate);
 		setenv(variable_name, t);
 		free(t);
 	} else
diff --git a/commands/crc.c b/commands/crc.c
index 066d91e..edb1fb1 100644
--- a/commands/crc.c
+++ b/commands/crc.c
@@ -98,13 +98,13 @@ static int do_crc(int argc, char *argv[])
 			filename, (ulong)start, (ulong)start + total - 1, crc);
 
 	if (crcvarname) {
-		char *crcstr = asprintf("0x%lx", crc);
+		char *crcstr = basprintf("0x%lx", crc);
 		setenv(crcvarname, crcstr);
 		kfree(crcstr);
 	}
 
 	if (sizevarname) {
-		char *sizestr = asprintf("0x%lx", total);
+		char *sizestr = basprintf("0x%lx", total);
 		setenv(sizevarname, sizestr);
 		kfree(sizestr);
 	}
diff --git a/commands/defaultenv.c b/commands/defaultenv.c
index bae2d78..47bdf26 100644
--- a/commands/defaultenv.c
+++ b/commands/defaultenv.c
@@ -60,8 +60,8 @@ static int do_defaultenv(int argc, char *argv[])
 	if (ret)
 		return ret;
 
-	from = asprintf("/.defaultenv/%s", restorepath);
-	to = asprintf("%s/%s", dirname, restorepath);
+	from = basprintf("/.defaultenv/%s", restorepath);
+	to = basprintf("%s/%s", dirname, restorepath);
 
 	printf("Restoring %s from default environment\n", restorepath);
 
diff --git a/commands/hashsum.c b/commands/hashsum.c
index 8d3694f..d05e571 100644
--- a/commands/hashsum.c
+++ b/commands/hashsum.c
@@ -46,7 +46,7 @@ static int do_hash(char *algo, int argc, char *argv[])
 	}
 
 	if (key) {
-		char *tmp = asprintf("hmac(%s)", algo);
+		char *tmp = basprintf("hmac(%s)", algo);
 		d = digest_alloc(tmp);
 		free(tmp);
 		BUG_ON(!d);
diff --git a/commands/tftp.c b/commands/tftp.c
index 8a3b541..6a3121a 100644
--- a/commands/tftp.c
+++ b/commands/tftp.c
@@ -58,10 +58,10 @@ static int do_tftpb(int argc, char *argv[])
 		dest = argv[optind];
 
 	if (tftp_push) {
-		dest = freep = asprintf("%s/%s", TFTP_MOUNT_PATH, dest);
+		dest = freep = basprintf("%s/%s", TFTP_MOUNT_PATH, dest);
 		flags = O_RDONLY;
 	} else {
-		source = freep = asprintf("%s/%s", TFTP_MOUNT_PATH, source);
+		source = freep = basprintf("%s/%s", TFTP_MOUNT_PATH, source);
 		flags = O_WRONLY | O_CREAT;
 	}
 
diff --git a/common/blspec.c b/common/blspec.c
index 1800556..b92f49f 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -203,16 +203,18 @@ static char *parse_nfs_url(const char *url)
 	if (ip == 0)
 		goto out;
 
-	hostpath = asprintf("%s:%s", ip_to_string(ip), path);
+	hostpath = basprintf("%s:%s", ip_to_string(ip), path);
 
 	prevpath = nfs_find_mountpath(hostpath);
 
 	if (prevpath) {
 		mountpath = xstrdup(prevpath);
 	} else {
-		mountpath = asprintf("/mnt/nfs-%s-blspec-%08x", host, rand());
+		mountpath = basprintf("/mnt/nfs-%s-blspec-%08x", host,
+					rand());
 		if (port)
-			options = asprintf("mountport=%s,port=%s", port, port);
+			options = basprintf("mountport=%s,port=%s", port,
+					      port);
 
 		ret = make_directory(mountpath);
 		if (ret)
@@ -278,7 +280,7 @@ static bool entry_is_of_compatible(struct blspec_entry *entry)
 	if (!strcmp(devicetree, "none"))
 		return true;
 
-	filename = asprintf("%s/%s", abspath, devicetree);
+	filename = basprintf("%s/%s", abspath, devicetree);
 
 	fdt = read_file(filename, &size);
 	if (!fdt) {
@@ -338,7 +340,7 @@ int blspec_scan_directory(struct blspec *blspec, const char *root)
 	entry_default = read_file_line("%s/default", root);
 	entry_once = read_file_line("%s/once", root);
 
-	abspath = asprintf("%s/%s", root, dirname);
+	abspath = basprintf("%s/%s", root, dirname);
 
 	dir = opendir(abspath);
 	if (!dir) {
@@ -356,7 +358,7 @@ int blspec_scan_directory(struct blspec *blspec, const char *root)
 		if (*d->d_name == '.')
 			continue;
 
-		configname = asprintf("%s/%s", abspath, d->d_name);
+		configname = basprintf("%s/%s", abspath, d->d_name);
 
 		dot = strrchr(configname, '.');
 		if (!dot) {
@@ -402,7 +404,7 @@ int blspec_scan_directory(struct blspec *blspec, const char *root)
 
 		found++;
 
-		name = asprintf("%s/%s", dirname, d->d_name);
+		name = basprintf("%s/%s", dirname, d->d_name);
 		if (entry_default && !strcmp(name, entry_default))
 			entry->boot_default = true;
 		if (entry_once && !strcmp(name, entry_once))
@@ -415,10 +417,10 @@ int blspec_scan_directory(struct blspec *blspec, const char *root)
 				hwdevname = xstrdup(dev_name(entry->cdev->dev->parent));
 		}
 
-		entry->me.display = asprintf("%-20s %-20s  %s",
-				devname ? devname : "",
-				hwdevname ? hwdevname : "",
-				blspec_entry_var_get(entry, "title"));
+		entry->me.display = basprintf("%-20s %-20s  %s",
+						devname ? devname : "",
+						hwdevname ? hwdevname : "",
+						blspec_entry_var_get(entry, "title"));
 
 		free(devname);
 		free(hwdevname);
@@ -691,7 +693,7 @@ int blspec_boot(struct blspec_entry *entry, int verbose, int dryrun)
 	else
 		abspath = "";
 
-	data.os_file = asprintf("%s/%s", abspath, linuximage);
+	data.os_file = basprintf("%s/%s", abspath, linuximage);
 
 	if (devicetree) {
 		if (!strcmp(devicetree, "none")) {
@@ -699,13 +701,13 @@ int blspec_boot(struct blspec_entry *entry, int verbose, int dryrun)
 			if (node)
 				of_delete_node(node);
 		} else {
-			data.oftree_file = asprintf("%s/%s", abspath,
-					devicetree);
+			data.oftree_file = basprintf("%s/%s", abspath,
+						       devicetree);
 		}
 	}
 
 	if (initrd)
-		data.initrd_file = asprintf("%s/%s", abspath, initrd);
+		data.initrd_file = basprintf("%s/%s", abspath, initrd);
 
 	globalvar_add_simple("linux.bootargs.dyn.blspec", options);
 
@@ -717,7 +719,7 @@ int blspec_boot(struct blspec_entry *entry, int verbose, int dryrun)
 			entry->cdev ? dev_name(entry->cdev->dev) : "none");
 
 	if (entry->boot_once) {
-		char *s = asprintf("%s/once", abspath);
+		char *s = basprintf("%s/once", abspath);
 
 		ret = unlink(s);
 		if (ret)
diff --git a/common/bootargs.c b/common/bootargs.c
index 803736f..a89f23a 100644
--- a/common/bootargs.c
+++ b/common/bootargs.c
@@ -53,7 +53,8 @@ const char *linux_bootargs_get(void)
 
 	parts = globalvar_get_match("linux.mtdparts.", ";");
 	if (strlen(parts)) {
-		bootargs = asprintf("%s mtdparts=%s", linux_bootargs, parts);
+		bootargs = basprintf("%s mtdparts=%s", linux_bootargs,
+				       parts);
 		free(linux_bootargs);
 		free(parts);
 		linux_bootargs = bootargs;
@@ -61,7 +62,8 @@ const char *linux_bootargs_get(void)
 
 	parts = globalvar_get_match("linux.blkdevparts.", ";");
 	if (strlen(parts)) {
-		bootargs = asprintf("%s blkdevparts=%s", linux_bootargs, parts);
+		bootargs = basprintf("%s blkdevparts=%s", linux_bootargs,
+				       parts);
 		free(linux_bootargs);
 		free(parts);
 		linux_bootargs = bootargs;
diff --git a/common/console.c b/common/console.c
index a541892..f0988b8 100644
--- a/common/console.c
+++ b/common/console.c
@@ -208,8 +208,8 @@ static void console_set_stdoutpath(struct console_device *cdev)
 	if (id < 0)
 		return;
 
-	str = asprintf("console=%s%d,%dn8", cdev->linux_console_name,
-			id, cdev->baudrate);
+	str = basprintf("console=%s%d,%dn8", cdev->linux_console_name, id,
+			  cdev->baudrate);
 
 	globalvar_add_simple("linux.bootargs.console", str);
 
diff --git a/common/env.c b/common/env.c
index c98ed73..5f63e2d 100644
--- a/common/env.c
+++ b/common/env.c
@@ -260,7 +260,7 @@ EXPORT_SYMBOL(export);
 
 void export_env_ull(const char *name, unsigned long long val)
 {
-	char *valstr = asprintf("%llu", val);
+	char *valstr = basprintf("%llu", val);
 
 	setenv(name, valstr);
 	export(name);
diff --git a/common/environment.c b/common/environment.c
index 65404af..fa6b596 100644
--- a/common/environment.c
+++ b/common/environment.c
@@ -80,7 +80,7 @@ static int do_compare_file(const char *filename, const char *base)
 	char *cmp;
 	const char *relname = filename + strlen(base) + 1;
 
-	cmp = asprintf("%s/%s", TMPDIR, relname);
+	cmp = basprintf("%s/%s", TMPDIR, relname);
 	ret = compare_file(cmp, filename);
 
 	free(cmp);
@@ -193,7 +193,7 @@ static int file_remove_action(const char *filename, struct stat *statbuf,
 
 	filename += sizeof(TMPDIR) - 1;
 
-	envname = asprintf("%s/%s", data->base, filename);
+	envname = basprintf("%s/%s", data->base, filename);
 
 	ret = stat(envname, &s);
 	if (ret) {
diff --git a/common/firmware.c b/common/firmware.c
index a6f75bf..664f910 100644
--- a/common/firmware.c
+++ b/common/firmware.c
@@ -202,7 +202,7 @@ out:
 int firmwaremgr_load_file(struct firmware_mgr *mgr, const char *firmware)
 {
 	int ret;
-	char *name = asprintf("/dev/%s", mgr->handler->id);
+	char *name = basprintf("/dev/%s", mgr->handler->id);
 
 	ret = copy_file(firmware, name, 0);
 
diff --git a/common/globalvar.c b/common/globalvar.c
index 9a793ac..d5dd461 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -42,7 +42,7 @@ static int nv_save(const char *name, const char *val)
 	if (ret)
 		return ret;
 
-	fname = asprintf("/env/nv/%s", name);
+	fname = basprintf("/env/nv/%s", name);
 
 	fd = open(fname, O_CREAT | O_WRONLY | O_TRUNC);
 
@@ -135,7 +135,7 @@ int nvvar_remove(const char *name)
 	if (!p)
 		return -ENOENT;
 
-	fname = asprintf("/env/nv/%s", p->name);
+	fname = basprintf("/env/nv/%s", p->name);
 	unlink(fname);
 	free(fname);
 
@@ -217,7 +217,8 @@ char *globalvar_get_match(const char *match, const char *separator)
 		if (!strncmp(match, param->name, strlen(match))) {
 			const char *p = dev_get_param(&global_device, param->name);
 			if (val) {
-				char *new = asprintf("%s%s%s", val, separator, p);
+				char *new = basprintf("%s%s%s", val,
+							separator, p);
 				free(val);
 				val = new;
 			} else {
diff --git a/common/menutree.c b/common/menutree.c
index 1505ec8..eb14da0 100644
--- a/common/menutree.c
+++ b/common/menutree.c
@@ -98,7 +98,7 @@ int menutree(const char *path, int toplevel)
 
 	menu = menu_alloc();
 
-	globpath = asprintf("%s/*", path);
+	globpath = basprintf("%s/*", path);
 	ret = glob(globpath, 0, NULL, &g);
 	free(globpath);
 	if (ret == GLOB_NOMATCH) {
@@ -149,7 +149,7 @@ int menutree(const char *path, int toplevel)
 
 		mt->me.type = MENU_ENTRY_NORMAL;
 
-		mt->action = asprintf("%s/action", g.gl_pathv[i]);
+		mt->action = basprintf("%s/action", g.gl_pathv[i]);
 
 		ret = stat(mt->action, &s);
 		if (ret) {
diff --git a/common/partitions.c b/common/partitions.c
index 82ec508..69a2b1f 100644
--- a/common/partitions.c
+++ b/common/partitions.c
@@ -51,7 +51,7 @@ static int register_one_partition(struct block_device *blk,
 	uint64_t size = part->size * SECTOR_SIZE;
 	struct cdev *cdev;
 
-	partition_name = asprintf("%s.%d", blk->cdev.name, no);
+	partition_name = basprintf("%s.%d", blk->cdev.name, no);
 	if (!partition_name)
 		return -ENOMEM;
 	dev_dbg(blk->dev, "Registering partition %s on drive %s\n",
diff --git a/common/state.c b/common/state.c
index c763ca4..87afff3 100644
--- a/common/state.c
+++ b/common/state.c
@@ -704,8 +704,8 @@ static int state_convert_node_variable(struct state *state,
 		*indexs = 0;
 
 	/* construct full name */
-	name = asprintf("%s%s%s",
-			parent_name, parent_name[0] ? "." : "", short_name);
+	name = basprintf("%s%s%s", parent_name, parent_name[0] ? "." : "",
+			   short_name);
 	free(short_name);
 
 	if ((conv == STATE_CONVERT_TO_NODE) ||
diff --git a/crypto/hmac.c b/crypto/hmac.c
index 20af2a5..05b9b50 100644
--- a/crypto/hmac.c
+++ b/crypto/hmac.c
@@ -173,8 +173,8 @@ static int digest_hmac_register(char *name, unsigned int pad_length)
 	dh->name = xstrdup(name);
 	dh->pad_length = pad_length;
 	dh->algo = hmac_algo;
-	dh->algo.base.name = asprintf("hmac(%s)", name);
-	dh->algo.base.driver_name = asprintf("hmac(%s)-generic", name);
+	dh->algo.base.name = basprintf("hmac(%s)", name);
+	dh->algo.base.driver_name = basprintf("hmac(%s)-generic", name);
 
 	return digest_algo_register(&dh->algo);
 }
diff --git a/drivers/ata/disk_ata_drive.c b/drivers/ata/disk_ata_drive.c
index d30d0ad..cd46e0c 100644
--- a/drivers/ata/disk_ata_drive.c
+++ b/drivers/ata/disk_ata_drive.c
@@ -243,7 +243,7 @@ static int ata_port_init(struct ata_port *port)
 		rc = cdev_find_free_index("ata");
 		if (rc == -1)
 			pr_err("Cannot find a free index for the disk node\n");
-		port->blk.cdev.name = asprintf("ata%d", rc);
+		port->blk.cdev.name = basprintf("ata%d", rc);
 	}
 
 	port->blk.num_blocks = ata_id_n_sectors(port->id);
diff --git a/drivers/ata/disk_bios_drive.c b/drivers/ata/disk_bios_drive.c
index 8e768dc..363af3c 100644
--- a/drivers/ata/disk_bios_drive.c
+++ b/drivers/ata/disk_bios_drive.c
@@ -258,7 +258,7 @@ static int biosdisk_probe(struct device_d *dev)
 		rc = cdev_find_free_index("disk");
 		if (rc < 0)
 			pr_err("Cannot find a free number for the disk node\n");
-		m->blk.cdev.name = asprintf("disk%d", rc);
+		m->blk.cdev.name = basprintf("disk%d", rc);
 		m->blk.blockbits = SECTOR_SHIFT;
 
 		rc = blockdevice_register(&m->blk);
diff --git a/drivers/eeprom/at24.c b/drivers/eeprom/at24.c
index 3c0a7a9..a323d25 100644
--- a/drivers/eeprom/at24.c
+++ b/drivers/eeprom/at24.c
@@ -429,7 +429,7 @@ static int at24_probe(struct device_d *dev)
 
 	at24->chip = chip;
 	at24->num_addresses = num_addresses;
-	at24->cdev.name = asprintf("eeprom%d", dev->id);
+	at24->cdev.name = basprintf("eeprom%d", dev->id);
 	at24->cdev.priv = at24;
 	at24->cdev.dev = dev;
 	at24->cdev.ops = &at24->fops;
diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 24f57f9..59f6675 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -506,8 +506,8 @@ static int mmc_change_freq(struct mci *mci)
 			char *name, *partname;
 			part_size = mci->ext_csd[EXT_CSD_BOOT_MULT] << 17;
 
-			partname = asprintf("boot%d", idx);
-			name = asprintf("%s.%s", mci->cdevname, partname);
+			partname = basprintf("boot%d", idx);
+			name = basprintf("%s.%s", mci->cdevname, partname);
 			mci_part_add(mci, part_size,
 					EXT_CSD_PART_CONFIG_ACC_BOOT0 + idx,
 					name, partname, idx, true,
@@ -1626,7 +1626,7 @@ static int mci_card_probe(struct mci *mci)
 		mci->cdevname = strdup(host->devname);
 	} else {
 		disknum = cdev_find_free_index("disk");
-		mci->cdevname = asprintf("disk%d", disknum);
+		mci->cdevname = basprintf("disk%d", disknum);
 	}
 
 	rc = mci_startup(mci);
diff --git a/drivers/mfd/stmpe-i2c.c b/drivers/mfd/stmpe-i2c.c
index c1e7d9e..fb91ffa 100644
--- a/drivers/mfd/stmpe-i2c.c
+++ b/drivers/mfd/stmpe-i2c.c
@@ -141,8 +141,8 @@ static int stmpe_probe(struct device_d *dev)
 	}
 
 	stmpe_dev = xzalloc(sizeof(struct stmpe));
-	stmpe_dev->cdev.name = asprintf(DRIVERNAME "%d",
-			cdev_find_free_index(DRIVERNAME));
+	stmpe_dev->cdev.name = basprintf(DRIVERNAME"%d",
+					   cdev_find_free_index(DRIVERNAME));
 	stmpe_dev->client = to_i2c_client(dev);
 	stmpe_dev->cdev.size = 191;		/* 191 known registers */
 	stmpe_dev->cdev.dev = dev;
diff --git a/drivers/misc/sram.c b/drivers/misc/sram.c
index 58b5741..4fb6f80 100644
--- a/drivers/misc/sram.c
+++ b/drivers/misc/sram.c
@@ -47,8 +47,7 @@ static int sram_probe(struct device_d *dev)
 
 	sram = xzalloc(sizeof(*sram));
 
-	sram->cdev.name = asprintf("sram%d",
-			cdev_find_free_index("sram"));
+	sram->cdev.name = basprintf("sram%d", cdev_find_free_index("sram"));
 
 	res = dev_get_resource(dev, IORESOURCE_MEM, 0);
 	if (IS_ERR(res))
diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index dcf94bf..6d04b88 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -470,10 +470,10 @@ static int mtd_partition_set(struct device_d *dev, struct param_d *p, const char
 static char *print_size(uint64_t s)
 {
 	if (!(s & ((1 << 20) - 1)))
-		return asprintf("%lldM", s >> 20);
+		return basprintf("%lldM", s >> 20);
 	if (!(s & ((1 << 10) - 1)))
-		return asprintf("%lldk", s >> 10);
-	return asprintf("0x%lld", s);
+		return basprintf("%lldk", s >> 10);
+	return basprintf("0x%lld", s);
 }
 
 static int print_part(char *buf, int bufsize, struct mtd_info *mtd, uint64_t last_ofs,
@@ -577,7 +577,8 @@ static int of_mtd_fixup(struct device_node *root, void *ctx)
 
 	list_for_each_entry(partmtd, &mtd->partitions, partitions_entry) {
 		int na, ns, len = 0;
-		char *name = asprintf("partition@%0llx", partmtd->master_offset);
+		char *name = basprintf("partition@%0llx",
+					 partmtd->master_offset);
 		void *p;
 		u8 tmp[16 * 16]; /* Up to 64-bit address + 64-bit size */
 
@@ -675,7 +676,8 @@ int add_mtd_device(struct mtd_info *mtd, const char *devname, int device_id)
 	if (device_id == DEVICE_ID_SINGLE)
 		mtd->cdev.name = xstrdup(devname);
 	else
-		mtd->cdev.name = asprintf("%s%d", devname, mtd->class_dev.id);
+		mtd->cdev.name = basprintf("%s%d", devname,
+					     mtd->class_dev.id);
 
 	INIT_LIST_HEAD(&mtd->partitions);
 
diff --git a/drivers/mtd/devices/docg3.c b/drivers/mtd/devices/docg3.c
index 6a9bc74..a40ba25 100644
--- a/drivers/mtd/devices/docg3.c
+++ b/drivers/mtd/devices/docg3.c
@@ -1058,8 +1058,8 @@ static void __init doc_set_driver_info(int chip_id, struct mtd_info *mtd)
 
 	switch (chip_id) {
 	case DOC_CHIPID_G3:
-		mtd->name = asprintf("DiskOnChip G3 floor %d",
-				      docg3->device_id);
+		mtd->name = basprintf("DiskOnChip G3 floor %d",
+					docg3->device_id);
 		docg3->max_block = 2047;
 		break;
 	}
diff --git a/drivers/mtd/mtdoob.c b/drivers/mtd/mtdoob.c
index 4dcf2f5..86076f0 100644
--- a/drivers/mtd/mtdoob.c
+++ b/drivers/mtd/mtdoob.c
@@ -79,7 +79,7 @@ static int add_mtdoob_device(struct mtd_info *mtd, const char *devname, void **p
 	mtdoob = xzalloc(sizeof(*mtdoob));
 	mtdoob->cdev.ops = &mtd_ops_oob;
 	mtdoob->cdev.size = mtd_div_by_wb(mtd->size, mtd) * mtd->oobsize;
-	mtdoob->cdev.name = asprintf("%s.oob", mtd->cdev.name);
+	mtdoob->cdev.name = basprintf("%s.oob", mtd->cdev.name);
 	mtdoob->cdev.priv = mtdoob;
 	mtdoob->cdev.dev = &mtd->class_dev;
 	mtdoob->mtd = mtd;
diff --git a/drivers/mtd/mtdraw.c b/drivers/mtd/mtdraw.c
index 4d6ac72..b06eb18 100644
--- a/drivers/mtd/mtdraw.c
+++ b/drivers/mtd/mtdraw.c
@@ -308,7 +308,7 @@ static int add_mtdraw_device(struct mtd_info *mtd, const char *devname, void **p
 	mtdraw->cdev.ops = (struct file_operations *)&mtd_raw_fops;
 	mtdraw->cdev.size = mtd_div_by_wb(mtd->size, mtd) *
 		(mtd->writesize + mtd->oobsize);
-	mtdraw->cdev.name = asprintf("%s.raw", mtd->cdev.name);
+	mtdraw->cdev.name = basprintf("%s.raw", mtd->cdev.name);
 	mtdraw->cdev.priv = mtdraw;
 	mtdraw->cdev.dev = &mtd->class_dev;
 	mtdraw->cdev.mtd = mtd;
diff --git a/drivers/mtd/nand/nand-bb.c b/drivers/mtd/nand/nand-bb.c
index e6d4277..015f8dc 100644
--- a/drivers/mtd/nand/nand-bb.c
+++ b/drivers/mtd/nand/nand-bb.c
@@ -288,7 +288,7 @@ struct cdev *mtd_add_bb(struct mtd_info *mtd, const char *name)
 	if (name)
 		bb->cdev.name = xstrdup(name);
 	else
-		bb->cdev.name = asprintf("%s.bb", mtd->cdev.name);
+		bb->cdev.name = basprintf("%s.bb", mtd->cdev.name);
 
 	nand_bb_calc_size(bb);
 	bb->cdev.ops = &nand_bb_ops;
diff --git a/drivers/mtd/ubi/barebox.c b/drivers/mtd/ubi/barebox.c
index c26a245..ad38e69 100644
--- a/drivers/mtd/ubi/barebox.c
+++ b/drivers/mtd/ubi/barebox.c
@@ -176,7 +176,7 @@ int ubi_volume_cdev_add(struct ubi_device *ubi, struct ubi_volume *vol)
 	priv->ubi = ubi;
 
 	cdev->ops = &ubi_volume_fops;
-	cdev->name = asprintf("%s.%s", ubi->cdev.name, vol->name);
+	cdev->name = basprintf("%s.%s", ubi->cdev.name, vol->name);
 	cdev->priv = priv;
 	cdev->size = vol->used_bytes;
 	cdev->dev = &vol->dev;
@@ -239,7 +239,7 @@ int ubi_cdev_add(struct ubi_device *ubi)
 	int ret;
 
 	cdev->ops = &ubi_fops;
-	cdev->name = asprintf("%s.ubi", ubi->mtd->cdev.name);
+	cdev->name = basprintf("%s.ubi", ubi->mtd->cdev.name);
 	cdev->priv = ubi;
 	cdev->size = 0;
 
diff --git a/drivers/net/ksz8864rmn.c b/drivers/net/ksz8864rmn.c
index 3ca85fb..860af44 100644
--- a/drivers/net/ksz8864rmn.c
+++ b/drivers/net/ksz8864rmn.c
@@ -149,7 +149,7 @@ static int micrel_switch_probe(struct device_d *dev)
 		return -ENODEV;
 	}
 
-	priv->cdev.name = asprintf("switch%d", dev->id);
+	priv->cdev.name = basprintf("switch%d", dev->id);
 	priv->cdev.size = 256;
 	priv->cdev.ops = &micrel_switch_ops;
 	priv->cdev.priv = priv;
diff --git a/drivers/of/barebox.c b/drivers/of/barebox.c
index 125feef..64f4833 100644
--- a/drivers/of/barebox.c
+++ b/drivers/of/barebox.c
@@ -61,7 +61,7 @@ static int environment_check_mount(struct device_d *dev, char **devpath)
 	/* Set env to be in a file on the now mounted device */
 	dev_dbg(dev, "Loading default env from %s on device %s\n",
 		filepath, *devpath);
-	*devpath = asprintf("%s/%s", ENV_MNT_DIR, filepath);
+	*devpath = basprintf("%s/%s", ENV_MNT_DIR, filepath);
 	return 0;
 }
 
diff --git a/drivers/of/base.c b/drivers/of/base.c
index d12bfe3..b4ef8e3 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -1702,7 +1702,8 @@ struct device_node *of_new_node(struct device_node *parent, const char *name)
 
 	if (parent) {
 		node->name = xstrdup(name);
-		node->full_name = asprintf("%s/%s", node->parent->full_name, name);
+		node->full_name = basprintf("%s/%s",
+					      node->parent->full_name, name);
 		list_add(&node->list, &parent->list);
 	} else {
 		node->name = xstrdup("");
diff --git a/drivers/of/of_path.c b/drivers/of/of_path.c
index ed620f1..8e1931f 100644
--- a/drivers/of/of_path.c
+++ b/drivers/of/of_path.c
@@ -75,7 +75,7 @@ static int __of_find_path(struct device_node *node, const char *part, char **out
 	    mtd_can_have_bb(cdev->mtd))
 		add_bb = true;
 
-	*outpath = asprintf("/dev/%s%s", cdev->name, add_bb ? ".bb" : "");
+	*outpath = basprintf("/dev/%s%s", cdev->name, add_bb ? ".bb" : "");
 
 	return 0;
 }
diff --git a/drivers/of/partition.c b/drivers/of/partition.c
index 6017897..b6621f7 100644
--- a/drivers/of/partition.c
+++ b/drivers/of/partition.c
@@ -58,7 +58,7 @@ struct cdev *of_parse_partition(struct cdev *cdev, struct device_node *node)
 	if (of_get_property(node, "read-only", &len))
 		flags = DEVFS_PARTITION_READONLY;
 
-	filename = asprintf("%s.%s", cdev->name, partname);
+	filename = basprintf("%s.%s", cdev->name, partname);
 
 	new = devfs_add_partition(cdev->name, offset, size, flags, filename);
 	if (IS_ERR(new))
diff --git a/drivers/pci/pci-mvebu.c b/drivers/pci/pci-mvebu.c
index da2459b..907bda0 100644
--- a/drivers/pci/pci-mvebu.c
+++ b/drivers/pci/pci-mvebu.c
@@ -306,7 +306,7 @@ static struct mvebu_pcie *mvebu_pcie_port_probe(struct device_d *dev,
 	reset_gpio = of_get_named_gpio_flags(np, "reset-gpios", 0, &flags);
 	if (gpio_is_valid(reset_gpio)) {
 		int reset_active_low = flags & OF_GPIO_ACTIVE_LOW;
-		char *reset_name = asprintf("pcie%d.%d-reset", port, lane);
+		char *reset_name = basprintf("pcie%d.%d-reset", port, lane);
 		u32 reset_udelay = 20000;
 
 		of_property_read_u32(np, "reset-delay-us", &reset_udelay);
@@ -326,7 +326,7 @@ static struct mvebu_pcie *mvebu_pcie_port_probe(struct device_d *dev,
 	pcie->port = port;
 	pcie->lane = lane;
 	pcie->lane_mask = lane_mask;
-	pcie->name = asprintf("pcie%d.%d", port, lane);
+	pcie->name = basprintf("pcie%d.%d", port, lane);
 	pcie->devfn = devfn;
 
 	pcie->base = of_iomap(np, 0);
diff --git a/drivers/pinctrl/pinctrl.c b/drivers/pinctrl/pinctrl.c
index 10ce186..e7b08a2 100644
--- a/drivers/pinctrl/pinctrl.c
+++ b/drivers/pinctrl/pinctrl.c
@@ -68,7 +68,7 @@ int of_pinctrl_select_state(struct device_node *np, const char *name)
 	/* For each defined state ID */
 	for (state = 0; ; state++) {
 		/* Retrieve the pinctrl-* property */
-		propname = asprintf("pinctrl-%d", state);
+		propname = basprintf("pinctrl-%d", state);
 		prop = of_find_property(np, propname, NULL);
 		free(propname);
 
diff --git a/drivers/pwm/pwm-imx.c b/drivers/pwm/pwm-imx.c
index 0845c23..b620e50 100644
--- a/drivers/pwm/pwm-imx.c
+++ b/drivers/pwm/pwm-imx.c
@@ -236,9 +236,10 @@ static int imx_pwm_probe(struct device_d *dev)
 	if (dev->device_node) {
 		imx->chip.devname = of_alias_get(dev->device_node);
 		if (!imx->chip.devname)
-			imx->chip.devname = asprintf("pwm_%p", imx->mmio_base);
+			imx->chip.devname = basprintf("pwm_%p",
+							imx->mmio_base);
 	} else {
-		imx->chip.devname = asprintf("pwm%d", dev->id);
+		imx->chip.devname = basprintf("pwm%d", dev->id);
 	}
 
 	imx->config = data->config;
diff --git a/drivers/pwm/pwm-mxs.c b/drivers/pwm/pwm-mxs.c
index 011d900..e72f1db 100644
--- a/drivers/pwm/pwm-mxs.c
+++ b/drivers/pwm/pwm-mxs.c
@@ -143,7 +143,7 @@ static int mxs_pwm_probe(struct device_d *dev)
 		struct mxs_pwm_chip *mxspwm = &mxs->pwm[i];
 
 		mxspwm->chip.ops = &mxs_pwm_ops;
-		mxspwm->chip.devname = asprintf("pwm%d", i);
+		mxspwm->chip.devname = basprintf("pwm%d", i);
 		mxspwm->chip.id = i;
 		mxspwm->mxs = mxs;
 
diff --git a/drivers/pwm/pxa_pwm.c b/drivers/pwm/pxa_pwm.c
index e399d03..c7130c2 100644
--- a/drivers/pwm/pxa_pwm.c
+++ b/drivers/pwm/pxa_pwm.c
@@ -134,7 +134,7 @@ static int pxa_pwm_probe(struct device_d *dev)
 	struct pxa_pwm_chip *chip;
 
 	chip = xzalloc(sizeof(*chip));
-	chip->chip.devname = asprintf("pwm%d", dev->id);
+	chip->chip.devname = basprintf("pwm%d", dev->id);
 	chip->chip.ops = &pxa_pwm_ops;
 	iores = dev_request_mem_resource(dev, 0);
 	if (IS_ERR(iores))
diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
index 73f5c6e..39df980 100644
--- a/drivers/regulator/core.c
+++ b/drivers/regulator/core.c
@@ -153,7 +153,7 @@ static struct regulator_internal *of_regulator_get(struct device_d *dev, const c
 	struct regulator_internal *ri;
 	struct device_node *node;
 
-	propname = asprintf("%s-supply", supply);
+	propname = basprintf("%s-supply", supply);
 
 	/*
 	 * If the device does have a device node return the dummy regulator.
diff --git a/drivers/spi/gpio_spi.c b/drivers/spi/gpio_spi.c
index 4ea545a..e37db75 100644
--- a/drivers/spi/gpio_spi.c
+++ b/drivers/spi/gpio_spi.c
@@ -209,7 +209,7 @@ static int gpio_spi_probe(struct device_d *dev)
 		if (!gpio_is_valid(pdata->cs[n]))
 			continue;
 
-		cs_name = asprintf("spi-cs%d", n);
+		cs_name = basprintf("spi-cs%d", n);
 		ret = gpio_request_one(pdata->cs[n], GPIOF_DIR_OUT, cs_name);
 		if (ret)
 			return ret;
diff --git a/drivers/usb/gadget/composite.c b/drivers/usb/gadget/composite.c
index ba3b9da..9e38ac4 100644
--- a/drivers/usb/gadget/composite.c
+++ b/drivers/usb/gadget/composite.c
@@ -1763,7 +1763,7 @@ EXPORT_SYMBOL_GPL(usb_composite_setup_continue);
 
 static char *composite_default_mfr(struct usb_gadget *gadget)
 {
-	return asprintf("barebox %s", gadget->name);
+	return basprintf("barebox %s", gadget->name);
 }
 
 void usb_composite_overwrite_options(struct usb_composite_dev *cdev,
diff --git a/drivers/usb/gadget/f_fastboot.c b/drivers/usb/gadget/f_fastboot.c
index 9a8cd4c..fdea52e 100644
--- a/drivers/usb/gadget/f_fastboot.c
+++ b/drivers/usb/gadget/f_fastboot.c
@@ -195,7 +195,7 @@ static void fb_setvar(struct fb_variable *var, const char *fmt, ...)
 	va_list ap;
 
 	va_start(ap, fmt);
-	var->value = vasprintf(fmt, ap);
+	var->value = bvasprintf(fmt, ap);
 	va_end(ap);
 }
 
@@ -205,7 +205,7 @@ static struct fb_variable *fb_addvar(struct f_fastboot *f_fb, const char *fmt, .
 	va_list ap;
 
 	va_start(ap, fmt);
-	var->name = vasprintf(fmt, ap);
+	var->name = bvasprintf(fmt, ap);
 	va_end(ap);
 
 	list_add_tail(&var->list, &f_fb->variables);
@@ -702,7 +702,8 @@ static void cb_flash(struct usb_ep *ep, struct usb_request *req, const char *cmd
 		if (ret)
 			goto copy;
 
-		cmd = asprintf("ubiformat -y -f %s %s", FASTBOOT_TMPFILE, filename);
+		cmd = basprintf("ubiformat -y -f %s %s", FASTBOOT_TMPFILE,
+				  filename);
 
 		fastboot_tx_print(f_fb, "INFOThis is an UBI image...");
 
diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index 9d1ffa3..8218bb2 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -397,7 +397,7 @@ static int usb_stor_add_blkdev(struct us_data *us, struct device_d *dev,
 		pr_err("Cannot find a free number for the disk node\n");
 	pr_info("Using index %d for the new disk\n", result);
 
-	pblk_dev->blk.cdev.name = asprintf("disk%d", result);
+	pblk_dev->blk.cdev.name = basprintf("disk%d", result);
 	pblk_dev->blk.blockbits = SECTOR_SHIFT;
 
 	result = blockdevice_register(&pblk_dev->blk);
diff --git a/drivers/video/edid.c b/drivers/video/edid.c
index 828c361..e5c32a0 100644
--- a/drivers/video/edid.c
+++ b/drivers/video/edid.c
@@ -469,7 +469,8 @@ static void calc_mode_timings(int xres, int yres, int refresh,
 	mode->yres = yres;
 	mode->refresh = refresh;
 	fb_get_mode(0, refresh, mode);
-	mode->name = asprintf("%dx%d@%d-calc", mode->xres, mode->yres, mode->refresh);
+	mode->name = basprintf("%dx%d@%d-calc", mode->xres, mode->yres,
+				 mode->refresh);
 	pr_debug("      %s\n", mode->name);
 }
 
@@ -602,7 +603,8 @@ const struct fb_videomode vesa_modes[] = {
 static void add_vesa_mode(struct fb_videomode *mode, int num)
 {
 	*mode = vesa_modes[num];
-	mode->name = asprintf("%dx%d@%d-vesa", mode->xres, mode->yres, mode->refresh);
+	mode->name = basprintf("%dx%d@%d-vesa", mode->xres, mode->yres,
+				 mode->refresh);
 	pr_debug("      %s\n", mode->name);
 }
 
@@ -748,7 +750,8 @@ static void get_detailed_timing(unsigned char *block,
 	pr_debug("%sHSync %sVSync\n", (HSYNC_POSITIVE) ? "+" : "-",
 	       (VSYNC_POSITIVE) ? "+" : "-");
 
-	mode->name = asprintf("%dx%d@%d", mode->xres, mode->yres, mode->refresh);
+	mode->name = basprintf("%dx%d@%d", mode->xres, mode->yres,
+				 mode->refresh);
 }
 
 /**
diff --git a/drivers/video/fb.c b/drivers/video/fb.c
index 09bba00..4d2d3aa 100644
--- a/drivers/video/fb.c
+++ b/drivers/video/fb.c
@@ -262,7 +262,7 @@ int register_framebuffer(struct fb_info *info)
 		info->line_length = info->xres * (info->bits_per_pixel >> 3);
 
 	info->cdev.ops = &fb_ops;
-	info->cdev.name = asprintf("fb%d", id);
+	info->cdev.name = basprintf("fb%d", id);
 	info->cdev.size = info->line_length * info->yres;
 	info->cdev.dev = dev;
 	info->cdev.priv = info;
diff --git a/drivers/video/imx-ipu-v3/imx-ldb.c b/drivers/video/imx-ipu-v3/imx-ldb.c
index 2340b9b..17ae894 100644
--- a/drivers/video/imx-ipu-v3/imx-ldb.c
+++ b/drivers/video/imx-ipu-v3/imx-ldb.c
@@ -161,7 +161,7 @@ static int imx6q_ldb_prepare(struct imx_ldb_channel *imx_ldb_ch, int di,
 	ipuno = ((di >> 1) & 1) + 1;
 	dino = di & 0x1;
 
-	clkname = asprintf("ipu%d_di%d_sel", ipuno, dino);
+	clkname = basprintf("ipu%d_di%d_sel", ipuno, dino);
 	diclk = clk_lookup(clkname);
 	free(clkname);
 	if (IS_ERR(diclk)) {
@@ -169,7 +169,7 @@ static int imx6q_ldb_prepare(struct imx_ldb_channel *imx_ldb_ch, int di,
 		return PTR_ERR(diclk);
 	}
 
-	clkname = asprintf("ldb_di%d_podf", imx_ldb_ch->chno);
+	clkname = basprintf("ldb_di%d_podf", imx_ldb_ch->chno);
 	ldbclk = clk_lookup(clkname);
 	free(clkname);
 	if (IS_ERR(ldbclk)) {
@@ -208,7 +208,7 @@ static int imx53_ldb_prepare(struct imx_ldb_channel *imx_ldb_ch, int di,
 
 	dino = di & 0x1;
 
-	clkname = asprintf("ipu_di%d_sel", dino);
+	clkname = basprintf("ipu_di%d_sel", dino);
 	diclk = clk_lookup(clkname);
 	free(clkname);
 	if (IS_ERR(diclk)) {
@@ -216,7 +216,7 @@ static int imx53_ldb_prepare(struct imx_ldb_channel *imx_ldb_ch, int di,
 		return PTR_ERR(diclk);
 	}
 
-	clkname = asprintf("ldb_di%d_div", imx_ldb_ch->chno);
+	clkname = basprintf("ldb_di%d_div", imx_ldb_ch->chno);
 	ldbclk = clk_lookup(clkname);
 	free(clkname);
 	if (IS_ERR(ldbclk)) {
diff --git a/drivers/video/imx-ipu-v3/ipu-di.c b/drivers/video/imx-ipu-v3/ipu-di.c
index 8df9c9f..b6e64fe 100644
--- a/drivers/video/imx-ipu-v3/ipu-di.c
+++ b/drivers/video/imx-ipu-v3/ipu-di.c
@@ -732,8 +732,7 @@ int ipu_di_init(struct ipu_soc *ipu, struct device_d *dev, int id,
 	ipu_di_write(di, 0x10, DI_BS_CLKGEN0);
 
 	di->clk_di_pixel.parent_names = di->di_parent_names;
-	di->clk_name = asprintf("%s_di%d_pixel",
-			dev_name(dev), id);
+	di->clk_name = basprintf("%s_di%d_pixel", dev_name(dev), id);
 	if (!di->clk_name)
 		return -ENOMEM;
 
diff --git a/drivers/video/imx-ipu-v3/ipufb.c b/drivers/video/imx-ipu-v3/ipufb.c
index 747e094..67fec11 100644
--- a/drivers/video/imx-ipu-v3/ipufb.c
+++ b/drivers/video/imx-ipu-v3/ipufb.c
@@ -284,7 +284,7 @@ static int ipufb_probe(struct device_d *dev)
 	info = &fbi->info;
 
 	ipuid = of_alias_get_id(dev->parent->device_node, "ipu");
-	fbi->name = asprintf("ipu%d-di%d", ipuid + 1, pdata->di);
+	fbi->name = basprintf("ipu%d-di%d", ipuid + 1, pdata->di);
 	fbi->id = ipuid * 2 + pdata->di;
 	fbi->dino = pdata->di;
 
diff --git a/drivers/w1/slaves/w1_ds2431.c b/drivers/w1/slaves/w1_ds2431.c
index 30e6e1d..e3e9296 100644
--- a/drivers/w1/slaves/w1_ds2431.c
+++ b/drivers/w1/slaves/w1_ds2431.c
@@ -272,7 +272,7 @@ static int ds2431_probe(struct w1_device *dev)
 	cdev->priv	= dev;
 	cdev->ops	= &ds2431_ops;
 	cdev->size	= W1_F2D_EEPROM_SIZE;
-	cdev->name	= asprintf(DRIVERNAME"%d", ds2431_count++);
+	cdev->name	= basprintf(DRIVERNAME"%d", ds2431_count++);
 	if (cdev->name == NULL)
 		return -ENOMEM;
 
diff --git a/drivers/w1/slaves/w1_ds2433.c b/drivers/w1/slaves/w1_ds2433.c
index a840d9a..a907c6b 100644
--- a/drivers/w1/slaves/w1_ds2433.c
+++ b/drivers/w1/slaves/w1_ds2433.c
@@ -171,7 +171,7 @@ static int ds2433_cdev_create(struct w1_device *dev, int size, int id)
 	cdev->priv	= dev;
 	cdev->ops	= &ds2433_ops;
 	cdev->size	= size;
-	cdev->name	= asprintf("%s%d", dev->dev.driver->name, id);
+	cdev->name	= basprintf("%s%d", dev->dev.driver->name, id);
 	if (cdev->name == NULL)
 		return -ENOMEM;
 
diff --git a/fs/bpkfs.c b/fs/bpkfs.c
index 309a122..f1db963 100644
--- a/fs/bpkfs.c
+++ b/fs/bpkfs.c
@@ -103,7 +103,7 @@ static struct bpkfs_handle_hw *bpkfs_get_or_add_hw_id(
 
 	INIT_LIST_HEAD(&h->list_data);
 	h->hw_id = hw_id;
-	h->name = asprintf("hw_id_%x", hw_id);
+	h->name = basprintf("hw_id_%x", hw_id);
 	list_add_tail(&h->list_hw_id, &handle->list);
 
 	return h;
@@ -431,7 +431,7 @@ static int bpkfs_probe(struct device_d *dev)
 
 		if (!type) {
 			type = "unknown";
-			d->name = asprintf("%s_%08x", type, d->type);
+			d->name = basprintf("%s_%08x", type, d->type);
 		} else {
 			d->name = xstrdup(type);
 		}
@@ -464,7 +464,7 @@ static int bpkfs_probe(struct device_d *dev)
 		type = d->name;
 		d = xzalloc(sizeof(*d));
 		d->type = be32_to_cpu(data_header.type);
-		d->name = asprintf("%s.crc", type);
+		d->name = basprintf("%s.crc", type);
 		d->type |= (1 << 31);
 		d->size = 8;
 		sprintf(d->data, "%08x", be32_to_cpu(data_header.crc));
diff --git a/fs/efi.c b/fs/efi.c
index 0f74cda..5ae796b 100644
--- a/fs/efi.c
+++ b/fs/efi.c
@@ -530,8 +530,8 @@ int efi_fs_probe(struct efi_device *efidev)
 	if (efi_loaded_image && efidev->protocol == volume)
 		path = xstrdup("/boot");
 	else
-		path = asprintf("/efi%d", index);
-	device = asprintf("%s", dev_name(&efidev->dev));
+		path = basprintf("/efi%d", index);
+	device = basprintf("%s", dev_name(&efidev->dev));
 
 	ret = make_directory(path);
 	if (ret)
diff --git a/fs/efivarfs.c b/fs/efivarfs.c
index c7a282b..86cdcf0 100644
--- a/fs/efivarfs.c
+++ b/fs/efivarfs.c
@@ -154,7 +154,7 @@ static int efivars_create(struct device_d *dev, const char *pathname, mode_t mod
 
 
 	name8 = xstrdup_wchar_to_char(inode->name);
-	inode->full_name = asprintf("%s-%pUl", name8, &inode->vendor);
+	inode->full_name = basprintf("%s-%pUl", name8, &inode->vendor);
 	free(name8);
 
 	efiret = RT->set_variable(inode->name, &inode->vendor,
@@ -405,7 +405,7 @@ static int efivarfs_probe(struct device_d *dev)
 		inode->vendor = vendor;
 
 		name8 = xstrdup_wchar_to_char(inode->name);
-		inode->full_name = asprintf("%s-%pUl", name8, &vendor);
+		inode->full_name = basprintf("%s-%pUl", name8, &vendor);
 		free(name8);
 
 		list_add_tail(&inode->node, &priv->inodes);
diff --git a/fs/fs.c b/fs/fs.c
index d69e1e9..ad8d99b 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -1298,7 +1298,8 @@ int mount(const char *device, const char *fsname, const char *_path,
 	}
 
 	if (!fsdev->linux_rootarg && fsdev->cdev && fsdev->cdev->partuuid[0] != 0) {
-		char *str = asprintf("root=PARTUUID=%s", fsdev->cdev->partuuid);
+		char *str = basprintf("root=PARTUUID=%s",
+					fsdev->cdev->partuuid);
 
 		fsdev_set_linux_rootarg(fsdev, str);
 	}
@@ -1717,10 +1718,10 @@ const char *cdev_mount_default(struct cdev *cdev, const char *fsoptions)
 	if (path)
 		return path;
 
-	newpath = asprintf("/mnt/%s", cdev->name);
+	newpath = basprintf("/mnt/%s", cdev->name);
 	make_directory(newpath);
 
-	devpath = asprintf("/dev/%s", cdev->name);
+	devpath = basprintf("/dev/%s", cdev->name);
 
 	ret = mount(devpath, NULL, newpath, fsoptions);
 
diff --git a/fs/nfs.c b/fs/nfs.c
index 87828fc..1e874d5 100644
--- a/fs/nfs.c
+++ b/fs/nfs.c
@@ -1317,19 +1317,18 @@ static void nfs_set_rootarg(struct nfs_priv *npriv, struct fs_device_d *fsdev)
 	const char *ip;
 
 	ip = ip_to_string(npriv->server);
-	str = asprintf("root=/dev/nfs nfsroot=%s:%s%s%s",
-			ip, npriv->path, rootnfsopts[0] ? "," : "",
-			rootnfsopts);
+	str = basprintf("root=/dev/nfs nfsroot=%s:%s%s%s", ip, npriv->path,
+			  rootnfsopts[0] ? "," : "", rootnfsopts);
 
 	/* forward specific mount options on demand */
 	if (npriv->manual_nfs_port == 1) {
-		tmp = asprintf("%s,port=%hu", str, npriv->nfs_port);
+		tmp = basprintf("%s,port=%hu", str, npriv->nfs_port);
 		free(str);
 		str = tmp;
 	}
 
 	if (npriv->manual_mount_port == 1) {
-		tmp = asprintf("%s,mountport=%hu", str, npriv->mount_port);
+		tmp = basprintf("%s,mountport=%hu", str, npriv->mount_port);
 		free(str);
 		str = tmp;
 	}
diff --git a/fs/ubifs/ubifs.c b/fs/ubifs/ubifs.c
index f07ad5e..8062baa 100644
--- a/fs/ubifs/ubifs.c
+++ b/fs/ubifs/ubifs.c
@@ -1269,8 +1269,8 @@ void ubifs_set_rootarg(struct ubifs_priv *priv, struct fs_device_d *fsdev)
 
 	mtd = di.mtd;
 
-	str = asprintf("root=ubi0:%s ubi.mtd=%s rootfstype=ubifs",
-			vi.name, mtd->cdev.partname);
+	str = basprintf("root=ubi0:%s ubi.mtd=%s rootfstype=ubifs",
+			  vi.name, mtd->cdev.partname);
 
 	fsdev_set_linux_rootarg(fsdev, str);
 
diff --git a/fs/uimagefs.c b/fs/uimagefs.c
index c2e34a7..13c1fba 100644
--- a/fs/uimagefs.c
+++ b/fs/uimagefs.c
@@ -250,7 +250,7 @@ static int uimagefs_add_name(struct uimagefs_handle *priv)
 static int uimagefs_add_hex(struct uimagefs_handle *priv, enum uimagefs_type type,
 			uint32_t data)
 {
-	char *val = asprintf("0x%x", data);
+	char *val = basprintf("0x%x", data);
 
 	return uimagefs_add_str(priv, type, val);
 }
@@ -266,7 +266,7 @@ static int __uimagefs_add_data(struct uimagefs_handle *priv, size_t offset,
 	if (i < 0)
 		d->name = xstrdup(name);
 	else
-		d->name = asprintf("%s%d", name, i);
+		d->name = basprintf("%s%d", name, i);
 
 	d->offset = offset;
 	d->size = size;
@@ -304,7 +304,7 @@ static int uimagefs_add_time(struct uimagefs_handle *priv)
 	char *val;
 
 	to_tm(header->ih_time, &tm);
-	val = asprintf("%4d-%02d-%02d  %2d:%02d:%02d UTC",
+	val = basprintf("%4d-%02d-%02d  %2d:%02d:%02d UTC",
 			tm.tm_year, tm.tm_mon, tm.tm_mday,
 			tm.tm_hour, tm.tm_min, tm.tm_sec);
 
@@ -515,8 +515,8 @@ static int uimagefs_probe(struct device_d *dev)
 	dev_dbg(dev, "mount: %s\n", fsdev->backingstore);
 
 	if (IS_BUILTIN(CONFIG_FS_TFTP))
-		priv->tmp = asprintf("/.uImage_tmp_%08x",
-			crc32(0, fsdev->path, strlen(fsdev->path)));
+		priv->tmp = basprintf("/.uImage_tmp_%08x",
+					crc32(0, fsdev->path, strlen(fsdev->path)));
 
 	ret = __uimage_open(priv);
 	if (ret)
diff --git a/include/stdio.h b/include/stdio.h
index d0817bd..5334531 100644
--- a/include/stdio.h
+++ b/include/stdio.h
@@ -15,8 +15,10 @@ int	sprintf(char *buf, const char *fmt, ...) __attribute__ ((format(__printf__,
 int	snprintf(char *buf, size_t size, const char *fmt, ...) __attribute__ ((format(__printf__, 3, 4)));
 int	scnprintf(char *buf, size_t size, const char *fmt, ...) __attribute__ ((format(__printf__, 3, 4)));
 int	vsprintf(char *buf, const char *fmt, va_list args);
-char	*asprintf(const char *fmt, ...) __attribute__ ((format(__printf__, 1, 2)));
-char	*vasprintf(const char *fmt, va_list ap);
+char *basprintf(const char *fmt, ...) __attribute__ ((format(__printf__, 1, 2)));
+int asprintf(char **strp, const char *fmt, ...)  __attribute__ ((format(__printf__, 2, 3)));
+char *bvasprintf(const char *fmt, va_list ap);
+int vasprintf(char **strp, const char *fmt, va_list ap);
 int	vsnprintf(char *buf, size_t size, const char *fmt, va_list args);
 int	vscnprintf(char *buf, size_t size, const char *fmt, va_list args);
 
diff --git a/include/w1_mac_address.h b/include/w1_mac_address.h
index 89dd914..cd4be76 100644
--- a/include/w1_mac_address.h
+++ b/include/w1_mac_address.h
@@ -33,7 +33,7 @@ static inline int w1_local_mac_address_register(int ethid, char * oui, char *w1_
 			addr[i] = oui[i];
 	}
 
-	tmp = asprintf("%s.id", w1_dev);
+	tmp = basprintf("%s.id", w1_dev);
 	if (!tmp)
 		return -ENOMEM;
 
diff --git a/lib/libfile.c b/lib/libfile.c
index 2c72ffe..62e9b8e 100644
--- a/lib/libfile.c
+++ b/lib/libfile.c
@@ -91,7 +91,7 @@ char *read_file_line(const char *fmt, ...)
 	struct stat s;
 
 	va_start(args, fmt);
-	filename = vasprintf(fmt, args);
+	filename = bvasprintf(fmt, args);
 	va_end(args);
 
 	ret = stat(filename, &s);
@@ -359,8 +359,8 @@ int copy_recursive(const char *src, const char *dst)
 		if (!strcmp(d->d_name, ".") || !strcmp(d->d_name, ".."))
 			continue;
 
-		from = asprintf("%s/%s", src, d->d_name);
-		to = asprintf("%s/%s", dst, d->d_name);
+		from = basprintf("%s/%s", src, d->d_name);
+		to = basprintf("%s/%s", dst, d->d_name);
 		ret = copy_recursive(from, to);
 		if (ret)
 			break;
diff --git a/lib/logo/logo.c b/lib/logo/logo.c
index 614d8c0..9edf212 100644
--- a/lib/logo/logo.c
+++ b/lib/logo/logo.c
@@ -36,7 +36,7 @@ static void load_logo(int width, void *start, void *end)
 	char *filename;
 	size_t size = end - start;
 
-	filename = asprintf("/logo/barebox-logo-%d.png", width);
+	filename = basprintf("/logo/barebox-logo-%d.png", width);
 	write_file(filename, start, size);
 	free(filename);
 }
diff --git a/lib/parameter.c b/lib/parameter.c
index fd05b49..ba6b5da 100644
--- a/lib/parameter.c
+++ b/lib/parameter.c
@@ -341,7 +341,7 @@ static const char *param_int_get(struct device_d *dev, struct param_d *p)
 	}
 
 	free(p->value);
-	p->value = asprintf(pi->format, *pi->value);
+	p->value = basprintf(pi->format, *pi->value);
 
 	return p->value;
 }
@@ -443,7 +443,7 @@ static const char *param_enum_get(struct device_d *dev, struct param_d *p)
 	free(p->value);
 
 	if (*pe->value >= pe->num_names)
-		p->value = asprintf("invalid:%d", *pe->value);
+		p->value = basprintf("invalid:%d", *pe->value);
 	else
 		p->value = strdup(pe->names[*pe->value]);
 
@@ -556,7 +556,7 @@ struct param_d *dev_add_param_int_ro(struct device_d *dev, const char *name,
 		return ERR_PTR(ret);
 	}
 
-	piro->param.value = asprintf(format, value);
+	piro->param.value = basprintf(format, value);
 
 	return &piro->param;
 }
@@ -582,7 +582,7 @@ struct param_d *dev_add_param_llint_ro(struct device_d *dev, const char *name,
 		return ERR_PTR(ret);
 	}
 
-	piro->param.value = asprintf(format, value);
+	piro->param.value = basprintf(format, value);
 
 	return &piro->param;
 }
diff --git a/lib/stringlist.c b/lib/stringlist.c
index 8a18366..8e92c1b 100644
--- a/lib/stringlist.c
+++ b/lib/stringlist.c
@@ -34,7 +34,7 @@ int string_list_add_asprintf(struct string_list *sl, const char *fmt, ...)
 
 	va_start(args, fmt);
 
-	new->str = vasprintf(fmt, args);
+	new->str = bvasprintf(fmt, args);
 
 	va_end(args);
 
diff --git a/lib/uncompress.c b/lib/uncompress.c
index 329c9fc..3e4bc5f 100644
--- a/lib/uncompress.c
+++ b/lib/uncompress.c
@@ -125,7 +125,8 @@ int uncompress(unsigned char *inbuf, int len,
 		break;
 #endif
 	default:
-		err = asprintf("cannot handle filetype %s", file_type_to_string(ft));
+		err = basprintf("cannot handle filetype %s",
+				  file_type_to_string(ft));
 		error_fn(err);
 		free(err);
 		ret = -ENOSYS;
diff --git a/lib/vsprintf.c b/lib/vsprintf.c
index 00b8863..1122a4a 100644
--- a/lib/vsprintf.c
+++ b/lib/vsprintf.c
@@ -646,12 +646,11 @@ int scnprintf(char *buf, size_t size, const char *fmt, ...)
 }
 EXPORT_SYMBOL(scnprintf);
 
-/* Simplified asprintf. */
-char *vasprintf(const char *fmt, va_list ap)
+int vasprintf(char **strp, const char *fmt, va_list ap)
 {
 	unsigned int len;
-	char *p;
 	va_list aq;
+	char *p;
 
 	va_copy(aq, ap);
 	len = vsnprintf(NULL, 0, fmt, aq);
@@ -659,23 +658,56 @@ char *vasprintf(const char *fmt, va_list ap)
 
 	p = malloc(len + 1);
 	if (!p)
-		return NULL;
+		return -1;
 
 	vsnprintf(p, len + 1, fmt, ap);
 
-	return p;
+	*strp = p;
+
+	return len;
 }
 EXPORT_SYMBOL(vasprintf);
 
-char *asprintf(const char *fmt, ...)
+char *bvasprintf(const char *fmt, va_list ap)
+{
+	char *p;
+	int len;
+
+	len = vasprintf(&p, fmt, ap);
+	if (len < 0)
+		return NULL;
+
+	return p;
+}
+EXPORT_SYMBOL(bvasprintf);
+
+int asprintf(char **strp, const char *fmt, ...)
 {
 	va_list ap;
 	char *p;
+	int len;
 
 	va_start(ap, fmt);
-	p = vasprintf(fmt, ap);
+	len = vasprintf(&p, fmt, ap);
 	va_end(ap);
 
-	return p;
+	return len;
 }
 EXPORT_SYMBOL(asprintf);
+
+char *basprintf(const char *fmt, ...)
+{
+	va_list ap;
+	char *p;
+	int len;
+
+	va_start(ap, fmt);
+	len = vasprintf(&p, fmt, ap);
+	va_end(ap);
+
+	if (len < 0)
+		return NULL;
+
+	return p;
+}
+EXPORT_SYMBOL(basprintf);
diff --git a/lib/xfuncs.c b/lib/xfuncs.c
index 152081c..aaf0788 100644
--- a/lib/xfuncs.c
+++ b/lib/xfuncs.c
@@ -109,7 +109,7 @@ char *xvasprintf(const char *fmt, va_list ap)
 {
 	char *p;
 
-	p = vasprintf(fmt, ap);
+	p = bvasprintf(fmt, ap);
 	if (!p)
 		panic("ERROR: out of memory\n");
 	return p;
diff --git a/net/dhcp.c b/net/dhcp.c
index 4433b44..792ece4 100644
--- a/net/dhcp.c
+++ b/net/dhcp.c
@@ -83,7 +83,7 @@ static char dhcp_tftpname[256];
 
 static const char* dhcp_get_barebox_global(const char * var)
 {
-	char * var_global = asprintf("global.dhcp.%s", var);
+	char * var_global = basprintf("global.dhcp.%s", var);
 	const char *val;
 
 	if (!var_global)
@@ -96,7 +96,7 @@ static const char* dhcp_get_barebox_global(const char * var)
 
 static int dhcp_set_barebox_global(const char * var, char *val)
 {
-	char * var_global = asprintf("global.dhcp.%s", var);
+	char * var_global = basprintf("global.dhcp.%s", var);
 	int ret;
 
 	if (!var_global)
@@ -717,7 +717,7 @@ out:
 #ifdef CONFIG_GLOBALVAR
 static void dhcp_global_add(const char *var)
 {
-	char *var_global = asprintf("dhcp.%s", var);
+	char *var_global = basprintf("dhcp.%s", var);
 
 	if (!var_global)
 		return;
diff --git a/net/dns.c b/net/dns.c
index 5488e9f..2acdb93 100644
--- a/net/dns.c
+++ b/net/dns.c
@@ -80,9 +80,9 @@ static int dns_send(const char *name)
 	domain = getenv("net.domainname");
 
 	if (!strchr(name, '.') && domain && *domain)
-		fullname = asprintf(".%s.%s.", name, domain);
+		fullname = basprintf(".%s.%s.", name, domain);
 	else
-		fullname = asprintf(".%s.", name);
+		fullname = basprintf(".%s.", name);
 
 	/* replace dots in fullname with chunk len */
 	dotptr = fullname;
diff --git a/net/ifup.c b/net/ifup.c
index adab683..f22afc9 100644
--- a/net/ifup.c
+++ b/net/ifup.c
@@ -67,8 +67,8 @@ int ifup(const char *name, unsigned flags)
 	for (i = 0; i < ARRAY_SIZE(vars); i++)
 		setenv(vars[i], "");
 
-	cmd = asprintf("source /env/network/%s", name);
-	cmd_discover = asprintf("/env/network/%s-discover", name);
+	cmd = basprintf("source /env/network/%s", name);
+	cmd_discover = basprintf("/env/network/%s-discover", name);
 
 	ret = run_command(cmd);
 	if (ret) {
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
