Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZVDrh-00058U-Jp
 for barebox@lists.infradead.org; Fri, 28 Aug 2015 07:14:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 28 Aug 2015 09:13:57 +0200
Message-Id: <1440746037-31488-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] commands: ubiformat: Document -y option
To: Barebox List <barebox@lists.infradead.org>

This was missing in the help text.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/ubiformat.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/commands/ubiformat.c b/commands/ubiformat.c
index e63f16e..f9d952c 100644
--- a/commands/ubiformat.c
+++ b/commands/ubiformat.c
@@ -779,6 +779,7 @@ BAREBOX_CMD_HELP_OPT("-f FILE\t", "flash image file")
 BAREBOX_CMD_HELP_OPT("-e VALUE", "use VALUE as erase counter value for all eraseblocks")
 BAREBOX_CMD_HELP_OPT("-x NUM\t", "UBI version number to put to EC headers (default 1)")
 BAREBOX_CMD_HELP_OPT("-Q NUM\t", "32-bit UBI image sequence number to use")
+BAREBOX_CMD_HELP_OPT("-y\t", "Assume yes for all questions")
 BAREBOX_CMD_HELP_OPT("-q\t", "suppress progress percentage information")
 BAREBOX_CMD_HELP_OPT("-v\t", "be verbose")
 BAREBOX_CMD_HELP_TEXT("")
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
