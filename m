Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIvZg-0008Qd-B6
 for barebox@lists.infradead.org; Mon, 30 Mar 2020 14:39:39 +0000
Received: from geraet.fritz.box (i577B69AA.versanet.de [87.123.105.170])
 (Authenticated sender: ahmad@a3f.at)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 93339E0006
 for <barebox@lists.infradead.org>; Mon, 30 Mar 2020 14:39:34 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 30 Mar 2020 16:39:12 +0200
Message-Id: <20200330143915.663705-5-ahmad@a3f.at>
In-Reply-To: <20200330143915.663705-1-ahmad@a3f.at>
References: <20200330143915.663705-1-ahmad@a3f.at>
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
Subject: [PATCH 5/8] nvmem: bsec: remove wrongly named bsec_field type
To: barebox@lists.infradead.org

BSEC_SMC_READ_SHADOW and BSEC_SMC_WRITE_SHADOW aren't fields, but
operations to apply on fields. Rename it accordingly and fix up instances
where it was used wrongly.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/arm/mach-stm32mp/include/mach/bsec.h | 6 +++---
 drivers/nvmem/bsec.c                      | 2 +-
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/mach-stm32mp/include/mach/bsec.h b/arch/arm/mach-stm32mp/include/mach/bsec.h
index 559faaa2bac3..d3cb91b1fdb1 100644
--- a/arch/arm/mach-stm32mp/include/mach/bsec.h
+++ b/arch/arm/mach-stm32mp/include/mach/bsec.h
@@ -17,7 +17,7 @@ enum bsec_smc {
 };
 
 /* Service for BSEC */
-enum bsec_field {
+enum bsec_op {
 	BSEC_SMC_READ_SHADOW	= 1,
 	BSEC_SMC_PROG_OTP	= 2,
 	BSEC_SMC_WRITE_SHADOW	= 3,
@@ -26,13 +26,13 @@ enum bsec_field {
 	BSEC_SMC_WRITE_ALL	= 6,
 };
 
-static inline enum bsec_smc bsec_read_field(enum bsec_field field, unsigned *val)
+static inline enum bsec_smc bsec_read_field(unsigned field, unsigned *val)
 {
 	return stm32mp_smc(STM32_SMC_BSEC, BSEC_SMC_READ_SHADOW,
 			   field, 0, val);
 }
 
-static inline enum bsec_smc bsec_write_field(enum bsec_field field, unsigned val)
+static inline enum bsec_smc bsec_write_field(unsigned field, unsigned val)
 {
 	return stm32mp_smc(STM32_SMC_BSEC, BSEC_SMC_WRITE_SHADOW,
 			   field, val, NULL);
diff --git a/drivers/nvmem/bsec.c b/drivers/nvmem/bsec.c
index 209c50dc7010..836e62ecbcc7 100644
--- a/drivers/nvmem/bsec.c
+++ b/drivers/nvmem/bsec.c
@@ -33,7 +33,7 @@ struct stm32_bsec_data {
 	int num_regs;
 };
 
-static int bsec_smc(struct bsec_priv *priv, u8 op, enum bsec_field field,
+static int bsec_smc(struct bsec_priv *priv, enum bsec_op op, u32 field,
 		    unsigned data2, unsigned *val)
 {
 	enum bsec_smc ret = stm32mp_smc(priv->svc_id, op, field / 4, data2, val);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
