Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([78.46.208.201]
 helo=margratgarlick.emantor.de)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLJFD-00057X-UK
 for barebox@lists.infradead.org; Tue, 30 Apr 2019 03:15:49 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Tue, 30 Apr 2019 05:15:24 +0200
Message-Id: <20190430031524.18810-1-r.czerwinski@pengutronix.de>
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
Subject: [PATCH v2] ARM: imx: disable IPU QoS setup for correct SoCs
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, Rouven Czerwinski <r.czerwinski@pengutronix.de>

The condition was introduced in 4e6e8f73e9 ("ARM: imx6: don't
execute IPU QoS setup on MX6 SX/SL"), but instead it bails at
the Solo, not the SX and SL.

The original intent was most probably to add an exception for
the i.MX6 Solo as well, so everything else is skipped, including
the SX, SL and now the UL and ULL. Fix the code to reflect this.

On the SX, SL, UL, ULL, this now avoids writes to memory, which
isn't described in the datasheets. On the S, it now configures
the QoS settings.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 arch/arm/mach-imx/imx6.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
index 01b4274ed3..e898be9ab5 100644
--- a/arch/arm/mach-imx/imx6.c
+++ b/arch/arm/mach-imx/imx6.c
@@ -117,7 +117,7 @@ static void imx6_setup_ipu_qos(void)
 	uint32_t val;
 
 	if (!cpu_mx6_is_mx6q() && !cpu_mx6_is_mx6d() &&
-	    !cpu_mx6_is_mx6dl() && cpu_mx6_is_mx6s())
+	    !cpu_mx6_is_mx6dl() && !cpu_mx6_is_mx6s())
 		return;
 
 	val = readl(iomux + IOMUXC_GPR4);
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
