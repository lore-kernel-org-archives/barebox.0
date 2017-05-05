Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d6XHU-0000JL-OZ
 for barebox@lists.infradead.org; Fri, 05 May 2017 07:04:04 +0000
Date: Fri, 5 May 2017 09:03:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170505070336.xmya6fzeeie2vzqf@pengutronix.de>
References: <1493383568-27798-1-git-send-email-d.schultz@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1493383568-27798-1-git-send-email-d.schultz@phytec.de>
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
Subject: Re: [PATCH 1/7] arm: mach-omap: Change file flags in emmc handler
To: Daniel Schultz <d.schultz@phytec.de>
Cc: barebox@lists.infradead.org

On Fri, Apr 28, 2017 at 02:46:02PM +0200, Daniel Schultz wrote:
> This handler tries to read from a file descriptor with 'write only'
> flags and fails. Add read permissions for the file, so the handler can
> read the partition layout.
> 
> Signed-off-by: Daniel Schultz <d.schultz@phytec.de>

Applied this one and 2/7 for now.

Sascha

> ---
>  arch/arm/mach-omap/am33xx_bbu_emmc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm/mach-omap/am33xx_bbu_emmc.c b/arch/arm/mach-omap/am33xx_bbu_emmc.c
> index 3220575..d3adb37 100644
> --- a/arch/arm/mach-omap/am33xx_bbu_emmc.c
> +++ b/arch/arm/mach-omap/am33xx_bbu_emmc.c
> @@ -39,7 +39,7 @@ static int emmc_mlo_handler(struct bbu_handler *handler, struct bbu_data *data)
>  	if (ret != 0)
>  		return ret;
>  
> -	fd = open(handler->devicefile, O_WRONLY);
> +	fd = open(handler->devicefile, O_RDWR);
>  	if (fd < 0) {
>  		pr_err("could not open %s: %s\n", handler->devicefile,
>  			errno_str());
> -- 
> 1.9.1
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
