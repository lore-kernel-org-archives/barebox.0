Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dhxQ4-0008Fa-9s
 for barebox@lists.infradead.org; Wed, 16 Aug 2017 12:28:07 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.84_2)
 (envelope-from <jbe@pengutronix.de>) id 1dhxPi-0003JS-7R
 for barebox@lists.infradead.org; Wed, 16 Aug 2017 14:27:10 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <jbe@pengutronix.de>) id 1dhxPi-00061l-0z
 for barebox@lists.infradead.org; Wed, 16 Aug 2017 14:27:10 +0200
From: Juergen Borleis <jbe@pengutronix.de>
Date: Wed, 16 Aug 2017 14:27:08 +0200
Message-Id: <20170816122709.23129-2-jbe@pengutronix.de>
In-Reply-To: <20170816122709.23129-1-jbe@pengutronix.de>
References: <20170816122709.23129-1-jbe@pengutronix.de>
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
Subject: [PATCH 2/3] state command: extend help part I
To: barebox@lists.infradead.org

The loading parameter and its help text was removed in commit
446f3d07dd59f1b15b83a31fa88fba919ce4f47d and the loading parameter
was re-added in commit 3a5ddf3d0db006e9256c8e256e7dc7b4a3f89a14 but the
help was forgotten. Re-add the help as well.

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 commands/state.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/commands/state.c b/commands/state.c
index c57a906ff..038da402f 100644
--- a/commands/state.c
+++ b/commands/state.c
@@ -72,12 +72,13 @@ BAREBOX_CMD_HELP_TEXT("Usage: state [OPTIONS] [STATENAME]")
 BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("options:")
 BAREBOX_CMD_HELP_OPT ("-s", "save state")
+BAREBOX_CMD_HELP_OPT ("-l", "load state")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(state)
 	.cmd		= do_state,
-	BAREBOX_CMD_DESC("save state information")
-	BAREBOX_CMD_OPTS("[-s] [STATENAME]")
+	BAREBOX_CMD_DESC("load or save state information")
+	BAREBOX_CMD_OPTS("[-sl] [STATENAME]")
 	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
 	BAREBOX_CMD_HELP(cmd_state_help)
 BAREBOX_CMD_END
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
