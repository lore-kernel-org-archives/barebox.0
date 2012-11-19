Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TaOHK-00086T-0Y
 for barebox@lists.infradead.org; Mon, 19 Nov 2012 10:08:36 +0000
Date: Mon, 19 Nov 2012 11:08:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121119100829.GN10369@pengutronix.de>
References: <1353100606.3647.40.camel@mars>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1353100606.3647.40.camel@mars>
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
Subject: Re: [PATCH] i.MX25 & 35 usb config bits : fix host power bit
To: Christoph Fritz <chf.fritz@googlemail.com>
Cc: barebox@lists.infradead.org, Michael Burkey <mdburkey@gmail.com>, Sascha Hauer <kernel@pengutronix.de>

On Fri, Nov 16, 2012 at 10:16:46PM +0100, Christoph Fritz wrote:
> This patch sets HPM (Host power mask bit) to bit 16 according to i.MX
> Reference Manual. Falsely it was set to bit 8, but this controls pull-up
> Impedance.
> 
> Reported-by: Michael Burkey <mdburkey@gmail.com>
> Signed-off-by: Christoph Fritz <chf.fritz@googlemail.com>

Applied, thanks

Sascha

> ---
>  arch/arm/mach-imx/include/mach/usb.h |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/mach-imx/include/mach/usb.h b/arch/arm/mach-imx/include/mach/usb.h
> index 9244989..0a88e7f 100644
> --- a/arch/arm/mach-imx/include/mach/usb.h
> +++ b/arch/arm/mach-imx/include/mach/usb.h
> @@ -4,7 +4,7 @@
>  /* configuration bits for i.MX25 and i.MX35 */
>  #define MX35_H1_SIC_SHIFT	21
>  #define MX35_H1_SIC_MASK	(0x3 << MX35_H1_SIC_SHIFT)
> -#define MX35_H1_PM_BIT		(1 << 8)
> +#define MX35_H1_PM_BIT		(1 << 16)
>  #define MX35_H1_IPPUE_UP_BIT	(1 << 7)
>  #define MX35_H1_IPPUE_DOWN_BIT	(1 << 6)
>  #define MX35_H1_TLL_BIT		(1 << 5)
> -- 
> 1.7.10.4
> 
> 
> 
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
