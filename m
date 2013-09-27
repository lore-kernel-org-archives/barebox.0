Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VPRqQ-0000A7-0j
 for barebox@lists.infradead.org; Fri, 27 Sep 2013 06:48:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 27 Sep 2013 08:47:33 +0200
Message-Id: <1380264462-27614-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1380264462-27614-1-git-send-email-s.hauer@pengutronix.de>
References: <1380264462-27614-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/11] detect command: Add missing help text for -a option
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/detect.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/commands/detect.c b/commands/detect.c
index fbce4eb..15055e7 100644
--- a/commands/detect.c
+++ b/commands/detect.c
@@ -82,6 +82,7 @@ BAREBOX_CMD_HELP_START(detect)
 BAREBOX_CMD_HELP_USAGE("detect [OPTIONS] [devices]\n")
 BAREBOX_CMD_HELP_OPT  ("-l",  "list detectable devices\n")
 BAREBOX_CMD_HELP_OPT  ("-e",  "bail out if one device fails to detect\n")
+BAREBOX_CMD_HELP_OPT  ("-a",  "detect all devices\n")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(detect)
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
