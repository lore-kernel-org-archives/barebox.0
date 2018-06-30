Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x229.google.com ([2607:f8b0:400e:c00::229])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fZ6q7-0003DU-OM
 for barebox@lists.infradead.org; Sat, 30 Jun 2018 03:46:25 +0000
Received: by mail-pf0-x229.google.com with SMTP id l123-v6so1986942pfl.13
 for <barebox@lists.infradead.org>; Fri, 29 Jun 2018 20:46:11 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 29 Jun 2018 20:45:58 -0700
Message-Id: <20180630034558.2318-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH] fixup! ARM: i.MX: Add support for ZII RDU1 board
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

---

Sascha:

I tested "ARM: i.MX: Add support for ZII RDU1 board" patch as it is in
"next" and it works as expected. Here's a couple of cosmetic fixes I'd
suggest (feel free to ignore):

    - Drop all ZII_RDU1_DATAFLASH_* constants since now they are
      superfluous. Previous version of the patch used that string
      multiple time so it made more sense to have it as a named
      constant back then.

    - Avoid line wrap for IMX_BBU_FLAG_PARTITION_STARTS_AT_HEADER. 80
      character per line rule is still true on my 13" laptop when
      splitting screen in two and editing two files in parallel (what
      I end up doing 90% of the time)

Thanks,
Andrey Smirnov

 arch/arm/boards/zii-imx51-rdu1/board.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boards/zii-imx51-rdu1/board.c b/arch/arm/boards/zii-imx51-rdu1/board.c
index edae99539..ac5232e17 100644
--- a/arch/arm/boards/zii-imx51-rdu1/board.c
+++ b/arch/arm/boards/zii-imx51-rdu1/board.c
@@ -21,9 +21,6 @@
 #include <libfile.h>
 #include <mach/imx5.h>
 
-#define ZII_RDU1_DATAFLASH		"/dev/dataflash0"
-#define ZII_RDU1_DATAFLASH_BAREBOX	ZII_RDU1_DATAFLASH ".barebox"
-
 static int zii_rdu1_init(void)
 {
 	if (!of_machine_is_compatible("zii,imx51-rdu1"))
@@ -35,8 +32,9 @@ static int zii_rdu1_init(void)
 
 	imx51_bbu_internal_mmc_register_handler("mmc", "/dev/mmc0", 0);
 	imx51_bbu_internal_spi_i2c_register_handler("spi",
-		ZII_RDU1_DATAFLASH_BAREBOX,
-		BBU_HANDLER_FLAG_DEFAULT | IMX_BBU_FLAG_PARTITION_STARTS_AT_HEADER);
+		"/dev/dataflash0.barebox",
+		BBU_HANDLER_FLAG_DEFAULT |
+		IMX_BBU_FLAG_PARTITION_STARTS_AT_HEADER);
 
 	return 0;
 }
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
