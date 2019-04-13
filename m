Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([2a01:4f8:c17:c88::2]
 helo=margratgarlick.emantor.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hFELw-0001X9-QJ
 for barebox@lists.infradead.org; Sat, 13 Apr 2019 08:49:38 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Sat, 13 Apr 2019 10:49:28 +0200
Message-Id: <20190413084928.27923-1-r.czerwinski@pengutronix.de>
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
Subject: [PATCH] ARM: imx: disable IPU QoS setup for i.MX6 UL/ULL
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Neither of the two devices has an IPU, disable the setup for both SoCs.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 arch/arm/mach-imx/imx6.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
index 01b4274ed3..6c08f22b7a 100644
--- a/arch/arm/mach-imx/imx6.c
+++ b/arch/arm/mach-imx/imx6.c
@@ -117,7 +117,8 @@ static void imx6_setup_ipu_qos(void)
 	uint32_t val;
 
 	if (!cpu_mx6_is_mx6q() && !cpu_mx6_is_mx6d() &&
-	    !cpu_mx6_is_mx6dl() && cpu_mx6_is_mx6s())
+	    !cpu_mx6_is_mx6dl() && (cpu_mx6_is_mx6s() || cpu_mx6_is_mx6ul() ||
+				    cpu_is_mx6ull()))
 		return;
 
 	val = readl(iomux + IOMUXC_GPR4);
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
