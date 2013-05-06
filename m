Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([94.23.35.102])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UZM6o-00058q-LF
 for barebox@lists.infradead.org; Mon, 06 May 2013 14:09:43 +0000
Date: Mon, 6 May 2013 16:09:16 +0200
From: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Message-ID: <20130506160916.04c7bfdc@skate>
In-Reply-To: <1367599871-28479-5-git-send-email-thomas.petazzoni@free-electrons.com>
References: <1367599871-28479-1-git-send-email-thomas.petazzoni@free-electrons.com>
 <1367599871-28479-5-git-send-email-thomas.petazzoni@free-electrons.com>
Mime-Version: 1.0
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
To: Sascha Hauer <s.hauer@pengutronix.de>, Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org, Lior Amsalem <alior@marvell.com>, Willy Tarreau <w@1wt.eu>, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>

Sascha, Jean-Christophe,

I have one question below regarding the SoC code.

On Fri,  3 May 2013 18:51:08 +0200, Thomas Petazzoni wrote:
> +static inline void mvebu_memory_find(unsigned long *phys_base,
> +				     unsigned long *phys_size)
> +{
> +	void __iomem *sdram_win = IOMEM(MVEBU_SDRAM_WIN_BASE);
> +	int cs;


Here...

> +	*phys_base = ~0;
> +	*phys_size = 0;
> +
> +	for (cs = 0; cs < 4; cs++) {
> +		uint32_t base = readl(sdram_win + DDR_BASE_CS_OFF(cs));
> +		uint32_t ctrl = readl(sdram_win + DDR_SIZE_CS_OFF(cs));

... here ...


> +#if defined(CONFIG_ARCH_ARMADA_370)
> +static int mvebu_init_clocks(void)
> +{
> +	uint32_t val;
> +	unsigned int rate;
> +	void __iomem *sar = IOMEM(MVEBU_SAR_BASE) + SAR_LOW_REG_OFF;
> +
> +	val = readl(sar);

... and here, I'm directly poking at physical addresses, but it seems
like Barebox can run with the MMU enabled. Should I be mapping those
registers before accessing them? I see that drivers use
dev_request_mem_region(), but this clock and memory code isn't (yet?) a
driver per-se.

Thanks,

Thomas
-- 
Thomas Petazzoni, Free Electrons
Kernel, drivers, real-time and embedded Linux
development, consulting, training and support.
http://free-electrons.com

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
