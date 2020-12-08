Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kmcZm-0000pN-0e
 for barebox@lists.infradead.org; Tue, 08 Dec 2020 12:58:43 +0000
Received: from geraet.fritz.box (unknown [87.123.107.76])
 (Authenticated sender: ahmad@a3f.at)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 730A1FF803
 for <barebox@lists.infradead.org>; Tue,  8 Dec 2020 12:58:35 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Tue,  8 Dec 2020 13:58:26 +0100
Message-Id: <20201208125825.105879-1-ahmad@a3f.at>
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
Subject: [PATCH] fixup! ARM: rpi: Add Raspberry Pi Zero W mini-uart support
To: barebox@lists.infradead.org

Fix copy-paste error in comment.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/of/base.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 4ff60aa81435..edb0a8e71a0f 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -2567,7 +2567,7 @@ int of_device_disable_path(const char *path)
 }
 
 /**
- * of_device_disable_path_by_alias - disable a devicenode by alias
+ * of_device_disable_by_alias - disable a devicenode by alias
  * @alias - the alias of the device tree node to disable
  */
 int of_device_disable_by_alias(const char *alias)
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
