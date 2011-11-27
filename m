Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RUdYN-0002tu-MD
 for barebox@lists.infradead.org; Sun, 27 Nov 2011 12:09:53 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 27 Nov 2011 13:09:39 +0100
Message-Id: <1322395780-21916-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1322395780-21916-1-git-send-email-s.hauer@pengutronix.de>
References: <1322395780-21916-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/5] hush: Add magicvars
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/hush.c |    8 ++++++++
 1 files changed, 8 insertions(+), 0 deletions(-)

diff --git a/common/hush.c b/common/hush.c
index 573bd3e..c70c274 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -122,6 +122,7 @@
 #include <glob.h>
 #include <getopt.h>
 #include <libbb.h>
+#include <magicvar.h>
 #include <linux/list.h>
 
 /*cmd_boot.c*/
@@ -540,6 +541,8 @@ static int builtin_getopt(struct p_context *ctx, struct child_prog *child)
 
 	return 0;
 }
+
+BAREBOX_MAGIC_VAR(OPTARG, "optarg for hush builtin getopt");
 #endif
 
 /* run_pipe_real() starts all the jobs, but doesn't wait for anything
@@ -1721,6 +1724,11 @@ BAREBOX_CMD_START(getopt)
 BAREBOX_CMD_END
 #endif
 
+BAREBOX_MAGIC_VAR(PATH, "colon seperated list of pathes to search for executables");
+#ifdef CONFIG_HUSH_FANCY_PROMPT
+BAREBOX_MAGIC_VAR(PS1, "hush prompt");
+#endif
+
 /**
  * @file
  * @brief A prototype Bourne shell grammar parser
-- 
1.7.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
