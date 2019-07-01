Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhqwh-0003V6-HX
 for barebox@lists.infradead.org; Mon, 01 Jul 2019 07:41:53 +0000
Date: Mon, 1 Jul 2019 09:41:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190701074147.uzvalbnop5fbqnhw@pengutronix.de>
References: <20190621051507.11700-1-antonynpavlov@gmail.com>
 <20190626065354.26nnnj2drhntespt@pengutronix.de>
 <20190628113545.9e490df487bea08fcd33df2b@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190628113545.9e490df487bea08fcd33df2b@gmail.com>
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
Subject: Re: [PATCH] MIPS: reloc: make flush_cache_all() usable
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org, Oleksij Rempel <o.rempel@pengutronix.de>

On Fri, Jun 28, 2019 at 11:35:45AM +0300, Antony Pavlov wrote:
> On Wed, 26 Jun 2019 08:53:54 +0200
> Sascha Hauer <s.hauer@pengutronix.de> wrote:
> 
> > Hi Antony,
> > 
> > On Fri, Jun 21, 2019 at 08:15:07AM +0300, Antony Pavlov wrote:
> > > flush_cache_all() uses 'struct cpuinfo_mips current_cpu_data' data fields.
> > > These data fields are initialized in r4k_cache_init().
> > > 
> > > However in the current implementation the r4k_cache_init() function
> > > is called __AFTER__ relocate_code().
> > > 
> > > Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> > > ---
> > >  arch/mips/lib/reloc.c | 12 ++++++++++++
> > >  1 file changed, 12 insertions(+)
> > > 
> > > diff --git a/arch/mips/lib/reloc.c b/arch/mips/lib/reloc.c
> > > index 14ba6167dd..6f1cd6d82f 100644
> > > --- a/arch/mips/lib/reloc.c
> > > +++ b/arch/mips/lib/reloc.c
> > > @@ -37,6 +37,7 @@
> > >  #include <asm/mipsregs.h>
> > >  #include <asm/relocs.h>
> > >  #include <asm/sections.h>
> > > +#include <asm/cpu-features.h>
> > >  #include <linux/sizes.h>
> > >  #include <asm-generic/memory_layout.h>
> > >  
> > > @@ -157,6 +158,17 @@ void relocate_code(void *fdt, u32 fdt_size, u32 ram_size)
> > >  		apply_reloc(type, (void *)addr, off);
> > >  	}
> > >  
> > > +	/* clear the BSS first */
> > > +	memset(__bss_start, 0x00, bss_len);
> > > +
> > > +	cpu_probe();
> > > +
> > > +	if (cpu_has_4k_cache) {
> > > +		extern void r4k_cache_init(void);
> > > +
> > > +		r4k_cache_init();
> > > +	}
> > > +
> > >  	/* Ensure the icache is coherent */
> > >  	flush_cache_all();
> > 
> > Can we initialize one field in current_cpu_data to something nonzero so
> > that it goes out of the bss?
> 
> Or clear only current_cpu_data and keep it in bss?

That would at least make it clear why this is done.

That's important because otherwise some day somebody sends a patch
"mips: remove duplicate clearing of bss" and I might apply it because
it looks correct ;)

There might be one problem with putting current_cpu_data into bss. I
don't know much about MIPS booting, but in case the initial image is
located in some potentially small SRAM then putting current_cpu_data
into bss means that the SRAM has to be big enough for initial image and
bss.

> 
> > Another way would be to pass cpu_probe() a pointer to a struct
> > cpuinfo_mips allocated on the stack and then pass it to
> > flush_cache_all().
> > 
> > Clearing the bss twice doesn't look very nice.
> 
> It's two diffrent bss segments: one before relocation and one after relocation.

Yes, I know, otherwise you could just drop the second bss clearing.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
