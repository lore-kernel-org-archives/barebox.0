Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVWPg-0004Qm-Rh
 for barebox@lists.infradead.org; Fri, 15 Nov 2019 07:53:07 +0000
Received: from geraet.fritz.box (48-248-142-46.pool.kielnet.net
 [46.142.248.48]) (Authenticated sender: ahmad@a3f.at)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 8D5D21C000C
 for <barebox@lists.infradead.org>; Fri, 15 Nov 2019 07:53:02 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Fri, 15 Nov 2019 08:52:54 +0100
Message-Id: <20191115075257.24079-2-ahmad@a3f.at>
In-Reply-To: <20191115075257.24079-1-ahmad@a3f.at>
References: <20191115075257.24079-1-ahmad@a3f.at>
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
Subject: [PATCH 2/5] ARM: psci: properly wire in command help
To: barebox@lists.infradead.org

This was supposed to happen in 9efa1f8b ("ARM: psci: wire in smc command
help") along with some other changes. After rebases, the other changes
remained but this one was lost.. Do this right this time and specify the
appropriate BAREBOX_CMD_HELP.

Fixes: 9efa1f8b ("ARM: psci: wire in smc command help")
Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 commands/smc.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/commands/smc.c b/commands/smc.c
index 2a00e1586790..67ca4ee9022f 100644
--- a/commands/smc.c
+++ b/commands/smc.c
@@ -103,5 +103,6 @@ BAREBOX_CMD_HELP_END
 BAREBOX_CMD_START(smc)
 	.cmd = do_smc,
 	BAREBOX_CMD_DESC("secure monitor test command")
+	BAREBOX_CMD_HELP(cmd_smc_help)
 	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
 BAREBOX_CMD_END
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
