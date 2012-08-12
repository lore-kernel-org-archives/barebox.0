Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo4.mail-out.ovh.net ([46.105.57.129]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T0cca-0006nM-52
 for barebox@lists.infradead.org; Sun, 12 Aug 2012 18:10:40 +0000
Received: from mail628.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 914EA10544FA
 for <barebox@lists.infradead.org>; Sun, 12 Aug 2012 20:15:15 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 12 Aug 2012 20:10:43 +0200
Message-Id: <1344795043-13815-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1344795043-13815-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120812180535.GK6271@game.jcrosoft.org>
 <1344795043-13815-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 4/4] command/mount: add autodetection support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 .../boards/crystalfontz-cfa10036/env/init/automount  |    2 +-
 arch/arm/boards/mioa701/env/bin/sdcard_override      |    2 +-
 arch/arm/boards/pcm049/env/bin/nand_bootstrap        |    2 +-
 arch/arm/boards/phycard-a-xl2/env/bin/nand_bootstrap |    2 +-
 commands/mount.c                                     |   18 +++++++++++++++---
 defaultenv-2/base/init/automount                     |    6 +++---
 6 files changed, 22 insertions(+), 10 deletions(-)

diff --git a/arch/arm/boards/crystalfontz-cfa10036/env/init/automount b/arch/arm/boards/crystalfontz-cfa10036/env/init/automount
index fe67e55..668775d 100644
--- a/arch/arm/boards/crystalfontz-cfa10036/env/init/automount
+++ b/arch/arm/boards/crystalfontz-cfa10036/env/init/automount
@@ -6,4 +6,4 @@ if [ "$1" = menu ]; then
 fi
 
 mkdir -p /mnt/disk0.1
-automount -d /mnt/disk0.1 '[ -e /dev/disk0.1 ] && mount /dev/disk0.1 fat /mnt/disk0.1'
+automount -d /mnt/disk0.1 '[ -e /dev/disk0.1 ] && mount /dev/disk0.1 /mnt/disk0.1'
diff --git a/arch/arm/boards/mioa701/env/bin/sdcard_override b/arch/arm/boards/mioa701/env/bin/sdcard_override
index 4b2ad51..ab83534 100644
--- a/arch/arm/boards/mioa701/env/bin/sdcard_override
+++ b/arch/arm/boards/mioa701/env/bin/sdcard_override
@@ -8,7 +8,7 @@
 mci0.probe=1
 if [ $mci0.probe = 1 ]; then
 	mkdir /sdcard
-	mount /dev/disk0.0 fat /sdcard
+	mount /dev/disk0.0 /sdcard
 	if [ -f /sdcard/barebox.env ]; then
 		loadenv /sdcard/barebox.env /env.sd
 		/env.sd/bin/init
diff --git a/arch/arm/boards/pcm049/env/bin/nand_bootstrap b/arch/arm/boards/pcm049/env/bin/nand_bootstrap
index acd00dc..f8873fa 100644
--- a/arch/arm/boards/pcm049/env/bin/nand_bootstrap
+++ b/arch/arm/boards/pcm049/env/bin/nand_bootstrap
@@ -4,7 +4,7 @@ echo "copying barebox to nand..."
 mci0.probe=1
 mkdir mnt
 
-mount /dev/disk0.0 fat /mnt
+mount /dev/disk0.0 /mnt
 if [ $? != 0 ]; then
 	echo "failed to mount mmc card"
 	exit 1
diff --git a/arch/arm/boards/phycard-a-xl2/env/bin/nand_bootstrap b/arch/arm/boards/phycard-a-xl2/env/bin/nand_bootstrap
index acd00dc..f8873fa 100644
--- a/arch/arm/boards/phycard-a-xl2/env/bin/nand_bootstrap
+++ b/arch/arm/boards/phycard-a-xl2/env/bin/nand_bootstrap
@@ -4,7 +4,7 @@ echo "copying barebox to nand..."
 mci0.probe=1
 mkdir mnt
 
-mount /dev/disk0.0 fat /mnt
+mount /dev/disk0.0 /mnt
 if [ $? != 0 ]; then
 	echo "failed to mount mmc card"
 	exit 1
diff --git a/commands/mount.c b/commands/mount.c
index b32faef..5b12ad4 100644
--- a/commands/mount.c
+++ b/commands/mount.c
@@ -29,11 +29,14 @@
 #include <command.h>
 #include <fs.h>
 #include <errno.h>
+#include <getopt.h>
 
 static int do_mount(int argc, char *argv[])
 {
+	int opt;
 	int ret = 0;
 	struct fs_device_d *fsdev;
+	char *type = NULL;
 
 	if (argc == 1) {
 		for_each_fs_device(fsdev) {
@@ -45,10 +48,18 @@ static int do_mount(int argc, char *argv[])
 		return 0;
 	}
 
-	if (argc != 4)
+	while ((opt = getopt(argc, argv, "t:")) > 0) {
+		switch (opt) {
+		case 't':
+			type = optarg;
+			break;
+		}
+	}
+
+	if (argc < optind + 2)
 		return COMMAND_ERROR_USAGE;
 
-	if ((ret = mount(argv[1], argv[2], argv[3]))) {
+	if ((ret = mount(argv[optind], type, argv[optind + 1]))) {
 		perror("mount");
 		return 1;
 	}
@@ -56,8 +67,9 @@ static int do_mount(int argc, char *argv[])
 }
 
 BAREBOX_CMD_HELP_START(mount)
-BAREBOX_CMD_HELP_USAGE("mount [<device> <fstype> <mountpoint>]\n")
+BAREBOX_CMD_HELP_USAGE("mount [[-t <fstype] <device> <mountpoint>]\n")
 BAREBOX_CMD_HELP_SHORT("Mount a filesystem of a given type to a mountpoint.\n")
+BAREBOX_CMD_HELP_SHORT("If no fstpye is specified detected it.\n")
 BAREBOX_CMD_HELP_SHORT("If no argument is given, list mounted filesystems.\n")
 BAREBOX_CMD_HELP_END
 
diff --git a/defaultenv-2/base/init/automount b/defaultenv-2/base/init/automount
index 7b53309..fe56d92 100644
--- a/defaultenv-2/base/init/automount
+++ b/defaultenv-2/base/init/automount
@@ -8,15 +8,15 @@ fi
 # automount tftp server based on $eth0.serverip
 
 mkdir -p /mnt/tftp
-automount /mnt/tftp 'ifup eth0 && mount $eth0.serverip tftp /mnt/tftp'
+automount /mnt/tftp 'ifup eth0 && mount -t tftp $eth0.serverip /mnt/tftp'
 
 # automount nfs server example
 
 #nfshost=somehost
 #mkdir -p /mnt/${nfshost}
-#automount /mnt/$nfshost "ifup eth0 && mount ${nfshost}:/tftpboot nfs /mnt/${nfshost}"
+#automount /mnt/$nfshost "ifup eth0 && mount -t nfs ${nfshost}:/tftpboot /mnt/${nfshost}"
 
 # FAT on usb disk example
 
 #mkdir -p /mnt/fat
-#automount -d /mnt/fat 'usb && [ -e /dev/disk0.0 ] && mount /dev/disk0.0 fat /mnt/fat'
+#automount -d /mnt/fat 'usb && [ -e /dev/disk0.0 ] && mount /dev/disk0.0 /mnt/fat'
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
