Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1QEqFE-0005yz-Ay
	for barebox@lists.infradead.org; Tue, 26 Apr 2011 21:56:33 +0000
Date: Tue, 26 Apr 2011 23:56:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110426215630.GL14770@pengutronix.de>
References: <201104261430.01267.roman.fietze@telemotive.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201104261430.01267.roman.fietze@telemotive.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Freescale i.MX35 using CSD1 and 256 MiB DDR2
To: Roman Fietze <roman.fietze@telemotive.de>
Cc: barebox@lists.infradead.org

Hi Roman,

On Tue, Apr 26, 2011 at 02:30:01PM +0200, Roman Fietze wrote:
> Hello Barebox Mailing List Members,
> 
> I found this advice to patch RedBoot to support more than 128 MiB DDR2
> on a Freescale i.MX35 3-stack eval board by enabling CSD1 and properly
> configuring the ESDRAMC.
> 
>   http://www.spinics.net/lists/u-boot-v2/msg03422.html
> 
> They simply seem to modify the boot code by omitting some checks and
> adding MMU mapping entries.
> 
> My changes are not successful yet. It seems I'm simply not yet
> familiar enough with the i.MX35, barebox, or even both. The changes
> that I added to barebox are at the end of this mail.
> 
> It seems that barebox uses the DCD table to boot the chip in my case,
> so I added new entries there, and I can see them when dumping e.g. the
> ESDRAMC registers using barebox itself (yes, it still starts. I can
> still dump the RAM starting at 0x80000000, but when I try to dump
> 0x90000000 barebox simply hangs.
> 
> I checked the IOMUX GPRA, the PAD settings for CS2 and CS3, the
> ESDRAMC registers and all locations of Freescale's document containing
> CS2, CS3, CSD0, CSD1, etc. with no success.
> 
> I'm stuck. What am I missing? A pointer to the appropriate section of
> the documentation or any helpful link would already very helpful.

There are at least two bugs in your flash header, see below.

> 
> 
> diff --git a/arch/arm/boards/freescale-mx35-3-stack/flash_header.c b/arch/arm/boards/freescale-mx35-3-stack/flash_header.c
> index 4bee797..34edceb 100644
> --- a/arch/arm/boards/freescale-mx35-3-stack/flash_header.c
> +++ b/arch/arm/boards/freescale-mx35-3-stack/flash_header.c
> @@ -17,19 +17,28 @@ struct imx_dcd_entry __dcd_entry_section dcd_entry[] = {
>  	{ .ptr_type = 4, .addr = 0xB8001010, .val = 0x0000030C, },
>  	{ .ptr_type = 4, .addr = 0xB8001004, .val = 0x007ffc3f, },
>  	{ .ptr_type = 4, .addr = 0xB8001000, .val = 0x92220000, },
> +	{ .ptr_type = 4, .addr = 0xB800100C, .val = 0x007ffc3f, },
> +	{ .ptr_type = 4, .addr = 0xB8001008, .val = 0x92220000, },
>  	{ .ptr_type = 4, .addr = 0x80000400, .val = 0x12345678, },
> +	{ .ptr_type = 4, .addr = 0x90000400, .val = 0x12345678, },
>  	{ .ptr_type = 4, .addr = 0xB8001000, .val = 0xA2220000, },

There is the equivalent for this at 0xB8001008 missing

>  	{ .ptr_type = 4, .addr = 0x80000000, .val = 0x87654321, },
> +	{ .ptr_type = 4, .addr = 0x90000000, .val = 0x87654321, },
>  	{ .ptr_type = 4, .addr = 0x80000000, .val = 0x87654321, },
> +	{ .ptr_type = 4, .addr = 0x90000000, .val = 0x87654321, },
>  	{ .ptr_type = 4, .addr = 0xB8001000, .val = 0xB2220000, },
> +	{ .ptr_type = 4, .addr = 0xB8001004, .val = 0xB2220000, },

This should be 0xB8001008

>  	{ .ptr_type = 1, .addr = 0x80000233, .val = 0xda, },
> +	{ .ptr_type = 1, .addr = 0x90000233, .val = 0xda, },
>  	{ .ptr_type = 1, .addr = 0x82000780, .val = 0xda, },
> +	{ .ptr_type = 1, .addr = 0x92000780, .val = 0xda, },
>  	{ .ptr_type = 1, .addr = 0x82000400, .val = 0xda, },
> +	{ .ptr_type = 1, .addr = 0x92000400, .val = 0xda, },
>  	{ .ptr_type = 4, .addr = 0xB8001000, .val = 0x82226080, },
>  	{ .ptr_type = 4, .addr = 0xB8001004, .val = 0x007ffc3f, },
> +	{ .ptr_type = 4, .addr = 0xB8001008, .val = 0x82226080, },
>  	{ .ptr_type = 4, .addr = 0xB800100C, .val = 0x007ffc3f, },
>  	{ .ptr_type = 4, .addr = 0xB8001010, .val = 0x00000304, },
> -	{ .ptr_type = 4, .addr = 0xB8001008, .val = 0x00002000, },
>  };
>  
>  
>  
>  	/* Skip SDRAM initialization if we run from RAM */
> -	cmp	pc, #0x80000000
> +	cmp	pc, #CSD0_BASE_ADDR
>  	bls	1f
> -	cmp	pc, #0x90000000
> +	cmp	pc, #CSD1_BASE_ADDR

This should be 0xa0000000 since with 256MB Ram this is still in SDRAM.

I Hope this helps.

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
