Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo2.mail-out.ovh.net ([46.105.58.226]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UZM9f-0005Bl-EU
 for barebox@lists.infradead.org; Mon, 06 May 2013 14:12:39 +0000
Received: from mail411.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id BEC36DC1FB1
 for <barebox@lists.infradead.org>; Mon,  6 May 2013 16:12:17 +0200 (CEST)
Date: Mon, 6 May 2013 16:07:56 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130506140756.GN13393@game.jcrosoft.org>
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

On 16:09 Mon 06 May     , Thomas Petazzoni wrote:
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
> registers before accessing them? I see that drivers use
> dev_request_mem_region(), but this clock and memory code isn't (yet?) a
> driver per-se.

no as only the ddr is cached but the dev_request_mem_region track who request
what yes please create a device/drivers as you will be able to probe a dt
(even builtin) in this case

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
