Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1khTSv-0001He-GJ
 for barebox@lists.infradead.org; Tue, 24 Nov 2020 08:14:22 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 24 Nov 2020 09:13:12 +0100
Message-Id: <20201124081310.10706-1-a.fatoum@pengutronix.de>
In-Reply-To: <20201120140649.31607-2-a.fatoum@pengutronix.de>
References: <20201120140649.31607-2-a.fatoum@pengutronix.de>
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
Subject: [PATCH] fixup! watchdog: implement watchdog_get_alias_id_from
To: sha@pengutronix.de
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>

Fix (benign) copy pasta from <of.h>.

Cc: barebox@lists.infradead.org
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/of/base.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 85a94f6ef159..acbae3d8c4bb 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -247,8 +247,8 @@ int of_alias_get_id(struct device_node *np, const char *stem)
 }
 EXPORT_SYMBOL_GPL(of_alias_get_id);
 
-extern int of_alias_get_id_from(struct device_node *root, struct device_node *np,
-				const char *stem)
+int of_alias_get_id_from(struct device_node *root, struct device_node *np,
+			 const char *stem)
 {
 	struct device_node *aliasnp, *entrynp;
 	struct property *pp;
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
