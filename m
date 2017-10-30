Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1e97PJ-0002Q3-Ns
 for barebox@lists.infradead.org; Mon, 30 Oct 2017 10:35:08 +0000
From: Enrico Jorns <ejo@pengutronix.de>
Date: Mon, 30 Oct 2017 11:34:17 +0100
Message-Id: <20171030103421.15353-2-ejo@pengutronix.de>
In-Reply-To: <20171030103421.15353-1-ejo@pengutronix.de>
References: <20171030103421.15353-1-ejo@pengutronix.de>
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
Subject: [PATCH 1/5] commands: nv: fail with verbose message if invoked
 without args
To: barebox@lists.infradead.org
Cc: Enrico Jorns <ejo@pengutronix.de>

Signed-off-by: Enrico Jorns <ejo@pengutronix.de>
---
 commands/nv.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/commands/nv.c b/commands/nv.c
index 37cdb96647..1c5514dd32 100644
--- a/commands/nv.c
+++ b/commands/nv.c
@@ -56,6 +56,7 @@ static int do_nv(int argc, char *argv[])
 	argv += optind;
 
 	if (argc < 1)
+		printf("Invalid usage: Missing argument");
 		return COMMAND_ERROR_USAGE;
 
 	for (i = 0; i < argc; i++) {
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
