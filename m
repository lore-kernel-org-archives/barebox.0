Delivery-date: Mon, 18 May 2026 20:16:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wP2WK-001Dz1-2o
	for lore@lore.pengutronix.de;
	Mon, 18 May 2026 20:16:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wP2WI-0002NS-NZ
	for lore@pengutronix.de; Mon, 18 May 2026 20:16:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:To:Subject:From:Reply-To:
	MIME-Version:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	bh=xvpZ/I7ezCqsHdwHPmAlokVXeUOjjj3Az/KrGdhfWrA=; b=3WZ0tj1FR0860ovuJQX4D//dwP
	3xb1M6BuUSajGPiJtOoQgJLlwHjIPdYyyYZsMCAqQ8wZZ2czZIcYsWAI4cNxzgUzNZOEtaGFb8Wz6
	bHYY7+Rd9tLj5cS2koMZXDkzlVG/mEp5mmkSB0EEjKIJ3V47f86Wstami+4QnQbsbfOV8we1g5uNz
	fmzHy7rOBZIk32UUIK5y/aBOiYcks1Fi28U/r8dCmrUkxDL5cYgVROVreAP6g1E3MYnIUpYk4e5PD
	ZMuCEEFHiyVQzvPXeWWW/1awcX54N5RoK/pRv/pEhgDJXNHPlQ3WCcgE51uEy4yx00IPHBlLNo48X
	cVUj0eCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wP2V5-0000000GXNj-2sjI;
	Mon, 18 May 2026 18:15:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wP2V2-0000000GXN7-3Jg6
	for barebox@lists.infradead.org;
	Mon, 18 May 2026 18:15:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1wP2V0-0002F6-UT; Mon, 18 May 2026 20:15:30 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1wP2V0-000dWi-12;
	Mon, 18 May 2026 20:15:30 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1wP2V0-0000000ExjF-3JeU;
	Mon, 18 May 2026 20:15:30 +0200
