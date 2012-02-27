Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1S1w6T-0004Dz-H0
 for barebox@lists.infradead.org; Mon, 27 Feb 2012 08:38:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 27 Feb 2012 09:38:34 +0100
Message-Id: <1330331914-9806-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] getopt: turn commented out printf into debug()
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/getopt.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/lib/getopt.c b/lib/getopt.c
index 64d6ac1..5c35ee1 100644
--- a/lib/getopt.c
+++ b/lib/getopt.c
@@ -47,7 +47,7 @@ int getopt(int argc, char *argv[], char *optstring)
 	char *curoptp; /* pointer to the current option in optstring */
 
 	while(1) {
-//		printf("optindex: %d nonopts: %d optind: %d\n", optindex, nonopts, optind);
+		debug("optindex: %d nonopts: %d optind: %d\n", optindex, nonopts, optind);
 
 		/* first put nonopts to the end */
 		while (optind + nonopts < argc && *argv[optind] != '-') {
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
