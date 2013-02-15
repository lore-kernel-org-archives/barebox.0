Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo2.mail-out.ovh.net ([46.105.58.226]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1U6Q3V-0006su-OY
 for barebox@lists.infradead.org; Fri, 15 Feb 2013 18:30:42 +0000
Received: from mail170.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 56D5DDC1712
 for <barebox@lists.infradead.org>; Fri, 15 Feb 2013 19:41:09 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 15 Feb 2013 19:29:32 +0100
Message-Id: <1360952972-2377-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] defaultenv-2: add boot sequence
To: barebox@lists.infradead.org

Boot will boot run sequentially the script in /env/boot.d

if not global.boot.default or global.boot.default == seq
or -s is sepecified
start the boot sequence

we do not boot the boot sequence by default t keep retro compatibility

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/Kconfig                              |    2 +
 defaultenv-2/base/bin/_boot                 |   42 +++++++++++++++
 defaultenv-2/base/bin/boot                  |   78 ++++++++++++++++++++-------
 defaultenv-2/menu/menu/boot-entries-collect |    6 +--
 4 files changed, 104 insertions(+), 24 deletions(-)
 create mode 100644 defaultenv-2/base/bin/_boot

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
index 0000000..a9a6799
--- /dev/null
+++ b/defaultenv-2/base/bin/_boot
@@ -0,0 +1,42 @@
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
diff --git a/defaultenv-2/base/bin/boot b/defaultenv-2/base/bin/boot
index ebbd951..746607e 100644
--- a/defaultenv-2/base/bin/boot
+++ b/defaultenv-2/base/bin/boot
@@ -2,20 +2,38 @@
 
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
 
+. /env/data/ansi-colors
+
 for i in /env/boot/*; do
 	basename $i s
 	sources="$sources$s "
 done
 
-while getopt "vdhl" opt; do
+if [ -d /env/boot.d ]; then
+	sources="$sources\n\nboot sequence:"
+	for i in /env/boot.d/*; do
+		readlink -f $i s
+		basename $s link
+		basename $i s
+		sources="$sources\n ${YELLOW}${s}${NC} -> ${CYAN}${link}${NC}"
+	done
+	bootsequence=y
+else
+	sources="$sources\n\nboot sequence:\n${GREEN}none${NC}"
+	bootsequence=n
+fi
+
+while getopt "vdhls" opt; do
 	if [ ${opt} = v ]; then
 		if [ -n "$verbose" ]; then
 			verbose="-v -v"
@@ -23,7 +41,9 @@ while getopt "vdhl" opt; do
 			verbose="-v"
 		fi
 	elif [ ${opt} = d ]; then
-		dryrun=1
+		dryrun="-d"
+	elif [ ${opt} = s ]; then
+		do_sequence=y
 	elif [ ${opt} = l ]; then
 		echo -e "boot sources:\n$sources"
 		exit 0
@@ -33,26 +53,46 @@ while getopt "vdhl" opt; do
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
+	if [ "${global.boot.default}" = "seq" -o  "${global.boot.default}" = "" ]; then
+		do_sequence=y
+	else
+		boot=${global.boot.default}
+		do_sequence=n
 	fi
-	/env/boot/$scr
 fi
 
-if [ -n "$dryrun" ]; then
-	exit 0
+{if [ "${do_sequence}" = y ]; then
+	if [ "${bootsequence}" != y ]; then
+		echo -e "${GREEN}boot sequence ${RED}none${NC}"
+		exit 1
+	fi
+	echo -e "${GREEN}Start boot sequence${NC}"
+	for i in /env/boot.d/*; do
+		readlink -f $i s
+		basename $boot link
+		basename $i boot
+		msg="${GREEN}boot${NC} ${YELLOW}${boot}${NC} -> ${CYAN}${link}${NC}"
+		echo -e "${msg}"
+		_boot $verbose $dryrun $boot
+		ret=$?
+		echo ${ret}
+		if [ $ret -eq 2 ]; then
+			echo -e "${RED}/env/boot/${boot}{${NC} or ${RED}/env/boot.d/${boot}${NC} does not exist. Valid choices:\n$sources"
+		fi
+		echo -e "${msg} ${RED}failled${NC}"
+	done
+	echo -e "${GREEN}boot sequence ${RED}failed${NC}"
+	exit $ret
+else
+	_boot $verbose $dryrun $boot
+	ret=$?
+	if [ $ret -eq 2 ]; then
+		echo -e "${RED}/env/boot/${boot}{${NC} or ${RED}/env/boot.d/${boot}${NC} does not exist. Valid choices:\n$sources"
+	fi
+	exit $ret
 fi
-
-bootm $verbose
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
