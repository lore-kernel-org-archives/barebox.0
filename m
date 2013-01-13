Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-f174.google.com ([209.85.215.174])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TuRZI-0002Nk-Hi
 for barebox@lists.infradead.org; Sun, 13 Jan 2013 17:42:01 +0000
Received: by mail-ea0-f174.google.com with SMTP id e13so1366294eaa.5
 for <barebox@lists.infradead.org>; Sun, 13 Jan 2013 09:41:59 -0800 (PST)
From: Alexander Aring <alex.aring@gmail.com>
Date: Sun, 13 Jan 2013 18:42:18 +0100
Message-Id: <1358098943-18928-5-git-send-email-alex.aring@gmail.com>
In-Reply-To: <1358098943-18928-1-git-send-email-alex.aring@gmail.com>
References: <1358098943-18928-1-git-send-email-alex.aring@gmail.com>
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
Subject: [PATCH 4/9] arm-mmu: remove semicolon in arm mmu.c
To: barebox@lists.infradead.org
Cc: marc@cpdesign.com

Remove semicolon in PAGE_ALIGN macro.

Signed-off-by: Alexander Aring <alex.aring@gmail.com>
---
 arch/arm/cpu/mmu.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index 068e0ea..40b7ec4 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -294,7 +294,7 @@ void mmu_disable(void)
 	__mmu_cache_off();
 }
 
-#define PAGE_ALIGN(s) ((s) + PAGE_SIZE - 1) & ~(PAGE_SIZE - 1);
+#define PAGE_ALIGN(s) (((s) + PAGE_SIZE - 1) & ~(PAGE_SIZE - 1))
 
 void *dma_alloc_coherent(size_t size)
 {
-- 
1.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
