Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b80V3-00050M-Oh
 for barebox@lists.infradead.org; Wed, 01 Jun 2016 07:23:34 +0000
Date: Wed, 1 Jun 2016 09:23:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160601072310.GK31666@pengutronix.de>
References: <1464356935-21500-1-git-send-email-yegorslists@googlemail.com>
 <1464720425.15779.86.camel@rtred1test09.kymeta.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1464720425.15779.86.camel@rtred1test09.kymeta.local>
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
Subject: Re: [PATCH] Add support for Baltos systems
To: Trent Piepho <tpiepho@kymetacorp.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Tue, May 31, 2016 at 06:46:57PM +0000, Trent Piepho wrote:
> On Fri, 2016-05-27 at 15:48 +0200, yegorslists@googlemail.com wrote:
> 
> > +
> > +/**
> > + * @brief The basic entry point for board initialization.
> > + *
> > + * This is called as part of machine init (after arch init).
> > + * This is again called with stack in SRAM, so not too many
> > + * constructs possible here.
> > + *
> > + * @return void
> > + */
> 
> Does anyone (Sascha?) know why this is noline?  Obviously it is being
> copied from the all the other boards that do this, and the only thing it
> can be doing is preventing this from being inlined into the entry
> function.  But why must this be prevented?

Only after calling relocate_to_current_adr() / setup_c() the C
environment is correctly initialized. Before that for example pointers
to global variables are not valid. The following does not work:

ENTRY_FUNCTION(start_am33xx_baltos_sram, bootinfo, r1, r2)
{
	void *fdt = __dtb_am335x_baltos_minimal_start;

	relocate_to_current_adr();
	setup_c();

	barebox_arm_entry(0x80000000, sdram_size, fdt);
}

Wenn entering start_am33xx_baltos_sram() we do not run at the address we
are linked at, so *fdt will have the offset between link address and
actual runtime address in it. Basically we must make sure that *fdt is
initialized *after* calling relocate_to_current_adr()/setup_c(). The same
might happen when create an extra function but let the compiler inline it:

static inline void cont(void)
{
	void *fdt = __dtb_am335x_baltos_minimal_start;

	barebox_arm_entry(0x80000000, sdram_size, fdt);
}

ENTRY_FUNCTION(start_am33xx_baltos_sram, bootinfo, r1, r2)
{
	relocate_to_current_adr();
	setup_c();

	cont();
}

This doesn't happen when we explicitly noinline cont().

The compiler simply doesn't know about the dirty tricks we play in
relocate_to_current_adr() and setup_c().

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
