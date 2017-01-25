Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs81.iboxed.net ([185.82.85.146])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cWLhf-0008LK-Le
 for barebox@lists.infradead.org; Wed, 25 Jan 2017 11:25:33 +0000
From: Alexander Kurz <akurz@blala.de>
Date: Wed, 25 Jan 2017 12:24:57 +0100
Message-Id: <1485343497-24753-1-git-send-email-akurz@blala.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] ARM: i.MX7: Kconfig: ARCH_IMX7 selects COMMON_CLK_OF_PROVIDER
To: barebox@lists.infradead.org
Cc: Alexander Kurz <akurz@blala.de>

Build of clk-imx7 depends on selection of COMMON_CLK_OF_PROVIDER

Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 arch/arm/mach-imx/Kconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 0e3c7de..4dc1098 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -161,6 +161,8 @@ config ARCH_IMX6UL
 config ARCH_IMX7
 	bool
 	select CPU_V7
+	select OFTREE
+	select COMMON_CLK_OF_PROVIDER
 
 config ARCH_VF610
 	bool
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
