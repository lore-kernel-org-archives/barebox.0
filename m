Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WQIIE-0006fX-Aw
 for barebox@lists.infradead.org; Wed, 19 Mar 2014 15:20:35 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 19 Mar 2014 16:20:10 +0100
Message-Id: <1395242411-10247-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] boot command: honour global.boot.default also for -l and
 -m
To: barebox@lists.infradead.org

The boot command is expected to work on bootsources from the commandline
if given, on global.boot.default otherwise. Fix this behaviour for the
-m and -l options also.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/boot.c | 79 +++++++++++++++++++++++++++++++++++----------------------
 1 file changed, 48 insertions(+), 31 deletions(-)

diff --git a/commands/boot.c b/commands/boot.c
index bb8d07f..9c7aa21 100644
--- a/commands/boot.c
+++ b/commands/boot.c
@@ -333,9 +333,11 @@ static int boot(const char *name)
 
 static int do_boot(int argc, char *argv[])
 {
-	const char *sources = NULL;
-	char *source, *freep;
+	char *freep = NULL;
 	int opt, ret = 0, do_list = 0, do_menu = 0;
+	char **sources;
+	int num_sources;
+	int i;
 
 	verbose = 0;
 	dryrun = 0;
@@ -361,47 +363,62 @@ static int do_boot(int argc, char *argv[])
 		}
 	}
 
-	if (do_list) {
-		bootsources_list(&argv[optind], argc - optind);
-		return 0;
-	}
+	if (optind < argc) {
+		num_sources = argc - optind;
+		sources = xmemdup(&argv[optind], sizeof(char *) * num_sources);
+	} else {
+		const char *def;
+		char *sep;
 
-	if (do_menu) {
-		bootsources_menu(&argv[optind], argc - optind);
-		return 0;
-	}
+		def = getenv("global.boot.default");
+		if (!def)
+			return 0;
 
-	if (optind < argc) {
-		while (optind < argc) {
-			source = argv[optind];
-			optind++;
-			ret = boot(source);
-			if (!ret)
+		sep = freep = xstrdup(def);
+
+		num_sources = 0;
+
+		while (1) {
+			num_sources++;
+
+			sep = strchr(sep, ' ');
+			if (!sep)
 				break;
+			sep++;
+		}
+
+		sources = xmalloc(sizeof(char *) * num_sources);
+
+		sep = freep;
+
+		for (i = 0; i < num_sources; i++) {
+			sources[i] = sep;
+			sep = strchr(sep, ' ');
+			if (sep)
+				*sep = 0;
+			sep++;
 		}
-		return ret;
 	}
 
-	sources = getenv("global.boot.default");
-	if (!sources)
-		return 0;
+	if (do_list) {
+		bootsources_list(sources, num_sources);
+		goto out;
+	}
 
-	freep = source = xstrdup(sources);
+	if (do_menu) {
+		bootsources_menu(sources, num_sources);
+		goto out;
+	}
 
-	while (1) {
-		char *sep = strchr(source, ' ');
-		if (sep)
-			*sep = 0;
-		ret = boot(source);
+	for (i = 0; i < num_sources; i++) {
+		ret = boot(sources[i]);
 		if (!ret)
 			break;
-
-		if (sep)
-			source = sep + 1;
-		else
-			break;
+		goto out;
 	}
 
+out:
+	free(sources);
 	free(freep);
 
 	return ret;
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
