Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 9.mo5.mail-out.ovh.net ([178.32.96.204]
 helo=mo5.mail-out.ovh.net)
 by casper.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TCDVJ-0007yq-MP
 for barebox@lists.infradead.org; Thu, 13 Sep 2012 17:47:07 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 06AEAFFA6E4
 for <barebox@lists.infradead.org>; Thu, 13 Sep 2012 19:48:39 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 13 Sep 2012 19:40:23 +0200
Message-Id: <1347558023-25680-7-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1347558023-25680-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120913172220.GB20834@game.jcrosoft.org>
 <1347558023-25680-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 7/7] defaultenv-2: add boot sequence
To: barebox@lists.infradead.org

Boot will boot run sequentially the script in /env/boot.d

drop global.boot.default as we start the boot sequence by default

update the current board using the defaultenv-2 at the sametime

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 .../arm/boards/crystalfontz-cfa10036/env/boot.d/01 |    1 +
 .../arm/boards/crystalfontz-cfa10036/env/boot.d/02 |    1 +
 .../arm/boards/crystalfontz-cfa10036/env/boot.d/03 |    1 +
 .../boards/crystalfontz-cfa10036/env/init/general  |    3 --
 .../boards/freescale-mx6-sabrelite/env/boot.d/01   |    1 +
 .../boards/freescale-mx6-sabrelite/env/boot.d/02   |    1 +
 arch/arm/boards/pcm038/env/boot.d/01               |    1 +
 arch/arm/boards/pcm038/env/boot.d/02               |    1 +
 arch/arm/boards/pcm038/env/boot.d/03               |    1 +
 arch/arm/boards/tqma53/env/boot.d/01               |    1 +
 arch/arm/boards/tqma53/env/boot.d/02               |    1 +
 common/Kconfig                                     |    2 +
 defaultenv-2/base/bin/boot                         |   57 ++++++++++++++++----
 defaultenv-2/base/bin/init                         |    1 -
 defaultenv-2/base/init/general                     |    3 --
 defaultenv-2/menu/menu/boot-entries-collect        |    6 +--
 16 files changed, 61 insertions(+), 21 deletions(-)
 create mode 120000 arch/arm/boards/crystalfontz-cfa10036/env/boot.d/01
 create mode 120000 arch/arm/boards/crystalfontz-cfa10036/env/boot.d/02
 create mode 120000 arch/arm/boards/crystalfontz-cfa10036/env/boot.d/03
 create mode 120000 arch/arm/boards/freescale-mx6-sabrelite/env/boot.d/01
 create mode 120000 arch/arm/boards/freescale-mx6-sabrelite/env/boot.d/02
 create mode 120000 arch/arm/boards/pcm038/env/boot.d/01
 create mode 120000 arch/arm/boards/pcm038/env/boot.d/02
 create mode 120000 arch/arm/boards/pcm038/env/boot.d/03
 create mode 120000 arch/arm/boards/tqma53/env/boot.d/01
 create mode 120000 arch/arm/boards/tqma53/env/boot.d/02

diff --git a/arch/arm/boards/crystalfontz-cfa10036/env/boot.d/01 b/arch/arm/boards/crystalfontz-cfa10036/env/boot.d/01
new file mode 120000
index 0000000..1e6fecc
--- /dev/null
+++ b/arch/arm/boards/crystalfontz-cfa10036/env/boot.d/01
@@ -0,0 +1 @@
+../boot/mmc-ext3
\ No newline at end of file
diff --git a/arch/arm/boards/crystalfontz-cfa10036/env/boot.d/02 b/arch/arm/boards/crystalfontz-cfa10036/env/boot.d/02
new file mode 120000
index 0000000..70b8ea3
--- /dev/null
+++ b/arch/arm/boards/crystalfontz-cfa10036/env/boot.d/02
@@ -0,0 +1 @@
+../boot/net
\ No newline at end of file
diff --git a/arch/arm/boards/crystalfontz-cfa10036/env/boot.d/03 b/arch/arm/boards/crystalfontz-cfa10036/env/boot.d/03
new file mode 120000
index 0000000..b41f2fd
--- /dev/null
+++ b/arch/arm/boards/crystalfontz-cfa10036/env/boot.d/03
@@ -0,0 +1 @@
+../boot/initrd
\ No newline at end of file
diff --git a/arch/arm/boards/crystalfontz-cfa10036/env/init/general b/arch/arm/boards/crystalfontz-cfa10036/env/init/general
index 5cb3a75..125de5d 100644
--- a/arch/arm/boards/crystalfontz-cfa10036/env/init/general
+++ b/arch/arm/boards/crystalfontz-cfa10036/env/init/general
@@ -7,6 +7,3 @@ fi
 
 # timeout in seconds before the default boot entry is started
 global.autoboot_timeout=3
