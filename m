Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1go1sF-0008GF-0O
 for barebox@lists.infradead.org; Mon, 28 Jan 2019 08:02:37 +0000
Date: Mon, 28 Jan 2019 09:02:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190128080225.asjbq2sugnaof6tu@pengutronix.de>
References: <c1d66b9b8990989493a16d8c3a1d663e@moritz.augsburger.name>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <c1d66b9b8990989493a16d8c3a1d663e@moritz.augsburger.name>
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
Subject: Re: [PATCH] rpi: completed new revision scheme
To: Moritz Augsburger <ml+barebox@moritz.augsburger.name>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Moritz,

On Thu, Jan 24, 2019 at 05:28:44PM +0100, Moritz Augsburger wrote:
> I took the new raspi hw rev definitions from
> https://www.raspberrypi.org/documentation/hardware/raspberrypi/revision-codes/README.md
> and completed rpi_models_old_scheme and rpi_models_new_scheme.
> 
> Lookint at the "New-style revision codes in use:" list you can see that
> there is a22042	2B (with BCM2837),
> so BCM2836_BOARD_REV_2_B is not 100% correct, but as it is used nowhere else
> this is should be neglectable.
> 
> Best regards
> Moritz
> 
> yocto@yocto-build:~/src/barebox$ cat
> 0001-rpi-complete-new-revision-scheme.patch
> From ad1ba48d991347f8f47710969fcceee304308f60 Mon Sep 17 00:00:00 2001
> From: Moritz Augsburger <moritz@augsburger.name>
> Date: Thu, 24 Jan 2019 15:12:25 +0000
> Subject: [PATCH] rpi: complete new revision scheme
> 
> ---
>  arch/arm/boards/raspberry-pi/rpi-common.c | 30 +++++++++++++++++------
>  arch/arm/mach-bcm283x/include/mach/mbox.h | 40
> ++++++++++++++++++++-----------
>  2 files changed, 49 insertions(+), 21 deletions(-)
> 
> diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c
> b/arch/arm/boards/raspberry-pi/rpi-common.c
> index b7ce0ad42..eefa8bcfb 100644
> --- a/arch/arm/boards/raspberry-pi/rpi-common.c
> +++ b/arch/arm/boards/raspberry-pi/rpi-common.c
> @@ -166,16 +166,30 @@ const struct rpi_model rpi_models_old_scheme[] = {
>         RPI_MODEL(BCM2835_BOARD_REV_B_REV2_d, "Model B rev2", rpi_b_init),
>         RPI_MODEL(BCM2835_BOARD_REV_B_REV2_e, "Model B rev2", rpi_b_init),
>         RPI_MODEL(BCM2835_BOARD_REV_B_REV2_f, "Model B rev2", rpi_b_init),
> -       RPI_MODEL(BCM2835_BOARD_REV_B_PLUS, "Model B+", rpi_b_plus_init),
> -       RPI_MODEL(BCM2835_BOARD_REV_CM, "Compute Module", NULL),
> -       RPI_MODEL(BCM2835_BOARD_REV_A_PLUS, "Model A+", NULL),
> +       RPI_MODEL(BCM2835_BOARD_REV_B_PLUS_10, "Model B+", rpi_b_plus_init),
> +       RPI_MODEL(BCM2835_BOARD_REV_CM_11, "Compute Module", NULL),
> +       RPI_MODEL(BCM2835_BOARD_REV_A_PLUS_12, "Model A+", NULL),
> +       RPI_MODEL(BCM2835_BOARD_REV_B_PLUS_13, "Model B+", rpi_b_plus_init),
> +       RPI_MODEL(BCM2835_BOARD_REV_CM_14, "Compute Module", NULL),
> +       RPI_MODEL(BCM2835_BOARD_REV_A_PLUS_15, "Model A+", NULL),
>  };
> 
>  const struct rpi_model rpi_models_new_scheme[] = {
> -       RPI_MODEL(0, "Unknown model", NULL),
> -       RPI_MODEL(BCM2836_BOARD_REV_2_B, "2 Model B", rpi_b_plus_init),
> -       RPI_MODEL(BCM2837_BOARD_REV_3_B, "3 Model B", rpi_b_plus_init),
> -       RPI_MODEL(BCM2835_BOARD_REV_ZERO, "Zero", rpi_b_plus_init),
> +       RPI_MODEL(BCM2835_BOARD_REV_A,          "Model A",      NULL ),
> // 0
> +       RPI_MODEL(BCM2835_BOARD_REV_B,          "Model B",      rpi_b_init
> ),           // 1
> +       RPI_MODEL(BCM2835_BOARD_REV_A_PLUS,     "Model A+",     NULL ),
> // 2
> +       RPI_MODEL(BCM2835_BOARD_REV_B_PLUS,     "Model B+",
> rpi_b_plus_init ),      // 3
> +       RPI_MODEL(BCM2836_BOARD_REV_2_B,        "Model 2B",
> rpi_b_plus_init),       // 4
> +       RPI_MODEL(BCM283x_BOARD_REV_Alpha,      "Alpha",        NULL),
> // 5
> +       RPI_MODEL(BCM2835_BOARD_REV_CM1,        "Compute Module", NULL ),
> // 6
> +       RPI_MODEL(0, "Unknown model", NULL),
> // 7
> +       RPI_MODEL(BCM2837_BOARD_REV_3_B,        "Model 3B",     rpi_b_init
> ),           // 8
> +       RPI_MODEL(BCM2835_BOARD_REV_ZERO,       "Zero",
> rpi_b_plus_init),       // 9
> +       RPI_MODEL(BCM2837_BOARD_REV_CM3,        "Compute Module 3", NULL ),
> // a
> +       RPI_MODEL(0, "Unknown model", NULL),
> // b
> +       RPI_MODEL(BCM2835_BOARD_REV_ZERO_W,     "Zero W",
> rpi_b_plus_init),       // c
> +       RPI_MODEL(BCM2837B0_BOARD_REV_3B_PLUS, "Model 3 B+",
> rpi_b_plus_init ),      // d
> +       RPI_MODEL(BCM2837B0_BOARD_REV_3A_PLUS, "Nodel 3 A+",
> rpi_b_plus_init),       // e
>  };
> 
>  static int rpi_board_rev = 0;
> @@ -211,10 +225,12 @@ static void rpi_get_board_rev(void)
>          * http://www.raspberrypi.org/forums/viewtopic.php?f=31&t=20594
>          */
>         rpi_board_rev = msg->get_board_rev.body.resp.rev;
> +       printf("RPI: Board rev %x\n", rpi_board_rev);
>         if (rpi_board_rev & 0x800000) {
>                 rpi_board_rev = (rpi_board_rev >> 4) & 0xff;
>                 rpi_models = rpi_models_new_scheme;
>                 rpi_models_size = ARRAY_SIZE(rpi_models_new_scheme);
> +               printf("RPI: Board rev %u new\n", rpi_board_rev);

Are these printfs necessary? Looks like debugging aid. If yes, please
remove.

Otherwise the patch looks fine, but I can't apply it due to whitespace
damages. Could you send it using git-send-emain? If that's no option
maybe a github pull request could do it.

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
