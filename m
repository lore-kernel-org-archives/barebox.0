Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo1.mail-out.ovh.net ([178.32.119.250]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U7ViW-0003EQ-Pr
 for barebox@lists.infradead.org; Mon, 18 Feb 2013 18:45:34 +0000
Received: from mail99.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 04F18FFA6E1
 for <barebox@lists.infradead.org>; Mon, 18 Feb 2013 20:01:08 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 18 Feb 2013 19:44:24 +0100
Message-Id: <1361213064-11038-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1 v2] defaultenv-2: add boot sequence
To: barebox@lists.infradead.org

Boot will boot run sequentially the script in /env/boot.d

if not global.boot.default or global.boot.default == seq
or -s is sepecified
start the boot sequence

we do not boot the boot sequence by default to keep retro compatibility

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/Kconfig                              |    2 ++
 defaultenv-2/base/bin/_boot                 |   43 +++++++++++++++++++++++
 defaultenv-2/base/bin/_boot_help            |   30 ++++++++++++++++
 defaultenv-2/base/bin/boot                  |   48 ++++++++++++-------------
 defaultenv-2/base/bin/boot_sequence         |   50 +++++++++++++++++++++++++++
 defaultenv-2/menu/menu/boot-entries-collect |    6 +---
 6 files changed, 150 insertions(+), 29 deletions(-)
 create mode 100644 defaultenv-2/base/bin/_boot
 create mode 100644 defaultenv-2/base/bin/_boot_help
 create mode 100644 defaultenv-2/base/bin/boot_sequence

diff --git a/common/Kconfig b/common/Kconfig
index 3a55e01..683460b 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -532,6 +532,8 @@ config DEFAULT_ENVIRONMENT_GENERIC_NEW
 	select CMD_GLOBAL
 	select CMD_AUTOMOUNT
 	select CMD_BASENAME
+	select CMD_READLINK
+	select CMD_DIRNAME
 	select FLEXIBLE_BOOTARGS
 	prompt "Generic environment template"
 
diff --git a/defaultenv-2/base/bin/_boot b/defaultenv-2/base/bin/_boot
new file mode 100644
index 0000000..cdbc363
--- /dev/null
+++ b/defaultenv-2/base/bin/_boot
@@ -0,0 +1,43 @@
+#!/bin/sh
+
+verbose=
+dryrun=
+
+. /env/data/ansi-colors
+
+# clear linux.bootargs.dyn.* and bootm.*
+global -r linux.bootargs.dyn.
+global -r bootm.
+
+while getopt "vdl" opt; do
+	if [ ${opt} = v ]; then
+		if [ -n "$verbose" ]; then
+			verbose="-v -v"
+		else
+			verbose="-v"
+		fi
+	elif [ ${opt} = d ]; then
+		dryrun="-d"
+	fi
+done
+
+file=$1
+scr=
+
+echo -e "${GREEN}booting ${YELLOW}$file${NC}"
+[ -f /env/boot.d/$file ] && scr=/env/boot.d/$file
+[ -f /env/boot/$file ] && scr=/env/boot/$file
+
+if [ -z "$scr" ]; then
+	_boot_help -e $file
+	exit 2
+fi
+
+$scr
+
+if [ -n "$dryrun" ]; then
+	exit 0
+fi
+
+${global.bootm.image} $verbose
+bootm $verbose
diff --git a/defaultenv-2/base/bin/_boot_help b/defaultenv-2/base/bin/_boot_help
new file mode 100644
index 0000000..d7a7e45
--- /dev/null
+++ b/defaultenv-2/base/bin/_boot_help
@@ -0,0 +1,30 @@
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
+while getopt "lse:" opt; do
+	if [ ${opt} = e ]; then
+		echo -e "${RED}/env/boot/${OPTARG}${NC} or ${RED}/env/boot.d/${OPTARG}${NC} does not exist. Valid choices:\n$sources\n\n$seq_sources"
+	elif [ ${opt} = l ]; then
+		echo -e "boot sources:\n$sources\n\n$seq_sources"
+		exit 0
+	elif [ ${opt} = s ]; then
+		echo -e "$seq_sources"
+		exit 0
+	fi
+done
diff --git a/defaultenv-2/base/bin/boot b/defaultenv-2/base/bin/boot
index ebbd951..b20fc94 100644
--- a/defaultenv-2/base/bin/boot
+++ b/defaultenv-2/base/bin/boot
@@ -2,20 +2,19 @@
 
 verbose=
 dryrun=
+bootsequence=n
 
 usage="
 $0 [OPTIONS] [source]\n
  -v  verbose\n
  -d  dryrun\n
  -l  list boot sources\n
