Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo2.mail-out.ovh.net ([188.165.53.149]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T4lvD-0006xx-SH
 for barebox@lists.infradead.org; Fri, 24 Aug 2012 04:55:05 +0000
Received: from mail21.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id C57CDDC0FCD
 for <barebox@lists.infradead.org>; Fri, 24 Aug 2012 07:00:01 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 24 Aug 2012 06:55:13 +0200
Message-Id: <1345784113-29643-5-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1345784113-29643-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120824045246.GJ6271@game.jcrosoft.org>
 <1345784113-29643-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 5/5] defaultenv-2: add boot sequence
To: barebox@lists.infradead.org

Boot will boot run sequentially the script in /env/boot.d

if not global.boot.defaul or global.boot.defaul == seq
start the boot sequence

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 defaultenv-2/base/bin/boot     |   52 ++++++++++++++++++++++++++++++++++++----
 defaultenv-2/base/init/general |    2 +-
 2 files changed, 48 insertions(+), 6 deletions(-)

diff --git a/defaultenv-2/base/bin/boot b/defaultenv-2/base/bin/boot
index 103eb87..ade555d 100644
--- a/defaultenv-2/base/bin/boot
+++ b/defaultenv-2/base/bin/boot
@@ -2,20 +2,39 @@
 
 verbose=
 dryrun=
+sequence=
 
 usage="
 $0 [OPTIONS] [source]\n
  -v  verbose\n
  -d  dryrun\n
  -l  list boot sources\n
+ -s  start boot sequence in /env/boot.d/\n
  -h  help"
 
+if [ ${global.allow_color} = "true" ]; then
+	. /env/data/ansi-colors
+	ECHO=-e
+fi
+
 for i in /env/boot/*; do
 	basename $i s
 	sources="$sources$s "
 done
 
-while getopt "vdhl" opt; do
+if [ -d /env/boot.d ]; then
+	sources="$sources\nboot sequence:"
+	for i in /env/boot.d/*; do
+		readlink -f $i s
+		basename $s link
+		basename $i s
+		sources="$sources\n $s -> $link"
+	done
+else
+	sources="$sources\nboot sequence:\nnone"
+fi
+
+while getopt "vdhls" opt; do
 	if [ ${opt} = v ]; then
 		if [ -n "$verbose" ]; then
 			verbose="-v -v"
@@ -23,7 +42,9 @@ while getopt "vdhl" opt; do
 			verbose="-v"
 		fi
 	elif [ ${opt} = d ]; then
-		dryrun=1
+		dryrun="-d"
+	elif [ ${opt} = s ]; then
+		sequence=1
 	elif [ ${opt} = l ]; then
 		echo -e "boot sources:\n$sources"
 		exit 0
@@ -43,12 +64,33 @@ else
 	scr="$1"
 fi
 
+if [ -n "$sequence" -o "x$src" = "xseq" ]; then
+	if [ ! -d /env/boot.d ]; then
+		echo ${ECHO} "${GREEN}boot sequence ${RED}none${NC}"
+		exit 1
+	fi
+	echo ${ECHO} "${GREEN}Start boot sequence${NC}"
+	for i in /env/boot.d/*; do
+		readlink -f $i s
+		basename $s link
+		basename $i s
+		msg="${GREEN}boot${NC} ${YELLOW}${s}${NC} -> ${CYAN}${link}${NC}"
+		echo ${ECHO} "${msg}"
+		boot $dryrun $s
+		echo ${ECHO} "${msg} ${RED}failled${NC}"
+		ret=$?
+	done
+	echo ${ECHO} "${GREEN}boot sequence ${RED}failled${NC}"
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
index 98a92d1..2c0bd74 100644
--- a/defaultenv-2/base/init/general
+++ b/defaultenv-2/base/init/general
@@ -11,5 +11,5 @@ global.user=sha
 # timeout in seconds before the default boot entry is started
 global.autoboot_timeout=3
 
-# default boot entry (one of /env/boot/*)
+# default boot entry (one of /env/boot/*) or seq to start the sequence
 global.boot.default=net
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
