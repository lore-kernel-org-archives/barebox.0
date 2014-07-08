Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo2.mail-out.ovh.net ([188.165.53.149]
 helo=mo2.mail-out.ovh.net)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X4VUO-0008U5-Pi
 for barebox@lists.infradead.org; Tue, 08 Jul 2014 13:31:21 +0000
Received: from mail176.ha.ovh.net (gw6.ovh.net [213.251.189.206])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 9E4FEFFA483
 for <barebox@lists.infradead.org>; Tue,  8 Jul 2014 15:30:51 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue,  8 Jul 2014 15:34:38 +0200
Message-Id: <1404826478-20342-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] command: crc32: fix BAREBOX_CMD_HELP(cmd_crc_help)
To: barebox@lists.infradead.org

introduce in commit
crc32: Proper name of command is "crc32".
37f47a2a8c2dba420a849625b2926dacdc23cf49

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 commands/crc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/crc.c b/commands/crc.c
index 0e30052..7c2936c 100644
--- a/commands/crc.c
+++ b/commands/crc.c
@@ -128,5 +128,5 @@ BAREBOX_CMD_START(crc32)
 #endif
 					  "vV] AREA")
 	BAREBOX_CMD_GROUP(CMD_GRP_MEM)
-	BAREBOX_CMD_HELP(cmd_crc_help)
+	BAREBOX_CMD_HELP(cmd_crc32_help)
 BAREBOX_CMD_END
-- 
1.9.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
