Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp24.mail.ru ([94.100.176.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SF018-0005G6-Ce
 for barebox@lists.infradead.org; Tue, 03 Apr 2012 09:27:11 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Tue,  3 Apr 2012 13:27:00 +0400
Message-Id: <1333445220-14654-1-git-send-email-shc_work@mail.ru>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] Define barebox_loc magic variable only once
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/mach-imx/boot.c |    4 +---
 1 files changed, 1 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
index 9f2def6..b79ebc7 100644
--- a/arch/arm/mach-imx/boot.c
+++ b/arch/arm/mach-imx/boot.c
@@ -87,8 +87,6 @@ static int imx_25_35_boot_save_loc(void)
 	return 0;
 }
 coredevice_initcall(imx_25_35_boot_save_loc);
-
-BAREBOX_MAGICVAR(barebox_loc, "The source barebox has been booted from");
 #endif
 
 #if defined(CONFIG_ARCH_IMX27)
@@ -114,6 +112,6 @@ static int imx_27_boot_save_loc(void)
 	return 0;
 }
 coredevice_initcall(imx_27_boot_save_loc);
+#endif
 
 BAREBOX_MAGICVAR(barebox_loc, "The source barebox has been booted from");
-#endif
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
