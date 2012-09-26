Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TGo8E-00053d-80
 for barebox@lists.infradead.org; Wed, 26 Sep 2012 09:42:16 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 26 Sep 2012 11:42:09 +0200
Message-Id: <1348652529-7355-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] defenv2: fix verbose booting, typo
To: barebox@lists.infradead.org

- failed is written with a single 'l'
- the script calls itself during a boot sequence, so pass
  verbose option on to the called script
- multiple -v can simply be appended, no need for if/else

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 defaultenv-2/base/bin/boot |   10 +++-------
 1 file changed, 3 insertions(+), 7 deletions(-)

diff --git a/defaultenv-2/base/bin/boot b/defaultenv-2/base/bin/boot
index 509986f..60871f0 100644
--- a/defaultenv-2/base/bin/boot
+++ b/defaultenv-2/base/bin/boot
@@ -34,11 +34,7 @@ fi
 
 while getopt "vdhl" opt; do
 	if [ ${opt} = v ]; then
-		if [ -n "$verbose" ]; then
-			verbose="-v -v"
-		else
-			verbose="-v"
-		fi
+		verbose="$verbose -v"
 	elif [ ${opt} = d ]; then
 		dryrun="-d"
 	elif [ ${opt} = l ]; then
@@ -70,8 +66,8 @@ if [ "$sequence" = y ]; then
 		basename $i s
 		msg="${GREEN}boot${NC} ${YELLOW}${s}${NC} -> ${CYAN}${link}${NC}"
 		echo -e "${msg}"
-		boot $dryrun $s
-		echo -e "${msg} ${RED}failled${NC}"
+		boot $dryrun $verbose $s
+		echo -e "${msg} ${RED}failed${NC}"
 		ret=$?
 	done
 	echo -e "${GREEN}boot sequence ${RED}failed${NC}"
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
