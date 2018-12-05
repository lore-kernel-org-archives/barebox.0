Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gUS2R-0005zY-MS
 for barebox@lists.infradead.org; Wed, 05 Dec 2018 07:56:09 +0000
Date: Wed, 5 Dec 2018 08:55:55 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181205075555.yd2hyk3jb4cqfupx@pengutronix.de>
References: <1543920225-20866-1-git-send-email-s.riedmueller@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1543920225-20866-1-git-send-email-s.riedmueller@phytec.de>
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
Subject: Re: [PATCH] phytec-som-imx6: ksz8081_phy_fixup: Don't override
 B-CAST_OFF strap-in
To: Stefan Riedmueller <s.riedmueller@phytec.de>
Cc: barebox@lists.infradead.org, Jan Remmet <j.remmet@phytec.de>

On Tue, Dec 04, 2018 at 11:43:45AM +0100, Stefan Riedmueller wrote:
> From: Jan Remmet <j.remmet@phytec.de>
> 
> As PHY address 0 is not used on PHYTEC i.MX 6 and i.MX 6UL SOMs we do
> not have to override the B-CAST_OFF strap-in which disables broadcast
> on PHY address 0.
> 
> Also add some comments about the magic values.
> 
> Signed-off-by: Jan Remmet <j.remmet@phytec.de>
> Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
> ---
>  arch/arm/boards/phytec-som-imx6/board.c | 11 ++++++++++-
>  1 file changed, 10 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/boards/phytec-som-imx6/board.c b/arch/arm/boards/phytec-som-imx6/board.c
> index 4079bc9de1b3..38a2ef641e47 100644
> --- a/arch/arm/boards/phytec-som-imx6/board.c
> +++ b/arch/arm/boards/phytec-som-imx6/board.c
> @@ -99,8 +99,17 @@ static unsigned int get_module_rev(void)
>  
>  static int ksz8081_phy_fixup(struct phy_device *phydev)
>  {
> +	/*
> +	 * 0x8100 default
> +	 * 0x0080 RMII 50 MHz clock mode
> +	 * 0x0010 LED Mode 1
> +	 */
>  	phy_write(phydev, 0x1f, 0x8190);
> -	phy_write(phydev, 0x16, 0x202);
> +	/*
> +	 * 0x0002 Override strap-in for RMII mode
> +	 * This should be default but after reset we occasionally read 0x0001
> +	 */
> +	phy_write(phydev, 0x16, 0x2);
>  
>  	return 0;
>  }
> -- 
> 2.7.4
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
