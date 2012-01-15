Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo3.mail-out.ovh.net ([178.33.46.10]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RmMtX-000882-W2
 for barebox@lists.infradead.org; Sun, 15 Jan 2012 10:01:01 +0000
Received: from mail617.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id CCAE8FFAD11
 for <barebox@lists.infradead.org>; Sun, 15 Jan 2012 11:02:25 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 15 Jan 2012 11:00:17 +0100
Message-Id: <1326621621-11484-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120115095156.GH5002@game.jcrosoft.org>
References: <20120115095156.GH5002@game.jcrosoft.org>
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
Subject: [PATCH 1/5] dfu: add description how to specify the "description" to
 the long help
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/dfu.c |    4 ++++
 1 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/commands/dfu.c b/commands/dfu.c
index 385fd89..7f2dfed 100644
--- a/commands/dfu.c
+++ b/commands/dfu.c
@@ -169,6 +169,10 @@ BAREBOX_CMD_HELP_OPT  ("-m <str>",  "Manufacturer string (barebox)\n")
 BAREBOX_CMD_HELP_OPT  ("-p <str>",  "product string (" CONFIG_BOARDINFO ")\n")
 BAREBOX_CMD_HELP_OPT  ("-V <id>",   "vendor id\n")
 BAREBOX_CMD_HELP_OPT  ("-P <id>",   "product id\n")
+BAREBOX_CMD_HELP_OPT  ("<description>",
+	"device1(name1)[sr],device2(name2)[sr]\n"
+	"'s' means 'safe mode' (download the complete image before flashing) and\n"
+	"'r' that readback of the firmware is allowed.\n")
 BAREBOX_CMD_HELP_END
 
 /**
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
