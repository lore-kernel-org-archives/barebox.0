Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d2wGE-0007u9-HU
 for barebox@lists.infradead.org; Tue, 25 Apr 2017 08:55:53 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.84_2)
 (envelope-from <l.stach@pengutronix.de>) id 1d2wFq-0005VB-Ok
 for barebox@lists.infradead.org; Tue, 25 Apr 2017 10:55:26 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue, 25 Apr 2017 10:55:24 +0200
Message-Id: <20170425085526.4037-2-l.stach@pengutronix.de>
In-Reply-To: <20170425085526.4037-1-l.stach@pengutronix.de>
References: <20170425085526.4037-1-l.stach@pengutronix.de>
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
Subject: [PATCH 2/4] HAB: don't reference unused HAB ops
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/hab/hab.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/hab/hab.c b/drivers/hab/hab.c
index 512ff7ecf2ac..0d71f5bf264c 100644
--- a/drivers/hab/hab.c
+++ b/drivers/hab/hab.c
@@ -209,9 +209,9 @@ static struct imx_hab_ops *imx_get_hab_ops(void)
 	if (ops)
 		return ops;
 
-	if (cpu_is_mx25() || cpu_is_mx35())
+	if (IS_ENABLED(CONFIG_HABV3) && (cpu_is_mx25() || cpu_is_mx35()))
 		tmp = &imx_hab_ops_iim;
-	else if (cpu_is_mx6())
+	else if (IS_ENABLED(CONFIG_HABV4) && cpu_is_mx6())
 		tmp = &imx_hab_ops_ocotp;
 	else
 		return NULL;
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
