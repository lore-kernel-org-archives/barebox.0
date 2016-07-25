Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bRbK6-0002Sc-NH
 for barebox@lists.infradead.org; Mon, 25 Jul 2016 08:33:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 25 Jul 2016 10:32:51 +0200
Message-Id: <1469435571-31279-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] getopt: Add support for '--' to stop option parsing
To: Barebox List <barebox@lists.infradead.org>

In some cases when commands have optional arguments it is necessary
to explicitly stop option parsing after the last nonpositonal option.
Add support for '--' to accomplish this as done in getopt(3) aswell.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/getopt.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/lib/getopt.c b/lib/getopt.c
index fd12a88..847830c 100644
--- a/lib/getopt.c
+++ b/lib/getopt.c
@@ -64,6 +64,11 @@ int getopt(int argc, char *argv[], const char *optstring)
 	while(1) {
 		debug("optindex: %d nonopts: %d optind: %d\n", optindex, nonopts, optind);
 
+		if (optindex == 1 && argv[optind] && !strcmp(argv[optind], "--")) {
+			optind++;
+			return -1;
+		}
+
 		/* first put nonopts to the end */
 		while (optind + nonopts < argc && *argv[optind] != '-') {
 			int i;
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
