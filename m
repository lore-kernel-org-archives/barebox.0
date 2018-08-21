Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x42d.google.com ([2607:f8b0:4864:20::42d])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fs07v-0000BD-KF
 for barebox@lists.infradead.org; Tue, 21 Aug 2018 06:26:57 +0000
Received: by mail-pf1-x42d.google.com with SMTP id h69-v6so45978pfd.4
 for <barebox@lists.infradead.org>; Mon, 20 Aug 2018 23:26:41 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Subject: [PATCH 17/22] ARM: nxp-imx8mq-evk: Add eMMC BBU configuration
Date: Mon, 20 Aug 2018 23:25:58 -0700
Message-Id: <20180821062603.17393-18-andrew.smirnov@gmail.com>
In-Reply-To: <20180821062603.17393-1-andrew.smirnov@gmail.com>
References: <20180821062603.17393-1-andrew.smirnov@gmail.com>
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
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Add BBU configuration to allow programming Barebox to eMMC. Normally
factory U-Boot is shipped in mmc0.boot0, so us using user partition
for Barebox should allow those two to coexist.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/boards/nxp-imx8mq-evk/board.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boards/nxp-imx8mq-evk/board.c b/arch/arm/boards/nxp-imx8mq-evk/board.c
index d93e21da1..868c25ebb 100644
--- a/arch/arm/boards/nxp-imx8mq-evk/board.c
+++ b/arch/arm/boards/nxp-imx8mq-evk/board.c
@@ -21,6 +21,7 @@
 #include <init.h>
 #include <asm/memory.h>
 #include <linux/sizes.h>
+#include <mach/bbu.h>
 
 static int imx8mq_evk_mem_init(void)
 {
@@ -39,6 +40,8 @@ static int nxp_imx8mq_evk_init(void)
 
 	barebox_set_hostname("imx8mq-evk");
 
+	imx8mq_bbu_internal_mmc_register_handler("eMMC", "/dev/mmc0", 0);
+
 	return 0;
 }
 device_initcall(nxp_imx8mq_evk_init);
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
