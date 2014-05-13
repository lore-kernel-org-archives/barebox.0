Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Wk68E-0006xV-6A
 for barebox@lists.infradead.org; Tue, 13 May 2014 06:24:08 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 13 May 2014 08:23:40 +0200
Message-Id: <1399962220-27617-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1399962220-27617-1-git-send-email-s.hauer@pengutronix.de>
References: <1399962220-27617-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] boot: iterate over directories in alphabetical order
To: barebox@lists.infradead.org

When iterating over directories in order to find boot scripts do
this alphabetically to get a predictable order. This can be done
with glob() rather than readdir().

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/boot.c | 26 +++++++++++++-------------
 1 file changed, 13 insertions(+), 13 deletions(-)

diff --git a/commands/boot.c b/commands/boot.c
index 468d473..a23ffb1 100644
--- a/commands/boot.c
+++ b/commands/boot.c
@@ -23,6 +23,7 @@
 #include <malloc.h>
 #include <clock.h>
 #include <boot.h>
+#include <glob.h>
 #include <menu.h>
 #include <fs.h>
 #include <complete.h>
@@ -129,10 +130,10 @@ static int bootscript_create_entry(struct blspec *blspec, const char *name)
 static int bootscript_scan_path(struct blspec *blspec, const char *path)
 {
 	struct stat s;
-	DIR *dir;
-	struct dirent *d;
-	int ret;
+	char *files;
+	int ret, i;
 	int found = 0;
+	glob_t globb;
 
 	ret = stat(path, &s);
 	if (ret)
@@ -145,25 +146,24 @@ static int bootscript_scan_path(struct blspec *blspec, const char *path)
 		return 1;
 	}
 
-	dir = opendir(path);
-	if (!dir)
-		return -errno;
+	files = asprintf("%s/*", path);
+
+	glob(files, 0, NULL, &globb);
 
-	while ((d = readdir(dir))) {
-		char *bootscript_path;
+	for (i = 0; i < globb.gl_pathc; i++) {
+		char *bootscript_path = globb.gl_pathv[i];;
 
-		if (*d->d_name == '.')
+		if (*basename(bootscript_path) == '.')
 			continue;
 
-		bootscript_path = asprintf("%s/%s", path, d->d_name);
 		bootscript_create_entry(blspec, bootscript_path);
 		found++;
-		free(bootscript_path);
 	}
 
-	ret = found;
+	globfree(&globb);
+	free(files);
 
-	closedir(dir);
+	ret = found;
 
 	return ret;
 }
-- 
2.0.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
