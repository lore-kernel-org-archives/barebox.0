Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 20.mo4.mail-out.ovh.net ([46.105.33.73]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SOq0Z-00044a-7j
 for barebox@lists.infradead.org; Mon, 30 Apr 2012 12:47:16 +0000
Received: from mail97.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id F401D1050554
 for <barebox@lists.infradead.org>; Mon, 30 Apr 2012 14:48:32 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 30 Apr 2012 14:26:04 +0200
Message-Id: <1335788764-30430-11-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120430122334.GE2992@game.jcrosoft.org>
References: <20120430122334.GE2992@game.jcrosoft.org>
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
Subject: [PATCH 11/11] complete: add executable file support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/complete.c |   30 +++++++++++++++++++-----------
 1 files changed, 19 insertions(+), 11 deletions(-)

diff --git a/common/complete.c b/common/complete.c
index 45c6908..0b03d7c 100644
--- a/common/complete.c
+++ b/common/complete.c
@@ -26,7 +26,7 @@
 #include <command.h>
 #include <environment.h>
 
-static int file_complete(struct string_list *sl, char *instr)
+static int file_complete(struct string_list *sl, char *instr, int exec)
 {
 	char *path = strdup(instr);
 	struct stat s;
@@ -46,15 +46,20 @@ static int file_complete(struct string_list *sl, char *instr)
 		if (!strcmp(d->d_name, ".") || !strcmp(d->d_name, ".."))
 			continue;
 
-		if (!strncmp(base, d->d_name, strlen(base))) {
-			strcpy(tmp, instr);
-			strcat(tmp, d->d_name + strlen(base));
-			if (!stat(tmp, &s) && S_ISDIR(s.st_mode))
-				strcat(tmp, "/");
-			else
-				strcat(tmp, " ");
-			string_list_add_sorted(sl, tmp);
+		if (strncmp(base, d->d_name, strlen(base)))
+			continue;
+
+		strcpy(tmp, instr);
+		strcat(tmp, d->d_name + strlen(base));
+		if (!stat(tmp, &s) && S_ISDIR(s.st_mode)) {
+			strcat(tmp, "/");
+		} else {
+			if (exec && !S_ISREG(s.st_mode))
+				continue;
+			strcat(tmp, " ");
 		}
+
+		string_list_add_sorted(sl, tmp);
 	}
 
 	closedir(dir);
@@ -316,9 +321,12 @@ int complete(char *instr, char **outstr)
 	instr = cmd_complete_lookup(&sl, t);
 	if (!instr) {
 		instr = t;
-		if ((t = strrchr(t, ' '))) {
+		if (t && (t[0] == '/' || !strncmp(t, "./", 2))) {
+			file_complete(&sl, t, 1);
+			instr = t;
+		} else if ((t = strrchr(t, ' '))) {
 			t++;
-			file_complete(&sl, t);
+			file_complete(&sl, t, 0);
 			instr = t;
 		} else {
 			command_complete(&sl, instr);
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
