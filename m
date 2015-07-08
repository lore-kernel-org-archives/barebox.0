Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from proxima.lasnet.de ([2a01:198:210:70::2])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZCpU3-0002UN-D8
 for barebox@lists.infradead.org; Wed, 08 Jul 2015 13:33:55 +0000
Received: from polaris.guest.pengutronix.de (hazel.nat.pengutronix.de
 [85.220.165.66])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
 (No client certificate requested)
 (Authenticated sender: polaris@lasnet.de)
 by proxima.lasnet.de (Postfix) with ESMTPSA id C9368C019D
 for <barebox@lists.infradead.org>; Wed,  8 Jul 2015 15:33:33 +0200 (CEST)
From: Jan Luebbe <jluebbe@debian.org>
Date: Wed,  8 Jul 2015 15:33:20 +0200
Message-Id: <1436362400-25611-1-git-send-email-jluebbe@debian.org>
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
Subject: [PATCH] of/base: fix typo
To: barebox@lists.infradead.org

Signed-off-by: Jan Luebbe <jluebbe@debian.org>
---
 drivers/of/base.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 3e40a48..7f35ee5 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -2000,7 +2000,7 @@ int of_device_enable_path(const char *path)
 }
 
 /**
- * of_device_enable - disable a devicenode device
+ * of_device_disable - disable a devicenode device
  * @node - the node to disable
  *
  * This sets the status of a devicenode to "disabled"
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
