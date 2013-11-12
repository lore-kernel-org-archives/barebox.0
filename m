Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VgEOj-00061F-RG
 for barebox@lists.infradead.org; Tue, 12 Nov 2013 13:52:54 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 12 Nov 2013 14:52:10 +0100
Message-Id: <1384264339-15986-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1384264339-15986-1-git-send-email-s.hauer@pengutronix.de>
References: <1384264339-15986-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/10] hush: fix exit on syntax error behaviour
To: barebox@lists.infradead.org

input.__promptme is no valid indicator that run_shell should be left.
It should be left on executing the 'exit' builtin which is indicated
by a return code < 0 from parse_stream_outer(). Track this with an extra
variable and use it as a condition to return from an interactive shell.

This fixes the weird behaviour that hush exits (and the user finds itself
in the menu) when a syntax error occured.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/hush.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/common/hush.c b/common/hush.c
index bf1d9e6..5969127 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -1853,14 +1853,17 @@ int run_shell(void)
 	int rcode;
 	struct in_str input;
 	struct p_context ctx;
+	int exit = 0;
 
 	do {
 		setup_file_in_str(&input);
 		rcode = parse_stream_outer(&ctx, &input, FLAG_PARSE_SEMICOLON);
-		if (rcode < -1)
+		if (rcode < -1) {
+			exit = 1;
 			rcode = -rcode - 2;
+		}
 		release_context(&ctx);
-	} while (!input.__promptme);
+	} while (!exit);
 
 	return rcode;
 }
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
