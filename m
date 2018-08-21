Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x241.google.com ([2607:f8b0:400e:c01::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fs07p-00006y-4O
 for barebox@lists.infradead.org; Tue, 21 Aug 2018 06:26:51 +0000
Received: by mail-pl0-x241.google.com with SMTP id p4-v6so4740328pll.8
 for <barebox@lists.infradead.org>; Mon, 20 Aug 2018 23:26:34 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Subject: [PATCH 10/22] ARM: i.MX: bbu: Alias
 imx5*_bbu_internal_mmc_register_handler()
Date: Mon, 20 Aug 2018 23:25:51 -0700
Message-Id: <20180821062603.17393-11-andrew.smirnov@gmail.com>
In-Reply-To: <20180821062603.17393-1-andrew.smirnov@gmail.com>
References: <20180821062603.17393-1-andrew.smirnov@gmail.com>
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
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Alias imx5*_bbu_internal_mmc_register_handler() to
imx_bbu_internal_mmc_register_handler()

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/imx-bbu-internal.c | 9 ++-------
 1 file changed, 2 insertions(+), 7 deletions(-)

diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
index 3ef49a859..e7fbe3e16 100644
--- a/arch/arm/mach-imx/imx-bbu-internal.c
+++ b/arch/arm/mach-imx/imx-bbu-internal.c
@@ -467,10 +467,7 @@ int imx51_bbu_internal_spi_i2c_register_handler(const char *name,
 int imx51_bbu_internal_mmc_register_handler(const char *name,
 					    const char *devicefile,
 					    unsigned long flags)
-{
-
-	return imx_bbu_internal_mmc_register_handler(name, devicefile, flags);
-}
+	__alias(imx_bbu_internal_mmc_register_handler);
 
 /*
  * Register an i.MX53 internal boot update handler for MMC/SD
@@ -478,9 +475,7 @@ int imx51_bbu_internal_mmc_register_handler(const char *name,
 int imx53_bbu_internal_mmc_register_handler(const char *name,
 					    const char *devicefile,
 					    unsigned long flags)
-{
-	return imx_bbu_internal_mmc_register_handler(name, devicefile, flags);
-}
+	__alias(imx_bbu_internal_mmc_register_handler);
 
 /*
  * Register an i.MX6 internal boot update handler for i2c/spi
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
