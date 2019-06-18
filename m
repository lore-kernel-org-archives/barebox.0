Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdAZd-0007dy-Q9
 for barebox@lists.infradead.org; Tue, 18 Jun 2019 09:38:43 +0000
Received: by mail-lj1-x243.google.com with SMTP id k18so12349795ljc.11
 for <barebox@lists.infradead.org>; Tue, 18 Jun 2019 02:38:41 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 18 Jun 2019 12:38:33 +0300
Message-Id: <20190618093833.2005-3-antonynpavlov@gmail.com>
In-Reply-To: <20190618093833.2005-1-antonynpavlov@gmail.com>
References: <20190618093833.2005-1-antonynpavlov@gmail.com>
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
Subject: [RFC 2/2] MIPS: relocate_code: fix barebox image memcpy() size
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

In this relocate_code() piece 'length' is greater than 'barebox_image_size':

    #define MAX_BSS_SIZE SZ_1M
    ...
    length = barebox_image_size + MAX_BSS_SIZE;
    relocaddr = ALIGN_DOWN(ram_size - barebox_image_size, SZ_64K);
    ...
    memcpy((void *)relocaddr, __image_start, length);

so 'ram_size' overflow occurs during memcpy().

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/lib/reloc.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/arch/mips/lib/reloc.c b/arch/mips/lib/reloc.c
index 9756d61666..14ba6167dd 100644
--- a/arch/mips/lib/reloc.c
+++ b/arch/mips/lib/reloc.c
@@ -40,8 +40,6 @@
 #include <linux/sizes.h>
 #include <asm-generic/memory_layout.h>
 
-#define MAX_BSS_SIZE SZ_1M
-
 void main_entry(void *fdt, u32 fdt_size);
 void relocate_code(void *fdt, u32 fdt_size, u32 relocaddr);
 
@@ -127,8 +125,10 @@ void relocate_code(void *fdt, u32 fdt_size, u32 ram_size)
 	unsigned int type;
 	long off;
 
-	length = barebox_image_size + MAX_BSS_SIZE;
-	relocaddr = ALIGN_DOWN(ram_size - barebox_image_size, SZ_64K);
+	bss_len = (unsigned long)&__bss_stop - (unsigned long)__bss_start;
+
+	length = barebox_image_size + bss_len;
+	relocaddr = ALIGN_DOWN(ram_size - length, SZ_64K);
 	relocaddr = KSEG0ADDR(relocaddr);
 	new_stack = relocaddr - MALLOC_SIZE - 16;
 
@@ -143,7 +143,7 @@ void relocate_code(void *fdt, u32 fdt_size, u32 ram_size)
 		panic("Mis-aligned relocation\n");
 
 	/* Copy Barebox to RAM */
-	memcpy((void *)relocaddr, __image_start, length);
+	memcpy((void *)relocaddr, __image_start, barebox_image_size);
 
 	/* Now apply relocations to the copy in RAM */
 	buf = __rel_start;
@@ -162,7 +162,6 @@ void relocate_code(void *fdt, u32 fdt_size, u32 ram_size)
 
 	/* Clear the .bss section */
 	bss_start = (uint8_t *)((unsigned long)__bss_start + off);
-	bss_len = (unsigned long)&__bss_stop - (unsigned long)__bss_start;
 	memset(bss_start, 0, bss_len);
 
 	 __asm__ __volatile__ (
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
