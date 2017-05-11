Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d8k89-00047t-IG
 for barebox@lists.infradead.org; Thu, 11 May 2017 09:11:31 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 11 May 2017 11:11:01 +0200
Message-Id: <20170511091101.5821-5-s.hauer@pengutronix.de>
In-Reply-To: <20170511091101.5821-1-s.hauer@pengutronix.de>
References: <20170511091101.5821-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/4] ls: Fix showing links to directories
To: Barebox List <barebox@lists.infradead.org>

With links to directories we have to do some adjustments in the
printout. In ls_one we have to use lstat() because we want to
show informations about the file or link. When determing if it's
a file or directory that we show we have to use stat() instead.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/ls.c | 26 ++++++++++++++++----------
 1 file changed, 16 insertions(+), 10 deletions(-)

diff --git a/commands/ls.c b/commands/ls.c
index 331a4d2015..771477b6e0 100644
--- a/commands/ls.c
+++ b/commands/ls.c
@@ -26,15 +26,21 @@
 #include <getopt.h>
 #include <stringlist.h>
 
-static void ls_one(const char *path, const char* fullname, struct stat *s)
+static void ls_one(const char *path, const char* fullname)
 {
 	char modestr[11];
 	unsigned int namelen = strlen(path);
+	struct stat s;
+	int ret;
+
+	ret = lstat(fullname, &s);
+	if (ret)
+		return;
 
-	mkmodestr(s->st_mode, modestr);
-	printf("%s %14llu %*.*s", modestr, s->st_size, namelen, namelen, path);
+	mkmodestr(s.st_mode, modestr);
+	printf("%s %14llu %*.*s", modestr, s.st_size, namelen, namelen, path);
 
-	if (S_ISLNK(s->st_mode)) {
+	if (S_ISLNK(s.st_mode)) {
 		char realname[PATH_MAX];
 
 		memset(realname, 0, PATH_MAX);
@@ -58,14 +64,14 @@ int ls(const char *path, ulong flags)
 
 	string_list_init(&sl);
 
-	if (lstat(path, &s))
+	if (stat(path, &s))
 		return -errno;
 
 	if (flags & LS_SHOWARG && s.st_mode & S_IFDIR)
 		printf("%s:\n", path);
 
 	if (!(s.st_mode & S_IFDIR)) {
-		ls_one(path, path, &s);
+		ls_one(path, path);
 		return 0;
 	}
 
@@ -89,7 +95,7 @@ int ls(const char *path, ulong flags)
 				continue;
 			}
 
-			ls_one(entry->str, tmp, &s);
+			ls_one(entry->str, tmp);
 		}
 	}
 
@@ -162,7 +168,7 @@ static int do_ls(int argc, char *argv[])
 
 	/* first pass: all files */
 	while (o < argc) {
-		ret = lstat(argv[o], &s);
+		ret = stat(argv[o], &s);
 		if (ret) {
 			printf("%s: %s: %s\n", argv[0],
 					argv[o], errno_str());
@@ -175,7 +181,7 @@ static int do_ls(int argc, char *argv[])
 			if (flags & LS_COLUMN)
 				string_list_add_sorted(&sl, argv[o]);
 			else
-				ls_one(argv[o], argv[o], &s);
+				ls_one(argv[o], argv[o]);
 		}
 
 		o++;
@@ -190,7 +196,7 @@ static int do_ls(int argc, char *argv[])
 
 	/* second pass: directories */
 	while (o < argc) {
-		ret = lstat(argv[o], &s);
+		ret = stat(argv[o], &s);
 		if (ret) {
 			o++;
 			exitcode = COMMAND_ERROR;
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
