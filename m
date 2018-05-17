Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x243.google.com ([2607:f8b0:400e:c00::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fJPzX-0005Lx-2E
 for barebox@lists.infradead.org; Thu, 17 May 2018 20:59:25 +0000
Received: by mail-pf0-x243.google.com with SMTP id p14-v6so2658320pfh.9
 for <barebox@lists.infradead.org>; Thu, 17 May 2018 13:59:04 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 17 May 2018 13:58:12 -0700
Message-Id: <20180517205837.32421-4-andrew.smirnov@gmail.com>
In-Reply-To: <20180517205837.32421-1-andrew.smirnov@gmail.com>
References: <20180517205837.32421-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 03/28] ARM: mmu: Use ALIGN and ALIGN_DOWN in map_cachable()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/cpu/mmu-early.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/cpu/mmu-early.c b/arch/arm/cpu/mmu-early.c
index 70cb5fe31..fc14d5cac 100644
--- a/arch/arm/cpu/mmu-early.c
+++ b/arch/arm/cpu/mmu-early.c
@@ -23,8 +23,8 @@ static void create_sections(unsigned long addr, int size_m, unsigned int flags)
 
 static void map_cachable(unsigned long start, unsigned long size)
 {
-	start &= ~(SZ_1M - 1);
-	size = (size + (SZ_1M - 1)) & ~(SZ_1M - 1);
+	start = ALIGN_DOWN(start, SZ_1M);
+	size  = ALIGN(size, SZ_1M);
 
 	create_sections(start, size >> 20, PMD_SECT_AP_WRITE |
 			PMD_SECT_AP_READ | PMD_TYPE_SECT | PMD_SECT_WB);
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
