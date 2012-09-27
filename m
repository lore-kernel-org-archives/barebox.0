Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1THHf6-0004lG-BS
 for barebox@lists.infradead.org; Thu, 27 Sep 2012 17:14:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 27 Sep 2012 19:14:00 +0200
Message-Id: <1348766042-18815-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1348766042-18815-1-git-send-email-s.hauer@pengutronix.de>
References: <1348766042-18815-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] scripts/bareboxenv: Only print information if -v is given
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/bareboxenv.c |   15 +++++++++++----
 1 file changed, 11 insertions(+), 4 deletions(-)

diff --git a/scripts/bareboxenv.c b/scripts/bareboxenv.c
index a4aec94..f44a1f8 100644
--- a/scripts/bareboxenv.c
+++ b/scripts/bareboxenv.c
@@ -130,7 +130,8 @@ void usage(char *prgname)
 		"options:\n"
 		"  -s        save (directory -> environment sector)\n"
 		"  -l        load (environment sector -> directory)\n"
-		"  -p <size> pad output file to given size\n",
+		"  -p <size> pad output file to given size\n"
+		"  -v        verbose\n",
 		prgname);
 }
 
@@ -139,8 +140,9 @@ int main(int argc, char *argv[])
 	int opt;
 	int save = 0, load = 0, pad = 0, fd;
 	char *filename = NULL, *dirname = NULL;
+	int verbose = 0;
 
-	while((opt = getopt(argc, argv, "slp:")) != -1) {
+	while((opt = getopt(argc, argv, "slp:v")) != -1) {
 		switch (opt) {
 		case 's':
 			save = 1;
@@ -151,6 +153,9 @@ int main(int argc, char *argv[])
 		case 'p':
 			pad = strtoul(optarg, NULL, 0);
 			break;
+		case 'v':
+			verbose = 1;
+			break;
 		}
 	}
 
@@ -184,11 +189,13 @@ int main(int argc, char *argv[])
 	}
 
 	if (load) {
-		printf("loading env from file %s to %s\n", filename, dirname);
+		if (verbose)
+			printf("loading env from file %s to %s\n", filename, dirname);
 		envfs_load(filename, dirname);
 	}
 	if (save) {
-		printf("saving contents of %s to file %s\n", dirname, filename);
+		if (verbose)
+			printf("saving contents of %s to file %s\n", dirname, filename);
 		envfs_save(filename, dirname);
 	}
 	exit(0);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
