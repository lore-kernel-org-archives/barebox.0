Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2001:6f8:1178:4:290:27ff:fe1d:cc33]
	(helo=metis.ext.pengutronix.de)
	by casper.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NMdxO-000762-0A
	for barebox@lists.infradead.org; Mon, 21 Dec 2009 08:49:35 +0000
Date: Mon, 21 Dec 2009 09:48:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20091221084831.GR15126@pengutronix.de>
References: <alpine.LFD.2.00.0912190819150.7965@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.LFD.2.00.0912190819150.7965@localhost>
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
Subject: Re: [PATCH] ARM: Correct Kconfig typo, "optimzed" -> "optimized".
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

Hi Robert,

On Sat, Dec 19, 2009 at 08:20:23AM -0500, Robert P. J. Day wrote:
> 
> Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

Thanks, applied.

Sascha

> 
> ---
> 
> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index 8a8323f..c091a99 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -103,7 +103,7 @@ config CPU_V7_DCACHE_SKIP
>  	  So that the D-Cache invalidation logic is skipped
> 
>  config ARM_OPTIMZED_STRING_FUNCTIONS
> -	bool "use assembler optimzed string functions"
> +	bool "use assembler optimized string functions"
>  	help
>  	  Say yes here to use assembler optimized memcpy / memset functions.
>  	  These functions work much faster than the normal versions but
> 
> ========================================================================
> Robert P. J. Day                               Waterloo, Ontario, CANADA
> 
>             Linux Consulting, Training and Kernel Pedantry.
> 
> Web page:                                          http://crashcourse.ca
> Twitter:                                       http://twitter.com/rpjday
> ========================================================================
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
