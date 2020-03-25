Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH1WW-0005Cl-7w
 for barebox@lists.infradead.org; Wed, 25 Mar 2020 08:36:30 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 25 Mar 2020 09:36:04 +0100
Message-Id: <20200325083608.15676-2-s.hauer@pengutronix.de>
In-Reply-To: <20200325083608.15676-1-s.hauer@pengutronix.de>
References: <20200325083608.15676-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/5] regmap-mmio: Add missing pieces for 64bit support
To: Barebox List <barebox@lists.infradead.org>

The 64bit accessor functions are present, but unused. Hook them up when
needed.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/base/regmap/regmap-mmio.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/base/regmap/regmap-mmio.c b/drivers/base/regmap/regmap-mmio.c
index f8d2cda843..ef6a7db6fd 100644
--- a/drivers/base/regmap/regmap-mmio.c
+++ b/drivers/base/regmap/regmap-mmio.c
@@ -197,6 +197,12 @@ static struct regmap_mmio_context *regmap_mmio_gen_context(void __iomem *regs,
 		ctx->reg_read = regmap_mmio_read32le;
 		ctx->reg_write = regmap_mmio_write32le;
 		break;
+#ifdef CONFIG_64BIT
+	case 64:
+		ctx->reg_read = regmap_mmio_read64le;
+		ctx->reg_write = regmap_mmio_write64le;
+		break;
+#endif
 	default:
 		ret = -EINVAL;
 		goto err_free;
-- 
2.26.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
