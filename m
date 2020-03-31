Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJKei-0007WH-Js
 for barebox@lists.infradead.org; Tue, 31 Mar 2020 17:26:29 +0000
Received: from geraet.fritz.box (i577B6D4A.versanet.de [87.123.109.74])
 (Authenticated sender: ahmad@a3f.at)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 89B4B40007
 for <barebox@lists.infradead.org>; Tue, 31 Mar 2020 17:26:22 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Tue, 31 Mar 2020 19:26:17 +0200
Message-Id: <20200331172617.910019-1-ahmad@a3f.at>
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
Subject: [PATCH] fixup! regmap-mmio: Add big endian support
To: barebox@lists.infradead.org

Now unused, drop it.

---
 drivers/mfd/syscon.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/mfd/syscon.c b/drivers/mfd/syscon.c
index c9dfb151ee0a..252d91120b53 100644
--- a/drivers/mfd/syscon.c
+++ b/drivers/mfd/syscon.c
@@ -26,7 +26,6 @@
 static LIST_HEAD(syscon_list);
 
 struct syscon {
-	struct device_node *np;
 	struct device_d *dev;
 	void __iomem *base;
 	struct list_head list;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
