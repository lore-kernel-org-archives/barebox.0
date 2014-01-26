Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W7T4j-00047p-9p
 for barebox@lists.infradead.org; Sun, 26 Jan 2014 17:00:50 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <mgr@pengutronix.de>) id 1W7T4K-0000DC-EE
 for barebox@lists.infradead.org; Sun, 26 Jan 2014 18:00:24 +0100
Received: from mgr by dude.hi.pengutronix.de with local (Exim 4.82)
 (envelope-from <mgr@pengutronix.de>) id 1W7T4I-0005Bd-Be
 for barebox@lists.infradead.org; Sun, 26 Jan 2014 18:00:22 +0100
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Sun, 26 Jan 2014 18:00:20 +0100
Message-Id: <1390755620-19590-1-git-send-email-m.grzeschik@pengutronix.de>
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
Subject: [PATCH] scripts: kwbimage: fix imagebuild on 32bit host system
To: barebox@lists.infradead.org

We have to use strtoul to run the tool working on 32bit systems.
Otherwise it will generate signed numbers for strings representing
values with the 32nd bit set.

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 scripts/kwbimage.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/scripts/kwbimage.c b/scripts/kwbimage.c
index 82cf21c..adfe0cd 100644
--- a/scripts/kwbimage.c
+++ b/scripts/kwbimage.c
@@ -1080,8 +1080,8 @@ static int image_create_config_parse_oneline(char *line,
 		}
 
 		el->type = IMAGE_CFG_DATA;
-		el->regdata.raddr = strtol(value1, NULL, 16);
-		el->regdata.rdata = strtol(value2, NULL, 16);
+		el->regdata.raddr = strtoul(value1, NULL, 16);
+		el->regdata.rdata = strtoul(value2, NULL, 16);
 	} else if (!strcmp(keyword, "PAYLOAD")) {
 		char *value = strtok_r(NULL, " ", &saveptr);
 		el->type = IMAGE_CFG_PAYLOAD;
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
