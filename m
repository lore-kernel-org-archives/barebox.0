Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by casper.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P8Bj8-0000sV-MU
	for barebox@lists.infradead.org; Tue, 19 Oct 2010 12:55:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 19 Oct 2010 14:55:10 +0200
Message-Id: <1287492930-15716-23-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1287492930-15716-1-git-send-email-s.hauer@pengutronix.de>
References: <1287492930-15716-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 22/42] hush: sparse fixes
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/hush.c |   10 +++++-----
 1 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/common/hush.c b/common/hush.c
index 3359f37..77610bb 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -362,7 +362,7 @@ static int b_addqchr(o_string *o, int ch, int quote)
 }
 
 /* belongs in utility.c */
-char *simple_itoa(unsigned int i)
+static char *simple_itoa(unsigned int i)
 {
 	/* 21 digits plus null terminator, good for 64-bit or smaller ints */
 	static char local[22];
@@ -636,10 +636,10 @@ static int run_pipe_real(struct p_context *ctx, struct pipe *pi)
 		}
 		if (child->sp) {
 			char * str = NULL;
-			struct p_context ctx;
+			struct p_context ctx1;
 			str = make_string((child->argv + i));
-			parse_string_outer(&ctx, str, FLAG_EXIT_FROM_LOOP | FLAG_REPARSING);
-			release_context(&ctx);
+			parse_string_outer(&ctx1, str, FLAG_EXIT_FROM_LOOP | FLAG_REPARSING);
+			release_context(&ctx1);
 			free(str);
 			return last_return_code;
 		}
@@ -948,7 +948,7 @@ static int set_local_var(const char *s, int flg_export)
 	 * NAME=VALUE format.  So the first order of business is to
 	 * split 's' on the '=' into 'name' and 'value' */
 	value = strchr(name, '=');
-	if (value==0 && ++value==0) {
+	if (!value) {
 		free(name);
 		return -1;
 	}
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
