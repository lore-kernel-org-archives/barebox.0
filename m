Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gD2H3-0001rG-Pu
 for barebox@lists.infradead.org; Thu, 18 Oct 2018 06:59:14 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 18 Oct 2018 08:58:27 +0200
Message-Id: <20181018065827.19973-21-s.hauer@pengutronix.de>
In-Reply-To: <20181018065827.19973-1-s.hauer@pengutronix.de>
References: <20181018065827.19973-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 20/20] nvmem: i.MX ocotp: Make locally used functions static
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/nvmem/ocotp.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/nvmem/ocotp.c b/drivers/nvmem/ocotp.c
index c2d2982ee1..ba35bef99a 100644
--- a/drivers/nvmem/ocotp.c
+++ b/drivers/nvmem/ocotp.c
@@ -184,7 +184,7 @@ static int fuse_read_addr(struct ocotp_priv *priv, u32 addr, u32 *pdata)
 	return 0;
 }
 
-int imx6_ocotp_read_one_u32(struct ocotp_priv *priv, u32 index, u32 *pdata)
+static int imx6_ocotp_read_one_u32(struct ocotp_priv *priv, u32 index, u32 *pdata)
 {
 	int ret;
 
@@ -257,7 +257,7 @@ static int imx6_ocotp_reload_shadow(struct ocotp_priv *priv)
 	return imx6_ocotp_wait_busy(priv, OCOTP_CTRL_RELOAD_SHADOWS);
 }
 
-int imx6_ocotp_blow_one_u32(struct ocotp_priv *priv, u32 index, u32 data,
+static int imx6_ocotp_blow_one_u32(struct ocotp_priv *priv, u32 index, u32 data,
 			    u32 *pfused_value)
 {
 	int ret;
-- 
2.19.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
