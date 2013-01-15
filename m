Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-f182.google.com ([209.85.215.182])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tv6sg-0003ue-3M
 for barebox@lists.infradead.org; Tue, 15 Jan 2013 13:48:47 +0000
Received: by mail-ea0-f182.google.com with SMTP id a12so48028eaa.41
 for <barebox@lists.infradead.org>; Tue, 15 Jan 2013 05:48:44 -0800 (PST)
From: Alexander Aring <alex.aring@gmail.com>
Date: Tue, 15 Jan 2013 14:48:45 +0100
Message-Id: <1358257730-20579-4-git-send-email-alex.aring@gmail.com>
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
Subject: [PATCH 3/8] arm-mmu: move PAGE_ALIGN macro to common.h
To: barebox@lists.infradead.org

PAGE_ALIGN macro is needed to align addresses to page boundaries.
Move this macro to another PAGE_* defines.

Commands which uses remap_range function needs this macro.

Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
 arch/arm/cpu/mmu.c | 2 --
 include/common.h   | 1 +
 2 files changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index 6e2ecca..6e24356 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -308,8 +308,6 @@ void mmu_disable(void)
 	__mmu_cache_off();
 }
 
-#define PAGE_ALIGN(s) (((s) + PAGE_SIZE - 1) & ~(PAGE_SIZE - 1))
-
 void *dma_alloc_coherent(size_t size)
 {
 	void *ret;
diff --git a/include/common.h b/include/common.h
index b1c96de..9533344 100644
--- a/include/common.h
+++ b/include/common.h
@@ -225,6 +225,7 @@ int run_shell(void);
 
 #define PAGE_SIZE	4096
 #define PAGE_SHIFT	12
+#define PAGE_ALIGN(s) (((s) + PAGE_SIZE - 1) & ~(PAGE_SIZE - 1))
 
 int memory_display(char *addr, loff_t offs, ulong nbytes, int size, int swab);
 
-- 
1.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
