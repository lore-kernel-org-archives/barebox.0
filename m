Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dhxQ7-0002Xc-Ga
 for barebox@lists.infradead.org; Wed, 16 Aug 2017 12:27:36 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.84_2)
 (envelope-from <jbe@pengutronix.de>) id 1dhxPi-0003JT-81
 for barebox@lists.infradead.org; Wed, 16 Aug 2017 14:27:10 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <jbe@pengutronix.de>) id 1dhxPi-00061o-1W
 for barebox@lists.infradead.org; Wed, 16 Aug 2017 14:27:10 +0200
From: Juergen Borleis <jbe@pengutronix.de>
Date: Wed, 16 Aug 2017 14:27:09 +0200
Message-Id: <20170816122709.23129-3-jbe@pengutronix.de>
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
Subject: [PATCH 3/3] state command: extend help part II
To: barebox@lists.infradead.org

Since commit 0c7436753c73e71ee512e5ed8029e7ccceedcd89 the 'state' command
supports authentification and a related parameter. Honor this in the help
text.

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 commands/state.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/commands/state.c b/commands/state.c
index 038da402f..0dbca9f3b 100644
--- a/commands/state.c
+++ b/commands/state.c
@@ -73,12 +73,13 @@ BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("options:")
 BAREBOX_CMD_HELP_OPT ("-s", "save state")
 BAREBOX_CMD_HELP_OPT ("-l", "load state")
+BAREBOX_CMD_HELP_OPT ("-n", "no authentication")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(state)
 	.cmd		= do_state,
 	BAREBOX_CMD_DESC("load or save state information")
-	BAREBOX_CMD_OPTS("[-sl] [STATENAME]")
+	BAREBOX_CMD_OPTS("[-sln] [STATENAME]")
 	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
 	BAREBOX_CMD_HELP(cmd_state_help)
 BAREBOX_CMD_END
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
