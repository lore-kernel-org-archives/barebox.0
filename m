Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.rapiddevelopmentkit.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YvL7R-00014e-8o
 for barebox@lists.infradead.org; Thu, 21 May 2015 07:42:18 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id A8CE7A0045D
 for <barebox@lists.infradead.org>; Thu, 21 May 2015 09:43:10 +0200 (CEST)
From: Stefan Christ <s.christ@phytec.de>
Date: Thu, 21 May 2015 09:41:49 +0200
Message-Id: <1432194109-4340-1-git-send-email-s.christ@phytec.de>
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
Subject: [PATCH] barebox update: add note after successful update
To: barebox@lists.infradead.org

Some users of the barebox_update command forget to erase the external
barebox environment after updating the barebox. Using an old barebox
environment leads to various problems if there were major changes.

So add a gentle reminder after the successful update.

Signed-off-by: Stefan Christ <s.christ@phytec.de>
---
 common/bbu.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/common/bbu.c b/common/bbu.c
index 7fb154a..1b125e9 100644
--- a/common/bbu.c
+++ b/common/bbu.c
@@ -113,8 +113,11 @@ int barebox_update(struct bbu_data *data)
 	if (ret == -EINTR)
 		printf("update aborted\n");
 
-	if (!ret)
+	if (!ret) {
 		printf("update succeeded\n");
+		if (IS_ENABLED(CONFIG_ENV_HANDLING))
+			printf("You maybe want to erase the barebox environment.\n");
+	}
 
 	return ret;
 }
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
