Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dIYAM-0007qS-Sn
 for barebox@lists.infradead.org; Wed, 07 Jun 2017 10:26:20 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.84_2)
 (envelope-from <jbe@pengutronix.de>) id 1dIY9y-0007Q8-Sb
 for barebox@lists.infradead.org; Wed, 07 Jun 2017 12:25:54 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <jbe@pengutronix.de>) id 1dIY9x-0005jq-RB
 for barebox@lists.infradead.org; Wed, 07 Jun 2017 12:25:53 +0200
From: Juergen Borleis <jbe@pengutronix.de>
Date: Wed,  7 Jun 2017 12:25:53 +0200
Message-Id: <20170607102553.21992-1-jbe@pengutronix.de>
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
Subject: [PATCH] state: add missing help texts
To: barebox@lists.infradead.org

Commits 3a5ddf3 and 0c74367 add more options to the command but do not
extend the help texts.

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 commands/state.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/commands/state.c b/commands/state.c
index c57a906ff..a5c3ba790 100644
--- a/commands/state.c
+++ b/commands/state.c
@@ -72,12 +72,16 @@ BAREBOX_CMD_HELP_TEXT("Usage: state [OPTIONS] [STATENAME]")
 BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("options:")
 BAREBOX_CMD_HELP_OPT ("-s", "save state")
+BAREBOX_CMD_HELP_OPT ("-l", "load state")
+BAREBOX_CMD_HELP_OPT ("-n", "no authentication")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(state)
 	.cmd		= do_state,
-	BAREBOX_CMD_DESC("save state information")
+	BAREBOX_CMD_DESC("load or save state information")
 	BAREBOX_CMD_OPTS("[-s] [STATENAME]")
+	BAREBOX_CMD_OPTS("[-l] [STATENAME]")
+	BAREBOX_CMD_OPTS("[-n]")
 	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
 	BAREBOX_CMD_HELP(cmd_state_help)
 BAREBOX_CMD_END
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
