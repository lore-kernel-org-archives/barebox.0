Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDnuV-00069J-KU
 for barebox@lists.infradead.org; Mon, 16 Mar 2020 11:27:57 +0000
Date: Mon, 16 Mar 2020 12:27:53 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200316112752.GM3335@pengutronix.de>
References: <20200312203957.22867-1-pmamonov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200312203957.22867-1-pmamonov@gmail.com>
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
Subject: Re: [PATCH] pinctrl-single: fix parsing of `pinctrl-single,bits`
 property
To: Peter Mamonov <pmamonov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Mar 12, 2020 at 11:39:57PM +0300, Peter Mamonov wrote:
> According to dts/Bindings/pinctrl/pinctrl-single.txt:113 the correct order of
> parameters is <offset, value, mask>.
> 
> Fixes: f7e0cae43 ('pinctrl-single: Handle "pinctrl-single,function-mask" dt property')
> Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
> ---
>  drivers/pinctrl/pinctrl-single.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/pinctrl/pinctrl-single.c b/drivers/pinctrl/pinctrl-single.c
> index d4f411b4a..2cd58df93 100644
> --- a/drivers/pinctrl/pinctrl-single.c
> +++ b/drivers/pinctrl/pinctrl-single.c
> @@ -87,8 +87,8 @@ static int pcs_set_state(struct pinctrl_device *pdev, struct device_node *np)
>  
>  		for (i = 0; i < rows; i++) {
>  			offset = be32_to_cpup(mux + index++);
> -			mask = be32_to_cpup(mux + index++);
>  			val = be32_to_cpup(mux + index++);
> +			mask = be32_to_cpup(mux + index++);
>  			reg = pcs->read(pcs->base + offset);
>  			reg &= ~mask;
>  			reg |= val;
> -- 
> 2.20.1
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
