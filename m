Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jhR8o-0004vX-Gm
 for barebox@lists.infradead.org; Sat, 06 Jun 2020 05:13:11 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Sat,  6 Jun 2020 07:13:04 +0200
Message-Id: <20200606051304.14547-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v1] startup: allow to abort dryrun just before starting the OS
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

The dryrun in this function is used two times:
- with "Would run %s\n" and return
- to store dryrun for later use

The second one makes no sense since the first one will abort execution.
Since it is needed for debugging any way, it is better to allow to abort
later, just before starting the OS.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 common/boot.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/common/boot.c b/common/boot.c
index f546fce62c..8969ca51ad 100644
--- a/common/boot.c
+++ b/common/boot.c
@@ -87,10 +87,8 @@ static int bootscript_boot(struct bootentry *entry, int verbose, int dryrun)
 
 	struct bootm_data data = {};
 
-	if (dryrun) {
-		printf("Would run %s\n", bs->scriptpath);
-		return 0;
-	}
+	if (verbose)
+		printf("Run %s\n", bs->scriptpath);
 
 	globalvar_add_simple("linux.bootargs.dyn.ip", NULL);
 	globalvar_add_simple("linux.bootargs.dyn.root", NULL);
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
