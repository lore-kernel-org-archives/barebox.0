Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g2OPP-0002Cx-F9
 for barebox@lists.infradead.org; Tue, 18 Sep 2018 22:24:04 +0000
Received: by mail-pf1-x444.google.com with SMTP id x17-v6so1677099pfh.5
 for <barebox@lists.infradead.org>; Tue, 18 Sep 2018 15:23:41 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 18 Sep 2018 15:23:04 -0700
Message-Id: <20180918222305.6834-11-andrew.smirnov@gmail.com>
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
Subject: [PATCH 10/11] ARM: rdu1: Change BBU names to match RDU2
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Change BBU names to match RDU2 and the rest of ZII boards.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/zii-imx51-rdu1/board.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/zii-imx51-rdu1/board.c b/arch/arm/boards/zii-imx51-rdu1/board.c
index ac5232e17..a8c11cc46 100644
--- a/arch/arm/boards/zii-imx51-rdu1/board.c
+++ b/arch/arm/boards/zii-imx51-rdu1/board.c
@@ -30,8 +30,8 @@ static int zii_rdu1_init(void)
 
 	barebox_set_hostname("rdu1");
 
-	imx51_bbu_internal_mmc_register_handler("mmc", "/dev/mmc0", 0);
-	imx51_bbu_internal_spi_i2c_register_handler("spi",
+	imx51_bbu_internal_mmc_register_handler("eMMC", "/dev/mmc0", 0);
+	imx51_bbu_internal_spi_i2c_register_handler("SPI",
 		"/dev/dataflash0.barebox",
 		BBU_HANDLER_FLAG_DEFAULT |
 		IMX_BBU_FLAG_PARTITION_STARTS_AT_HEADER);
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
