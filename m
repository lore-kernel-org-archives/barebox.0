Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg010.nifty.com ([202.248.44.36]
 helo=conuserg010-v.nifty.com)
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YuWOL-0004zo-5l
 for barebox@lists.infradead.org; Tue, 19 May 2015 01:32:22 +0000
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Tue, 19 May 2015 10:31:26 +0900
Message-Id: <1431999086-19465-1-git-send-email-yamada.masahiro@socionext.com>
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
Subject: [PATCH] Abolish cpu_read* and cpu_write* accessors
To: barebox@lists.infradead.org

Commit 2e6a88f2101d (add cpu native ordered io accessors) introduced
these macros and then commit be57f20cdd7d (Fix big endian MMIO
primitives) figured out they are equivalent to __raw_{read,write}*.

They turned out unnecessary after all.  Anyway, most source files
use __raw_read* and __raw_write*.

Let's replace a few remaining references and abolish them.

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 arch/arm/mach-tegra/include/mach/lowlevel.h  |  4 ++--
 arch/mips/mach-ath79/include/mach/debug_ll.h |  4 ++--
 drivers/mtd/nor/cfi_flash.h                  | 12 ++++++------
 drivers/serial/serial_ar933x.c               |  4 ++--
 drivers/spi/ath79_spi.c                      |  4 ++--
 include/io.h                                 |  8 --------
 6 files changed, 14 insertions(+), 22 deletions(-)

diff --git a/arch/arm/mach-tegra/include/mach/lowlevel.h b/arch/arm/mach-tegra/include/mach/lowlevel.h
index f1fea86..768b13d 100644
--- a/arch/arm/mach-tegra/include/mach/lowlevel.h
+++ b/arch/arm/mach-tegra/include/mach/lowlevel.h
@@ -111,9 +111,9 @@ u32 tegra_get_odmdata(void)
 		return 0;
 	}
 
-	bctptr = cpu_readl(TEGRA_IRAM_BASE + bctptr_offset);
+	bctptr = __raw_readl(TEGRA_IRAM_BASE + bctptr_offset);
 
-	return cpu_readl(bctptr + odmdata_offset);
+	return __raw_readl(bctptr + odmdata_offset);
 }
 
 static __always_inline
diff --git a/arch/mips/mach-ath79/include/mach/debug_ll.h b/arch/mips/mach-ath79/include/mach/debug_ll.h
index c697318..64db674 100644
--- a/arch/mips/mach-ath79/include/mach/debug_ll.h
+++ b/arch/mips/mach-ath79/include/mach/debug_ll.h
@@ -41,12 +41,12 @@
 
 static inline void ar933x_debug_ll_writel(u32 b, int offset)
 {
-	cpu_writel(b, (u8 *)DEBUG_LL_UART_ADDR + offset);
+	__raw_writel(b, (u8 *)DEBUG_LL_UART_ADDR + offset);
 }
 
 static inline u32 ar933x_debug_ll_readl(int offset)
 {
-	return cpu_readl((u8 *)DEBUG_LL_UART_ADDR + offset);
+	return __raw_readl((u8 *)DEBUG_LL_UART_ADDR + offset);
 }
 
 static inline void PUTC_LL(int ch)
diff --git a/drivers/mtd/nor/cfi_flash.h b/drivers/mtd/nor/cfi_flash.h
index 9aad5c4..aeaf751 100644
--- a/drivers/mtd/nor/cfi_flash.h
+++ b/drivers/mtd/nor/cfi_flash.h
@@ -256,17 +256,17 @@ void flash_make_cmd(struct flash_info *info, u32 cmd, cfiword_t *cmdbuf);
 
 static inline void flash_write8(u8 value, void *addr)
 {
-	cpu_writeb(value, addr);
+	__raw_writeb(value, addr);
 }
 
 static inline void flash_write16(u16 value, void *addr)
 {
-	cpu_writew(value, addr);
+	__raw_writew(value, addr);
 }
 
 static inline void flash_write32(u32 value, void *addr)
 {
-	cpu_writel(value, addr);
+	__raw_writel(value, addr);
 }
 
 static inline void flash_write64(u64 value, void *addr)
@@ -276,17 +276,17 @@ static inline void flash_write64(u64 value, void *addr)
 
 static inline u8 flash_read8(void *addr)
 {
-	return cpu_readb(addr);
+	return __raw_readb(addr);
 }
 
 static inline u16 flash_read16(void *addr)
 {
-	return cpu_readw(addr);
+	return __raw_readw(addr);
 }
 
 static inline u32 flash_read32(void *addr)
 {
-	return cpu_readl(addr);
+	return __raw_readl(addr);
 }
 
 static inline u64 flash_read64(void *addr)
diff --git a/drivers/serial/serial_ar933x.c b/drivers/serial/serial_ar933x.c
index 51184aa..59bb5b2 100644
--- a/drivers/serial/serial_ar933x.c
+++ b/drivers/serial/serial_ar933x.c
@@ -40,7 +40,7 @@ static inline void ar933x_serial_writel(struct console_device *cdev,
 {
 	struct ar933x_uart_priv *priv = cdev->dev->priv;
 
-	cpu_writel(b, priv->base + offset);
+	__raw_writel(b, priv->base + offset);
 }
 
 static inline u32 ar933x_serial_readl(struct console_device *cdev,
@@ -48,7 +48,7 @@ static inline u32 ar933x_serial_readl(struct console_device *cdev,
 {
 	struct ar933x_uart_priv *priv = cdev->dev->priv;
 
-	return cpu_readl(priv->base + offset);
+	return __raw_readl(priv->base + offset);
 }
 
 /*
diff --git a/drivers/spi/ath79_spi.c b/drivers/spi/ath79_spi.c
index 4d71eba..bdb39ef 100644
--- a/drivers/spi/ath79_spi.c
+++ b/drivers/spi/ath79_spi.c
@@ -48,12 +48,12 @@ struct ath79_spi {
 
 static inline u32 ath79_spi_rr(struct ath79_spi *sp, int reg)
 {
-	return cpu_readl(sp->regs + reg);
+	return __raw_readl(sp->regs + reg);
 }
 
 static inline void ath79_spi_wr(struct ath79_spi *sp, u32 val, int reg)
 {
-	cpu_writel(val, sp->regs + reg);
+	__raw_writel(val, sp->regs + reg);
 }
 
 static inline void setbits(struct ath79_spi *sp, int bits, int on)
diff --git a/include/io.h b/include/io.h
index 8d885de..8eb56b0 100644
--- a/include/io.h
+++ b/include/io.h
@@ -3,12 +3,4 @@
 
 #include <asm/io.h>
 
-/* cpu_read/cpu_write: cpu native io accessors */
-#define cpu_readb(a)		__raw_readb(a)
-#define cpu_readw(a)		__raw_readw(a)
-#define cpu_readl(a)		__raw_readl(a)
-#define cpu_writeb(v, a)	__raw_writeb((v), (a))
-#define cpu_writew(v, a)	__raw_writew((v), (a))
-#define cpu_writel(v, a)	__raw_writel((v), (a))
-
 #endif /* __IO_H */
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
