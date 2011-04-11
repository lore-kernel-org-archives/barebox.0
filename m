Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q9IHT-0006QH-5c
	for barebox@lists.infradead.org; Mon, 11 Apr 2011 14:39:57 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 11 Apr 2011 16:39:42 +0200
Message-Id: <1302532791-20664-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1302532791-20664-1-git-send-email-s.hauer@pengutronix.de>
References: <1302532791-20664-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/12] ARM omap: make sr32 a static inline function
To: barebox@lists.infradead.org

This generates smaller code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/include/mach/syslib.h |   23 ++++++++++++++++++++++-
 arch/arm/mach-omap/syslib.c              |   20 --------------------
 2 files changed, 22 insertions(+), 21 deletions(-)

diff --git a/arch/arm/mach-omap/include/mach/syslib.h b/arch/arm/mach-omap/include/mach/syslib.h
index c89f50b..6a7044a 100644
--- a/arch/arm/mach-omap/include/mach/syslib.h
+++ b/arch/arm/mach-omap/include/mach/syslib.h
@@ -30,9 +30,30 @@
  */
 #ifndef __ASM_ARCH_OMAP_SYSLIB_H_
 #define __ASM_ARCH_OMAP_SYSLIB_H_
+#include <asm/io.h>
 
 /** System Independent functions */
-void sr32(u32 addr, u32 start_bit, u32 num_bits, u32 value);
+
+/**
+ * @brief clear & set a value in a bit range for a 32 bit address
+ *
+ * @param[in] addr Address to set/read from
+ * @param[in] start_bit Where to put the value
+ * @param[in] num_bits number of bits the value should be set
+ * @param[in] value the value to set
+ *
+ * @return void
+ */
+static inline void sr32(u32 addr, u32 start_bit, u32 num_bits, u32 value)
+{
+	u32 tmp, msk = 0;
+	msk = 1 << num_bits;
+	--msk;
+	tmp = readl(addr) & ~(msk << start_bit);
+	tmp |=  value << start_bit;
+	writel(tmp, addr);
+}
+
 u32 wait_on_value(u32 read_bit_mask, u32 match_value, u32 read_addr, u32 bound);
 void sdelay(unsigned long loops);
 
diff --git a/arch/arm/mach-omap/syslib.c b/arch/arm/mach-omap/syslib.c
index 2b25dc1..677de6a 100644
--- a/arch/arm/mach-omap/syslib.c
+++ b/arch/arm/mach-omap/syslib.c
@@ -53,26 +53,6 @@ void sdelay(unsigned long loops)
 }
 
 /**
- * @brief clear & set a value in a bit range for a 32 bit address
- *
- * @param[in] addr Address to set/read from
- * @param[in] start_bit Where to put the value
- * @param[in] num_bits number of bits the value should be set
- * @param[in] value the value to set
- *
- * @return void
- */
-void sr32(u32 addr, u32 start_bit, u32 num_bits, u32 value)
-{
-	u32 tmp, msk = 0;
-	msk = 1 << num_bits;
-	--msk;
-	tmp = readl(addr) & ~(msk << start_bit);
-	tmp |=  value << start_bit;
-	writel(tmp, addr);
-}
-
-/**
  * @brief common routine to allow waiting for changes in volatile regs.
  *
  * @param[in] read_bit_mask  the bit mask to read
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
