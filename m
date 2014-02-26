Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WIfaj-00018L-IH
 for barebox@lists.infradead.org; Wed, 26 Feb 2014 14:36:11 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 26 Feb 2014 15:35:44 +0100
Message-Id: <1393425344-10373-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1393425344-10373-1-git-send-email-s.hauer@pengutronix.de>
References: <1393425344-10373-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] defaultenv: Add boot option for DFU
To: barebox@lists.infradead.org

DFU is for device firmware upgrade, but for development purposes it's
sometmes useful to just start a kernel vie DFU. This adds a boot option
for doing this and also the corresponding counterpart on the host. With
this it's possible to boot a system with:

scripts/dfuboot.sh -k linuximage -d dtb -c "root=ubi0:root ubi.mtd=ubi rootfstype=ubifs ignore_loglevel"

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/Kconfig                       |  6 ++++
 defaultenv/Makefile                  |  1 +
 defaultenv/defaultenv-2-dfu/boot/dfu | 39 +++++++++++++++++++++
 defaultenv/defaultenv.c              |  2 ++
 scripts/dfuboot.sh                   | 68 ++++++++++++++++++++++++++++++++++++
 5 files changed, 116 insertions(+)
 create mode 100644 defaultenv/defaultenv-2-dfu/boot/dfu
 create mode 100755 scripts/dfuboot.sh

diff --git a/common/Kconfig b/common/Kconfig
index d862c05..b9cbe19 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -593,6 +593,12 @@ config DEFAULT_ENVIRONMENT_GENERIC_NEW_MENU
 	depends on CONFIG_CMD_MENU_MANAGEMENT
 	default y
 
+config DEFAULT_ENVIRONMENT_GENERIC_NEW_DFU
+	bool
+	depends on DEFAULT_ENVIRONMENT_GENERIC_NEW
+	depends on USB_GADGET_DFU
+	default y
+
 config DEFAULT_ENVIRONMENT_GENERIC
 	bool
 	depends on !HAVE_DEFAULT_ENVIRONMENT_NEW
diff --git a/defaultenv/Makefile b/defaultenv/Makefile
index d449e02..fc679eb 100644
--- a/defaultenv/Makefile
+++ b/defaultenv/Makefile
@@ -1,5 +1,6 @@
 bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW) += defaultenv-2-base
 bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW_MENU) += defaultenv-2-menu
+bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW_DFU) += defaultenv-2-dfu
 bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-1
 obj-$(CONFIG_DEFAULT_ENVIRONMENT) += defaultenv.o
 extra-y += barebox_default_env barebox_default_env.h barebox_default_env$(DEFAULT_COMPRESSION_SUFFIX)
diff --git a/defaultenv/defaultenv-2-dfu/boot/dfu b/defaultenv/defaultenv-2-dfu/boot/dfu
new file mode 100644
index 0000000..c9463b6
--- /dev/null
+++ b/defaultenv/defaultenv-2-dfu/boot/dfu
@@ -0,0 +1,39 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	boot-menu-add-entry "$0" "Device Firmware upgrade (DFU)"
+	exit
+fi
+
+if [ -d /dfutmp ]; then
+	rm -r /dfutmp
+fi
+
+mkdir -p /dfutmp
+
+kernel="/dfutmp/kernel"
+dtb="/dfutmp/dtb"
+cmdline="/dfutmp/cmdline"
+
+global.bootm.image="$kernel"
+
+dfu $kernel(kernel)c,$dtb(dtb)c,$cmdline(cmdline)c
+if [ $? != 0 ]; then
+	exit 1
+fi
+
+if [ ! -f "$kernel" ]; then
+	echo "No kernel uploaded. Aborting"
+	exit 1
+fi
+
+if [ -f "$cmdline" ]; then
+	global linux.bootargs.dyn.dfu
+	readf $cmdline global.linux.bootargs.dyn.dfu
+fi
+
+if [ -f "$dtb" ]; then
+	global.bootm.oftree="$dtb"
+fi
+
+true
diff --git a/defaultenv/defaultenv.c b/defaultenv/defaultenv.c
index cb20e9e..ee73a49 100644
--- a/defaultenv/defaultenv.c
+++ b/defaultenv/defaultenv.c
@@ -46,6 +46,8 @@ static void defaultenv_add_base(void)
 		defaultenv_append_directory(defaultenv_2_base);
 	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW_MENU))
 		defaultenv_append_directory(defaultenv_2_menu);
+	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW_DFU))
+		defaultenv_append_directory(defaultenv_2_dfu);
 	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC))
 		defaultenv_append_directory(defaultenv_1);
 
diff --git a/scripts/dfuboot.sh b/scripts/dfuboot.sh
new file mode 100755
index 0000000..524113b
--- /dev/null
+++ b/scripts/dfuboot.sh
@@ -0,0 +1,68 @@
+#!/bin/bash
+
+DEVICETREE=
+KERNEL=
+CMDLINE=
+
+usage() {
+	echo "usage: $0 [OPTIONS]"
+	echo "This script uploads a kernel and optionally a devicetree"
+	echo "and a kernel commandline to barebox via DFU running the"
+	echo "'boot dfu' command."
+	echo "OPTIONS:"
+	echo "  -k <kernel>       kernelimage to upload"
+	echo "  -d <dtb>          devicetree binary blob to upload"
+	echo "  -c \"cmdline\"      kernel commandline"
+	echo "  -h                This help text"
+
+	exit 0
+}
+
+while getopts "k:d:c:h" opt
+do
+	case "$opt" in
+	h)
+		usage
+		;;
+	d)
+		DEVICETREE="$OPTARG"
+		;;
+	k)
+		KERNEL="$OPTARG"
+		;;
+	c)
+		CMDLINE="$OPTARG"
+		;;
+	esac
+done
+
+dfu-util -D "${KERNEL}" -a kernel
+if [ $? != 0 ]; then
+	echo "Failed to upload kernel"
+	exit 1
+fi
+
+if [ -n "$DEVICETREE" ]; then
+	dfu-util -D "${DEVICETREE}" -a dtb
+	if [ $? != 0 ]; then
+		echo "Failed to upload devicetree"
+		exit 1
+	fi
+fi
+
+if [ -n "$CMDLINE" ]; then
+	cmdlinefile=$(mktemp)
+
+	echo -e "$CMDLINE" > "${cmdlinefile}"
+
+	dfu-util -D "${cmdlinefile}" -a cmdline -R
+	result=$?
+
+	rm -f "${cmdlinefile}"
+
+	if [ $result != 0 ]; then
+		echo "Failed to upload cmdline"
+		exit 1
+	fi
+
+fi
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