+ -s  start the boot sequence\n
  -h  help"
 
-for i in /env/boot/*; do
-	basename $i s
-	sources="$sources$s "
-done
+. /env/data/ansi-colors
 
-while getopt "vdhl" opt; do
+while getopt "vdhls" opt; do
 	if [ ${opt} = v ]; then
 		if [ -n "$verbose" ]; then
 			verbose="-v -v"
@@ -23,9 +22,11 @@ while getopt "vdhl" opt; do
 			verbose="-v"
 		fi
 	elif [ ${opt} = d ]; then
-		dryrun=1
+		dryrun="-d"
+	elif [ ${opt} = s ]; then
+		do_sequence=f
 	elif [ ${opt} = l ]; then
-		echo -e "boot sources:\n$sources"
+		_boot_help -l
 		exit 0
 	elif [ ${opt} = h ]; then
 		echo -e "$usage"
@@ -33,26 +34,25 @@ while getopt "vdhl" opt; do
 	fi
 done
 
-# clear linux.bootargs.dyn.* and bootm.*
-global -r linux.bootargs.dyn.
-global -r bootm.
+boot=$1
 
-if [ $# = 0 ]; then
-	scr="$global.boot.default"
+if [ $# != 0 ]; then
+	do_sequence=n
 else
-	scr="$1"
-fi
-
-if [ -n "$scr" ]; then
-	if [ ! -f /env/boot/$scr ]; then
-		echo -e "/env/boot/$scr does not exist. Valid choices:\n$sources"
-		exit
+	if [ "${global.boot.default}" = "seq" -o "${global.boot.default}" = "" -o "${do_sequence}" = f ]; then
+		do_sequence=y
+	else
+		boot=${global.boot.default}
+		do_sequence=n
 	fi
-	/env/boot/$scr
 fi
 
-if [ -n "$dryrun" ]; then
-	exit 0
+if [ "${do_sequence}" = y ]; then
+	boot_sequence $verbose $dryru
+	ret=$?
+	exit $ret
+else
+	_boot $verbose $dryrun $boot
+	ret=$?
+	exit $ret
 fi
-
-bootm $verbose
diff --git a/defaultenv-2/base/bin/boot_sequence b/defaultenv-2/base/bin/boot_sequence
new file mode 100644
index 0000000..bb7dca2
--- /dev/null
+++ b/defaultenv-2/base/bin/boot_sequence
@@ -0,0 +1,50 @@
+#!/bin/sh
+
+verbose=
+dryrun=
+
+usage="
+$0 [OPTIONS] [source]\n
+ -v  verbose\n
+ -d  dryrun\n
+ -l  list boot sources\n
+ -h  help"
+
+. /env/data/ansi-colors
+
+while getopt "vdhls" opt; do
+	if [ ${opt} = v ]; then
+		if [ -n "$verbose" ]; then
+			verbose="-v -v"
+		else
+			verbose="-v"
+		fi
+	elif [ ${opt} = d ]; then
+		dryrun="-d"
+	elif [ ${opt} = l ]; then
+		_boot_help -s
+		exit 0
+	elif [ ${opt} = h ]; then
+		echo -e "$usage"
+		exit 0
+	fi
+done
+
+if [ ! -d /env/boot.d ]; then
+	echo -e "${GREEN}boot sequence ${RED}none${NC}"
+	exit 1
+fi
+
+echo -e "${GREEN}Start boot sequence${NC}"
+for i in /env/boot.d/*; do
+	readlink -f $i boot
+	basename $boot link
+	basename $i boot
+	msg="${GREEN}boot${NC} ${YELLOW}${boot}${NC} -> ${CYAN}${link}${NC}"
+	echo -e "${msg}"
+	_boot $verbose $dryrun $boot
+	ret=$?
+	echo -e "${msg} ${RED}failled${NC}"
+done
+echo -e "${GREEN}boot sequence ${RED}failed${NC}"
+exit $ret
diff --git a/defaultenv-2/menu/menu/boot-entries-collect b/defaultenv-2/menu/menu/boot-entries-collect
index c066c93..b0d3d9f 100644
--- a/defaultenv-2/menu/menu/boot-entries-collect
+++ b/defaultenv-2/menu/menu/boot-entries-collect
@@ -2,12 +2,8 @@
 
 cd /env/boot
 
-./$global.boot.default menu
-
 for i in *; do
-	if [ "$i" != "$global.boot.default" ]; then
-		./$i menu
-	fi
+	./$i menu
 done
 
 cd /
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
