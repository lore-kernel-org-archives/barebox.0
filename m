Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XmdV2-0004je-U8
 for barebox@lists.infradead.org; Fri, 07 Nov 2014 06:58:25 +0000
Date: Fri, 7 Nov 2014 07:58:02 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20141107065802.GV30369@pengutronix.de>
References: <1415206504-7140-1-git-send-email-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1415206504-7140-1-git-send-email-l.stach@pengutronix.de>
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
Subject: Re: [PATCH] arm: imx53-qsrb: fix initcalls on START-R board
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Nov 05, 2014 at 05:55:04PM +0100, Lucas Stach wrote:
> The compatible changed when we switched to the upstream
> DTs, so the initcalls would not be executed on the START-R
> board.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
> Broken since 2014.06.0, maybe add to stable?

Did that.

Sascha

> ---
>  arch/arm/boards/freescale-mx53-qsb/board.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/boards/freescale-mx53-qsb/board.c b/arch/arm/boards/freescale-mx53-qsb/board.c
> index 9a9bffa2ef6d..1128e686bc03 100644
> --- a/arch/arm/boards/freescale-mx53-qsb/board.c
> +++ b/arch/arm/boards/freescale-mx53-qsb/board.c
> @@ -81,7 +81,8 @@ static int loco_late_init(void)
>  	struct mc13xxx *mc34708;
>  	int rev;
>  
> -	if (!of_machine_is_compatible("fsl,imx53-qsb"))
> +	if (!of_machine_is_compatible("fsl,imx53-qsb") &&
> +	    !of_machine_is_compatible("fsl,imx53-qsrb"))
>  		return 0;
>  
>  	device_detect_by_name("mmc0");
> @@ -167,7 +168,8 @@ late_initcall(loco_late_init);
>  
>  static int loco_postcore_init(void)
>  {
> -	if (!of_machine_is_compatible("fsl,imx53-qsb"))
> +	if (!of_machine_is_compatible("fsl,imx53-qsb") &&
> +	    !of_machine_is_compatible("fsl,imx53-qsrb"))
>  		return 0;
>  
>  	imx53_init_lowlevel(1000);
> -- 
> 2.1.1
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
