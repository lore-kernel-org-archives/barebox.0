Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 20.mo1.mail-out.ovh.net ([188.165.45.168])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cjp5f-0000gZ-K7
 for barebox@lists.infradead.org; Fri, 03 Mar 2017 15:25:57 +0000
Received: from player691.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo1.mail-out.ovh.net (Postfix) with ESMTP id AC67954893
 for <barebox@lists.infradead.org>; Fri,  3 Mar 2017 16:25:32 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri,  3 Mar 2017 16:31:36 +0100
Message-Id: <1488555097-21189-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20170303152759.GF4120@mail.ovh.net>
References: <20170303152759.GF4120@mail.ovh.net>
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
Subject: [PATCH 1/2] ls: allow to list a symlink ending with '/' as a dir
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/ls.c | 41 +++++++++++++++++++++++++++++++++++------
 1 file changed, 35 insertions(+), 6 deletions(-)

diff --git a/commands/ls.c b/commands/ls.c
index 331a4d201..3bd5e3ff8 100644
--- a/commands/ls.c
+++ b/commands/ls.c
@@ -64,6 +64,16 @@ int ls(const char *path, ulong flags)
 	if (flags & LS_SHOWARG && s.st_mode & S_IFDIR)
 		printf("%s:\n", path);
 
+	if (S_ISLNK(s.st_mode)) {
+		int len = strlen(path);
+			
+		if (path[len - 1] != '/') {
+			ls_one(path, path, &s);
+			return 0;
+		}
+		s.st_mode |= S_IFDIR;
+	}
+
 	if (!(s.st_mode & S_IFDIR)) {
 		ls_one(path, path, &s);
 		return 0;
@@ -171,13 +181,25 @@ static int do_ls(int argc, char *argv[])
 			continue;
 		}
 
-		if (!(s.st_mode & S_IFDIR)) {
-			if (flags & LS_COLUMN)
-				string_list_add_sorted(&sl, argv[o]);
-			else
-				ls_one(argv[o], argv[o], &s);
+		if (s.st_mode & S_IFDIR) {
+			o++;
+			continue;
 		}
 
+		if (s.st_mode & S_IFLNK) {
+			int len = strlen(argv[o]);
+			
+			if (argv[o][len - 1] == '/') {
+			    o++;
+			    continue;
+			}
+		}
+
+		if (flags & LS_COLUMN)
+			string_list_add_sorted(&sl, argv[o]);
+		else
+			ls_one(argv[o], argv[o], &s);
+
 		o++;
 	}
 
@@ -197,7 +219,14 @@ static int do_ls(int argc, char *argv[])
 			continue;
 		}
 
-		if (s.st_mode & S_IFDIR) {
+		if (s.st_mode & S_IFDIR || s.st_mode & S_IFLNK) {
+			int len = strlen(argv[o]);
+			
+			if (s.st_mode & S_IFLNK && argv[o][len - 1] != '/') {
+				o++;
+				continue;
+			}
+
 			ret = ls(argv[o], flags);
 			if (ret) {
 				perror("ls");
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
