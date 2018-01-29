Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.visioncatalog.com ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.89 #1 (Red Hat Linux))
 id 1eg96n-0008Db-I6
 for barebox@lists.infradead.org; Mon, 29 Jan 2018 13:04:27 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id BA4D7A0022F
 for <barebox@lists.infradead.org>; Mon, 29 Jan 2018 14:04:23 +0100 (CET)
From: Daniel Schultz <d.schultz@phytec.de>
Date: Mon, 29 Jan 2018 14:04:09 +0100
Message-Id: <1517231051-12129-1-git-send-email-d.schultz@phytec.de>
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
Subject: [PATCH 1/3] commands: ubi: ubiupdatevol: Reduce error code to 0 or 1
To: barebox@lists.infradead.org

do_ubiupdatevol can either return 0 or the ioctl return value. This is
not in conformity with the other ubi comannds return values.

Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
---
 commands/ubi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/ubi.c b/commands/ubi.c
index 5e27584..de5633c 100644
--- a/commands/ubi.c
+++ b/commands/ubi.c
@@ -82,7 +82,7 @@ error:
 	close(fd_vol);
 error_img:
 	close(fd_img);
-	return ret;
+	return ret ? 1 : 0;
 }
 
 
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
