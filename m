Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SmgKr-0000E8-5g
 for barebox@lists.infradead.org; Thu, 05 Jul 2012 07:18:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  5 Jul 2012 09:18:38 +0200
Message-Id: <1341472720-3248-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1341472720-3248-1-git-send-email-s.hauer@pengutronix.de>
References: <1341472720-3248-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] hush getopt: shift argv arguments
To: barebox@lists.infradead.org

Make the nonopt arguments to a script available starting from $1
after running getopt. This allows for scripts which use option
parsing but also have nonopts.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/hush.c |    5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/common/hush.c b/common/hush.c
index 3ac1d10..8200931 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -521,6 +521,8 @@ static int builtin_getopt(struct p_context *ctx, struct child_prog *child,
 			o->optarg = xstrdup(optarg);
 			list_add_tail(&o->list, &ctx->options);
 		}
+		ctx->global_argv += optind - 1;
+		ctx->global_argc -= optind - 1;
 	}
 
 	ctx->options_parsed = 1;
@@ -1899,7 +1901,8 @@ static const __maybe_unused char cmd_getopt_help[] =
 "hush option parser. <optstring> is a string with valid options. Add\n"
 "a colon to an options if this option has a required argument or two\n"
 "colons for an optional argument. The current option is saved in <var>,\n"
-"arguments are saved in OPTARG.\n";
+"arguments are saved in OPTARG. After this command additional nonopts\n"
+"can be accessed starting from $1\n";
 
 BAREBOX_CMD_START(getopt)
 	.cmd		= do_getopt,
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
