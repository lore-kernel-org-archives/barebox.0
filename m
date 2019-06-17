Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcqfD-0005eB-Ve
 for barebox@lists.infradead.org; Mon, 17 Jun 2019 12:23:09 +0000
Date: Mon, 17 Jun 2019 14:23:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190617122305.nd4g7tmajwvhjri6@pengutronix.de>
References: <20190614225432.31624-1-cory.tusar@zii.aero>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190614225432.31624-1-cory.tusar@zii.aero>
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
Subject: Re: [PATCH] ARM: zii-vf610-dev: Trivial spelling fix
To: Cory Tusar <Cory.Tusar@zii.aero>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>, Chris Healy <Chris.Healy@zii.aero>

On Fri, Jun 14, 2019 at 10:58:32PM +0000, Cory Tusar wrote:
> s/Couln't/Couldn't/
> 
> Signed-off-by: Cory Tusar <cory.tusar@zii.aero>
> ---
>  arch/arm/boards/zii-vf610-dev/board.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/boards/zii-vf610-dev/board.c b/arch/arm/boards/zii-vf610-dev/board.c
> index 90d453568..0697a1660 100644
> --- a/arch/arm/boards/zii-vf610-dev/board.c
> +++ b/arch/arm/boards/zii-vf610-dev/board.c
> @@ -91,7 +91,7 @@ static int zii_vf610_dev_print_clocks(void)
>  
>  	ccm_np = of_find_compatible_node(NULL, NULL, "fsl,vf610-ccm");
>  	if (!ccm_np) {
> -		pr_err("Couln't get CCM node\n");
> +		pr_err("Couldn't get CCM node\n");
>  		return -ENOENT;
>  	}
>  
> -- 
> 2.21.0
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
