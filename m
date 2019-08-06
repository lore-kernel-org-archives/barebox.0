Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([78.46.208.201])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hurkt-0007bB-2o
 for barebox@lists.infradead.org; Tue, 06 Aug 2019 05:11:30 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Tue,  6 Aug 2019 07:11:05 +0200
Message-Id: <dcb1495b416ad7066c0f2900c0b894b50f27eb01.1565068235.git-series.r.czerwinski@pengutronix.de>
In-Reply-To: <cover.20f706d0d5a7ead5c114378becb025aefb9c7b8a.1565068235.git-series.r.czerwinski@pengutronix.de>
References: <cover.20f706d0d5a7ead5c114378becb025aefb9c7b8a.1565068235.git-series.r.czerwinski@pengutronix.de>
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
Subject: [PATCH v3 15/16] mach-imx: hab: select piggy verification for i.MX8
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Always select the piggy verification if HAB is enabled on i.MX8,
otherwise the signed PBL might load untrusted piggydata.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 8fcef3f..b7bae38 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -184,6 +184,7 @@ config ARCH_IMX8MQ
 	select COMMON_CLK_OF_PROVIDER
 	select ARCH_HAS_FEC_IMX
 	select HW_HAS_PCI
+	select PBL_VERIFY_PIGGY if HABV4
 
 config ARCH_VF610
 	bool
-- 
git-series 0.9.1

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
