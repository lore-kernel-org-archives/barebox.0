Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x241.google.com ([2607:f8b0:400e:c00::241])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aQ5mU-0001xf-GL
 for barebox@lists.infradead.org; Mon, 01 Feb 2016 04:08:08 +0000
Received: by mail-pf0-x241.google.com with SMTP id n128so6899468pfn.3
 for <barebox@lists.infradead.org>; Sun, 31 Jan 2016 20:07:42 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 31 Jan 2016 20:07:26 -0800
Message-Id: <1454299646-15648-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH] fixup! [PATCH v2 8/8] miitool: Add code to register a PHY
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add missing paren.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 commands/miitool.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/miitool.c b/commands/miitool.c
index b61113c..9e86925 100644
--- a/commands/miitool.c
+++ b/commands/miitool.c
@@ -342,7 +342,7 @@ free_phydevname:
 BAREBOX_CMD_HELP_START(miitool)
 BAREBOX_CMD_HELP_TEXT("This utility checks or sets the status of a network interface's")
 BAREBOX_CMD_HELP_TEXT("Media Independent Interface (MII) unit as well as allowing to")
-BAREBOX_CMD_HELP_TEXT"register dummy PHY devices for raw MDIO access. Most fast ethernet")
+BAREBOX_CMD_HELP_TEXT("register dummy PHY devices for raw MDIO access. Most fast ethernet")
 BAREBOX_CMD_HELP_TEXT("adapters use an MII to autonegotiate link speed and duplex setting.")
 BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("Options:")
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
