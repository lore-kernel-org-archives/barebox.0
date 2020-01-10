Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipsrk-0006Mf-Uo
 for barebox@lists.infradead.org; Fri, 10 Jan 2020 11:54:14 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 10 Jan 2020 12:54:07 +0100
Message-Id: <20200110115410.18265-3-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/5] include/soc/fsl: remove unused function prototypes
To: Barebox List <barebox@lists.infradead.org>

include/soc/fsl/fsl_qbman.h contains function prototypes we do not
implement, drop them.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/soc/fsl/fsl_qbman.h | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/include/soc/fsl/fsl_qbman.h b/include/soc/fsl/fsl_qbman.h
index 4687eb9bb1..10cbb16833 100644
--- a/include/soc/fsl/fsl_qbman.h
+++ b/include/soc/fsl/fsl_qbman.h
@@ -5,11 +5,6 @@
 
 #ifndef __FSL_QBMAN_H__
 #define __FSL_QBMAN_H__
-void fdt_fixup_qportals(void *blob);
-void fdt_fixup_bportals(void *blob);
-void inhibit_portals(void __iomem *addr, int max_portals,
-		     int arch_max_portals, int portal_cinh_size);
-void setup_qbman_portals(void);
 
 struct ccsr_qman {
 #ifdef CONFIG_SYS_FSL_QMAN_V3
-- 
2.25.0.rc1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
