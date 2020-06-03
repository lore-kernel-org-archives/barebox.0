Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgMlX-0005N5-LU
 for barebox@lists.infradead.org; Wed, 03 Jun 2020 06:20:44 +0000
Received: by mail-lj1-x241.google.com with SMTP id c17so1183223lji.11
 for <barebox@lists.infradead.org>; Tue, 02 Jun 2020 23:20:42 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed,  3 Jun 2020 09:20:32 +0300
Message-Id: <20200603062032.15288-1-antonynpavlov@gmail.com>
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
Subject: [PATCH] MIPS: correctly work with disabled CONFIG_MMU
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

There are some issues with CONFIG_MMU=n in MIPS configuration
(e.g. qemu-malta_defconfig):

  * "Cannot request SDRAM region for stack" error message on start;
  * empty kseg1_ram0 region in the iomem command output.

The patch fixes the problems by forcing KSEG1 memory region usage
for CONFIG_MMU=n MIPS configurations.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/include/asm/io.h | 6 +++++-
 arch/mips/lib/reloc.c      | 6 +++++-
 2 files changed, 10 insertions(+), 2 deletions(-)

diff --git a/arch/mips/include/asm/io.h b/arch/mips/include/asm/io.h
index c155199430..4df9853680 100644
--- a/arch/mips/include/asm/io.h
+++ b/arch/mips/include/asm/io.h
@@ -39,7 +39,11 @@ static inline unsigned long virt_to_phys(const void *address)
  */
 static inline void *phys_to_virt(unsigned long address)
 {
-	return (void *)CKSEG0ADDR(address);
+	if (IS_ENABLED(CONFIG_MMU)) {
+		return (void *)CKSEG0ADDR(address);
+	}
+
+	return (void *)CKSEG1ADDR(address);
 }
 
 #define	IO_SPACE_LIMIT	0
diff --git a/arch/mips/lib/reloc.c b/arch/mips/lib/reloc.c
index 4b0e252352..b084a88be7 100644
--- a/arch/mips/lib/reloc.c
+++ b/arch/mips/lib/reloc.c
@@ -120,7 +120,11 @@ void relocate_code(void *fdt, u32 fdt_size, u32 ram_size)
 
 	length = __bss_stop - __image_start;
 	relocaddr = ALIGN_DOWN(ram_size - length, SZ_64K);
-	relocaddr = KSEG0ADDR(relocaddr);
+	if (IS_ENABLED(CONFIG_MMU)) {
+		relocaddr = KSEG0ADDR(relocaddr);
+	} else {
+		relocaddr = KSEG1ADDR(relocaddr);
+	}
 	new_stack = relocaddr - MALLOC_SIZE - 16;
 
 	/*
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
