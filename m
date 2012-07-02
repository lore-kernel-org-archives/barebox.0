Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp-4h.backboneservers.com ([66.6.63.245])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SlkLa-0007kY-Gd
 for barebox@lists.infradead.org; Mon, 02 Jul 2012 17:23:39 +0000
Received: from Debian-exim by smtp-4h.backboneservers.com with spam-scanned
 (Exim 4.72) (envelope-from <steve@scheftech.com>) id 1SlkLM-0002AI-EM
 for barebox@lists.infradead.org; Mon, 02 Jul 2012 17:23:30 +0000
From: steve@scheftech.com
Date: Mon,  2 Jul 2012 13:22:33 -0400
Message-Id: <1341249753-5480-1-git-send-email-steve@scheftech.com>
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
Subject: [PATCH] Avoid SDRAM access crash
To: barebox@lists.infradead.org
Cc: Steve Schefter <steve@scheftech.com>

From: Steve Schefter <steve@scheftech.com>

When remapping the SDRAM with the MMU enabled, we need to ensure
that the translation tables are not still in cache before
invalidating the TLB.  Failure to do so will result in the following
crash approximately 50% of the time:

booting kernel from /dev/nand0.kernel.bb
   Image Name:   Linux-3.3.0PD12.0.0
   OS:           Linux
   Architecture: ARM
   Type:         Kernel Image
   Compression:  uncompressed
   Data Size:    3384824 Bytes =  3.2 MB
   Load Address: 80008000
   Entry Point:  80008000
unable to handle paging request at address 0x80028000
pc : [<8f01f280>]    lr : [<8f005330>]
sp : 8cfff9b0  ip : 0000003f  fp : 00000000
r10: 00001000  r9 : 00000000  r8 : 8d2a8f70
r7 : 8f043818  r6 : 0033a5f8  r5 : 8f04381c  r4 : 00001000
r3 : 80028000  r2 : 00000fff  r1 : 8d2a8f71  r0 : 80028000
Flags: nzCv  IRQs off  FIQs off  Mode SVC_32
[<8f01f280>] (memcpy+0x18/0x20) from [<8f005330>] (uimage_sdram_flush+0x90/0xb8)
[<8f005330>] (uimage_sdram_flush+0x90/0xb8) from [<8f0053a4>] (uncompress_copy+0x4c/0x74)

Signed-off-by: Steve Schefter <steve@scheftech.com>
---
 arch/arm/cpu/mmu.c |    6 ++++++
 1 files changed, 6 insertions(+), 0 deletions(-)

diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index c19f931..4ff0430 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -165,6 +165,12 @@ static int arm_mmu_remap_sdram(struct memory_bank *bank)
 		pte += 256;
 	}
 
+	asm volatile (
+		"bl __mmu_cache_flush;"
+		:
+		:
+		: "r0", "r1", "r2", "r3", "r6", "r10", "r12", "lr", "cc", "memory"
+	);
 	tlb_invalidate();
 
 	return 0;
-- 
1.7.4.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
