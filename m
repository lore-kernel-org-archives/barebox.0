Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e9nRp-00047I-Ka
 for barebox@lists.infradead.org; Wed, 01 Nov 2017 07:28:29 +0000
From: Enrico Jorns <ejo@pengutronix.de>
Date: Wed,  1 Nov 2017 08:27:05 +0100
Message-Id: <20171101072710.31518-2-ejo@pengutronix.de>
In-Reply-To: <20171101072710.31518-1-ejo@pengutronix.de>
References: <20171101072710.31518-1-ejo@pengutronix.de>
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
Subject: [PATCH 1/6] commands: nv: fail with verbose message if invoked
 without args
To: barebox@lists.infradead.org
Cc: Enrico Jorns <ejo@pengutronix.de>

Signed-off-by: Enrico Jorns <ejo@pengutronix.de>
---
 commands/nv.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/commands/nv.c b/commands/nv.c
index 37cdb96647..798b1eaa04 100644
--- a/commands/nv.c
+++ b/commands/nv.c
@@ -55,8 +55,10 @@ static int do_nv(int argc, char *argv[])
 	argc -= optind;
 	argv += optind;
 
-	if (argc < 1)
+	if (argc < 1) {
+		printf("Invalid usage: Missing argument");
 		return COMMAND_ERROR_USAGE;
+	}
 
 	for (i = 0; i < argc; i++) {
 		value = strchr(argv[0], '=');
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
