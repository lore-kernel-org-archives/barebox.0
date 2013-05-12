Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([94.23.35.102])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UbZTF-0005Qa-3q
 for barebox@lists.infradead.org; Sun, 12 May 2013 16:50:01 +0000
Date: Sun, 12 May 2013 18:49:35 +0200
From: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Message-ID: <20130512184935.29bce329@skate>
In-Reply-To: <1368364146-6024-4-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1368364146-6024-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1368364146-6024-4-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: Re: [PATCH 3/5] arm: initial support for Marvell Dove SoCs
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>

Dear Sebastian Hesselbarth,

On Sun, 12 May 2013 15:09:04 +0200, Sebastian Hesselbarth wrote:

> +static inline void dove_remap_reg_base(uint32_t intbase,
> +				       uint32_t mcbase)
> +{
> +	uint32_t val;
> +
> +	/* remap ahb slave base */
> +	val  = readl(DOVE_CPU_CTRL) & 0xffff0000;
> +	val |= (mcbase & 0xffff0000) >> 16;
> +	writel(val, DOVE_CPU_CTRL);
> +
> +	/* remap axi bridge address */
> +	val  = readl(DOVE_AXI_CTRL) & 0x007fffff;
> +	val |= mcbase & 0xff800000;
> +	writel(val, DOVE_AXI_CTRL);
> +
> +	/* remap memory controller base address */
> +	val = readl(DOVE_SDRAM_BASE + SDRAM_REGS_BASE_DECODE) & 0x0000ffff;
> +	val |= mcbase & 0xffff0000;
> +	writel(val, DOVE_SDRAM_BASE + SDRAM_REGS_BASE_DECODE);
> +
> +	/* remap internal register */
> +	val = intbase & 0xfff00000;
> +	writel(val, DOVE_BRIDGE_BASE + INT_REGS_BASE_MAP);
> +}

How does the remapping of the registers plays with the debug_ll code in
arch/arm/mach-mvebu/include/mach/debug_ll.h, which assumes the UART is
at 0xd0012000 ?

Thanks!

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
