Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipsrl-0006Mj-03
 for barebox@lists.infradead.org; Fri, 10 Jan 2020 11:54:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 10 Jan 2020 12:54:08 +0100
Message-Id: <20200110115410.18265-4-s.hauer@pengutronix.de>
In-Reply-To: <20200110115410.18265-1-s.hauer@pengutronix.de>
References: <20200110115410.18265-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/5] include/soc/fsl: Make struct ccsr_qman v3 specific
To: Barebox List <barebox@lists.infradead.org>

struct ccsr_qman is ifdeffed for different versions of this structure.
CONFIG_SYS_FSL_QMAN_V3 is not defined which means we happen to use
the wrong version on LS1046a. Hardcode it to the v3 version to make
it work on LS1046a and rename it to ccsr_qman_v3 to make it obvious
that it needs a change on non v3 versions.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-layerscape/icid.c |  2 +-
 include/soc/fsl/fsl_qbman.h     | 13 +------------
 2 files changed, 2 insertions(+), 13 deletions(-)

diff --git a/arch/arm/mach-layerscape/icid.c b/arch/arm/mach-layerscape/icid.c
index 340ca959ca..62c2d356e2 100644
--- a/arch/arm/mach-layerscape/icid.c
+++ b/arch/arm/mach-layerscape/icid.c
@@ -83,7 +83,7 @@ struct icid_id_table icid_tbl_ls1046a[] = {
 		.id = DPAA1_SID_START,
 		.reg = DPAA1_SID_START,
 		.compat_addr = LSCH2_QMAN_ADDR,
-		.reg_addr = offsetof(struct ccsr_qman, liodnr) + LSCH2_QMAN_ADDR,
+		.reg_addr = offsetof(struct ccsr_qman_v3, liodnr) + LSCH2_QMAN_ADDR,
 	}, {
 		.compat = "fsl,bman",
 		.id = DPAA1_SID_START + 1,
diff --git a/include/soc/fsl/fsl_qbman.h b/include/soc/fsl/fsl_qbman.h
index 10cbb16833..1caaf4808d 100644
--- a/include/soc/fsl/fsl_qbman.h
+++ b/include/soc/fsl/fsl_qbman.h
@@ -6,17 +6,8 @@
 #ifndef __FSL_QBMAN_H__
 #define __FSL_QBMAN_H__
 
-struct ccsr_qman {
-#ifdef CONFIG_SYS_FSL_QMAN_V3
+struct ccsr_qman_v3 {
 	u8	res0[0x200];
-#else
-	struct {
-		u32	qcsp_lio_cfg;	/* 0x0 - SW Portal n LIO cfg */
-		u32	qcsp_io_cfg;	/* 0x4 - SW Portal n IO cfg */
-		u32	res;
-		u32	qcsp_dd_cfg;	/* 0xc - SW Portal Dynamic Debug cfg */
-	} qcsp[32];
-#endif
 	/* Not actually reserved, but irrelevant to u-boot */
 	u8	res[0xbf8 - 0x200];
 	u32	ip_rev_1;
@@ -41,14 +32,12 @@ struct ccsr_qman {
 	u32	ci_rlm_cfg;	/* Initiator Read Latency Monitor Cfg */
 	u32	ci_rlm_avg;	/* Initiator Read Latency Monitor Avg */
 	u8	res7[0x2e8];
-#ifdef CONFIG_SYS_FSL_QMAN_V3
 	struct {
 		u32	qcsp_lio_cfg;	/* 0x0 - SW Portal n LIO cfg */
 		u32	qcsp_io_cfg;	/* 0x4 - SW Portal n IO cfg */
 		u32	res;
 		u32	qcsp_dd_cfg;	/* 0xc - SW Portal n Dynamic Debug cfg*/
 	} qcsp[50];
-#endif
 };
 
 struct ccsr_bman {
-- 
2.25.0.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
