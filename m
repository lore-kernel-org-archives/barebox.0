Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U7NTp-0001GY-3r
 for barebox@lists.infradead.org; Mon, 18 Feb 2013 09:57:50 +0000
Date: Mon, 18 Feb 2013 10:57:46 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130218095746.GM1906@pengutronix.de>
References: <1360952972-2377-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1360952972-2377-1-git-send-email-plagnioj@jcrosoft.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/1] defaultenv-2: add boot sequence
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Feb 15, 2013 at 07:29:32PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Boot will boot run sequentially the script in /env/boot.d
> 
> if not global.boot.default or global.boot.default == seq
> or -s is sepecified
> start the boot sequence
> 
> we do not boot the boot sequence by default t keep retro compatibility

This patch is too big, does multiple things and it's not clear to me how
it's supposed to work. Trying it resulted in error messages from the
basename command.

I also don't understand why you want to implement this using links which
makes the whole stuff very complicated. Why don't you just allow to pass
in multiple boot sources?

The following is not ready to be committed, but it should be able to
boot in a sequence in a much more straight forward way.

Sascha

8<------------------------------------------------

From 656303af01f9a686aa33bbe353aff5d9ab5d58a5 Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 18 Feb 2013 10:52:36 +0100
Subject: [PATCH] add bootsequence support

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/hush.c              |   21 +++++++++++++++++++++
 defaultenv-2/base/bin/boot |   28 +++++++++++++++-------------
 2 files changed, 36 insertions(+), 13 deletions(-)

diff --git a/common/hush.c b/common/hush.c
index 1f468f6..2d52372 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -335,6 +335,19 @@ static int b_addchr(o_string *o, int ch)
 	return 0;
 }
 
+static int b_addstr(o_string *o, const char *str)
+{
+	int ret;
+
+	while (*str) {
+		ret = b_addchr(o, *str++);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
 static void b_reset(o_string *o)
 {
 	o->length = 0;
@@ -1406,6 +1419,14 @@ static int handle_dollar(o_string *dest, struct p_context *ctx, struct in_str *i
 			}
 			b_addchr(dest, SPECIAL_VAR_SYMBOL);
 			break;
+		case '*':
+			for (i = 1; i < ctx->global_argc; i++) {
+				b_addstr(dest, ctx->global_argv[i]);
+				b_addchr(dest, ' ');
+			}
+
+			advance = 1;
+			break;
 		default:
 			b_addchr(dest, '$');
 		}
diff --git a/defaultenv-2/base/bin/boot b/defaultenv-2/base/bin/boot
index ebbd951..d5cae0f 100644
--- a/defaultenv-2/base/bin/boot
+++ b/defaultenv-2/base/bin/boot
@@ -33,26 +33,28 @@ while getopt "vdhl" opt; do
 	fi
 done
 
-# clear linux.bootargs.dyn.* and bootm.*
-global -r linux.bootargs.dyn.
-global -r bootm.
-
 if [ $# = 0 ]; then
 	scr="$global.boot.default"
 else
-	scr="$1"
+	scr="$*"
 fi
 
-if [ -n "$scr" ]; then
-	if [ ! -f /env/boot/$scr ]; then
+for i in $scr; do
+	echo $i
+
+	# clear linux.bootargs.dyn.* and bootm.*
+	global -r linux.bootargs.dyn.
+	global -r bootm.
+
+	if [ ! -f /env/boot/$i ]; then
 		echo -e "/env/boot/$scr does not exist. Valid choices:\n$sources"
 		exit
 	fi
-	/env/boot/$scr
-fi
+	/env/boot/$i
 
-if [ -n "$dryrun" ]; then
-	exit 0
-fi
+	if [ -n "$dryrun" ]; then
+		exit 0
+	fi
 
-bootm $verbose
+	bootm $verbose
+done
-- 
1.7.10.4

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
