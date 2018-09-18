Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g2OPR-0002DQ-5S
 for barebox@lists.infradead.org; Tue, 18 Sep 2018 22:24:01 +0000
Received: by mail-pg1-x544.google.com with SMTP id d19-v6so1717281pgv.1
 for <barebox@lists.infradead.org>; Tue, 18 Sep 2018 15:23:43 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 18 Sep 2018 15:23:05 -0700
Message-Id: <20180918222305.6834-12-andrew.smirnov@gmail.com>
In-Reply-To: <20180918222305.6834-1-andrew.smirnov@gmail.com>
References: <20180918222305.6834-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 11/11] ARM: rdu1: Switch MMC BBU to use boot partitions
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/zii-imx51-rdu1/board.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/zii-imx51-rdu1/board.c b/arch/arm/boards/zii-imx51-rdu1/board.c
index a8c11cc46..601c9a236 100644
--- a/arch/arm/boards/zii-imx51-rdu1/board.c
+++ b/arch/arm/boards/zii-imx51-rdu1/board.c
@@ -30,7 +30,7 @@ static int zii_rdu1_init(void)
 
 	barebox_set_hostname("rdu1");
 
-	imx51_bbu_internal_mmc_register_handler("eMMC", "/dev/mmc0", 0);
+	imx51_bbu_internal_mmcboot_register_handler("eMMC", "/dev/mmc0", 0);
 	imx51_bbu_internal_spi_i2c_register_handler("SPI",
 		"/dev/dataflash0.barebox",
 		BBU_HANDLER_FLAG_DEFAULT |
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
