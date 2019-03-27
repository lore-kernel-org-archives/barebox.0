Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h93Ez-00068f-Rx
 for barebox@lists.infradead.org; Wed, 27 Mar 2019 07:44:59 +0000
Date: Wed, 27 Mar 2019 08:44:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190327074449.nnvbk5wfbiax5f45@pengutronix.de>
References: <20190325143410.18249-1-tomaz.solc@tablix.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190325143410.18249-1-tomaz.solc@tablix.org>
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
Subject: Re: [PATCH] ARM: rpi: add board revision for Compute Module 3+
To: Tomaz Solc <tomaz.solc@tablix.org>
Cc: barebox@lists.infradead.org

Hi Tomaz,

The patch itself looks good. Please resend with a Signed-off-by tag.

Sascha

On Mon, Mar 25, 2019 at 03:34:10PM +0100, Tomaz Solc wrote:
> ---
>  arch/arm/boards/raspberry-pi/rpi-common.c | 2 ++
>  arch/arm/mach-bcm283x/include/mach/mbox.h | 1 +
>  2 files changed, 3 insertions(+)
> 
> diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
> index 60cea7f8e..bc877f853 100644
> --- a/arch/arm/boards/raspberry-pi/rpi-common.c
> +++ b/arch/arm/boards/raspberry-pi/rpi-common.c
> @@ -197,6 +197,8 @@ const struct rpi_model rpi_models_new_scheme[] = {
>  	RPI_MODEL(BCM2835_BOARD_REV_ZERO_W, 	"Zero W", 	rpi_b_plus_init),
>  	RPI_MODEL(BCM2837B0_BOARD_REV_3B_PLUS, 	"Model 3 B+", 	rpi_b_plus_init ),
>  	RPI_MODEL(BCM2837B0_BOARD_REV_3A_PLUS, 	"Nodel 3 A+", 	rpi_b_plus_init),
> +	RPI_MODEL(0xf, "Unknown model", NULL),
> +	RPI_MODEL(BCM2837B0_BOARD_REV_CM3_PLUS, "Compute Module 3+", NULL),
>  };
>  
>  static int rpi_board_rev = 0;
> diff --git a/arch/arm/mach-bcm283x/include/mach/mbox.h b/arch/arm/mach-bcm283x/include/mach/mbox.h
> index e4f6cb675..6db961b80 100644
> --- a/arch/arm/mach-bcm283x/include/mach/mbox.h
> +++ b/arch/arm/mach-bcm283x/include/mach/mbox.h
> @@ -166,6 +166,7 @@ struct bcm2835_mbox_tag_hdr {
>  #define BCM2835_BOARD_REV_ZERO_W   	0x0c
>  #define BCM2837B0_BOARD_REV_3B_PLUS   	0x0d
>  #define BCM2837B0_BOARD_REV_3A_PLUS   	0x0e
> +#define BCM2837B0_BOARD_REV_CM3_PLUS	0x10
>  
>  struct bcm2835_mbox_tag_get_board_rev {
>  	struct bcm2835_mbox_tag_hdr tag_hdr;
> -- 
> 2.11.0
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
