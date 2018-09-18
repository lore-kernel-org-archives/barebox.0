Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1g2OPM-0002C0-Nt
 for barebox@lists.infradead.org; Tue, 18 Sep 2018 22:24:05 +0000
Received: by mail-pl1-x642.google.com with SMTP id b97-v6so1662692plb.0
 for <barebox@lists.infradead.org>; Tue, 18 Sep 2018 15:23:38 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 18 Sep 2018 15:23:02 -0700
Message-Id: <20180918222305.6834-9-andrew.smirnov@gmail.com>
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
Subject: [PATCH 08/11] ARM: zii-vf610-dev: Switch MMC BBU to use boot
 partitions
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Convert SPU3 to use MMC boot partitions as well as extend the initcall
to cover CFU1 which can support this feature as well.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/zii-vf610-dev/board.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boards/zii-vf610-dev/board.c b/arch/arm/boards/zii-vf610-dev/board.c
index 42b5c59df..cc3ecbda2 100644
--- a/arch/arm/boards/zii-vf610-dev/board.c
+++ b/arch/arm/boards/zii-vf610-dev/board.c
@@ -168,10 +168,11 @@ static int zii_vf610_dev_register_bbu(void)
 }
 late_initcall(zii_vf610_dev_register_bbu);
 
-static int zii_vf610_spu3_register_bbu(void)
+static int zii_vf610_register_emmc_bbu(void)
 {
 	int ret;
-	if (!of_machine_is_compatible("zii,vf610spu3-a"))
+	if (!of_machine_is_compatible("zii,vf610spu3-a") &&
+	    !of_machine_is_compatible("zii,vf610cfu1-a"))
 		return 0;
 
 	ret = vf610_bbu_internal_mmcboot_register_handler("eMMC",
@@ -184,4 +185,4 @@ static int zii_vf610_spu3_register_bbu(void)
 
 	return 0;
 }
-late_initcall(zii_vf610_spu3_register_bbu);
\ No newline at end of file
+late_initcall(zii_vf610_register_emmc_bbu);
\ No newline at end of file
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
