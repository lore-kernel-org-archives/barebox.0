Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([94.23.35.102])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UIhXs-0007Ay-20
 for barebox@lists.infradead.org; Thu, 21 Mar 2013 15:36:48 +0000
From: Alexandre Belloni <alexandre.belloni@free-electrons.com>
Date: Thu, 21 Mar 2013 16:36:38 +0100
Message-Id: <1363880198-21029-1-git-send-email-alexandre.belloni@free-electrons.com>
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
Subject: [PATCH] cfa10036: Retrieve the RAM size at runtime
To: barebox@lists.infradead.org
Cc: Maxime Ripard <maxime.ripard@free-electrons.com>

The cfa-10036 comes in two flavours, with either 128MB or 256MB of RAM
on it.

Since it's not stored anywhere, we need to runtime detect it by
introducing the cfa10036_get_ram_size function which is similar to
get_ram_size. As we run from RAM, we can then use _text and __bss_stop
to prevent poking in the barebox memory which is not supported on other
platforms.

Signed-off-by: Alexandre Belloni <alexandre.belloni@free-electrons.com>
Cc: Maxime Ripard <maxime.ripard@free-electrons.com>
---
 arch/arm/boards/crystalfontz-cfa10036/cfa10036.c |   72 +++++++++++++++++++++-
 1 file changed, 71 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c b/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
index 1bc20cf..37cc17e 100644
--- a/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
+++ b/arch/arm/boards/crystalfontz-cfa10036/cfa10036.c
@@ -39,6 +39,8 @@
 #include <asm/armlinux.h>
 #include <asm/mmu.h>
 
+#include <asm-generic/sections.h>
+
 #include <mach/fb.h>
 
 #include <generated/mach-types.h>
@@ -90,9 +92,77 @@ static struct i2c_gpio_platform_data i2c_gpio_pdata = {
 	.udelay			= 5,		/* ~100 kHz */
 };
 
+/*
+ * Copied from get_ram_size in common/memory.c
+ */
+long cfa10036_get_ram_size(volatile long *base, long maxsize)
+{
+	volatile long *addr;
+	long           save[32];
+	long           cnt;
+	long           val;
+	long           size;
+	int            i = 0;
+
+	for (cnt = (maxsize / sizeof (long)) >> 1; cnt > 0; cnt >>= 1) {
+		addr = base + cnt;	/* pointer arith! */
+
+		/*
+		 * If we run get_ram_size from RAM, avoid poking into
+		 * the Barebox code, and if the RAM at these address
+		 * doesn't work, we will have trouble anyway...
+		 */
+		if (addr > (long*)_text && addr < (long*)__bss_stop)
+			continue;
+
+		save[i++] = *addr;
+		*addr = ~cnt;
+	}
+
+	addr = base;
+	save[i] = *addr;
+	*addr = 0;
+
+	if ((val = *addr) != 0) {
+		/* Restore the original data before leaving the function.
+		 */
+		*addr = save[i];
+		for (cnt = 1; cnt < maxsize / sizeof(long); cnt <<= 1) {
+			addr  = base + cnt;
+			*addr = save[--i];
+		}
+		return (0);
+	}
+
+	for (cnt = 1; cnt < maxsize / sizeof (long); cnt <<= 1) {
+		addr = base + cnt;	/* pointer arith! */
+		if (addr > (long*)_text && addr < (long*)__bss_stop)
+			continue;
+
+		val = *addr;
+		*addr = save[--i];
+		if (val != ~cnt) {
+			size = cnt * sizeof (long);
+			/* Restore the original data before leaving the function.
+			 */
+			for (cnt <<= 1; cnt < maxsize / sizeof (long); cnt <<= 1) {
+				addr  = base + cnt;
+				if (addr > (long*)_text && addr < (long*)__bss_stop)
+					continue;
+
+				*addr = save[--i];
+			}
+			return (size);
+		}
+	}
+
+	return (maxsize);
+}
+
 static int cfa10036_mem_init(void)
 {
-	arm_add_mem_device("ram0", IMX_MEMORY_BASE, 128 * 1024 * 1024);
+	arm_add_mem_device("ram0", IMX_MEMORY_BASE,
+			   cfa10036_get_ram_size((volatile long int *)IMX_MEMORY_BASE, SZ_256M));
 
 	return 0;
 }
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
