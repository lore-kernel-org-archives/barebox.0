Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WRe54-0006Tn-PI
 for barebox@lists.infradead.org; Sun, 23 Mar 2014 08:48:35 +0000
Date: Sun, 23 Mar 2014 09:48:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140323084813.GI17250@pengutronix.de>
References: <1395160185-32125-1-git-send-email-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1395160185-32125-1-git-send-email-l.stach@pengutronix.de>
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
Subject: Re: [PATCH] arm: imx53: qsb: set hostname from board file
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Mar 18, 2014 at 05:29:45PM +0100, Lucas Stach wrote:
> Otherwise it won't get set in a multiimage build.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>

Applied, thanks

Sascha

> ---
>  arch/arm/boards/freescale-mx53-qsb/board.c          | 2 ++
>  arch/arm/boards/freescale-mx53-qsb/env/config-board | 1 -
>  2 files changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm/boards/freescale-mx53-qsb/board.c b/arch/arm/boards/freescale-mx53-qsb/board.c
> index 74826e4a5e43..0553f1c82895 100644
> --- a/arch/arm/boards/freescale-mx53-qsb/board.c
> +++ b/arch/arm/boards/freescale-mx53-qsb/board.c
> @@ -99,6 +99,7 @@ static int loco_late_init(void)
>  		rev = readl(MX53_IIM_BASE_ADDR + 0x878);
>  		set_board_rev(rev);
>  		printf("MCIMX53-START-R board 1.0 rev %c\n", (rev == 1) ? 'A' : 'B' );
> +		barebox_set_hostname("loco-r");
>  		armlinux_set_revision(loco_system_rev);
>  		/* Set VDDGP to 1.25V for 1GHz on SW1 */
>  		mc13xxx_reg_read(mc34708, MC13892_REG_SW_0, &val);
> @@ -146,6 +147,7 @@ static int loco_late_init(void)
>  	} else {
>  		/* so we have a DA9053 based board */
>  		printf("MCIMX53-START board 1.0\n");
> +		barebox_set_hostname("loco");
>  		armlinux_set_revision(loco_system_rev);
>  		return 0;
>  	}
> diff --git a/arch/arm/boards/freescale-mx53-qsb/env/config-board b/arch/arm/boards/freescale-mx53-qsb/env/config-board
> index a6cf69ddbc7f..e8e8378f53f5 100644
> --- a/arch/arm/boards/freescale-mx53-qsb/env/config-board
> +++ b/arch/arm/boards/freescale-mx53-qsb/env/config-board
> @@ -3,5 +3,4 @@
>  # board defaults, do not change in running system. Change /env/config
>  # instead
>  
> -global.hostname=loco
>  global.linux.bootargs.base="console=ttymxc0,115200"
> -- 
> 1.9.0
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
