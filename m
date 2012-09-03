Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo2.mail-out.ovh.net ([46.105.63.121]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T8TZh-0001uO-4W
 for barebox@lists.infradead.org; Mon, 03 Sep 2012 10:08:16 +0000
Received: from mail21.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 14CB5DC3833
 for <barebox@lists.infradead.org>; Mon,  3 Sep 2012 12:13:25 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon,  3 Sep 2012 12:08:12 +0200
Message-Id: <1346666898-19347-12-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1346666898-19347-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120903100409.GC24296@game.jcrosoft.org>
 <1346666898-19347-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 12/18] ls: add symlink support to -l
To: barebox@lists.infradead.org

barebox:/ ls -l /env/init.d/
drwxrwxrwx          0 .
drwxrwxrwx          0 ..
lrwxrwxrwx         11 net -> ../boot/net

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/ls.c |   31 +++++++++++++++++++++----------
 1 file changed, 21 insertions(+), 10 deletions(-)

diff --git a/commands/ls.c b/commands/ls.c
index fbcbadc..d36ef57 100644
--- a/commands/ls.c
+++ b/commands/ls.c
@@ -29,13 +29,24 @@
 #include <getopt.h>
 #include <stringlist.h>
 
-static void ls_one(const char *path, struct stat *s)
+static void ls_one(const char *path, const char* fullname, struct stat *s)
 {
 	char modestr[11];
 	unsigned int namelen = strlen(path);
 
 	mkmodestr(s->st_mode, modestr);
-	printf("%s %10llu %*.*s\n", modestr, s->st_size, namelen, namelen, path);
+	printf("%s %10llu %*.*s", modestr, s->st_size, namelen, namelen, path);
+
+	if (S_ISLNK(s->st_mode)) {
+		char realname[PATH_MAX];
+
+		memset(realname, 0, PATH_MAX);
+
+		if (readlink(fullname, realname, PATH_MAX - 1) >= 0)
+			printf(" -> %s", realname);
+	}
+
+	puts("\n");
 }
 
 int ls(const char *path, ulong flags)
@@ -48,14 +59,14 @@ int ls(const char *path, ulong flags)
 
 	string_list_init(&sl);
 
-	if (stat(path, &s))
+	if (lstat(path, &s))
 		return -errno;
 
 	if (flags & LS_SHOWARG && s.st_mode & S_IFDIR)
 		printf("%s:\n", path);
 
 	if (!(s.st_mode & S_IFDIR)) {
-		ls_one(path, &s);
+		ls_one(path, path, &s);
 		return 0;
 	}
 
@@ -65,12 +76,12 @@ int ls(const char *path, ulong flags)
 
 	while ((d = readdir(dir))) {
 		sprintf(tmp, "%s/%s", path, d->d_name);
-		if (stat(tmp, &s))
+		if (lstat(tmp, &s))
 			goto out;
 		if (flags & LS_COLUMN)
 			string_list_add_sorted(&sl, d->d_name);
 		else
-			ls_one(d->d_name, &s);
+			ls_one(d->d_name, tmp, &s);
 	}
 
 	closedir(dir);
@@ -97,7 +108,7 @@ int ls(const char *path, ulong flags)
 			continue;
 		sprintf(tmp, "%s/%s", path, d->d_name);
 
-		if (stat(tmp, &s))
+		if (lstat(tmp, &s))
 			goto out;
 		if (s.st_mode & S_IFDIR) {
 			char *norm = normalise_path(tmp);
@@ -146,7 +157,7 @@ static int do_ls(int argc, char *argv[])
 
 	/* first pass: all files */
 	while (o < argc) {
-		ret = stat(argv[o], &s);
+		ret = lstat(argv[o], &s);
 		if (ret) {
 			printf("%s: %s: %s\n", argv[0],
 					argv[o], errno_str());
@@ -158,7 +169,7 @@ static int do_ls(int argc, char *argv[])
 			if (flags & LS_COLUMN)
 				string_list_add_sorted(&sl, argv[o]);
 			else
-				ls_one(argv[o], &s);
+				ls_one(argv[o], argv[o], &s);
 		}
 
 		o++;
@@ -173,7 +184,7 @@ static int do_ls(int argc, char *argv[])
 
 	/* second pass: directories */
 	while (o < argc) {
-		ret = stat(argv[o], &s);
+		ret = lstat(argv[o], &s);
 		if (ret) {
 			o++;
 			continue;
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
