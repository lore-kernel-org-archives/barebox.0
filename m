Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f3Ggn-00021j-Qp
 for barebox@lists.infradead.org; Tue, 03 Apr 2018 07:49:11 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  3 Apr 2018 09:48:43 +0200
Message-Id: <20180403074851.5411-12-s.hauer@pengutronix.de>
In-Reply-To: <20180403074851.5411-1-s.hauer@pengutronix.de>
References: <20180403074851.5411-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 11/19] loadenv: Do not depend on normalise_path()
To: Barebox List <barebox@lists.infradead.org>

normalise_path() will go away, so do without it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/loadenv.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/commands/loadenv.c b/commands/loadenv.c
index 44e96c3b60..6469affadb 100644
--- a/commands/loadenv.c
+++ b/commands/loadenv.c
@@ -62,20 +62,16 @@ static int do_loadenv(int argc, char *argv[])
 	if (argc - optind < 1) {
 		filename = default_environment_path_get();
 	} else {
-		char *str = normalise_path(argv[optind]);
-
 		/*
 		 * /dev/defaultenv use to contain the defaultenvironment.
 		 * we do not have this file anymore, but maintain compatibility
 		 * to the 'loadenv -s /dev/defaultenv' command to restore the
 		 * default environment for some time.
 		 */
-		if (!strcmp(str, "/dev/defaultenv"))
+		if (!strcmp(argv[optind], "/dev/defaultenv"))
 			defaultenv = 1;
 		else
 			filename = argv[optind];
-
-		free(str);
 	}
 
 	if (scrub) {
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
