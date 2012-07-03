Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sm7Wh-0006ss-KD
 for barebox@lists.infradead.org; Tue, 03 Jul 2012 18:08:57 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  3 Jul 2012 20:08:20 +0200
Message-Id: <1341338900-29304-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM tqma53: Add standard flash header
To: barebox@lists.infradead.org

So that bootm detects the image as a barebox image.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/tqma53/flash_header.c |    3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/tqma53/flash_header.c b/arch/arm/boards/tqma53/flash_header.c
index f5e817c..d912b38 100644
--- a/arch/arm/boards/tqma53/flash_header.c
+++ b/arch/arm/boards/tqma53/flash_header.c
@@ -15,11 +15,12 @@
 
 #include <common.h>
 #include <asm/byteorder.h>
+#include <asm/barebox-arm-head.h>
 #include <mach/imx-flash-header.h>
 
 void __naked __flash_header_start go(void)
 {
-	__asm__ __volatile__("b exception_vectors\n");
+	barebox_arm_head();
 }
 
 struct imx_dcd_v2_entry __dcd_entry_section dcd_entry[] = {
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