From: "Sascha Hauer" <s.hauer@pengutronix.de>
To: "Ahmad Fatoum" <a.fatoum@pengutronix.de>
In-Reply-To: <384b2a48-8750-4a69-8f2c-663fcc0f5d18@pengutronix.de>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 18 May 2026 18:15:30 +0000
Message-Id: <E1wP2V0-0000000ExjF-3JeU@pty.whiteo.stw.pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_111532_832619_A9E45CE9 
X-CRM114-Status: GOOD (  25.49  )
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
Cc: Barebox List <barebox@lists.infradead.org>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] pbl: cleanup early malloc
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 2026-05-18 18:14, Ahmad Fatoum wrote:
> On 5/18/26 5:32 PM, Sascha Hauer wrote:
> > All architectures using PBL define the same variables free_mem_ptr and
> > free_mem_end_ptr and initialize them. create a helper for that in
> > pbl/malloc.c and rename simple_*() to pbl_*().
> >=20
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
>=20
> Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>=20
> with issues below addressed
>=20
> > ---
> >  arch/arm/cpu/uncompress.c              |  6 +---
> >  arch/mips/boot/uncompress.c            |  6 +---
> >  arch/riscv/boot/uncompress.c           |  6 +---
> >  arch/riscv/include/asm/barebox-riscv.h |  6 ----
> >  include/linux/decompress/mm.h          | 44 ++++----------------------
> >  include/mach/bcm283x/debug_ll.h        | 10 ------
> >  include/pbl.h                          |  7 ++--
> >  pbl/Makefile                           |  1 +
> >  pbl/malloc.c                           | 43 +++++++++++++++++++++++++
> >  9 files changed, 57 insertions(+), 72 deletions(-)
> >  create mode 100644 pbl/malloc.c
> >=20
> > diff --git a/arch/arm/cpu/uncompress.c b/arch/arm/cpu/uncompress.c
> > index 38f7dbc113..c7802226e6 100644
> > --- a/arch/arm/cpu/uncompress.c
> > +++ b/arch/arm/cpu/uncompress.c
> > @@ -27,9 +27,6 @@
> > =20
> >  #include "entry.h"
> > =20
> > -unsigned long free_mem_ptr;
> > -unsigned long free_mem_end_ptr;
> > -
> >  extern unsigned char input_data[];
> >  extern unsigned char input_data_end[];
> > =20
> > @@ -78,8 +75,7 @@ void __noreturn barebox_pbl_start(unsigned long memba=
se, unsigned long memsize,
> > =20
> >  	handoff_data =3D (void *)barebox_base + uncompressed_len + MAX_BSS_SI=
ZE;
> > =20
> > -	free_mem_ptr =3D barebox_base - ARM_MEM_EARLY_MALLOC_SIZE;
> > -	free_mem_end_ptr =3D barebox_base;
> > +	pbl_malloc_init(barebox_base - ARM_MEM_EARLY_MALLOC_SIZE, ARM_MEM_EAR=
LY_MALLOC_SIZE);
> > =20
> >  #ifdef DEBUG
> >  	print_pbl_mem_layout(membase, endmem, barebox_base);
> > diff --git a/arch/mips/boot/uncompress.c b/arch/mips/boot/uncompress.c
> > index 0630d03c6b..b58b23ea6b 100644
> > --- a/arch/mips/boot/uncompress.c
> > +++ b/arch/mips/boot/uncompress.c
> > @@ -16,9 +16,6 @@
> >  extern void *input_data;
> >  extern void *input_data_end;
> > =20
> > -unsigned long free_mem_ptr;
> > -unsigned long free_mem_end_ptr;
> > -
> >  void barebox_pbl_start(void *fdt, void *fdt_end, unsigned long ram_siz=
e);
> > =20
> >  void __section(.text_entry) barebox_pbl_start(void *fdt, void *fdt_end,
> > @@ -34,8 +31,7 @@ void __section(.text_entry) barebox_pbl_start(void *f=
dt, void *fdt_end,
> >  	memset(__bss_start, 0, __bss_stop - __bss_start);
> > =20
> >  	/* set 128 KiB at the end of the MALLOC_BASE for early malloc */
> > -	free_mem_ptr =3D TEXT_BASE - SZ_128K;
> > -	free_mem_end_ptr =3D free_mem_ptr + SZ_128K;
> > +	pbl_malloc_init(barebox_base - TEXT_BASE - SZ_128K, SZ_128K);
> > =20
> >  	piggy_len =3D (unsigned long)&input_data_end - (unsigned long)&input_=
data;
> > =20
> > diff --git a/arch/riscv/boot/uncompress.c b/arch/riscv/boot/uncompress.c
> > index e51f1b0121..df60b14ed8 100644
> > --- a/arch/riscv/boot/uncompress.c
> > +++ b/arch/riscv/boot/uncompress.c
> > @@ -23,9 +23,6 @@
> > =20
> >  #include "entry.h"
> > =20
> > -unsigned long free_mem_ptr;
> > -unsigned long free_mem_end_ptr;
> > -
> >  void __noreturn barebox_pbl_start(unsigned long membase, unsigned long=
 memsize,
> >  				  void *fdt)
> >  {
> > @@ -63,8 +60,7 @@ void __noreturn barebox_pbl_start(unsigned long memba=
se, unsigned long memsize,
> > =20
> >  	pr_debug("memory at 0x%08lx, size 0x%08lx\n", membase, memsize);
> > =20
> > -	free_mem_ptr =3D riscv_mem_early_malloc(membase, endmem);
> > -	free_mem_end_ptr =3D riscv_mem_early_malloc_end(membase, endmem);
> > +	pbl_malloc_init(riscv_mem_early_malloc(), SZ_128K);
>=20
> This is a bit dangerous as it now hardcodes SZ_128K at two places and
> one could be missed when trying to extend the region.
>=20
> Could you #define RISCV_MEM_EARLY_MALLOC_SIZE SZ_128K in the same patch?

All architectures use 128KiB and if we have to change it chances are
good that we have to change it for all architectures, so I'll add a
common define for this instead.

>=20
>=20
> > diff --git a/include/mach/bcm283x/debug_ll.h b/include/mach/bcm283x/deb=
ug_ll.h
> > index 8bbff4fd9a..68542fd6a3 100644
> > --- a/include/mach/bcm283x/debug_ll.h
> > +++ b/include/mach/bcm283x/debug_ll.h
> > @@ -42,16 +42,6 @@ static inline void debug_ll_init(void)
> > =20
> >  #elif defined CONFIG_DEBUG_RPI3_MINI_UART
> > =20
> > -static inline uint8_t debug_ll_read_reg(void __iomem *base, int reg)
> > -{
> > -	return readb(base + (reg << 2));
> > -}
> > -
> > -static inline void debug_ll_write_reg(void __iomem *base, int reg, uin=
t8_t val)
> > -{
> > -	writeb(val, base + (reg << 2));
> > -}
> > -
>=20
> Unrelated change?

Yes, dropped.

Sascha

--
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


