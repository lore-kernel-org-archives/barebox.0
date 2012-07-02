Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp-2h.backboneservers.com ([66.6.63.231])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SlgNQ-0007Tw-Uv
 for barebox@lists.infradead.org; Mon, 02 Jul 2012 13:09:18 +0000
Received: from Debian-exim by smtp-2h.backboneservers.com with spam-scanned
 (Exim 4.72) (envelope-from <steve@scheftech.com>) id 1SlgN9-0002vt-Hb
 for barebox@lists.infradead.org; Mon, 02 Jul 2012 13:09:05 +0000
Received: from [208.80.102.28] (helo=[192.168.0.200])
 by smtp-2h.backboneservers.com with esmtpa (Exim 4.72)
 (envelope-from <steve@scheftech.com>) id 1SlgN9-0002vc-CF
 for barebox@lists.infradead.org; Mon, 02 Jul 2012 13:08:59 +0000
Message-ID: <4FF19D53.5030708@scheftech.com>
Date: Mon, 02 Jul 2012 09:08:35 -0400
From: Steve Schefter <steve@scheftech.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="------------000606080305090807070505"
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: patch for SDRAM remap bug
To: barebox@lists.infradead.org

This is a multi-part message in MIME format.
--------------000606080305090807070505
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


--------------000606080305090807070505
Content-Type: text/plain;
 name="0014-When-remapping-the-SDRAM-with-the-MMU-enabled-we-nee.patch"
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
 filename*0="0014-When-remapping-the-SDRAM-with-the-MMU-enabled-we-nee.pa";
 filename*1="tch"

From d8a687de95b57962e85913b41086f2f24a2ef6ea Mon Sep 17 00:00:00 2001
From: Steve Schefter <steve@scheftech.com>
Date: Wed, 27 Jun 2012 09:23:04 -0400
Subject: Avoid SDRAM access crash
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


--------------000606080305090807070505
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--------------000606080305090807070505--