-
-# default boot entry (one of /env/boot/*)
-global.boot.default=mmc-ext3
diff --git a/arch/arm/boards/freescale-mx6-sabrelite/env/boot.d/01 b/arch/arm/boards/freescale-mx6-sabrelite/env/boot.d/01
new file mode 120000
index 0000000..70b8ea3
--- /dev/null
+++ b/arch/arm/boards/freescale-mx6-sabrelite/env/boot.d/01
@@ -0,0 +1 @@
+../boot/net
\ No newline at end of file
diff --git a/arch/arm/boards/freescale-mx6-sabrelite/env/boot.d/02 b/arch/arm/boards/freescale-mx6-sabrelite/env/boot.d/02
new file mode 120000
index 0000000..b41f2fd
--- /dev/null
+++ b/arch/arm/boards/freescale-mx6-sabrelite/env/boot.d/02
@@ -0,0 +1 @@
+../boot/initrd
\ No newline at end of file
diff --git a/arch/arm/boards/pcm038/env/boot.d/01 b/arch/arm/boards/pcm038/env/boot.d/01
new file mode 120000
index 0000000..d1b275c
--- /dev/null
+++ b/arch/arm/boards/pcm038/env/boot.d/01
@@ -0,0 +1 @@
+../boot/nand-ubi
\ No newline at end of file
diff --git a/arch/arm/boards/pcm038/env/boot.d/02 b/arch/arm/boards/pcm038/env/boot.d/02
new file mode 120000
index 0000000..70b8ea3
--- /dev/null
+++ b/arch/arm/boards/pcm038/env/boot.d/02
@@ -0,0 +1 @@
+../boot/net
\ No newline at end of file
diff --git a/arch/arm/boards/pcm038/env/boot.d/03 b/arch/arm/boards/pcm038/env/boot.d/03
new file mode 120000
index 0000000..b41f2fd
--- /dev/null
+++ b/arch/arm/boards/pcm038/env/boot.d/03
@@ -0,0 +1 @@
+../boot/initrd
\ No newline at end of file
diff --git a/arch/arm/boards/tqma53/env/boot.d/01 b/arch/arm/boards/tqma53/env/boot.d/01
new file mode 120000
index 0000000..70b8ea3
--- /dev/null
+++ b/arch/arm/boards/tqma53/env/boot.d/01
@@ -0,0 +1 @@
+../boot/net
\ No newline at end of file
diff --git a/arch/arm/boards/tqma53/env/boot.d/02 b/arch/arm/boards/tqma53/env/boot.d/02
new file mode 120000
index 0000000..b41f2fd
--- /dev/null
+++ b/arch/arm/boards/tqma53/env/boot.d/02
@@ -0,0 +1 @@
+../boot/initrd
\ No newline at end of file
diff --git a/common/Kconfig b/common/Kconfig
index b97392c..f411719 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -563,6 +563,8 @@ config DEFAULT_ENVIRONMENT_GENERIC_NEW
 	select CMD_GLOBAL
 	select CMD_AUTOMOUNT
 	select CMD_BASENAME
+	select CMD_READLINK
+	select CMD_DIRNAME
 	select FLEXIBLE_BOOTARGS
 	prompt "Generic environment template"
 
