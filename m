Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x229.google.com ([2a00:1450:4010:c04::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zu6MT-0005XT-DH
 for barebox@lists.infradead.org; Wed, 04 Nov 2015 22:16:58 +0000
Received: by lbblt2 with SMTP id lt2so3811557lbb.3
 for <barebox@lists.infradead.org>; Wed, 04 Nov 2015 14:16:36 -0800 (PST)
From: Anton Bondarenko <anton.bondarenko.sama@gmail.com>
Date: Wed,  4 Nov 2015 23:16:32 +0100
Message-Id: <1446675393-402-2-git-send-email-anton.bondarenko.sama@gmail.com>
In-Reply-To: <1446675393-402-1-git-send-email-anton.bondarenko.sama@gmail.com>
References: <1446675393-402-1-git-send-email-anton.bondarenko.sama@gmail.com>
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
Subject: [PATCH v2 1/2] embedsky-e9: enable barebox_update command for booter
 update
To: barebox@lists.infradead.org, s.hauer@pengutronix.de

Simplify booter update with barebox_update command using special
IMX6 MMC BBU handler.

Signed-off-by: Anton Bondarenko <anton.bondarenko.sama@gmail.com>
---
 arch/arm/boards/embedsky-e9/board.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boards/embedsky-e9/board.c b/arch/arm/boards/embedsky-e9/board.c
index e8aac0c..23bfec1 100644
--- a/arch/arm/boards/embedsky-e9/board.c
+++ b/arch/arm/boards/embedsky-e9/board.c
@@ -41,6 +41,8 @@
 #include <mach/usb.h>
 #include <envfs.h>
 #include <bootsource.h>
+#include <bbu.h>
+#include <mach/bbu.h>
 
 #define PHY_ID_RTL8211E	0x001cc915
 #define PHY_ID_MASK	0xffffffff
@@ -81,6 +83,12 @@ static int e9_devices_init(void)
 
 	defaultenv_append_directory(defaultenv_e9);
 
+	imx6_bbu_internal_mmc_register_handler("sd", "/dev/mmc1",
+		BBU_HANDLER_FLAG_DEFAULT);
+
+	imx6_bbu_internal_mmc_register_handler("emmc", "/dev/mmc3",
+		BBU_HANDLER_FLAG_DEFAULT);
+
 	return 0;
 }
 device_initcall(e9_devices_init);
-- 
2.6.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
