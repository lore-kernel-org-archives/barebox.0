Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp1.mail.ru ([94.100.176.129])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Srsgb-0004q4-Sj
 for barebox@lists.infradead.org; Thu, 19 Jul 2012 15:30:46 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Thu, 19 Jul 2012 19:30:17 +0400
Message-Id: <1342711817-866-6-git-send-email-shc_work@mail.ru>
In-Reply-To: <1342711817-866-1-git-send-email-shc_work@mail.ru>
References: <1342711817-866-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 6/6] PCM038: Read UID from fuses and pass this value to kernel
 as serial number
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/boards/pcm038/pcm038.c |    4 ++++
 1 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/arch/arm/boards/pcm038/pcm038.c b/arch/arm/boards/pcm038/pcm038.c
index 5b0afc3..1bdb93c 100644
--- a/arch/arm/boards/pcm038/pcm038.c
+++ b/arch/arm/boards/pcm038/pcm038.c
@@ -40,6 +40,7 @@
 #include <mach/spi.h>
 #include <mach/iomux-mx27.h>
 #include <mach/devices-imx27.h>
+#include <mach/iim.h>
 #include <mfd/mc13xxx.h>
 
 #include "pll.h"
@@ -193,6 +194,7 @@ mem_initcall(pcm038_mem_init);
 static int pcm038_devices_init(void)
 {
 	int i;
+	u64 uid;
 	char *envdev;
 
 	unsigned int mode[] = {
@@ -316,6 +318,8 @@ static int pcm038_devices_init(void)
 
 	printf("Using environment in %s Flash\n", envdev);
 
+	if (imx_iim_read(1, 1, &uid, 6) == 6)
+		armlinux_set_serial(uid);
 	armlinux_set_bootparams((void *)0xa0000100);
 	armlinux_set_architecture(MACH_TYPE_PCM038);
 
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
