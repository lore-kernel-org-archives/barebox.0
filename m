Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VgEOe-00061C-RP
 for barebox@lists.infradead.org; Tue, 12 Nov 2013 13:52:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 12 Nov 2013 14:52:13 +0100
Message-Id: <1384264339-15986-5-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/10] hush: refactor get_user_input()
To: barebox@lists.infradead.org

Save indentation level by returning early.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/hush.c | 32 +++++++++++++++++---------------
 1 file changed, 17 insertions(+), 15 deletions(-)

diff --git a/common/hush.c b/common/hush.c
index 0f1a9b9..7a077ba 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -441,25 +441,27 @@ static void get_user_input(struct in_str *i)
 	if (i->promptmode == 1) {
 		strcpy(the_command,console_buffer);
 		i->p = the_command;
-	} else {
-		if (console_buffer[0] != '\n') {
-			if (strlen(the_command) + strlen(console_buffer)
-			    < CONFIG_CBSIZE) {
-				n = strlen(the_command);
-				the_command[n - 1] = ' ';
-				strcpy(&the_command[n], console_buffer);
-			}
-			else {
-				the_command[0] = '\n';
-				the_command[1] = '\0';
-			}
-		}
-		if (i->__promptme == 0) {
+		return;
+	}
+
+	if (console_buffer[0] != '\n') {
+		if (strlen(the_command) + strlen(console_buffer)
+		    < CONFIG_CBSIZE) {
+			n = strlen(the_command);
+			the_command[n - 1] = ' ';
+			strcpy(&the_command[n], console_buffer);
+		} else {
 			the_command[0] = '\n';
 			the_command[1] = '\0';
 		}
-		i->p = console_buffer;
 	}
+
+	if (i->__promptme == 0) {
+		the_command[0] = '\n';
+		the_command[1] = '\0';
+	}
+
+	i->p = console_buffer;
 }
 
 /* This is the magic location that prints prompts
-- 
1.8.4.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
