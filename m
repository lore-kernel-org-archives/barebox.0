Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([78.46.208.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itPEU-00061Y-Gt
 for barebox@lists.infradead.org; Mon, 20 Jan 2020 05:04:15 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Mon, 20 Jan 2020 06:03:29 +0100
Message-Id: <20200120050330.161859-3-r.czerwinski@pengutronix.de>
In-Reply-To: <20200120050330.161859-1-r.czerwinski@pengutronix.de>
References: <20200120050330.161859-1-r.czerwinski@pengutronix.de>
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
Subject: [PATCH 3/4] ARM: mach-imx: OPTEE PBL configures PL210
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

If OP-TEE early loading is performed, OP-TEE will configure the PL210
and lock access to the controller from the normal world. Skip the
configuration in this case.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 arch/arm/mach-imx/imx6.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
index 41e0066add..f2311efd92 100644
--- a/arch/arm/mach-imx/imx6.c
+++ b/arch/arm/mach-imx/imx6.c
@@ -278,7 +278,7 @@ static int imx6_mmu_init(void)
 	void __iomem *l2x0_base = IOMEM(0x00a02000);
 	u32 val, cache_part, cache_rtl;
 
-	if (!cpu_is_mx6())
+	if (!cpu_is_mx6() || IS_ENABLED(CONFIG_PBL_OPTEE))
 		return 0;
 
 	val = readl(l2x0_base + L2X0_CACHE_ID);
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
