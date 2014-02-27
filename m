Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WJ7If-0001qS-4F
 for barebox@lists.infradead.org; Thu, 27 Feb 2014 20:11:22 +0000
Date: Thu, 27 Feb 2014 21:10:59 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140227201059.GQ17250@pengutronix.de>
References: <1393509203-836-1-git-send-email-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1393509203-836-1-git-send-email-l.stach@pengutronix.de>
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
Subject: Re: [PATCH 1/5] ARM: i.MX: edmqmx6: fix startup
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Feb 27, 2014 at 02:53:19PM +0100, Lucas Stach wrote:
> This was broken with commit 2a1f5f802e
> "ARM: rename boards to more consistent naming"
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>

Applied, thanks

Sascha

> ---
> The bad commit is currently in -master, so this patch
> should go there to avoid a breaking this board with the
> .03 release.
> ---
>  arch/arm/boards/datamodul-edm-qmx6/lowlevel.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm/boards/datamodul-edm-qmx6/lowlevel.c b/arch/arm/boards/datamodul-edm-qmx6/lowlevel.c
> index de7cc98efebe..33e0152bc743 100644
> --- a/arch/arm/boards/datamodul-edm-qmx6/lowlevel.c
> +++ b/arch/arm/boards/datamodul-edm-qmx6/lowlevel.c
> @@ -164,8 +164,8 @@ ENTRY_FUNCTION(start_imx6_realq7, r0, r1, r2)
>  		 * inside valid SDRAM instead of SRAM.
>  		 */
>  		memcpy((void *)sdram, (void *)fdt,
> -				__dtb_imx6q_dmo_edmqmx6_start -
> -				__dtb_imx6q_dmo_edmqmx6_end);
> +				__dtb_imx6q_dmo_edmqmx6_end -
> +				__dtb_imx6q_dmo_edmqmx6_start);
>  		fdt = sdram;
>  	}
>  
> -- 
> 1.8.5.3
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
