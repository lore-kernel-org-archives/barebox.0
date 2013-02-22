Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U8nsK-0005xP-7A
 for barebox@lists.infradead.org; Fri, 22 Feb 2013 08:21:01 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 Feb 2013 09:20:55 +0100
Message-Id: <1361521255-3935-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] defaultenv-2: add boot sequence
To: barebox@lists.infradead.org

From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

This allows to boot a sequence of boot entries until one succeeds.

boot sources can be passed in $global.boot.default, which is now treated
as a list. Also a list of boot entries can be specified as arguments
to the boot script. The entries can be:

- a plain filename from /env/boot/
- a full path to an arbitrary file
- a directory containing boot entries

With this this command:

boot net nand-ubi /env/boot.d

would first use the /env/boot/net entry, if this fails the /env/boot/nand-ubi
entry and if this also fails the files from /env/boot.d/ (which could also
be links to boot scripts)

To make the above the default, global.boot.default would be specified as:

global.boot.default="net nand-ubi /env/boot.d"

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/Kconfig                   |    2 ++
 defaultenv-2/base/bin/_boot      |   44 +++++++++++++++++++++++++
 defaultenv-2/base/bin/_boot_help |   20 ++++++++++++
 defaultenv-2/base/bin/_boot_list |    7 ++++
 defaultenv-2/base/bin/boot       |   67 +++++++++++++++++++++-----------------
 defaultenv-2/base/config         |    6 +++-
 6 files changed, 115 insertions(+), 31 deletions(-)
 create mode 100644 defaultenv-2/base/bin/_boot
 create mode 100644 defaultenv-2/base/bin/_boot_help
 create mode 100644 defaultenv-2/base/bin/_boot_list

diff --git a/common/Kconfig b/common/Kconfig
index 3f6c11e..651000e 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -544,6 +544,8 @@ config DEFAULT_ENVIRONMENT_GENERIC_NEW
 	select CMD_GLOBAL
 	select CMD_AUTOMOUNT
 	select CMD_BASENAME
+	select CMD_READLINK
+	select CMD_DIRNAME
 	select FLEXIBLE_BOOTARGS
 	prompt "Generic environment template"
 
