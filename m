Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R5Zze-0007He-EW
	for barebox@lists.infradead.org; Mon, 19 Sep 2011 09:18:27 +0000
Date: Mon, 19 Sep 2011 11:18:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110919091824.GG31404@pengutronix.de>
References: <1316175828-19748-1-git-send-email-plagnioj@jcrosoft.com>
	<1316175828-19748-4-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1316175828-19748-4-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 4/7] at91/boards: switch to software ecc as in linux kernel
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Sep 16, 2011 at 02:23:45PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  arch/arm/boards/at91sam9260ek/init.c     |    2 +-
>  arch/arm/boards/at91sam9263ek/init.c     |    2 +-
>  arch/arm/boards/pm9263/init.c            |    2 +-
>  arch/arm/mach-at91/at91sam9g45_devices.c |    2 +-
>  4 files changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm/boards/at91sam9260ek/init.c b/arch/arm/boards/at91sam9260ek/init.c
> index 861e898..e4b98bf 100644
> --- a/arch/arm/boards/at91sam9260ek/init.c
> +++ b/arch/arm/boards/at91sam9260ek/init.c
> @@ -64,7 +64,7 @@ static struct atmel_nand_data nand_pdata = {
>  	.cle		= 22,
>  /*	.det_pin	= ... not connected */
>  	.ecc_base	= (void __iomem *)(AT91_BASE_SYS + AT91_ECC),
> -	.ecc_mode	= NAND_ECC_HW,
> +	.ecc_mode	= NAND_ECC_SOFT,

What does the Atmel nand bootloader expect (I assume it's possible to
boot from NAND, right?). Is it software or hardware ecc?

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
