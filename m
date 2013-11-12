Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VgEOZ-00060y-W6
 for barebox@lists.infradead.org; Tue, 12 Nov 2013 13:52:45 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 12 Nov 2013 14:52:12 +0100
Message-Id: <1384264339-15986-4-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/10] readline: remove unused variable
To: barebox@lists.infradead.org

'rc' is never set to anything else than 0, so drop it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/readline.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/lib/readline.c b/lib/readline.c
index 3fb620e..6afc491 100644
--- a/lib/readline.c
+++ b/lib/readline.c
@@ -191,7 +191,6 @@ int readline(const char *prompt, char *buf, int len)
 	unsigned wlen;
 	int ichar;
 	int insert = 1;
-	int rc = 0;
 #ifdef CONFIG_AUTO_COMPLETE
 	char tmp;
 	int reprint, i;
@@ -351,5 +350,5 @@ int readline(const char *prompt, char *buf, int len)
 		cread_add_to_hist(buf);
 	hist_cur = hist_add_idx;
 
-	return rc < 0 ? rc : len;
+	return len;
 }
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
