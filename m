Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kPPX8-00016s-9P
 for barebox@lists.infradead.org; Mon, 05 Oct 2020 12:24:03 +0000
Message-ID: <d4a9e876afaf38b2aaab6647ec8c26e2ebb12043.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 05 Oct 2020 14:23:59 +0200
In-Reply-To: <20201005095346.27957-2-s.hauer@pengutronix.de>
References: <20201005095346.27957-1-s.hauer@pengutronix.de>
 <20201005095346.27957-2-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 1/7] remoteproc: imx: Fix off-by-one error
To: Sascha Hauer <s.hauer@pengutronix.de>, Barebox List <barebox@lists.infradead.org>

Am Montag, den 05.10.2020, 11:53 +0200 schrieb Sascha Hauer:
> size is actually end - start + 1, fix size passed to
> request_sdram_region().
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/remoteproc/imx_rproc.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/remoteproc/imx_rproc.c b/drivers/remoteproc/imx_rproc.c
> index 370bebe6e2..74a8d8ff2e 100644
> --- a/drivers/remoteproc/imx_rproc.c
> +++ b/drivers/remoteproc/imx_rproc.c
> @@ -305,7 +305,7 @@ static int imx_rproc_addr_init(struct imx_rproc *priv,
>  			break;
>  
>  		res_cpu = request_sdram_region(dev_name(dev), res.start,
> -					       res.end - res.start);
> +					       res.end - res.start + 1);

That's a hand rolled version of resource_size(), I think it's better to
use this function instead.

Regards,
Lucas

>  		if (!res_cpu) {
>  			dev_err(dev, "remap optional addresses failed\n");
>  			return -ENOMEM;


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
