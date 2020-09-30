Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kNbPR-00085Z-Rh
 for barebox@lists.infradead.org; Wed, 30 Sep 2020 12:40:38 +0000
Received: from [2a0a:edc0:0:900:6245:cbff:fea0:1793]
 (helo=kresse.office.stw.pengutronix.de)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>) id 1kNbPO-00071J-Ic
 for barebox@lists.infradead.org; Wed, 30 Sep 2020 14:40:35 +0200
Message-ID: <0ae4ff9734730d318fc6a62301deafe5d300441c.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 30 Sep 2020 14:40:34 +0200
In-Reply-To: <20200820194547.3738-1-l.stach@pengutronix.de>
References: <20200820194547.3738-1-l.stach@pengutronix.de>
MIME-Version: 1.0
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
Subject: Re: [PATCH 1/2] clk: imx: remove leftover debug printk's from pll14xx
To: barebox@lists.infradead.org

Hi Sascha,

seems like this patch fell though the cracks (but 2/2 has been applied).

Regards,
Lucas

On Do, 2020-08-20 at 21:45 +0200, Lucas Stach wrote:
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  drivers/clk/imx/clk-pll14xx.c | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/clk/imx/clk-pll14xx.c b/drivers/clk/imx/clk-pll14xx.c
> index 91e9624a606d..6ba519516b9f 100644
> --- a/drivers/clk/imx/clk-pll14xx.c
> +++ b/drivers/clk/imx/clk-pll14xx.c
> @@ -358,8 +358,7 @@ static void clk_pll14xx_unprepare(struct clk *clk)
>  {
>  	struct clk_pll14xx *pll = to_clk_pll14xx(clk);
>  	u32 val;
> -printf("%s %p\n", __func__, pll);
> -printf("%s %p\n", __func__, pll->base);
> +
>  	/*
>  	 * Set RST to 0, power down mode is enabled and
>  	 * every digital block is reset


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
