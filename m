Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YsQ57-0002FP-Lw
 for barebox@lists.infradead.org; Wed, 13 May 2015 06:23:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 13 May 2015 08:23:25 +0200
Message-Id: <1431498205-2544-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] console: use regular malloc for log messages
To: Barebox List <barebox@lists.infradead.org>

Using xfunctions to allocate log messages is not a good idea. Should
we be out of memory the xfunctions will panic which will cause another
allocation, so we deadlock the system with no message going out.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/console_common.c | 14 +++++++++++---
 1 file changed, 11 insertions(+), 3 deletions(-)

diff --git a/common/console_common.c b/common/console_common.c
index 41a6929..36bd1dd 100644
--- a/common/console_common.c
+++ b/common/console_common.c
@@ -106,15 +106,23 @@ static void pr_puts(int level, const char *str)
 			log_clean(barebox_log_max_messages - 1);
 
 		if (barebox_log_max_messages >= 0) {
-			log = xzalloc(sizeof(*log));
-			log->msg = xstrdup(str);
+			log = malloc(sizeof(*log));
+			if (!log)
+				goto nolog;
+
+			log->msg = strdup(str);
+			if (!log->msg) {
+				free(log);
+				goto nolog;
+			}
+
 			log->timestamp = get_time_ns();
 			log->level = level;
 			list_add_tail(&log->list, &barebox_logbuf);
 			barebox_logbuf_num_messages++;
 		}
 	}
-
+nolog:
 	if (level > barebox_loglevel)
 		return;
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
