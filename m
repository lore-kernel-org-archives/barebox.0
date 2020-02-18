Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j44wK-0004a8-Qa
 for barebox@lists.infradead.org; Tue, 18 Feb 2020 15:37:39 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 18 Feb 2020 16:37:29 +0100
Message-Id: <20200218153732.14845-4-s.hauer@pengutronix.de>
In-Reply-To: <20200218153732.14845-1-s.hauer@pengutronix.de>
References: <20200218153732.14845-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/6] ARM: i.MX Phytec phycore i.MX27: replace __naked with
 noinline
To: Barebox List <barebox@lists.infradead.org>

phytec_phycore_imx27_common_init() doesn't need to be __naked, because
the stack has already been setup. What we want to have though is the
noinline attribute to make sure phytec_phycore_imx27_common_init() is
indeed a separate function which is called with initialized stack.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/phytec-phycore-imx27/lowlevel.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/phytec-phycore-imx27/lowlevel.c b/arch/arm/boards/phytec-phycore-imx27/lowlevel.c
index a9e296a0af..ae5f1af830 100644
--- a/arch/arm/boards/phytec-phycore-imx27/lowlevel.c
+++ b/arch/arm/boards/phytec-phycore-imx27/lowlevel.c
@@ -33,7 +33,7 @@
 
 #define ESDCTL0_VAL (ESDCTL0_SDE | ESDCTL0_ROW13 | ESDCTL0_COL10)
 
-static void __bare_init __naked noinline phytec_phycorce_imx27_common_init(void *fdt)
+static void __bare_init noinline phytec_phycorce_imx27_common_init(void *fdt)
 {
 	uint32_t r;
 	int i;
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
