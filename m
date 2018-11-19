Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gOfBL-0004mi-HG
 for barebox@lists.infradead.org; Mon, 19 Nov 2018 08:45:26 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 19 Nov 2018 09:44:50 +0100
Message-Id: <20181119084454.17599-9-s.hauer@pengutronix.de>
In-Reply-To: <20181119084454.17599-1-s.hauer@pengutronix.de>
References: <20181119084454.17599-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/12] net: cpsw: Make locally used function static
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/cpsw.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/cpsw.c b/drivers/net/cpsw.c
index c6fc21dc54..c32fc5e442 100644
--- a/drivers/net/cpsw.c
+++ b/drivers/net/cpsw.c
@@ -1115,7 +1115,7 @@ static int cpsw_probe_dt(struct cpsw_priv *priv)
 	return 0;
 }
 
-int cpsw_probe(struct device_d *dev)
+static int cpsw_probe(struct device_d *dev)
 {
 	struct resource *iores;
 	struct cpsw_platform_data *data = (struct cpsw_platform_data *)dev->platform_data;
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
