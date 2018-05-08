Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl0-x241.google.com ([2607:f8b0:400e:c01::241])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fGABf-0001RY-TP
 for barebox@lists.infradead.org; Tue, 08 May 2018 21:30:20 +0000
Received: by mail-pl0-x241.google.com with SMTP id az12-v6so2968992plb.8
 for <barebox@lists.infradead.org>; Tue, 08 May 2018 14:30:09 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue,  8 May 2018 14:29:30 -0700
Message-Id: <20180508212951.6446-8-andrew.smirnov@gmail.com>
In-Reply-To: <20180508212951.6446-1-andrew.smirnov@gmail.com>
References: <20180508212951.6446-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 07/28] ARM: mmu: Separate index and address in
 create_sections()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Both TTB index and address used to fill that entry are derived from
the same variable 'addr' which requires shifting right and left by 20
and somewhat confusing.

Split the counter used to iterate over elements of  TTB into a
separate variable to make this code a bit easier to read.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/cpu/mmu.h | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/arch/arm/cpu/mmu.h b/arch/arm/cpu/mmu.h
index 59f72049f..8b51e3f9f 100644
--- a/arch/arm/cpu/mmu.h
+++ b/arch/arm/cpu/mmu.h
@@ -28,8 +28,12 @@ static inline void
 create_sections(uint32_t *ttb, unsigned long addr,
 		int size_m, unsigned int flags)
 {
-	for (addr >>= 20; addr < size_m; addr++)
-		ttb[addr] = (addr << 20) | flags;
+	unsigned long ttb_start = add >> 20;
+	unsigned long ttb_end   = ttb_start + size_m;
+	unsigned int i;
+
+	for (i = ttb_start; i < ttb_end; i++, addr += SZ_1M)
+		ttb[i] = addr | flags;
 }
 
 
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
