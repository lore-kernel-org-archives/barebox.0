Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tailo-0001zA-68
 for barebox@lists.infradead.org; Tue, 20 Nov 2012 08:01:25 +0000
Date: Tue, 20 Nov 2012 09:01:22 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121120080122.GD10369@pengutronix.de>
References: <alpine.DEB.2.02.1211190956260.13911@oneiric>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.02.1211190956260.13911@oneiric>
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
Subject: Re: [PATCH] mach-imx: Add/correct help info in mach-imx/Kconfig
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Mon, Nov 19, 2012 at 09:58:45AM -0500, Robert P. J. Day wrote:
> 
> Update help info, it's slightly out of date, and a grammatical fix.
> No functional change.
> 
> Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>

Applied, thanks

Sascha

> 
> ---
> 
>   are there any other updates that can be made to that help info?
> 
> diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
> index cca8394..3f4b452 100644
> --- a/arch/arm/mach-imx/Kconfig
> +++ b/arch/arm/mach-imx/Kconfig
> @@ -65,15 +65,15 @@ choice
>  	  used to setup SDRAM. The internal ROM code then initializes SDRAM
>  	  using the register/value table, loads the whole barebox image to
>  	  SDRAM and starts it. The internal boot mode is available on newer
> -	  i.MX processors (i.MX25, i.MX35, i.MX51 and i.MX53). and supports
> -	  booting from NOR, NAND, MMC/SD and serial ROMs.
> -	  The external boot mode only supports booting from NAND and NOR. With
> +	  i.MX processors (i.MX25, i.MX35, i.MX51, i.MX53 and i.MX6), and
> +	  supports booting from NOR, NAND, MMC/SD and serial ROMs.
> +	  The external boot mode supports booting only from NAND and NOR. With
>  	  NOR flash the image is just started in NOR flash. With NAND flash
>  	  the NAND controller loads the first 2kbyte from NAND into the NAND
>  	  controllers internal SRAM where it is then started. It's the
>  	  responsibility of these 2kbyte to load the rest of the boot image.
>  	  The external boot mode is supported on older i.MX processors (i.MX1,
> -	  i.MX21, i.MX25, i.MX27, i.MX21, i.MX35).
> +	  i.MX21, i.MX25, i.MX27, i.MX31, i.MX35).
> 
>  config ARCH_IMX_INTERNAL_BOOT
>  	bool "support internal boot mode"
> 
> -- 
> 
> ========================================================================
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                         http://crashcourse.ca
> 
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
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
