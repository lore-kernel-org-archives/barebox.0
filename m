Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TgJmk-0002sG-J0
 for barebox@lists.infradead.org; Wed, 05 Dec 2012 18:33:31 +0000
Date: Wed, 5 Dec 2012 19:33:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121205183328.GJ10369@pengutronix.de>
References: <1354718562-24328-1-git-send-email-w.sang@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1354718562-24328-1-git-send-email-w.sang@pengutronix.de>
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
Subject: Re: [PATCH] mxs: tx28: fix NAND usage
To: Wolfram Sang <w.sang@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Dec 05, 2012 at 03:42:42PM +0100, Wolfram Sang wrote:
> Pinmuxing was wrong and no GPMI device was created.
> 
> Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>

Applied, thanks

Sascha

> ---
>  arch/arm/boards/karo-tx28/tx28.c |    6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boards/karo-tx28/tx28.c b/arch/arm/boards/karo-tx28/tx28.c
> index a62cb82..6e8da15 100644
> --- a/arch/arm/boards/karo-tx28/tx28.c
> +++ b/arch/arm/boards/karo-tx28/tx28.c
> @@ -35,11 +35,12 @@ static const uint32_t tx28_pad_setup[] = {
>  	GPMI_D6 | VE_3_3V | PULLUP(1),
>  	GPMI_D7 | VE_3_3V | PULLUP(1),
>  	GPMI_READY0 | VE_3_3V | PULLUP(0),	/* external PU */
> +	GPMI_CE0N | VE_3_3V | PULLUP(1),
>  	GPMI_RDN | VE_3_3V | PULLUP(1),
>  	GPMI_WRN | VE_3_3V | BITKEEPER(1),
>  	GPMI_ALE | VE_3_3V | PULLUP(1),
>  	GPMI_CLE | VE_3_3V | PULLUP(1),
> -	GPMI_RESETN_GPIO | VE_3_3V | GPIO_IN,	/* act as WP, external PU */
> +	GPMI_RESETN | VE_3_3V | PULLUP(0),	/* external PU */
>  
>  	/* Network interface */
>  
> @@ -91,6 +92,9 @@ static int tx28_devices_init(void)
>  
>  	base_board_init();
>  
> +	add_generic_device("mxs_nand", 0, NULL, MXS_GPMI_BASE, 0x2000,
> +			   IORESOURCE_MEM, NULL);
> +
>  	return 0;
>  }
>  
> -- 
> 1.7.10.4
> 
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
