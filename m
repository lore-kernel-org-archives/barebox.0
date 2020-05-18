Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaZNa-0000Ur-Qo
 for barebox@lists.infradead.org; Mon, 18 May 2020 06:36:04 +0000
Date: Mon, 18 May 2020 08:36:01 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200518063601.GN11869@pengutronix.de>
References: <20200517182039.9259-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200517182039.9259-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH] treewide: replace commas with semicolons where appropriate
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Sun, May 17, 2020 at 08:20:39PM +0200, Ahmad Fatoum wrote:
> Found by searching drivers/ arch/ common/ and lib/ for
> 
>  /^\s+[^."/\*\[\s\{\(A-Z][^\[\{\(]*=[^\{\(]+,$/
> 
> Because the comma has the lowest precedence in C,
> this shouldn't result in any functional change.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  .../boards/eukrea_cpuimx35/eukrea_cpuimx35.c  |  2 +-
>  arch/arm/mach-imx/iim.c                       |  6 +++---
>  arch/nios2/lib/libgcc.c                       | 21 ++++++++++---------
>  drivers/i2c/busses/i2c-imx-early.c            |  2 +-
>  drivers/i2c/busses/i2c-imx.c                  |  2 +-
>  drivers/i2c/busses/i2c-omap.c                 |  2 +-
>  drivers/mci/stm32_sdmmc2.c                    |  4 ++--
>  drivers/net/usb/usbnet.c                      | 10 ++++-----
>  8 files changed, 25 insertions(+), 24 deletions(-)
> 
> diff --git a/arch/nios2/lib/libgcc.c b/arch/nios2/lib/libgcc.c
> index abf93fdd71d4..814df7331058 100644
> --- a/arch/nios2/lib/libgcc.c
> +++ b/arch/nios2/lib/libgcc.c
> @@ -319,15 +319,15 @@ DWtype __divdi3(DWtype u, DWtype v)
>  	DWunion vv = {.ll = v};
>  	DWtype w;
>  
> -	if (uu.s.high < 0)
> -		c = ~c,
> -
> -	uu.ll = -uu.ll;
> -
> -	if (vv.s.high < 0)
> -		c = ~c,
> +	if (uu.s.high < 0) {
> +		c = ~c;
> +		uu.ll = -uu.ll;
> +	}
>  
> -	vv.ll = -vv.ll;
> +	if (vv.s.high < 0) {
> +		c = ~c;
> +		vv.ll = -vv.ll;
> +	}

Indeed it looks like the code is correct, not the indention.

Applied, thanks

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
