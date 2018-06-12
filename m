Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x243.google.com ([2607:f8b0:400e:c05::243])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fSqJG-0007Ff-Cm
 for barebox@lists.infradead.org; Tue, 12 Jun 2018 20:54:34 +0000
Received: by mail-pg0-x243.google.com with SMTP id p21-v6so134603pgd.11
 for <barebox@lists.infradead.org>; Tue, 12 Jun 2018 13:54:24 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 12 Jun 2018 13:53:02 -0700
Message-Id: <20180612205310.25745-47-andrew.smirnov@gmail.com>
In-Reply-To: <20180612205310.25745-1-andrew.smirnov@gmail.com>
References: <20180612205310.25745-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v5 46/54] ARM: mmu64: Convert flags in arch_remap_range()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Flags passed to arch_remap_range() are architecture independent, so it
can't be passed as is to map_region(). Add code to do the proper
conversion to avoid subtle bugs that this confusion brings.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/cpu/mmu_64.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
index 820d8cf75..11928352b 100644
--- a/arch/arm/cpu/mmu_64.c
+++ b/arch/arm/cpu/mmu_64.c
@@ -171,6 +171,17 @@ static void create_sections(uint64_t virt, uint64_t phys, uint64_t size, uint64_
 
 int arch_remap_range(void *_start, size_t size, unsigned flags)
 {
+ 	switch (flags) {
+ 	case MAP_CACHED:
+ 		flags = CACHED_MEM;
+ 		break;
+ 	case MAP_UNCACHED:
+		flags = UNCACHED_MEM;
+		break;
+ 	default:
+ 		return -EINVAL;
+ 	}
+
 	map_region((uint64_t)_start, (uint64_t)_start, (uint64_t)size, flags);
 	tlb_invalidate();
 
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
