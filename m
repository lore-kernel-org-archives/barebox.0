Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp14.mail.ru ([94.100.176.91])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U9XoY-0003au-62
 for barebox@lists.infradead.org; Sun, 24 Feb 2013 09:24:13 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sun, 24 Feb 2013 13:23:58 +0400
Message-Id: <1361697839-14310-6-git-send-email-shc_work@mail.ru>
In-Reply-To: <1361697839-14310-1-git-send-email-shc_work@mail.ru>
References: <1361697839-14310-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 6/7] ARM: pcm038: Using "get_ram_size" for determine SRAM size
To: barebox@lists.infradead.org


Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/boards/pcm038/pcm038.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boards/pcm038/pcm038.c b/arch/arm/boards/pcm038/pcm038.c
index f6de8f3..587ace8 100644
--- a/arch/arm/boards/pcm038/pcm038.c
+++ b/arch/arm/boards/pcm038/pcm038.c
@@ -21,6 +21,7 @@
 #include <environment.h>
 #include <mach/imx27-regs.h>
 #include <fec.h>
+#include <sizes.h>
 #include <notifier.h>
 #include <mach/gpio.h>
 #include <asm/armlinux.h>
@@ -186,6 +187,7 @@ static int pcm038_devices_init(void)
 	int i;
 	u64 uid = 0;
 	char *envdev;
+	long sram_size;
 
 	unsigned int mode[] = {
 		PD0_AIN_FEC_TXD0,
@@ -270,9 +272,11 @@ static int pcm038_devices_init(void)
 	/* configure SRAM on cs1 */
 	imx27_setup_weimcs(1, 0x0000d843, 0x22252521, 0x22220a00);
 
-	/* Can be up to 2MiB */
-	add_mem_device("ram1", 0xc8000000, 512 * 1024,
-				   IORESOURCE_MEM_WRITEABLE);
+	/* SRAM can be up to 2MiB */
+	sram_size = get_ram_size((ulong *)MX27_CS1_BASE_ADDR, SZ_2M);
+	if (sram_size)
+		add_mem_device("ram1", MX27_CS1_BASE_ADDR, sram_size,
+			       IORESOURCE_MEM_WRITEABLE);
 
 	/* initizalize gpios */
 	for (i = 0; i < ARRAY_SIZE(mode); i++)
-- 
1.7.12.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
