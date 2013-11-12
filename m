Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VgEOZ-00061B-WC
 for barebox@lists.infradead.org; Tue, 12 Nov 2013 13:52:46 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 12 Nov 2013 14:52:11 +0100
Message-Id: <1384264339-15986-3-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/10] hush: refactor readline call
To: barebox@lists.infradead.org

Don't call readline in if/else, instead setup a variable and call
it once.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/hush.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/common/hush.c b/common/hush.c
index 5969127..0f1a9b9 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -420,15 +420,16 @@ static void get_user_input(struct in_str *i)
 {
 	int n;
 	static char the_command[CONFIG_CBSIZE];
+	char *prompt;
 
 	i->__promptme = 1;
 
-	if (i->promptmode == 1) {
-		n = readline(getprompt(), console_buffer, CONFIG_CBSIZE);
-	} else {
-		n = readline(CONFIG_PROMPT_HUSH_PS2, console_buffer, CONFIG_CBSIZE);
-	}
+	if (i->promptmode == 1)
+		prompt = getprompt();
+	else
+		prompt = CONFIG_PROMPT_HUSH_PS2;
 
+	n = readline(prompt, console_buffer, CONFIG_CBSIZE);
 	if (n == -1 ) {
 		i->__promptme = 0;
 		n = 0;
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
