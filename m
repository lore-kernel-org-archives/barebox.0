Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UZMRO-0005Zq-W4
 for barebox@lists.infradead.org; Mon, 06 May 2013 14:31:04 +0000
Date: Mon, 6 May 2013 16:30:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130506143030.GF32299@pengutronix.de>
References: <1367599871-28479-1-git-send-email-thomas.petazzoni@free-electrons.com>
 <1367599871-28479-5-git-send-email-thomas.petazzoni@free-electrons.com>
 <20130506160916.04c7bfdc@skate>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130506160916.04c7bfdc@skate>
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
Subject: Re: [PATCH 4/7] arm: initial support for Marvell Armada 370/XP SoCs
To: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: Lior Amsalem <alior@marvell.com>, barebox@lists.infradead.org, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>, Willy Tarreau <w@1wt.eu>

On Mon, May 06, 2013 at 04:09:16PM +0200, Thomas Petazzoni wrote:
> Sascha, Jean-Christophe,
> 
> I have one question below regarding the SoC code.
> 
> On Fri,  3 May 2013 18:51:08 +0200, Thomas Petazzoni wrote:
> > +static inline void mvebu_memory_find(unsigned long *phys_base,
> > +				     unsigned long *phys_size)
> > +{
> > +	void __iomem *sdram_win = IOMEM(MVEBU_SDRAM_WIN_BASE);
> > +	int cs;
> 
> 
> Here...
> 
> > +	*phys_base = ~0;
> > +	*phys_size = 0;
> > +
> > +	for (cs = 0; cs < 4; cs++) {
> > +		uint32_t base = readl(sdram_win + DDR_BASE_CS_OFF(cs));
> > +		uint32_t ctrl = readl(sdram_win + DDR_SIZE_CS_OFF(cs));
> 
> ... here ...
> 
> 
> > +#if defined(CONFIG_ARCH_ARMADA_370)
> > +static int mvebu_init_clocks(void)
> > +{
> > +	uint32_t val;
> > +	unsigned int rate;
> > +	void __iomem *sar = IOMEM(MVEBU_SAR_BASE) + SAR_LOW_REG_OFF;
> > +
> > +	val = readl(sar);
> 
> ... and here, I'm directly poking at physical addresses, but it seems
> like Barebox can run with the MMU enabled. Should I be mapping those
> registers before accessing them?

We use the MMU, but we use a 1:1 mapping. The SDRAM is mapped cached and
the rest is mapped uncached. This means you can simply access all
registers without mapping them

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