diff --git a/defaultenv-2/base/bin/_boot b/defaultenv-2/base/bin/_boot
new file mode 100644
index 0000000..71d1490
--- /dev/null
+++ b/defaultenv-2/base/bin/_boot
@@ -0,0 +1,44 @@
+#!/bin/sh
+
+# The real boot script, to be called from _boot_list which is called
+# from boot
+
+. /env/data/ansi-colors
+
+# clear linux.bootargs.dyn.* and bootm.*
+global -r linux.bootargs.dyn.
+global -r bootm.
+
+file="$1"
+
+scr=/env/boot/$file
+if [ ! -f "$scr" ]; then
+	scr="$file"
+fi
+
+if [ ! -f "$scr" ]; then
+	echo -e "${RED}/env/boot/${file}${NC} or ${RED}${file}${NC} do not exist"
+	_boot_help
+	exit 2
+fi
+
+if [ -L $scr ]; then
+	readlink -f $scr boot
+	basename $boot link
+	basename $scr boot
+	echo -e "${GREEN}boot${NC} ${YELLOW}${boot}${NC} -> ${CYAN}${link}${NC}"
+else
+	echo -e "${GREEN}booting ${YELLOW}$file${NC}..."
+fi
+
+$scr
+
+if [ -n "$BOOT_DRYRUN" ]; then
+	echo "dryrun. exiting now"
+	exit 0
+fi
+
+${global.bootm.image} $BOOT_BOOTM_OPTS
+bootm $BOOT_BOOTM_OPTS
+
+echo -e "${GREEN}booting ${YELLOW}$file${NC} ${RED}failed${NC}"
diff --git a/defaultenv-2/base/bin/_boot_help b/defaultenv-2/base/bin/_boot_help
new file mode 100644
index 0000000..5679e91
--- /dev/null
+++ b/defaultenv-2/base/bin/_boot_help
@@ -0,0 +1,20 @@
+#!/bin/sh
+
+for i in /env/boot/*; do
+	basename $i s
+	sources="$sources$s "
+done
+
+if [ -d /env/boot.d ]; then
+	seq_sources="boot sequence:"
+	for i in /env/boot.d/*; do
+		readlink -f $i s
+		basename $s link
+		basename $i s
+		seq_sources="$seq_sources\n ${YELLOW}${s}${NC} -> ${CYAN}${link}${NC}"
+	done
+else
+	seq_sources="boot sequence:\n${GREEN}none${NC}"
+fi
+
+echo -e "boot sources:\n$sources\n\n$seq_sources"
diff --git a/defaultenv-2/base/bin/_boot_list b/defaultenv-2/base/bin/_boot_list
new file mode 100644
index 0000000..17f29bf
--- /dev/null
+++ b/defaultenv-2/base/bin/_boot_list
@@ -0,0 +1,7 @@
+#!/bin/sh
+
+# This script is a workaround for buggy globbing in for loops
+
+for i in $*; do
+	_boot $i;
+done
diff --git a/defaultenv-2/base/bin/boot b/defaultenv-2/base/bin/boot
index ebbd951..f7f460e 100644
--- a/defaultenv-2/base/bin/boot
+++ b/defaultenv-2/base/bin/boot
@@ -1,7 +1,10 @@
 #!/bin/sh
 
-verbose=
-dryrun=
+BOOT_BOOTM_OPTS=
+BOOT_DRYRUN=
+BOOT_VERBOSE=
+list=
+bootsrc=${global.boot.default}
 
 usage="
 $0 [OPTIONS] [source]\n
@@ -10,49 +13,53 @@ $0 [OPTIONS] [source]\n
  -l  list boot sources\n
  -h  help"
 
-for i in /env/boot/*; do
-	basename $i s
-	sources="$sources$s "
-done
+. /env/data/ansi-colors
 
 while getopt "vdhl" opt; do
 	if [ ${opt} = v ]; then
-		if [ -n "$verbose" ]; then
-			verbose="-v -v"
-		else
-			verbose="-v"
-		fi
+		BOOT_BOOTMOPTS="$BOOT_BOOTMOPTS -v"
+		BOOT_VERBOSE=1
 	elif [ ${opt} = d ]; then
-		dryrun=1
+		BOOT_DRYRUN=1
 	elif [ ${opt} = l ]; then
-		echo -e "boot sources:\n$sources"
-		exit 0
+		list=1
 	elif [ ${opt} = h ]; then
 		echo -e "$usage"
 		exit 0
 	fi
 done
 
-# clear linux.bootargs.dyn.* and bootm.*
-global -r linux.bootargs.dyn.
-global -r bootm.
+if [ -n "$list" ]; then
+	echo "boot sources:"
+	for i in /env/boot/*; do
+		basename $i s
+		echo $s
+	done
+	exit 0
+fi
 
-if [ $# = 0 ]; then
-	scr="$global.boot.default"
-else
-	scr="$1"
+if [ -n "$1" ]; then
+	bootsrc="$*"
 fi
 
-if [ -n "$scr" ]; then
-	if [ ! -f /env/boot/$scr ]; then
-		echo -e "/env/boot/$scr does not exist. Valid choices:\n$sources"
-		exit
+export BOOT_BOOTM_OPTS
+export BOOT_DRYRUN
+export BOOT_VERBOSE
+
+for src in $bootsrc; do
+	if [ -d ${src} ]; then
+		realsrc="$realsrc $src/*"
+	else
+		realsrc="$realsrc $src"
 	fi
-	/env/boot/$scr
-fi
+done
 
-if [ -n "$dryrun" ]; then
-	exit 0
+if [ -n "$BOOT_VERBOSE" ]; then
+	echo -e "\nboot sequence:${YELLOW}$realsrc${NC}\n"
 fi
 
-bootm $verbose
+for s in $realsrc; do
+	_boot_list $s
+done
+
+exit $ret
diff --git a/defaultenv-2/base/config b/defaultenv-2/base/config
index 189e5a6..6839d3c 100644
--- a/defaultenv-2/base/config
+++ b/defaultenv-2/base/config
@@ -14,7 +14,11 @@ global.user=none
 # timeout in seconds before the default boot entry is started
 global.autoboot_timeout=3
 
-# default boot entry (one of /env/boot/*)
+# list of boot entries. These are executed in order until one
+# succeeds. An entry can be:
+# - a filename in /env/boot/
+# - a full path to a directory. All files in this directory are
+#   treated as boot files and executed in alphabetical order
 global.boot.default=net
 
 # base bootargs
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
