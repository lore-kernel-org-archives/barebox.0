Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIzQx-0003ks-T8
 for barebox@lists.infradead.org; Mon, 30 Mar 2020 18:46:54 +0000
Received: from geraet.fritz.box (i577B69AA.versanet.de [87.123.105.170])
 (Authenticated sender: ahmad@a3f.at)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 6A68DE0004
 for <barebox@lists.infradead.org>; Mon, 30 Mar 2020 18:46:47 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 30 Mar 2020 20:46:40 +0200
Message-Id: <20200330184641.881248-1-ahmad@a3f.at>
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
Subject: [PATCH 1/2] fixup! regmap-mmio: Add big endian support
To: barebox@lists.infradead.org

The Linux default for the regmap MMIO bus used for syscon is little endian,
not big endian like for a general regmap bus.

This fixes network breakage on the STM32MP, which uses a syscon in
link mode configuration.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/base/regmap/regmap-mmio.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/base/regmap/regmap-mmio.c b/drivers/base/regmap/regmap-mmio.c
index 492dd16ff52a..9c5a2822a4fe 100644
--- a/drivers/base/regmap/regmap-mmio.c
+++ b/drivers/base/regmap/regmap-mmio.c
@@ -182,6 +182,7 @@ static int regmap_mmio_read(void *context, unsigned int reg, unsigned int *val)
 static const struct regmap_bus regmap_mmio = {
 	.reg_write = regmap_mmio_write,
 	.reg_read = regmap_mmio_read,
+	.val_format_endian_default = REGMAP_ENDIAN_LITTLE,
 };
 
 static struct regmap_mmio_context *regmap_mmio_gen_context(struct device_d *dev,
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
