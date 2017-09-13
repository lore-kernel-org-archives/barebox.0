Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ds6iH-0007Yo-Mu
 for barebox@lists.infradead.org; Wed, 13 Sep 2017 12:24:22 +0000
From: Enrico Jorns <ejo@pengutronix.de>
Date: Wed, 13 Sep 2017 14:23:28 +0200
Message-Id: <20170913122332.17585-2-ejo@pengutronix.de>
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
Subject: [PATCH 1/5] commands: nv: argc cannot be < 1
To: barebox@lists.infradead.org
Cc: Enrico Jorns <ejo@pengutronix.de>

argc == 1 will only contain the name of the program itself which must be
present when invoking nv command code.

Signed-off-by: Enrico Jorns <ejo@pengutronix.de>
---
 commands/nv.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/commands/nv.c b/commands/nv.c
index 37cdb96647..eb396bfd9b 100644
--- a/commands/nv.c
+++ b/commands/nv.c
@@ -55,9 +55,6 @@ static int do_nv(int argc, char *argv[])
 	argc -= optind;
 	argv += optind;
 
-	if (argc < 1)
-		return COMMAND_ERROR_USAGE;
-
 	for (i = 0; i < argc; i++) {
 		value = strchr(argv[0], '=');
 		if (value) {
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
