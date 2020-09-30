Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNWPS-0002sC-46
 for barebox@lists.infradead.org; Wed, 30 Sep 2020 07:20:21 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 30 Sep 2020 09:20:03 +0200
Message-Id: <20200930072005.1407-10-a.fatoum@pengutronix.de>
In-Reply-To: <20200930072005.1407-1-a.fatoum@pengutronix.de>
References: <20200930072005.1407-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 10/12] reset: remove dead initialization
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

rstc is never read before written, so just drop the initializer.

Reported-by: clang-analyzer-10
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/reset/core.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/reset/core.c b/drivers/reset/core.c
index 99b9c806550c..26a54f21dff0 100644
--- a/drivers/reset/core.c
+++ b/drivers/reset/core.c
@@ -150,7 +150,7 @@ EXPORT_SYMBOL_GPL(reset_control_deassert);
 static struct reset_control *of_reset_control_get(struct device_node *node,
 						  const char *id)
 {
-	struct reset_control *rstc = ERR_PTR(-ENODEV);
+	struct reset_control *rstc;
 	struct reset_controller_dev *r, *rcdev;
 	struct of_phandle_args args;
 	int index = 0;
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
