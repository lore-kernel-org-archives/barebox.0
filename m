Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from moutng.kundenserver.de ([212.227.126.186])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1UAIam-0007Xj-FT
 for barebox@lists.infradead.org; Tue, 26 Feb 2013 11:21:05 +0000
From: Christian Kapeller <christian.kapeller@cmotion.eu>
Date: Tue, 26 Feb 2013 12:20:29 +0100
Message-Id: <1361877629-10890-1-git-send-email-christian.kapeller@cmotion.eu>
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
Subject: [PATCH] bareboxenv: Return proper exit code on failure.
To: barebox@lists.infradead.org

In case environment loading/saving failed, the calling program
should be informed about that by returning a non zero exit code.

Signed-off-by: Christian Kapeller <christian.kapeller@cmotion.eu>
---
 scripts/bareboxenv.c |   16 ++++++++++++----
 1 file changed, 12 insertions(+), 4 deletions(-)

diff --git a/scripts/bareboxenv.c b/scripts/bareboxenv.c
index 707d63d..3fd1429 100644
--- a/scripts/bareboxenv.c
+++ b/scripts/bareboxenv.c
@@ -138,7 +138,7 @@ void usage(char *prgname)
 int main(int argc, char *argv[])
 {
 	int opt;
-	int save = 0, load = 0, pad = 0, fd;
+	int save = 0, load = 0, pad = 0, err = 0, fd;
 	char *filename = NULL, *dirname = NULL;
 	int verbose = 0;
 
@@ -191,12 +191,20 @@ int main(int argc, char *argv[])
 	if (load) {
 		if (verbose)
 			printf("loading env from file %s to %s\n", filename, dirname);
-		envfs_load(filename, dirname, 0);
+
+		err = envfs_load(filename, dirname, 0);
+
+		if(verbose && err)
+			printf("loading env failed: %d\n", err);
 	}
 	if (save) {
 		if (verbose)
 			printf("saving contents of %s to file %s\n", dirname, filename);
-		envfs_save(filename, dirname);
+
+		err = envfs_save(filename, dirname);
+
+		if(verbose && err)
+			printf("saving env failed: %d\n", err);
 	}
-	exit(0);
+	exit((err)?1:0);
 }
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
