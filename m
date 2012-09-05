Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 19.mo3.mail-out.ovh.net ([178.32.98.231]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T9EiK-0003BR-Gw
 for barebox@lists.infradead.org; Wed, 05 Sep 2012 12:28:17 +0000
Received: from mail91.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 58E63FF876E
 for <barebox@lists.infradead.org>; Wed,  5 Sep 2012 14:35:47 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed,  5 Sep 2012 14:28:27 +0200
Message-Id: <1346848107-4664-7-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1346848107-4664-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120905122556.GF32603@game.jcrosoft.org>
 <1346848107-4664-1-git-send-email-plagnioj@jcrosoft.com>
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
 defaultenv-2/base/bin/boot                         |   51 +++++++++++++++++---
 defaultenv-2/base/init/general                     |    3 --
 13 files changed, 55 insertions(+), 12 deletions(-)
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
diff --git a/defaultenv-2/base/bin/boot b/defaultenv-2/base/bin/boot
index 103eb87..68e9e89 100644
--- a/defaultenv-2/base/bin/boot
+++ b/defaultenv-2/base/bin/boot
@@ -2,6 +2,8 @@
 
 verbose=
 dryrun=
+# ensure sequence is init at something
+sequence=t
 
 usage="
 $0 [OPTIONS] [source]\n
@@ -10,11 +12,27 @@ $0 [OPTIONS] [source]\n
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
+else
+	sequence=n
+	sources="$sources\n\nboot sequence:\nnone"
+	echo "${RED}WARNING: boot sequence: none${NC}"
+fi
+
 while getopt "vdhl" opt; do
 	if [ ${opt} = v ]; then
 		if [ -n "$verbose" ]; then
@@ -23,7 +41,7 @@ while getopt "vdhl" opt; do
 			verbose="-v"
 		fi
 	elif [ ${opt} = d ]; then
-		dryrun=1
+		dryrun="-d"
 	elif [ ${opt} = l ]; then
 		echo -e "boot sources:\n$sources"
 		exit 0
@@ -37,18 +55,39 @@ done
 global -r linux.bootargs.dyn.
 global -r bootm.
 
-if [ $# = 0 ]; then
-	scr="$global.boot.default"
+if [ $# = 0 -a "x$sequence" = "xt" ]; then
+	sequence=y
 else
 	scr="$1"
 fi
 
+if [ "x$sequence" = "xy" ]; then
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
+	echo -e "${GREEN}boot sequence ${RED}failled${NC}"
+	exit $ret
+fi
+
 if [ -n "$scr" ]; then
-	if [ ! -f /env/boot/$scr ]; then
-		echo -e "/env/boot/$scr does not exist.Valid choices:\n$sources"
+	if [ ! -f /env/boot.d/$scr -a ! -f /env/boot/$scr ]; then
+		echo -e "/env/boot/$scr or /env/boot.d/$scr does not exist.Valid choices:\n$sources"
 		exit
 	fi
-	/env/boot/$scr
+	[ -f /env/boot.d/$scr ] && /env/boot.d/$scr
+	[ -f /env/boot/$scr ] && /env/boot/$scr
 fi
 
 if [ -n "$dryrun" ]; then
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
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
