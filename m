Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-f171.google.com ([209.85.215.171])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tv6se-0003u9-Q1
 for barebox@lists.infradead.org; Tue, 15 Jan 2013 13:48:46 +0000
Received: by mail-ea0-f171.google.com with SMTP id n10so51209eaa.2
 for <barebox@lists.infradead.org>; Tue, 15 Jan 2013 05:48:43 -0800 (PST)
From: Alexander Aring <alex.aring@gmail.com>
Date: Tue, 15 Jan 2013 14:48:43 +0100
Message-Id: <1358257730-20579-2-git-send-email-alex.aring@gmail.com>
In-Reply-To: <1358257730-20579-1-git-send-email-alex.aring@gmail.com>
References: <1358257730-20579-1-git-send-email-alex.aring@gmail.com>
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
Subject: [PATCH 1/8] remap_range: make function 'remap_range' global
To: barebox@lists.infradead.org

Change function remap_range in arm architecture to make it
global accessable. For example command 'memtest' can change
pte flags to enable or disable cache.

Add dummy function for others architectures that doesn't
have mmu or pte support.

Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
 arch/arm/cpu/mmu.c              | 2 +-
 arch/arm/include/asm/mmu.h      | 5 +++++
 arch/blackfin/include/asm/mmu.h | 9 +++++++++
 arch/mips/include/asm/mmu.h     | 9 +++++++++
 arch/nios2/include/asm/mmu.h    | 9 +++++++++
 arch/openrisc/include/asm/mmu.h | 9 +++++++++
 arch/ppc/include/asm/mmu.h      | 5 +++++
 arch/sandbox/include/asm/mmu.h  | 9 +++++++++
 arch/x86/include/asm/mmu.h      | 9 +++++++++
 9 files changed, 65 insertions(+), 1 deletion(-)
 create mode 100644 arch/blackfin/include/asm/mmu.h
 create mode 100644 arch/mips/include/asm/mmu.h
 create mode 100644 arch/nios2/include/asm/mmu.h
 create mode 100644 arch/openrisc/include/asm/mmu.h
 create mode 100644 arch/sandbox/include/asm/mmu.h
 create mode 100644 arch/x86/include/asm/mmu.h

diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index 40b7ec4..b5c9c60 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -93,7 +93,7 @@ static u32 *find_pte(unsigned long adr)
 	return &table[(adr >> PAGE_SHIFT) & 0xff];
 }
 
-static void remap_range(void *_start, size_t size, uint32_t flags)
+void remap_range(void *_start, size_t size, uint32_t flags)
 {
 	unsigned long start = (unsigned long)_start;
 	u32 *p;
diff --git a/arch/arm/include/asm/mmu.h b/arch/arm/include/asm/mmu.h
index a66da8c..ae1686b 100644
--- a/arch/arm/include/asm/mmu.h
+++ b/arch/arm/include/asm/mmu.h
@@ -41,6 +41,7 @@ void dma_flush_range(unsigned long, unsigned long);
 void dma_inv_range(unsigned long, unsigned long);
 unsigned long virt_to_phys(void *virt);
 void *phys_to_virt(unsigned long phys);
+void remap_range(void *_start, size_t size, uint32_t flags);
 void *map_io_sections(unsigned long physaddr, void *start, size_t size);
 
 #else
@@ -76,6 +77,10 @@ static inline void dma_inv_range(unsigned long s, unsigned long e)
 {
 }
 
+static inline void remap_range(void *_start, size_t size, uint32_t flags)
+{
+}
+
 static inline void *map_io_sections(unsigned long phys, void *start, size_t size)
 {
 	return (void *)phys;
diff --git a/arch/blackfin/include/asm/mmu.h b/arch/blackfin/include/asm/mmu.h
new file mode 100644
index 0000000..0485a43
--- /dev/null
+++ b/arch/blackfin/include/asm/mmu.h
@@ -0,0 +1,9 @@
+#ifndef __ASM_MMU_H
+#define __ASM_MMU_H
+
+static inline void remap_range(void *_start, size_t size, uint32_t flags)
+{
+}
+
+#endif /* __ASM_MMU_H */
+
diff --git a/arch/mips/include/asm/mmu.h b/arch/mips/include/asm/mmu.h
new file mode 100644
index 0000000..0485a43
--- /dev/null
+++ b/arch/mips/include/asm/mmu.h
@@ -0,0 +1,9 @@
+#ifndef __ASM_MMU_H
+#define __ASM_MMU_H
+
+static inline void remap_range(void *_start, size_t size, uint32_t flags)
+{
+}
+
+#endif /* __ASM_MMU_H */
+
diff --git a/arch/nios2/include/asm/mmu.h b/arch/nios2/include/asm/mmu.h
new file mode 100644
index 0000000..0485a43
--- /dev/null
+++ b/arch/nios2/include/asm/mmu.h
@@ -0,0 +1,9 @@
+#ifndef __ASM_MMU_H
+#define __ASM_MMU_H
+
+static inline void remap_range(void *_start, size_t size, uint32_t flags)
+{
+}
+
+#endif /* __ASM_MMU_H */
+
diff --git a/arch/openrisc/include/asm/mmu.h b/arch/openrisc/include/asm/mmu.h
new file mode 100644
index 0000000..0485a43
--- /dev/null
+++ b/arch/openrisc/include/asm/mmu.h
@@ -0,0 +1,9 @@
+#ifndef __ASM_MMU_H
+#define __ASM_MMU_H
+
+static inline void remap_range(void *_start, size_t size, uint32_t flags)
+{
+}
+
+#endif /* __ASM_MMU_H */
+
diff --git a/arch/ppc/include/asm/mmu.h b/arch/ppc/include/asm/mmu.h
index b2dd0b7..af263ae 100644
--- a/arch/ppc/include/asm/mmu.h
+++ b/arch/ppc/include/asm/mmu.h
@@ -540,4 +540,9 @@ extern int write_bat(ppc_bat_t bat, unsigned long upper, unsigned long lower);
 					(rt<<21)|(ra<<16)|(ws<<11)|(946<<1)
 
 #endif
+
+static inline void remap_range(void *_start, size_t size, uint32_t flags)
+{
+}
+
 #endif /* _PPC_MMU_H_ */
diff --git a/arch/sandbox/include/asm/mmu.h b/arch/sandbox/include/asm/mmu.h
new file mode 100644
index 0000000..0485a43
--- /dev/null
+++ b/arch/sandbox/include/asm/mmu.h
@@ -0,0 +1,9 @@
+#ifndef __ASM_MMU_H
+#define __ASM_MMU_H
+
+static inline void remap_range(void *_start, size_t size, uint32_t flags)
+{
+}
+
+#endif /* __ASM_MMU_H */
+
diff --git a/arch/x86/include/asm/mmu.h b/arch/x86/include/asm/mmu.h
new file mode 100644
index 0000000..0485a43
--- /dev/null
+++ b/arch/x86/include/asm/mmu.h
@@ -0,0 +1,9 @@
+#ifndef __ASM_MMU_H
+#define __ASM_MMU_H
+
+static inline void remap_range(void *_start, size_t size, uint32_t flags)
+{
+}
+
+#endif /* __ASM_MMU_H */
+
-- 
1.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
