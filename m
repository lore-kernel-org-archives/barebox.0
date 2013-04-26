Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UVgCH-00089G-E5
 for barebox@lists.infradead.org; Fri, 26 Apr 2013 10:48:10 +0000
Date: Fri, 26 Apr 2013 12:48:06 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130426104806.GR32299@pengutronix.de>
References: <1366971714-32682-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1366971714-32682-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [RFC only] ARM: i.MX: Fix SDRAM size detect
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Fri, Apr 26, 2013 at 02:21:54PM +0400, Alexander Shiyan wrote:
> This is a trying to fix problem described in:
> http://lists.infradead.org/pipermail/barebox/2013-April/014182.html

Sorry, can you explain what the problem is and how this patch fixes
that?
How I understood it the problem was that your board had the second chip
select enabled without having sdram connected there leading to a wrong
size detection.

>  void __naked __noreturn imx51_barebox_entry(uint32_t boarddata)
>  {
> -	unsigned long base;
> -	unsigned long size;
> -
> -	base = MX51_CSD0_BASE_ADDR;
> -
> -	size = imx_v3_sdram_size((void *)MX51_ESDCTL_BASE_ADDR, 0);
> -	if (size == SZ_256M)
> -		size += imx_v3_sdram_size((void *)MX51_ESDCTL_BASE_ADDR, 1);
> -
> -	barebox_arm_entry(base, size, boarddata);
> +	barebox_arm_entry(MX51_CSD0_BASE_ADDR, SZ_128M, boarddata);
>  }

Here SDRAM size detection is disabled completely and instead 128Mib is
assumed.

>  
> +static int imx51_memory_init(void)
> +{
> +	void __iomem *esdctl = IOMEM(MX51_ESDCTL_BASE_ADDR + IMX_ESDCTL1);
> +	unsigned long add, size = SZ_128M;
> +
> +	add = get_ram_size((ulong *)(MX51_CSD0_BASE_ADDR + SZ_128M), SZ_128M);

Ok, I think the intention here is to test whether we actually have more
than 128Mib. This won't work. get_ram_size works by detecting where in
memory we have mirrored regions. So in case you have 128Mib of real
memory you will detect 128Mib above not knowing that you test the
mirrored region of your actual memory.

> +	if (add) {
> +		size += add;
> +		if (readl(esdctl) & ESDCTL0_SDE)
> +			size += get_ram_size((ulong *)MX51_CSD1_BASE_ADDR, SZ_256M);
> +
> +	}
> +
> +	arm_add_mem_device("ram0", MX51_CSD0_BASE_ADDR, size);

With this patch you imply that imx_v3_sdram_size does not work which was
never mentioned in the thread you reference.

Can you please post:

- Which values the sdram controller is programmed with
- How much memory you really have
- what barebox detects

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
