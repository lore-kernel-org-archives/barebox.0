Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k0k0u-0000rG-3M
 for barebox@lists.infradead.org; Wed, 29 Jul 2020 11:12:48 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Wed, 29 Jul 2020 13:12:40 +0200
Message-Id: <20200729111240.24702-1-mkl@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] scripts/rsatoc: fix printing of error message,
 if environment variable doen't contain a path
To: barebox@lists.infradead.org
Cc: lst@pengutronix.de, sha@pengutronix.de

Fixes: 128ad3cbe043 ("scripts: Add rsatoc tool")
Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 scripts/rsatoc.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/scripts/rsatoc.c b/scripts/rsatoc.c
index 647380214092..9410f33a654f 100644
--- a/scripts/rsatoc.c
+++ b/scripts/rsatoc.c
@@ -471,10 +471,12 @@ int main(int argc, char *argv[])
 		path++;
 
 		if (!strncmp(path, "__ENV__", 7)) {
-			path = getenv(path + 7);
+			const char *orig_path = path;
+			
+			path = getenv(orig_path + 7);
 			if (!path) {
 				fprintf(stderr, "%s doesn't contain a path\n",
-					path + 7);
+					orig_path + 7);
 				exit(1);
 			}
 		}
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
