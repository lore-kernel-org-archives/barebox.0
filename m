Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioZ1D-0004mM-Eq
 for barebox@lists.infradead.org; Mon, 06 Jan 2020 20:30:33 +0000
Received: from astat.fritz.box (a89-183-93-199.net-htp.de [89.183.93.199])
 by lynxeye.de (Postfix) with ESMTPA id 5D238E7421F
 for <barebox@lists.infradead.org>; Mon,  6 Jan 2020 21:29:53 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Mon,  6 Jan 2020 21:29:45 +0100
Message-Id: <20200106202945.4565-2-dev@lynxeye.de>
In-Reply-To: <20200106202945.4565-1-dev@lynxeye.de>
References: <20200106202945.4565-1-dev@lynxeye.de>
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
Subject: [PATCH 2/2] ARM: zynq: zed: use zynq_cpu_lowlevel_init()
To: barebox@lists.infradead.org

Make sure the required workarounds for CPU errata are applied.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/boards/avnet-zedboard/lowlevel.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/avnet-zedboard/lowlevel.c b/arch/arm/boards/avnet-zedboard/lowlevel.c
index 58f9e40d11c9..c987db75b068 100644
--- a/arch/arm/boards/avnet-zedboard/lowlevel.c
+++ b/arch/arm/boards/avnet-zedboard/lowlevel.c
@@ -20,6 +20,7 @@
 #include <io.h>
 #include <asm/barebox-arm.h>
 #include <asm/barebox-arm-head.h>
+#include <mach/init.h>
 #include <mach/zynq7000-regs.h>
 
 #define DCI_DONE	(1 << 13)
@@ -283,7 +284,7 @@ ENTRY_FUNCTION(start_avnet_zedboard, r0, r1, r2)
 
 	void *fdt = __dtb_zynq_zed_start + get_runtime_offset();
 
-	arm_cpu_lowlevel_init();
+	zynq_cpu_lowlevel_init();
 
 	avnet_zedboard_ps7_init();
 
-- 
2.24.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
