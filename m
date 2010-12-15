Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by casper.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PSptm-0004Q3-ND
	for barebox@lists.infradead.org; Wed, 15 Dec 2010 11:52:02 +0000
From: Robert Schwebel <r.schwebel@pengutronix.de>
Date: Wed, 15 Dec 2010 12:51:41 +0100
Message-Id: <1292413908-464-28-git-send-email-r.schwebel@pengutronix.de>
In-Reply-To: <1292413908-464-1-git-send-email-r.schwebel@pengutronix.de>
References: <1292413908-464-1-git-send-email-r.schwebel@pengutronix.de>
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
Subject: [PATCH 27/34] doc: add documentation for 'ping' command
To: barebox@lists.infradead.org

Signed-off-by: Robert Schwebel <r.schwebel@pengutronix.de>
---
 Documentation/commands.dox |    2 +-
 net/ping.c                 |   16 ++++++++++++++++
 2 files changed, 17 insertions(+), 1 deletions(-)

diff --git a/Documentation/commands.dox b/Documentation/commands.dox
index 438d33e..9638728 100644
--- a/Documentation/commands.dox
+++ b/Documentation/commands.dox
@@ -80,7 +80,7 @@ available in @a Barebox:
 @li @subpage nand_boot_test
 @li @subpage nfs
 @li @subpage passwd
-@li @subpage ping
+@li @subpage ping_command
 @li @subpage printenv_command
 @li @subpage protect_command
 @li @subpage pwd_command
diff --git a/net/ping.c b/net/ping.c
index d414784..c46a114 100644
--- a/net/ping.c
+++ b/net/ping.c
@@ -107,7 +107,23 @@ out:
 	return ping_state == PING_STATE_SUCCESS ? 0 : 1;
 }
 
+BAREBOX_CMD_HELP_START(ping)
+BAREBOX_CMD_HELP_USAGE("ping HOST\n")
+BAREBOX_CMD_HELP_SHORT("Send ICMP echo request to network host.\n")
+BAREBOX_CMD_HELP_END
+
+/**
+ * @page ping_command
+
+<p> HOST can be an IP address or a host name. If a host name is
+specified, barebox tries to resolve that host name and exits with a
+failure if not successful. If the host didn't answer for 10 seconds,
+ping exits with a failure. </p>
+
+ */
+
 BAREBOX_CMD_START(ping)
 	.cmd		= do_ping,
 	.usage		= "ping <destination>",
+	BAREBOX_CMD_HELP(cmd_ping_help)
 BAREBOX_CMD_END
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
