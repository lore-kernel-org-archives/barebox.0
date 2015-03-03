Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YSsnh-0001JY-9v
 for barebox@lists.infradead.org; Tue, 03 Mar 2015 19:48:17 +0000
Received: from tellur.intern.lynxeye.de (p57B5E414.dip0.t-ipconnect.de
 [87.181.228.20]) by lynxeye.de (Postfix) with ESMTPA id 8E5D826C2009
 for <barebox@lists.infradead.org>; Tue,  3 Mar 2015 20:46:30 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Tue,  3 Mar 2015 20:46:21 +0100
Message-Id: <1425411983-24732-9-git-send-email-dev@lynxeye.de>
In-Reply-To: <1425411983-24732-1-git-send-email-dev@lynxeye.de>
References: <1425411983-24732-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 09/11] ARM: tegra: add barebox update handler to Beaver board
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/boards/nvidia-beaver/board.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boards/nvidia-beaver/board.c b/arch/arm/boards/nvidia-beaver/board.c
index d270301..bab0238 100644
--- a/arch/arm/boards/nvidia-beaver/board.c
+++ b/arch/arm/boards/nvidia-beaver/board.c
@@ -19,6 +19,7 @@
 #include <gpio.h>
 #include <i2c/i2c.h>
 #include <init.h>
+#include <mach/tegra-bbu.h>
 
 static int nvidia_beaver_fs_init(void)
 {
@@ -53,6 +54,9 @@ static int nvidia_beaver_device_init(void)
 
 	barebox_set_hostname("beaver");
 
+	tegra_bbu_register_emmc_handler("eMMC", "/dev/mmc3.boot0",
+					BBU_HANDLER_FLAG_DEFAULT);
+
 	return 0;
 }
 device_initcall(nvidia_beaver_device_init);
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
