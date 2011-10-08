Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo2.mail-out.ovh.net ([87.98.165.38]
	helo=mo2.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1RCYHe-0001UY-GX
	for barebox@lists.infradead.org; Sat, 08 Oct 2011 14:53:51 +0000
Received: from mail180.ha.ovh.net (b6.ovh.net [213.186.33.56])
	by mo2.mail-out.ovh.net (Postfix) with SMTP id CADFADD2C96
	for <barebox@lists.infradead.org>;
	Sat,  8 Oct 2011 16:55:39 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat,  8 Oct 2011 16:29:49 +0200
Message-Id: <1318084193-2648-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20111008141722.GG10459@game.jcrosoft.org>
References: <20111008141722.GG10459@game.jcrosoft.org>
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
Subject: [PATCH 1/5] bootm: ensure the uImage is mapped first to allow option
	to used it
To: barebox@lists.infradead.org

needed for multi image support

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/bootm.c |   20 ++++++++++++++++----
 1 files changed, 16 insertions(+), 4 deletions(-)

diff --git a/commands/bootm.c b/commands/bootm.c
index 755932b..f0f64cf 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -274,10 +274,7 @@ static int do_bootm(struct command *cmdtp, int argc, char *argv[])
 
 			return 0;
 		default:
-			if (!handler_parse_options(&data, opt, optarg))
-				continue;
-
-			return 1;
+			break;
 		}
 	}
 
@@ -297,6 +294,21 @@ static int do_bootm(struct command *cmdtp, int argc, char *argv[])
 		goto err_out;
 	}
 
+	optind = 0;
+
+	while((opt = getopt(argc, argv, options)) > 0) {
+		switch(opt) {
+		case 'h':
+		case 'n':
+			break;
+		default:
+			if (!handler_parse_options(&data, opt, optarg))
+				continue;
+
+			return 1;
+		}
+	}
+
 	/*
 	 * We have reached the point of no return: we are going to
 	 * overwrite all exception vector code, so we cannot easily
-- 
1.7.6.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
