Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x22c.google.com ([2a00:1450:400c:c03::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XDCnL-0004Wo-Ci
 for barebox@lists.infradead.org; Fri, 01 Aug 2014 13:22:52 +0000
Received: by mail-we0-f172.google.com with SMTP id x48so4356824wes.31
 for <barebox@lists.infradead.org>; Fri, 01 Aug 2014 06:22:31 -0700 (PDT)
From: =?UTF-8?q?Rapha=C3=ABl=20Poggi?= <poggi.raph@gmail.com>
Date: Fri,  1 Aug 2014 15:23:22 +0200
Message-Id: <1406899404-29094-4-git-send-email-poggi.raph@gmail.com>
In-Reply-To: <1406899404-29094-1-git-send-email-poggi.raph@gmail.com>
References: <1406899404-29094-1-git-send-email-poggi.raph@gmail.com>
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
Subject: [PATCH 3/5] board: atmel: initialise the has_pmecc member
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Rapha=C3=ABl=20Poggi?= <poggi.raph@gmail.com>

---
 arch/arm/boards/at91sam9n12ek/init.c    |    1 +
 arch/arm/boards/at91sam9x5ek/init.c     |    1 +
 arch/arm/boards/sama5d3_xplained/init.c |    1 +
 arch/arm/boards/sama5d3xek/init.c       |    1 +
 4 files changed, 4 insertions(+)

diff --git a/arch/arm/boards/at91sam9n12ek/init.c b/arch/arm/boards/at91sam9n12ek/init.c
index a206d6b..818a598 100644
--- a/arch/arm/boards/at91sam9n12ek/init.c
+++ b/arch/arm/boards/at91sam9n12ek/init.c
@@ -47,6 +47,7 @@ static struct atmel_nand_data nand_pdata = {
 	.det_pin	= -EINVAL,
 	.rdy_pin	= AT91_PIN_PD5,
 	.enable_pin	= AT91_PIN_PD4,
+	.has_pmecc	= 1,
 	.ecc_mode	= NAND_ECC_HW,
 	.pmecc_sector_size = 512,
 	.pmecc_corr_cap = 2,
diff --git a/arch/arm/boards/at91sam9x5ek/init.c b/arch/arm/boards/at91sam9x5ek/init.c
index 62e5652..183ddc7 100644
--- a/arch/arm/boards/at91sam9x5ek/init.c
+++ b/arch/arm/boards/at91sam9x5ek/init.c
@@ -57,6 +57,7 @@ static struct atmel_nand_data nand_pdata = {
 	.det_pin	= -EINVAL,
 	.rdy_pin	= AT91_PIN_PD5,
 	.enable_pin	= AT91_PIN_PD4,
+	.has_pmecc	= 1,
 	.ecc_mode	= NAND_ECC_HW,
 	.pmecc_sector_size = 512,
 	.pmecc_corr_cap = 2,
diff --git a/arch/arm/boards/sama5d3_xplained/init.c b/arch/arm/boards/sama5d3_xplained/init.c
index ae18863..b182802 100644
--- a/arch/arm/boards/sama5d3_xplained/init.c
+++ b/arch/arm/boards/sama5d3_xplained/init.c
@@ -48,6 +48,7 @@ static struct atmel_nand_data nand_pdata = {
 	.rdy_pin	= -EINVAL,
 	.enable_pin	= -EINVAL,
 	.ecc_mode	= NAND_ECC_HW,
+	.has_pmecc	= 1,
 	.pmecc_sector_size = 512,
 	.pmecc_corr_cap = 4,
 #if defined(CONFIG_MTD_NAND_ATMEL_BUSWIDTH_16)
diff --git a/arch/arm/boards/sama5d3xek/init.c b/arch/arm/boards/sama5d3xek/init.c
index 743197f..49d2b37 100644
--- a/arch/arm/boards/sama5d3xek/init.c
+++ b/arch/arm/boards/sama5d3xek/init.c
@@ -63,6 +63,7 @@ static struct atmel_nand_data nand_pdata = {
 	.rdy_pin	= -EINVAL,
 	.enable_pin	= -EINVAL,
 	.ecc_mode	= NAND_ECC_HW,
+	.has_pmecc	= 1,
 	.pmecc_sector_size = 512,
 	.pmecc_corr_cap = 4,
 #if defined(CONFIG_MTD_NAND_ATMEL_BUSWIDTH_16)
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
