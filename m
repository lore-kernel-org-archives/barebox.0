Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X02hq-0001vj-Fd
 for barebox@lists.infradead.org; Thu, 26 Jun 2014 05:58:47 +0000
Date: Thu, 26 Jun 2014 07:58:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140626055824.GX15686@pengutronix.de>
References: <20140625065615.GM15686@pengutronix.de>
 <1403704336-9314-1-git-send-email-sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1403704336-9314-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: Re: [PATCH FIXUP] pinctrl: mvebu: fixup mpp_base check
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Jun 25, 2014 at 03:52:16PM +0200, Sebastian Hesselbarth wrote:
> Sascha,
> 
> unfortunately, your dev_request_mem_region fixup introduced a typo
> (map_base instead of mpp_base). I took the chance to also add a
> corresponding check for dove's pinctrl stub.
> 
> Please squash into commmit 8d3f0c2496afe397667e35ff6b94153bcecdb6ad
>  ("pinctrl: mvebu: add pinctrl drivers for Dove and Kirkwood")
> 
> Thanks!
> 
> Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>

Squashed into the original commit. Thanks

Sascha

> ---
> Cc: Sascha Hauer <s.hauer@pengutronix.de>
> Cc: barebox@lists.infradead.org
> ---
>  drivers/pinctrl/mvebu/dove.c     | 2 ++
>  drivers/pinctrl/mvebu/kirkwood.c | 2 +-
>  2 files changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/pinctrl/mvebu/dove.c b/drivers/pinctrl/mvebu/dove.c
> index 420b573ad1b7..bd0a632f1fd4 100644
> --- a/drivers/pinctrl/mvebu/dove.c
> +++ b/drivers/pinctrl/mvebu/dove.c
> @@ -708,6 +708,8 @@ static int dove_pinctrl_probe(struct device_d *dev)
>  
>  	mpp_base = dev_request_mem_region(dev, 0);
>  	mpp4_base = dev_request_mem_region(dev, 1);
> +	if (!mpp_base || !mpp4_base)
> +		return -EBUSY;
>  
>  	/*
>  	 * Dove PMU does not have a stable binding, yet.
> diff --git a/drivers/pinctrl/mvebu/kirkwood.c b/drivers/pinctrl/mvebu/kirkwood.c
> index bde46acc0f4e..94ab10544279 100644
> --- a/drivers/pinctrl/mvebu/kirkwood.c
> +++ b/drivers/pinctrl/mvebu/kirkwood.c
> @@ -437,7 +437,7 @@ static int kirkwood_pinctrl_probe(struct device_d *dev)
>  		(struct mvebu_pinctrl_soc_info *)match->data;
>  
>  	mpp_base = dev_request_mem_region(dev, 0);
> -	if (!map_base)
> +	if (!mpp_base)
>  		return -EBUSY;
>  
>  	return mvebu_pinctrl_probe(dev, soc);
> -- 
> 2.0.0
> 
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
