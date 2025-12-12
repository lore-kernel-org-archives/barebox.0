Delivery-date: Fri, 12 Dec 2025 10:38:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTzbY-00AcpH-0N
	for lore@lore.pengutronix.de;
	Fri, 12 Dec 2025 10:38:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vTzbX-00024s-EO
	for lore@pengutronix.de; Fri, 12 Dec 2025 10:38:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:References:In-Reply-To:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7i+dCLKcLILrIuOd7IG2pPir72NOwIyWVmrYjBC08JM=; b=4iDrn7rCKqPmyIu5YqF95adWvc
	NizQFqcVnUZpkZWLwP09WI+6KV+ksiVxRqjSiURlh2O1YMlwi3nJ1vMggqbzz0K6ZuU+L6I3KyWBG
	GukTTi9PxCDiuJ/cuDSVgi1rx+dJdvDvMaKoM41SjLtpp4Fik46N7eW1dKbzkq9NMiNWXOxD2CKqH
	RhLnORpzP+TupR21tiJZIkGuffGjb9cpkGBdHTVMLO6/NjpJaJeC+HnMlWmBt1NxlFk3yspf0u8RS
	cVZnbp1WEM4LoUd+KLG4tYyCL3c/5ak8j7OE7U19c89QssVwDUsx5mvmsehd5LdUXLFZxDIi82pUC
	Bd0EzESw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTzb9-00000000Mkq-3dtM;
	Fri, 12 Dec 2025 09:38:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vTzb6-00000000Mjk-09OD
	for barebox@lists.infradead.org;
	Fri, 12 Dec 2025 09:38:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <u.oelmann@pengutronix.de>)
	id 1vTzb2-0001wx-W5; Fri, 12 Dec 2025 10:37:57 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <u.oelmann@pengutronix.de>)
	id 1vTzb2-005Gyf-2a;
	Fri, 12 Dec 2025 10:37:56 +0100
Received: from uol by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <u.oelmann@pengutronix.de>)
	id 1vTzb2-003Eqv-2I;
	Fri, 12 Dec 2025 10:37:56 +0100
