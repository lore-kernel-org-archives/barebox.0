Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ds6iH-0007Yq-Lm
 for barebox@lists.infradead.org; Wed, 13 Sep 2017 12:24:20 +0000
From: Enrico Jorns <ejo@pengutronix.de>
Date: Wed, 13 Sep 2017 14:23:29 +0200
Message-Id: <20170913122332.17585-3-ejo@pengutronix.de>
In-Reply-To: <20170913122332.17585-1-ejo@pengutronix.de>
References: <20170913122332.17585-1-ejo@pengutronix.de>
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
Subject: [PATCH 2/5] commands: nv: call nvvar_print() only if no argument is
 given
To: barebox@lists.infradead.org
Cc: Enrico Jorns <ejo@pengutronix.de>

Printing the nv variables (before performing any modification!) is useless
and irritating.

Signed-off-by: Enrico Jorns <ejo@pengutronix.de>
---
 commands/nv.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/commands/nv.c b/commands/nv.c
index eb396bfd9b..b141198a93 100644
--- a/commands/nv.c
+++ b/commands/nv.c
@@ -44,14 +44,15 @@ static int do_nv(int argc, char *argv[])
 		}
 	}
 
-	if (do_save)
-		return nvvar_save();
-
-	if (argc == optind) {
+	if (argc == 1) {
 		nvvar_print();
 		return 0;
 	}
 
+	if (do_save) {
+		return nvvar_save();
+	}
+
 	argc -= optind;
 	argv += optind;
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
