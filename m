Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x242.google.com ([2607:f8b0:400e:c05::242])
 by casper.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eLsoi-00077N-Li
 for barebox@lists.infradead.org; Mon, 04 Dec 2017 15:38:02 +0000
Received: by mail-pg0-x242.google.com with SMTP id j9so8431562pgc.11
 for <barebox@lists.infradead.org>; Mon, 04 Dec 2017 07:37:40 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon,  4 Dec 2017 07:37:26 -0800
Message-Id: <20171204153726.11479-5-andrew.smirnov@gmail.com>
In-Reply-To: <20171204153726.11479-1-andrew.smirnov@gmail.com>
References: <20171204153726.11479-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 4/4] commands/miitool: Allow specifying PHY by their full path
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Make -s option to be a bit more consistent with how it is used in
other commands by allowing PHY device to be specified by either its
name of full path in /dev. This change also allows us to leverage
autocompletion since it will work as expected for paths in /dev.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 commands/miitool.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/commands/miitool.c b/commands/miitool.c
index 1a46037f2..dea4f853c 100644
--- a/commands/miitool.c
+++ b/commands/miitool.c
@@ -338,7 +338,9 @@ static int do_miitool(int argc, char *argv[])
 	case MIITOOL_SHOW:
 		for_each_mii_bus(mii) {
 			mdiobus_detect(&mii->dev);
-			mdiobus_show(&mii->dev, phydevname, verbose);
+			mdiobus_show(&mii->dev,
+				     devpath_to_name(phydevname),
+				     verbose);
 		}
 		break;
 	}
@@ -358,7 +360,7 @@ BAREBOX_CMD_HELP_TEXT("adapters use an MII to autonegotiate link speed and duple
 BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT("-v", "increase verbosity")
-BAREBOX_CMD_HELP_OPT("-s <devname>", "show PHY status (not providing PHY prints status of all)")
+BAREBOX_CMD_HELP_OPT("-s <devpath/devname>", "show PHY status (not providing PHY prints status of all)")
 BAREBOX_CMD_HELP_OPT("-r <busno>:<adr>", "register a PHY")
 BAREBOX_CMD_HELP_END
 
-- 
2.14.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
