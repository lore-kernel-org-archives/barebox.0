Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Oftg6-0007wn-Bh
	for barebox@lists.infradead.org; Mon, 02 Aug 2010 11:59:34 +0000
From: Baruch Siach <baruch@tkos.co.il>
Date: Mon,  2 Aug 2010 14:58:53 +0300
Message-Id: <00441e3bebcaabc865025474144786f495a3a3a0.1280749932.git.baruch@tkos.co.il>
In-Reply-To: <cover.1280749932.git.baruch@tkos.co.il>
References: <cover.1280749932.git.baruch@tkos.co.il>
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
Subject: [PATCH 3/3] mx25 3ds: set CPU UID
To: barebox@lists.infradead.org

Signed-off-by: Baruch Siach <baruch@tkos.co.il>
---
 arch/arm/boards/freescale-mx25-3-stack/3stack.c |    2 ++
 1 files changed, 2 insertions(+), 0 deletions(-)

diff --git a/arch/arm/boards/freescale-mx25-3-stack/3stack.c b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
index a77a02d..cd228cc 100644
--- a/arch/arm/boards/freescale-mx25-3-stack/3stack.c
+++ b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
@@ -36,6 +36,7 @@
 #include <nand.h>
 #include <mach/imx-flash-header.h>
 #include <mach/iomux-mx25.h>
+#include <mach/generic.h>
 #include <linux/err.h>
 #include <i2c/i2c.h>
 #include <i2c/mc34704.h>
@@ -275,6 +276,7 @@ static int imx25_devices_init(void)
 	armlinux_add_dram(&sdram0_dev);
 	armlinux_set_bootparams((void *)0x80000100);
 	armlinux_set_architecture(MACH_TYPE_MX25_3DS);
+	armlinux_set_serial(imx_uid());
 
 	return 0;
 }
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
