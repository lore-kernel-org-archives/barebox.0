Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x52d.google.com ([2607:f8b0:4864:20::52d])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ft2EC-0005QO-SU
 for barebox@lists.infradead.org; Fri, 24 Aug 2018 02:53:46 +0000
Received: by mail-pg1-x52d.google.com with SMTP id u10-v6so1882130pgr.1
 for <barebox@lists.infradead.org>; Thu, 23 Aug 2018 19:53:25 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 23 Aug 2018 19:52:37 -0700
Message-Id: <20180824025243.19479-19-andrew.smirnov@gmail.com>
In-Reply-To: <20180824025243.19479-1-andrew.smirnov@gmail.com>
References: <20180824025243.19479-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 18/24] ARM: nxp-imx8mq-evk: Add eMMC BBU configuration
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
