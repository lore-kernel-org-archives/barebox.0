Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXMs1-00087K-OS
 for barebox@lists.infradead.org; Thu, 13 Dec 2018 09:01:31 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 13 Dec 2018 10:01:12 +0100
Message-Id: <20181213090112.6131-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] commands: miitool: remove unsupported options a and b
To: Barebox List <barebox@lists.infradead.org>
Cc: Andreas Schmidt <andreas.schmidt@wago.com>

From: Andreas Schmidt <andreas.schmidt@wago.com>

Signed-off-by: Andreas Schmidt <andreas.schmidt@wago.com>
---
 commands/miitool.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/commands/miitool.c b/commands/miitool.c
index acf61421b8..4ea6fda34d 100644
--- a/commands/miitool.c
+++ b/commands/miitool.c
@@ -281,12 +281,6 @@ static int do_miitool(int argc, char *argv[])
 
 	while ((opt = getopt(argc, argv, "vs:r:")) > 0) {
 		switch (opt) {
-		case 'a':
-			addr = simple_strtol(optarg, NULL, 0);
-			break;
-		case 'b':
-			bus = simple_strtoul(optarg, NULL, 0);
-			break;
 		case 's':
 			action = MIITOOL_SHOW;
 			phydevname = xstrdup(optarg);
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
