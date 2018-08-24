Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ft2E5-0005Nk-Uj
 for barebox@lists.infradead.org; Fri, 24 Aug 2018 02:53:38 +0000
Received: by mail-pf1-x444.google.com with SMTP id h79-v6so2930378pfk.8
 for <barebox@lists.infradead.org>; Thu, 23 Aug 2018 19:53:19 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 23 Aug 2018 19:52:30 -0700
Message-Id: <20180824025243.19479-12-andrew.smirnov@gmail.com>
In-Reply-To: <20180824025243.19479-1-andrew.smirnov@gmail.com>
References: <20180824025243.19479-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 11/24] ARM: i.MX: bbu: Alias
 imx5*_bbu_internal_mmc_register_handler()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Alias imx5*_bbu_internal_mmc_register_handler() to
imx_bbu_internal_mmc_register_handler()

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/mach-imx/imx-bbu-internal.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
index c47a1726a..d45fe1b68 100644
--- a/arch/arm/mach-imx/imx-bbu-internal.c
+++ b/arch/arm/mach-imx/imx-bbu-internal.c
@@ -471,9 +471,7 @@ int imx51_bbu_internal_spi_i2c_register_handler(const char *name,
 int imx51_bbu_internal_mmc_register_handler(const char *name,
 					    const char *devicefile,
 					    unsigned long flags)
-{
-	return imx_bbu_internal_mmc_register_handler(name, devicefile, flags);
-}
+	__alias(imx_bbu_internal_mmc_register_handler);
 
 /*
  * Register an i.MX53 internal boot update handler for MMC/SD
@@ -481,9 +479,7 @@ int imx51_bbu_internal_mmc_register_handler(const char *name,
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
