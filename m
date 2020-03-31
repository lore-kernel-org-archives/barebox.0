Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pj1-x1042.google.com ([2607:f8b0:4864:20::1042])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJLvW-00065M-9a
 for barebox@lists.infradead.org; Tue, 31 Mar 2020 18:48:10 +0000
Received: by mail-pj1-x1042.google.com with SMTP id z3so1453394pjr.4
 for <barebox@lists.infradead.org>; Tue, 31 Mar 2020 11:47:52 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 31 Mar 2020 11:47:13 -0700
Message-Id: <20200331184722.22707-15-andrew.smirnov@gmail.com>
In-Reply-To: <20200331184722.22707-1-andrew.smirnov@gmail.com>
References: <20200331184722.22707-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 14/23] ARM: zii-imx8mq-dev: Register SD card slot with BBU
To: Barebox List <barebox@lists.infradead.org>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Register SD card slot with BBU. This is really useful for development
since this allows to update the bootloader on SD card without having
to take it out of the device.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/zii-imx8mq-dev/board.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boards/zii-imx8mq-dev/board.c b/arch/arm/boards/zii-imx8mq-dev/board.c
index 285e889fe..cfe879c20 100644
--- a/arch/arm/boards/zii-imx8mq-dev/board.c
+++ b/arch/arm/boards/zii-imx8mq-dev/board.c
@@ -33,6 +33,7 @@ static int zii_imx8mq_dev_init(void)
 
 	imx8mq_bbu_internal_mmcboot_register_handler("eMMC", "/dev/mmc0",
 						     BBU_HANDLER_FLAG_DEFAULT);
+	imx8mq_bbu_internal_mmc_register_handler("SD", "/dev/mmc1", 0);
 
 	if (bootsource_get_instance() == 0)
 		of_device_enable_path("/chosen/environment-emmc");
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
