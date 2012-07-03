Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Slxeb-0001KF-DK
 for barebox@lists.infradead.org; Tue, 03 Jul 2012 07:36:12 +0000
Date: Tue, 3 Jul 2012 09:36:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120703073605.GT2698@pengutronix.de>
References: <1341249753-5480-1-git-send-email-steve@scheftech.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1341249753-5480-1-git-send-email-steve@scheftech.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] Avoid SDRAM access crash
To: steve@scheftech.com
Cc: barebox@lists.infradead.org

Hi Steve,

On Mon, Jul 02, 2012 at 01:22:33PM -0400, steve@scheftech.com wrote:
> From: Steve Schefter <steve@scheftech.com>
> 
> When remapping the SDRAM with the MMU enabled, we need to ensure
> that the translation tables are not still in cache before
> invalidating the TLB.  Failure to do so will result in the following
> crash approximately 50% of the time:
> 
> booting kernel from /dev/nand0.kernel.bb
>    Image Name:   Linux-3.3.0PD12.0.0
>    OS:           Linux
>    Architecture: ARM
>    Type:         Kernel Image
>    Compression:  uncompressed
>    Data Size:    3384824 Bytes =  3.2 MB
>    Load Address: 80008000
>    Entry Point:  80008000
> unable to handle paging request at address 0x80028000
> pc : [<8f01f280>]    lr : [<8f005330>]
> sp : 8cfff9b0  ip : 0000003f  fp : 00000000
> r10: 00001000  r9 : 00000000  r8 : 8d2a8f70
> r7 : 8f043818  r6 : 0033a5f8  r5 : 8f04381c  r4 : 00001000
> r3 : 80028000  r2 : 00000fff  r1 : 8d2a8f71  r0 : 80028000
> Flags: nzCv  IRQs off  FIQs off  Mode SVC_32
> [<8f01f280>] (memcpy+0x18/0x20) from [<8f005330>] (uimage_sdram_flush+0x90/0xb8)
> [<8f005330>] (uimage_sdram_flush+0x90/0xb8) from [<8f0053a4>] (uncompress_copy+0x4c/0x74)

I wonder why this has never hit me. On what hardware did you see this?

Does the following patch solve your problem aswell?

8<----------------------------------------------------

ARM mmu: flush page tables in arm_mmu_remap_sdram()

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu.c |    5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index 55b07a4..607f357 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -147,7 +147,7 @@ static int arm_mmu_remap_sdram(struct memory_bank *bank)
 	if ((phys & (SZ_1M - 1)) || (bank->size & (SZ_1M - 1)))
 		return -EINVAL;
 
-	ptes = memalign(0x400, num_ptes * sizeof(u32));
+	ptes = memalign(PAGE_SIZE, num_ptes * sizeof(u32));
 
 	debug("ptes: 0x%p ttb_start: 0x%08lx ttb_end: 0x%08lx\n",
 			ptes, ttb_start, ttb_end);
@@ -165,6 +165,9 @@ static int arm_mmu_remap_sdram(struct memory_bank *bank)
 		pte += 256;
 	}
 
+	dma_flush_range((unsigned long)ttb, (unsigned long)ttb + 0x4000);
+	dma_flush_range((unsigned long)ptes, num_ptes * sizeof(u32));
+
 	tlb_invalidate();
 
 	return 0;
-- 
1.7.10


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
