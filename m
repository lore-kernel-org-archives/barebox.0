Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bQZp8-0002hy-5U
 for barebox@lists.infradead.org; Fri, 22 Jul 2016 12:45:02 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 Jul 2016 14:44:32 +0200
Message-Id: <1469191472-14491-19-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1469191472-14491-1-git-send-email-s.hauer@pengutronix.de>
References: <1469191472-14491-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 18/18] boot: Print a message when a boot target string does
 not lead to a boot target
To: Barebox List <barebox@lists.infradead.org>

When doing a 'boot friesel net' one expects a message when 'friesel'
does not give any bootable results and thus 'net' is booted. This patch
adds this message.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/boot.c | 14 ++++++++++----
 1 file changed, 10 insertions(+), 4 deletions(-)

diff --git a/commands/boot.c b/commands/boot.c
index b774ddc..8b3b407 100644
--- a/commands/boot.c
+++ b/commands/boot.c
@@ -59,8 +59,11 @@ static int do_boot(int argc, char *argv[])
 	entries = bootentries_alloc();
 
 	if (optind < argc) {
-		for (i = optind; i < argc; i++)
-			bootentry_create_from_name(entries, argv[i]);
+		for (i = optind; i < argc; i++) {
+			ret = bootentry_create_from_name(entries, argv[i]);
+			if (ret <= 0)
+				printf("Nothing bootable found on '%s'\n", argv[i]);
+	       }
 	} else {
 		const char *def;
 		char *sep, *name;
@@ -71,8 +74,11 @@ static int do_boot(int argc, char *argv[])
 
 		sep = freep = xstrdup(def);
 
-		while ((name = strsep(&sep, " ")) != NULL)
-			bootentry_create_from_name(entries, name);
+		while ((name = strsep(&sep, " ")) != NULL) {
+			ret = bootentry_create_from_name(entries, name);
+			if (ret <= 0)
+				printf("Nothing bootable found on '%s'\n", name);
+		}
 
 		free(freep);
 	}
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