From: =?utf-8?Q?Ulrich_=C3=96lmann?= <u.oelmann@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
In-Reply-To: <20251211203445.2293696-1-a.fatoum@pengutronix.de> (Ahmad
	Fatoum's message of "Thu, 11 Dec 2025 21:34:44 +0100")
References: <20251211203445.2293696-1-a.fatoum@pengutronix.de>
User-Agent: mu4e 1.12.13; emacs 30.2
Date: Fri, 12 Dec 2025 10:37:56 +0100
Message-ID: <6r4ipwdoqz.fsf@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251212_013800_074436_2AA2DB15 
X-CRM114-Status: GOOD (  26.61  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM64: mmu: implement mmu_disable completely in assembly
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Ahmad,

probably two copy'n'paste errors:

On Thu, Dec 11 2025 at 21:34 +0100, Ahmad Fatoum <a.fatoum@pengutronix.de> =
wrote:
> Splitting mmu_disable into two noinline function on a RK3568 leads to a
> barebox crash, because the code has the implicit assumption that the
> compiler won't generate memory accesses including spilling to stack.
>
> We can't guarantee this in C code, so implement the procedure in
> assembly.
>
> While at it, drop mmu_early_disable(), which is unused, superfluous and
> suffers from the same issue as old mmu_disable().
>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/cpu/cache-armv8.S   | 54 ++++++++++++++++++++++++++++++++++++
>  arch/arm/cpu/mmu_64.c        | 27 +-----------------
>  arch/arm/include/asm/cache.h |  1 +
>  arch/arm/include/asm/mmu.h   |  1 -
>  4 files changed, 56 insertions(+), 27 deletions(-)
>
> diff --git a/arch/arm/cpu/cache-armv8.S b/arch/arm/cpu/cache-armv8.S
> index 9d9e0fb585a1..b1847a2b9d1b 100644
> --- a/arch/arm/cpu/cache-armv8.S
> +++ b/arch/arm/cpu/cache-armv8.S
> @@ -9,6 +9,7 @@
>=20=20
>  #include <linux/linkage.h>
>  #include <init.h>
> +#include <asm/system.h>
>=20=20
>  /*
>   * void v8_flush_dcache_level(level)
> @@ -120,6 +121,59 @@ ENTRY(v8_invalidate_dcache_all)
>  	ret
>  ENDPROC(v8_invalidate_dcache_all)
>=20=20
> +/*
> + * void v8_mmu_disable(void)
> + *
> + * Implements the equivalent of following C code:
> + *
> + *	set_cr(get_cr() & ~(CR_M | CR_C))
> + *	v8_flush_dcache_all();
> + *	tlb_invalidate();
> + *
> + *	dsb();
> + *	isb();
> + *
> + * As D$ needs to be cleaned after it was disabled, this procedure
> + * is not permitted to trigger memory access, including spilling
> + * locals to stack. It's thus necessarily needs to be implemented
> + * in assembly.
> + */
> +.section .text.v8_mmu_disable
> +ENTRY(v8_mmu_disable)
> +	mov	x14, lr
> +	mov	x1, #~(CR_C | CR_M)
> +	mrs	x0, currentel
> +	lsr	w0, w0, #2		/* w0 <- current exception level */
> +	cmp	w0, #0x1
> +	b.eq	1f
> +	cmp 	w0, #0x2
> +	b.eq	2f
> +3:	/* EL3 */
> +	mrs	x0, sctlr_el3
> +	and	x0, x0, x1
> +	msr	sctlr_el1, x0

Shouldn't the value be written back to sctlr_el3 instead of sctlr_el1?

> +	bl	v8_flush_dcache_all
> +	tlbi	alle3
> +	b	0f
> +2:	/* EL2 */
> +	mrs	x0, sctlr_el2
> +	and	x0, x0, x1
> +	msr	sctlr_el1, x0

Same here?

Best regards
Ulrich


> +	bl	v8_flush_dcache_all
> +	tlbi	alle2
> +	b	0f
> +1:	/* EL1 */
> +	mrs	x0, sctlr_el1
> +	and	x0, x0, x1
> +	msr	sctlr_el1, x0
> +	bl	v8_flush_dcache_all
> +	tlbi	vmalle1
> +0:	/* common prologue */
> +	dsb 	sy
> +	isb
> +	ret	x14
> +ENDPROC(v8_mmu_disable)
> +
>  /*
>   * void v8_flush_dcache_range(start, end)
>   *
> diff --git a/arch/arm/cpu/mmu_64.c b/arch/arm/cpu/mmu_64.c
> index f22fcb5f8ea4..56c6a21f2b2a 100644
> --- a/arch/arm/cpu/mmu_64.c
> +++ b/arch/arm/cpu/mmu_64.c
> @@ -344,17 +344,7 @@ void __mmu_init(bool mmu_on)
>=20=20
>  void mmu_disable(void)
>  {
> -	unsigned int cr;
> -
> -	cr =3D get_cr();
> -	cr &=3D ~(CR_M | CR_C);
> -
> -	set_cr(cr);
> -	v8_flush_dcache_all();
> -	tlb_invalidate();
> -
> -	dsb();
> -	isb();
> +	v8_mmu_disable();
>  }
>=20=20
>  void dma_inv_range(void *ptr, size_t size)
> @@ -436,18 +426,3 @@ void mmu_early_enable(unsigned long membase, unsigne=
d long memsize, unsigned lon
>=20=20
>  	mmu_enable();
>  }
> -
> -void mmu_early_disable(void)
> -{
> -	unsigned int cr;
> -
> -	cr =3D get_cr();
> -	cr &=3D ~(CR_M | CR_C);
> -
> -	set_cr(cr);
> -	v8_flush_dcache_all();
> -	tlb_invalidate();
> -
> -	dsb();
> -	isb();
> -}
> diff --git a/arch/arm/include/asm/cache.h b/arch/arm/include/asm/cache.h
> index dd022c1f23f2..ea78ae123aec 100644
> --- a/arch/arm/include/asm/cache.h
> +++ b/arch/arm/include/asm/cache.h
> @@ -15,6 +15,7 @@ void v8_flush_dcache_all(void);
>  void v8_invalidate_dcache_all(void);
>  void v8_flush_dcache_range(unsigned long start, unsigned long end);
>  void v8_inv_dcache_range(unsigned long start, unsigned long end);
> +void v8_mmu_disable(void);
>=20=20
>  static inline void icache_invalidate(void)
>  {
> diff --git a/arch/arm/include/asm/mmu.h b/arch/arm/include/asm/mmu.h
> index eef6c53b5912..1fafbf9d77be 100644
> --- a/arch/arm/include/asm/mmu.h
> +++ b/arch/arm/include/asm/mmu.h
> @@ -65,6 +65,5 @@ void __dma_flush_range(unsigned long, unsigned long);
>  void __dma_inv_range(unsigned long, unsigned long);
>=20=20
>  void mmu_early_enable(unsigned long membase, unsigned long memsize, unsi=
gned long barebox_base);
> -void mmu_early_disable(void);
>=20=20
>  #endif /* __ASM_MMU_H */
--=20
Pengutronix e.K.                           | Ulrich =C3=96lmann            =
   |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


