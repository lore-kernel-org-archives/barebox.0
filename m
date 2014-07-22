Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x232.google.com ([2a00:1450:400c:c00::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X9Ux2-0006D7-UN
 for barebox@lists.infradead.org; Tue, 22 Jul 2014 07:57:33 +0000
Received: by mail-wg0-f50.google.com with SMTP id n12so7439148wgh.21
 for <barebox@lists.infradead.org>; Tue, 22 Jul 2014 00:57:10 -0700 (PDT)
From: Holger Schurig <holgerschurig@gmail.com>
Date: Tue, 22 Jul 2014 09:56:46 +0200
Message-Id: <1406015809-20711-3-git-send-email-holgerschurig@gmail.de>
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
Subject: [PATCH 2/5] Documentation: lowercase help short texts
To: barebox@lists.infradead.org

From: Holger Schurig <holgerschurig@gmail.com>

Signed-off-by: Holger Schurig <holgerschurig@gmail.com>
---
 commands/lspci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/lspci.c b/commands/lspci.c
index c00b57f..fdf0269 100644
--- a/commands/lspci.c
+++ b/commands/lspci.c
@@ -46,7 +46,7 @@ static int do_lspci(int argc, char *argv[])
 
 BAREBOX_CMD_START(lspci)
 	.cmd            = do_lspci,
-	BAREBOX_CMD_DESC("Show PCI info")
+	BAREBOX_CMD_DESC("show PCI info")
 	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
 	BAREBOX_CMD_COMPLETE(empty_complete)
 BAREBOX_CMD_END
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
