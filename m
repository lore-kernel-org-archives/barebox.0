Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WPpqz-0002wf-Ml
 for barebox@lists.infradead.org; Tue, 18 Mar 2014 08:58:34 +0000
Date: Tue, 18 Mar 2014 09:58:12 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140318085811.GU17250@pengutronix.de>
References: <20140313202719.GS17250@pengutronix.de>
 <532278F0.1040409@kosagi.com>
 <20140314082252.GW17250@pengutronix.de>
 <532679EC.4020806@kosagi.com>
 <20140317071857.GH17250@pengutronix.de>
 <5326A7CF.7020005@kosagi.com>
 <20140317105318.GJ17250@pengutronix.de>
 <5327BEFE.9020003@kosagi.com>
 <20140318083619.GS17250@pengutronix.de>
 <53280734.6000802@kosagi.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <53280734.6000802@kosagi.com>
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
Subject: Re: Porting barebox to Novena: misc questions
To: Sean Cross <xobs@kosagi.com>
Cc: barebox@lists.infradead.org

On Tue, Mar 18, 2014 at 04:43:32PM +0800, Sean Cross wrote:
> > arm_add_mem_device("ram0", 0x10000000, SZ_2G + SZ_1G + SZ_512M + SZ_128M + SZ_1M);
> > 
> > and this works on a board I have here (although that board doesn't even
> > have that amount of memory)
> 
> Oh, I didn't realize there was a requirement to align to the nearest
> megabyte.
> 
> In that case, you're right.  I tried this, and it works:
> 
> arm_add_mem_device("ram0", 0x10000000, SZ_2G + SZ_1G + SZ_512M + SZ_256M
> - SZ_1M);
> 
> However, this fails:
> 
> arm_add_mem_device("ram0", 0x10000000, SZ_2G + SZ_1G + SZ_512M + SZ_256M);

You are really exploring corner cases here ;)

Try this:

--------------------------8<--------------------

From 4a84905c61d4a4a895c83f4f156f60a7258e6413 Mon Sep 17 00:00:00 2001
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 18 Mar 2014 09:53:18 +0100
Subject: [PATCH] ARM: MMU: Fix memory reaching to the end of address space

For memory reaching the end of the address space
phys + bank->size overflows to 0. Fix this by right shifting
phys and bank->size before adding them.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index 84daa3d..bf0141b 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -200,7 +200,7 @@ static int arm_mmu_remap_sdram(struct memory_bank *bank)
 {
 	unsigned long phys = (unsigned long)bank->start;
 	unsigned long ttb_start = phys >> 20;
-	unsigned long ttb_end = (phys + bank->size) >> 20;
+	unsigned long ttb_end = (phys >> 20) + (bank->size >> 20);
 	unsigned long num_ptes = bank->size >> 10;
 	int i, pte;
 	u32 *ptes;
-- 
1.9.0

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
