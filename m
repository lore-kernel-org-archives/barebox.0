Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XyPMO-0003fJ-UH
 for barebox@lists.infradead.org; Tue, 09 Dec 2014 18:18:11 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  9 Dec 2014 19:17:42 +0100
Message-Id: <1418149064-26448-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1418149064-26448-1-git-send-email-s.hauer@pengutronix.de>
References: <1418149064-26448-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 7/9] console: Make sure xzalloc is only used when it's
 available
To: barebox@lists.infradead.org

To make it possible to call the pr_* functions very early before
malloc is initialized test if malloc is available before using
it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/console_common.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/console_common.c b/common/console_common.c
index cc25f97..df1b085 100644
--- a/common/console_common.c
+++ b/common/console_common.c
@@ -101,7 +101,7 @@ void pr_puts(int level, const char *str)
 {
 	struct log_entry *log;
 
-	if (IS_ENABLED(CONFIG_LOGBUF)) {
+	if (IS_ENABLED(CONFIG_LOGBUF) && mem_malloc_is_initialized()) {
 		if (barebox_log_max_messages > 0)
 			log_clean(barebox_log_max_messages - 1);
 
-- 
2.1.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
