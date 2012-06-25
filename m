Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SjDBj-0002KT-40
 for barebox@lists.infradead.org; Mon, 25 Jun 2012 17:34:59 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 25 Jun 2012 19:34:51 +0200
Message-Id: <1340645691-14954-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] remove dead rarpboot command
To: barebox@lists.infradead.org

This code is unused, remove it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/net.c |   29 -----------------------------
 1 file changed, 29 deletions(-)

diff --git a/commands/net.c b/commands/net.c
index c5c6373..665433f 100644
--- a/commands/net.c
+++ b/commands/net.c
@@ -35,35 +35,6 @@
 #include <errno.h>
 #include <libbb.h>
 
-#ifdef CONFIG_NET_RARP
-extern void RarpRequest(void);
-
-static int do_rarpb(int argc, char *argv[])
-{
-	int size;
-
-	if (NetLoopInit(RARP) < 0)
-		return 1;
-
-	NetOurIP = 0;
-	RarpRequest();		/* Basically same as BOOTP */
-
-	if ((size = NetLoop()) < 0)
-		return 1;
-
-	/* NetLoop ok, update environment */
-	netboot_update_env();
-
-	return 0;
-}
-
-BAREBOX_CMD_START(rarpboot)
-	.cmd		= do_rarpb,
-	.usage		= "boot image via network using rarp/tftp protocol",
-	BAREBOX_CMD_HELP("[loadAddress] [bootfilename]\n")
-BAREBOX_CMD_END
-#endif /* CONFIG_NET_RARP */
-
 static int do_ethact(int argc, char *argv[])
 {
 	struct eth_device *edev;
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
