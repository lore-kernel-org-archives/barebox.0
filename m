Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgmMG-0002LM-Sl
 for barebox@lists.infradead.org; Fri, 28 Jun 2019 08:35:50 +0000
Received: by mail-lj1-x243.google.com with SMTP id 205so5134127ljj.8
 for <barebox@lists.infradead.org>; Fri, 28 Jun 2019 01:35:48 -0700 (PDT)
Date: Fri, 28 Jun 2019 11:35:45 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20190628113545.9e490df487bea08fcd33df2b@gmail.com>
In-Reply-To: <20190626065354.26nnnj2drhntespt@pengutronix.de>
References: <20190621051507.11700-1-antonynpavlov@gmail.com>
 <20190626065354.26nnnj2drhntespt@pengutronix.de>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] MIPS: reloc: make flush_cache_all() usable
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Oleksij Rempel <o.rempel@pengutronix.de>

On Wed, 26 Jun 2019 08:53:54 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> Hi Antony,
> =

> On Fri, Jun 21, 2019 at 08:15:07AM +0300, Antony Pavlov wrote:
> > flush_cache_all() uses 'struct cpuinfo_mips current_cpu_data' data fiel=
ds.
> > These data fields are initialized in r4k_cache_init().
> > =

> > However in the current implementation the r4k_cache_init() function
> > is called __AFTER__ relocate_code().
> > =

> > Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> > ---
> >  arch/mips/lib/reloc.c | 12 ++++++++++++
> >  1 file changed, 12 insertions(+)
> > =

> > diff --git a/arch/mips/lib/reloc.c b/arch/mips/lib/reloc.c
> > index 14ba6167dd..6f1cd6d82f 100644
> > --- a/arch/mips/lib/reloc.c
> > +++ b/arch/mips/lib/reloc.c
> > @@ -37,6 +37,7 @@
> >  #include <asm/mipsregs.h>
> >  #include <asm/relocs.h>
> >  #include <asm/sections.h>
> > +#include <asm/cpu-features.h>
> >  #include <linux/sizes.h>
> >  #include <asm-generic/memory_layout.h>
> >  =

> > @@ -157,6 +158,17 @@ void relocate_code(void *fdt, u32 fdt_size, u32 ra=
m_size)
> >  		apply_reloc(type, (void *)addr, off);
> >  	}
> >  =

> > +	/* clear the BSS first */
> > +	memset(__bss_start, 0x00, bss_len);
> > +
> > +	cpu_probe();
> > +
> > +	if (cpu_has_4k_cache) {
> > +		extern void r4k_cache_init(void);
> > +
> > +		r4k_cache_init();
> > +	}
> > +
> >  	/* Ensure the icache is coherent */
> >  	flush_cache_all();
> =

> Can we initialize one field in current_cpu_data to something nonzero so
> that it goes out of the bss?

Or clear only current_cpu_data and keep it in bss?

> Another way would be to pass cpu_probe() a pointer to a struct
> cpuinfo_mips allocated on the stack and then pass it to
> flush_cache_all().
> =

> Clearing the bss twice doesn't look very nice.

It's two diffrent bss segments: one before relocation and one after relocat=
ion.

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
