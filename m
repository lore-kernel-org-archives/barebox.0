Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SFM3L-000509-0w
 for barebox@lists.infradead.org; Wed, 04 Apr 2012 08:58:56 +0000
Date: Wed, 4 Apr 2012 10:58:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120404085846.GO3852@pengutronix.de>
References: <1333473384-6741-1-git-send-email-shc_work@mail.ru>
 <1333473384-6741-2-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1333473384-6741-2-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH 2/3] i.MX51: Removed 1000 MHz pll definition
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

Hi Alexander,

Applied the whole series, thanks.

On Tue, Apr 03, 2012 at 09:16:23PM +0400, Alexander Shiyan wrote:
> i.MX51 operates at speeds up to 800 MHz.
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ---
>  arch/arm/mach-imx/imx51.c |   13 ++++++-------
>  1 files changed, 6 insertions(+), 7 deletions(-)
> 
> diff --git a/arch/arm/mach-imx/imx51.c b/arch/arm/mach-imx/imx51.c
> index 43cd45d..fb89199 100644
> --- a/arch/arm/mach-imx/imx51.c
> +++ b/arch/arm/mach-imx/imx51.c
> @@ -179,13 +179,12 @@ static int imx51_boot_save_loc(void)
>  
>  coredevice_initcall(imx51_boot_save_loc);
>  
> -#define setup_pll_1000(base)	imx5_setup_pll((base), 1000, ((10 << 4) + ((1 - 1) << 0)), (12 - 1),  5)
> -#define setup_pll_800(base)	imx5_setup_pll((base), 800,  (( 8 << 4) + ((1 - 1) << 0)), ( 3 - 1),  1)
> -#define setup_pll_665(base)	imx5_setup_pll((base), 665,  (( 6 << 4) + ((1 - 1) << 0)), (96 - 1), 89)
> -#define setup_pll_600(base)	imx5_setup_pll((base), 600,  (( 6 << 4) + ((1 - 1) << 0)), ( 4 - 1),  1)
> -#define setup_pll_400(base)	imx5_setup_pll((base), 400,  (( 8 << 4) + ((2 - 1) << 0)), ( 3 - 1),  1)
> -#define setup_pll_455(base)	imx5_setup_pll((base), 455,  (( 9 << 4) + ((2 - 1) << 0)), (48 - 1), 23)
> -#define setup_pll_216(base)	imx5_setup_pll((base), 216,  (( 6 << 4) + ((3 - 1) << 0)), ( 4 - 1),  3)
> +#define setup_pll_800(base)	imx5_setup_pll((base), 800, (( 8 << 4) + ((1 - 1) << 0)), ( 3 - 1),  1)
> +#define setup_pll_665(base)	imx5_setup_pll((base), 665, (( 6 << 4) + ((1 - 1) << 0)), (96 - 1), 89)
> +#define setup_pll_600(base)	imx5_setup_pll((base), 600, (( 6 << 4) + ((1 - 1) << 0)), ( 4 - 1),  1)
> +#define setup_pll_400(base)	imx5_setup_pll((base), 400, (( 8 << 4) + ((2 - 1) << 0)), ( 3 - 1),  1)
> +#define setup_pll_455(base)	imx5_setup_pll((base), 455, (( 9 << 4) + ((2 - 1) << 0)), (48 - 1), 23)
> +#define setup_pll_216(base)	imx5_setup_pll((base), 216, (( 6 << 4) + ((3 - 1) << 0)), ( 4 - 1),  3)

You shouldn't change the indention of the unaffected pll settings here.
The indention you chose is correct, but it's better when people using
'git blame' are seeing the commit that introduced (or really changed)
these lines.
I changed this while committing your patch.

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
