Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ds6iH-0007Yt-Md
 for barebox@lists.infradead.org; Wed, 13 Sep 2017 12:24:26 +0000
From: Enrico Jorns <ejo@pengutronix.de>
Date: Wed, 13 Sep 2017 14:23:31 +0200
Message-Id: <20170913122332.17585-5-ejo@pengutronix.de>
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
Subject: [PATCH 4/5] commands: nv: fail if required var arguments are missing
To: barebox@lists.infradead.org
Cc: Enrico Jorns <ejo@pengutronix.de>

Signed-off-by: Enrico Jorns <ejo@pengutronix.de>
---
 commands/nv.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/commands/nv.c b/commands/nv.c
index d391f9e6b4..bb13ed1db0 100644
--- a/commands/nv.c
+++ b/commands/nv.c
@@ -56,6 +56,11 @@ static int do_nv(int argc, char *argv[])
 	argc -= optind;
 	argv += optind;
 
+	if (argc == 0) {
+		printf("Invalid usage: Missing argument");
+		return COMMAND_ERROR_USAGE;
+	}
+
 	for (i = 0; i < argc; i++) {
 		int ret;
 		value = strchr(argv[0], '=');
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
