Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJLvS-000627-39
 for barebox@lists.infradead.org; Tue, 31 Mar 2020 18:47:58 +0000
Received: by mail-pj1-x1044.google.com with SMTP id jz1so1224682pjb.0
 for <barebox@lists.infradead.org>; Tue, 31 Mar 2020 11:47:50 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 31 Mar 2020 11:47:11 -0700
Message-Id: <20200331184722.22707-13-andrew.smirnov@gmail.com>
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
Subject: [PATCH 12/23] ARM: zii-imx6q-rdu2: Register SD card slot with BBU
To: Barebox List <barebox@lists.infradead.org>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Register SD card slot with BBU. This is really useful for development
since this allows to update the bootloader on SD card without having
to take it out of the device.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/zii-imx6q-rdu2/board.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boards/zii-imx6q-rdu2/board.c b/arch/arm/boards/zii-imx6q-rdu2/board.c
index 6d6bc1caa..0f298d6a4 100644
--- a/arch/arm/boards/zii-imx6q-rdu2/board.c
+++ b/arch/arm/boards/zii-imx6q-rdu2/board.c
@@ -154,6 +154,7 @@ static int rdu2_devices_init(void)
 						   BBU_HANDLER_FLAG_DEFAULT);
 
 	imx6_bbu_internal_mmcboot_register_handler("eMMC", "/dev/mmc3", 0);
+	imx6_bbu_internal_mmc_register_handler("SD", "/dev/mmc1", 0);
 
 	defaultenv_append_directory(defaultenv_zii_common);
 	defaultenv_append_directory(defaultenv_rdu2);
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
