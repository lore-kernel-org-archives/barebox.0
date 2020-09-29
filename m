Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay10.mail.gandi.net ([217.70.178.230])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNM3k-0004wQ-39
 for barebox@lists.infradead.org; Tue, 29 Sep 2020 20:17:13 +0000
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Tue, 29 Sep 2020 22:17:01 +0200
Message-Id: <20200929201701.26526-1-ahmad@a3f.at>
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
Subject: [PATCH] fixup! vsprintf: retire strerrorp in favor of %pe
To: barebox@lists.infradead.org
Cc: Marco Felsch <mfe@pengutronix.de>

The %pe patch set missed one instance of strerrorp that
was added after the patch set was initially drafted.
Fix it up.

Reported-by: Marco Felsch <mfe@pengutronix.de>
Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/of/base.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 6e2fb8b281e9..4e88af7b22e2 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -1588,7 +1588,7 @@ void barebox_register_fdt(const void *dtb)
 
 	root = of_unflatten_dtb(dtb);
 	if (IS_ERR(root)) {
-		pr_err("Cannot unflatten dtb: %s\n", strerrorp(root));
+		pr_err("Cannot unflatten dtb: %pe\n", root);
 		return;
 	}
 
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
