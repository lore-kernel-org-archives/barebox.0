Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzhsI-0002aa-DY
 for barebox@lists.infradead.org; Mon, 19 Aug 2019 13:39:07 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 19 Aug 2019 15:38:44 +0200
Message-Id: <20190819133847.17015-6-s.hauer@pengutronix.de>
In-Reply-To: <20190819133847.17015-1-s.hauer@pengutronix.de>
References: <20190819133847.17015-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 5/8] common: return "none" when board unset
To: Barebox List <barebox@lists.infradead.org>

Instead of returning NULL when board is not set return "none".

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/misc.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/common/misc.c b/common/misc.c
index 66aba534fc..9b390dc7ba 100644
--- a/common/misc.c
+++ b/common/misc.c
@@ -150,7 +150,10 @@ EXPORT_SYMBOL(barebox_set_model);
 
 const char *barebox_get_model(void)
 {
-	return model;
+	if (model)
+		return model;
+	else
+		return "none";
 }
 EXPORT_SYMBOL(barebox_get_model);
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