diff --git a/defaultenv-2/base/bin/boot b/defaultenv-2/base/bin/boot
index 103eb87..509986f 100644
--- a/defaultenv-2/base/bin/boot
+++ b/defaultenv-2/base/bin/boot
@@ -10,11 +10,28 @@ $0 [OPTIONS] [source]\n
  -l  list boot sources\n
  -h  help"
 
+. /env/data/ansi-colors
+
 for i in /env/boot/*; do
 	basename $i s
 	sources="$sources$s "
 done
 
+if [ -d /env/boot.d ]; then
+	sources="$sources\n\nboot sequence:"
+	for i in /env/boot.d/*; do
+		readlink -f $i s
+		basename $s link
+		basename $i s
+		sources="$sources\n ${YELLOW}${s}${NC} -> ${CYAN}${link}${NC}"
+	done
+	sequence=y
+else
+	sources="$sources\n\nboot sequence:\nnone"
+	echo -e "${RED}WARNING: boot sequence: none${NC}"
+	sequence=n
+fi
+
 while getopt "vdhl" opt; do
 	if [ ${opt} = v ]; then
 		if [ -n "$verbose" ]; then
@@ -23,7 +40,7 @@ while getopt "vdhl" opt; do
 			verbose="-v"
 		fi
 	elif [ ${opt} = d ]; then
-		dryrun=1
+		dryrun="-d"
 	elif [ ${opt} = l ]; then
 		echo -e "boot sources:\n$sources"
 		exit 0
@@ -37,18 +54,40 @@ done
 global -r linux.bootargs.dyn.
 global -r bootm.
 
-if [ $# = 0 ]; then
-	scr="$global.boot.default"
-else
-	scr="$1"
+if [ $# != 0 ]; then
+	sequence=n
 fi
 
-if [ -n "$scr" ]; then
-	if [ ! -f /env/boot/$scr ]; then
-		echo -e "/env/boot/$scr does not exist.Valid choices:\n$sources"
+if [ "$sequence" = y ]; then
+	if [ ! -d /env/boot.d ]; then
+		echo -e "${GREEN}boot sequence ${RED}none${NC}"
+		exit 1
+	fi
+	echo -e "${GREEN}Start boot sequence${NC}"
+	for i in /env/boot.d/*; do
+		readlink -f $i s
+		basename $s link
+		basename $i s
+		msg="${GREEN}boot${NC} ${YELLOW}${s}${NC} -> ${CYAN}${link}${NC}"
+		echo -e "${msg}"
+		boot $dryrun $s
+		echo -e "${msg} ${RED}failled${NC}"
+		ret=$?
+	done
+	echo -e "${GREEN}boot sequence ${RED}failed${NC}"
+	exit $ret
+else
+	file=$1
+	scr=
+	echo -e "${GREEN}booting ${YELLOW}$file${NC}"
+	[ -f /env/boot.d/$file ] && scr=/env/boot.d/$file
+	[ -f /env/boot/$file ] && scr=/env/boot/$file
+
+	if [ -z "$scr" ]; then
+		echo -e "/env/boot/$file or /env/boot.d/$file does not exist. Valid choices:\n$sources"
 		exit
 	fi
-	/env/boot/$scr
+	$scr
 fi
 
 if [ -n "$dryrun" ]; then
diff --git a/defaultenv-2/base/bin/init b/defaultenv-2/base/bin/init
index 8e8871d..3cac41c 100644
--- a/defaultenv-2/base/bin/init
+++ b/defaultenv-2/base/bin/init
@@ -5,7 +5,6 @@ export PATH=/env/bin
 global hostname=generic
 global user=none
 global autoboot_timeout=3
-global boot.default=net
 global allow_color=true
 global linux.bootargs.base
 #linux.bootargs.dyn.* will be clearer at the beginning of boot
diff --git a/defaultenv-2/base/init/general b/defaultenv-2/base/init/general
index 98a92d1..e7fffdd 100644
--- a/defaultenv-2/base/init/general
+++ b/defaultenv-2/base/init/general
@@ -10,6 +10,3 @@ global.user=sha
 
 # timeout in seconds before the default boot entry is started
 global.autoboot_timeout=3
-
-# default boot entry (one of /env/boot/*)
-global.boot.default=net
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
