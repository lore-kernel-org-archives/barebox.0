Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jONhP-0000Ws-Jx
 for barebox@lists.infradead.org; Tue, 14 Apr 2020 15:42:09 +0000
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Tue, 14 Apr 2020 17:41:51 +0200
Message-Id: <20200414154151.1528591-1-ahmad@a3f.at>
In-Reply-To: <20200414064609.GV27288@pengutronix.de>
References: <20200414064609.GV27288@pengutronix.de>
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
Subject: [PATCH] fixup! of: port Linux of_get_compatible_child helper
To: barebox@lists.infradead.org
Cc: Sascha Hauer <sha@pengutronix.de>

The barebox implementation of for_each_child_of_node doesn't set the
iterator to NULL, when the list of children is empty.

Fix of_get_compatible_child to deal with this.

Suggested-by: Sascha Hauer <sha@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/of/base.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 5a0374a82c5c..1223e0ab558f 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -1730,10 +1730,10 @@ struct device_node *of_get_compatible_child(const struct device_node *parent,
 
 	for_each_child_of_node(parent, child) {
 		if (of_device_is_compatible(child, compatible))
-			break;
+			return child;
 	}
 
-	return child;
+	return NULL;
 }
 EXPORT_SYMBOL(of_get_compatible_child);
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
