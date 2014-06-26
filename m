Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X05PW-0006po-Hj
 for barebox@lists.infradead.org; Thu, 26 Jun 2014 08:52:07 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 26 Jun 2014 10:51:33 +0200
Message-Id: <1403772698-10330-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1403772698-10330-1-git-send-email-s.hauer@pengutronix.de>
References: <1403772698-10330-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/7] automount: fix description typo
To: barebox@lists.infradead.org

From: Jan Luebbe <jlu@pengutronix.de>

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 commands/automount.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/automount.c b/commands/automount.c
index 0afe4d2..a29f286 100644
--- a/commands/automount.c
+++ b/commands/automount.c
@@ -65,7 +65,7 @@ BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(automount)
 	.cmd		= do_automount,
-	BAREBOX_CMD_DESC("execute (mount) COMMAND when PATH ist first accessed")
+	BAREBOX_CMD_DESC("execute (mount) COMMAND when PATH is first accessed")
 	BAREBOX_CMD_OPTS("[-ldr] PATH [COMMAND]")
 	BAREBOX_CMD_GROUP(CMD_GRP_PART)
 	BAREBOX_CMD_HELP(cmd_automount_help)
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
