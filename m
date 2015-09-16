Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.cvg.de ([62.153.82.30])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZcH00-0008V0-9n
 for barebox@lists.infradead.org; Wed, 16 Sep 2015 18:00:05 +0000
Received: from mail.cvg.de (mail.cvg.de [62.153.82.30])
 by mailout-1.intern.sigma-chemnitz.de (8.14.7/8.14.7) with ESMTP id
 t8GHwqnQ017826
 (version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=OK)
 for <barebox@lists.infradead.org>; Wed, 16 Sep 2015 19:58:55 +0200
Received: from ensc-virt.intern.sigma-chemnitz.de
 (ensc-virt.intern.sigma-chemnitz.de [192.168.3.24])
 by mail.cvg.de (8.14.4/8.14.4) with ESMTP id t8GHwcrl027032
 (version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=NO)
 for <barebox@lists.infradead.org>; Wed, 16 Sep 2015 19:58:42 +0200
Received: from ensc by ensc-virt.intern.sigma-chemnitz.de with local (Exim
 4.85) (envelope-from <ensc@sigma-chemnitz.de>) id 1ZcGyc-0001Iz-Ey
 for barebox@lists.infradead.org; Wed, 16 Sep 2015 19:58:38 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Wed, 16 Sep 2015 19:58:38 +0200
Message-ID: <lya8smdz5d.fsf@ensc-virt.intern.sigma-chemnitz.de>
MIME-Version: 1.0
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
Subject: ARM: gcc5 causes undefined behaviour in mmu_init()
To: barebox@lists.infradead.org

Hi,

a barebox built with gcc5 hangs in tlb_invalidate() very early.  This
seems to be caused by an integer overflow:

--- arch/arm/cpu/mmu.c:
static int arm_mmu_remap_sdram(struct memory_bank *bank)
{
	unsigned long num_ptes = bank->size >> 10;
	int i;

	for (i = 0; i < num_ptes; i++) {
		ptes[i] = (phys + i * PAGE_SIZE) | PTE_TYPE_SMALL |
			pte_flags_cached;
	}


For 1GiB RAM, 'num_ptes' is 1MiB and due to integer promotion, the 'i *
PAGE_SIZE' overflows and causes undefined behavior.

A trivial fix is to make 'i' an unsigned int or long.


But I wonder whether calculation of 'num_ptes' is really correct.  Does
barebox really use a 1KiB pagesize for PTEs or should the '>> 10' be a
'>> 12'?  When it is really 1KiB, the mapping for memory sizes > 1GiB
seem to be ambiguous then.


For reference; in broken case ('int i'), gcc5 generates:

|   4badc:       f7b4 fe7e       bl      7dc <pr_print>
|   4bae0:       f8d9 3000       ldr.w   r3, [r9]
|   4bae4:       f1aa 0104       sub.w   r1, sl, #4
|   4bae8:       f043 0202       orr.w   r2, r3, #2
|   4baec:       9b03            ldr     r3, [sp, #12]
|   4baee:       eb04 3303       add.w   r3, r4, r3, lsl #12
|
|   4baf2:       42a3            cmp     r3, r4
|   4baf4:       d006            beq.n   4bb04 <mmu_init+0x1c0>
|   4baf6:       ea42 0004       orr.w   r0, r2, r4
|   4bafa:       f504 5480       add.w   r4, r4, #4096   ; 0x1000
|   4bafe:       f841 0f04       str.w   r0, [r1, #4]!
|   4bb02:       e7f6            b.n     4baf2 <mmu_init+0x1ae>

Building with 'unsigned long i' generates:

|   4bad8:       f7b4 fe80       bl      7dc <pr_print>
|   4badc:       683b            ldr     r3, [r7, #0]
|   4bade:       f043 0202       orr.w   r2, r3, #2
|   4bae2:       9b05            ldr     r3, [sp, #20]
|
|   4bae4:       9904            ldr     r1, [sp, #16]
|   4bae6:       4299            cmp     r1, r3
|   4bae8:       d006            beq.n   4baf8 <mmu_init+0x1b4>
|   4baea:       eb0a 3103       add.w   r1, sl, r3, lsl #12
|   4baee:       4311            orrs    r1, r2
|   4baf0:       f849 1023       str.w   r1, [r9, r3, lsl #2]
|   4baf4:       3301            adds    r3, #1
|   4baf6:       e7f5            b.n     4bae4 <mmu_init+0x1a0>


Enrico
-- 
SIGMA Chemnitz GmbH       Registergericht:   Amtsgericht Chemnitz HRB 1750
Am Erlenwald 13           Geschaeftsfuehrer: Grit Freitag, Frank Pyritz
09128 Chemnitz


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
