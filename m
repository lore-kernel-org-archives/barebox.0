Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-f44.google.com ([74.125.83.44])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U3Z3i-0006TF-U7
 for barebox@lists.infradead.org; Thu, 07 Feb 2013 21:31:08 +0000
Received: by mail-ee0-f44.google.com with SMTP id l10so1685005eei.31
 for <barebox@lists.infradead.org>; Thu, 07 Feb 2013 13:31:05 -0800 (PST)
From: Alexander Aring <alex.aring@gmail.com>
Date: Thu,  7 Feb 2013 22:31:39 +0100
Message-Id: <1360272701-877-3-git-send-email-alex.aring@gmail.com>
In-Reply-To: <1360272701-877-1-git-send-email-alex.aring@gmail.com>
References: <1360272701-877-1-git-send-email-alex.aring@gmail.com>
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
Subject: [PATCH 2/4] getopt: change optstring to const char*
To: barebox@lists.infradead.org

Change getopt optstring parameter type to const char *.
Also change type to const char * of tmp variable which
pointed to optstring. This will only handle readonly.

Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
 include/getopt.h | 2 +-
 lib/getopt.c     | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/include/getopt.h b/include/getopt.h
index f23175f..4f48ba8 100644
--- a/include/getopt.h
+++ b/include/getopt.h
@@ -35,7 +35,7 @@ extern char *optarg;
  * - options can be mixed with nonoptions (like ls /bin -R)
  */
 
-int getopt(int argc, char *argv[], char *optstring);
+int getopt(int argc, char *argv[], const char *optstring);
 
 struct getopt_context {
 	int opterr;
diff --git a/lib/getopt.c b/lib/getopt.c
index ead9150..fd12a88 100644
--- a/lib/getopt.c
+++ b/lib/getopt.c
@@ -56,10 +56,10 @@ void getopt_context_restore(struct getopt_context *gc)
 }
 EXPORT_SYMBOL(getopt_context_restore);
 
-int getopt(int argc, char *argv[], char *optstring)
+int getopt(int argc, char *argv[], const char *optstring)
 {
 	char curopt;   /* current option character */
-	char *curoptp; /* pointer to the current option in optstring */
+	const char *curoptp; /* pointer to the current option in optstring */
 
 	while(1) {
 		debug("optindex: %d nonopts: %d optind: %d\n", optindex, nonopts, optind);
-- 
1.8.1.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
