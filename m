Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kzcM8-0000AK-1M
 for barebox@lists.infradead.org; Wed, 13 Jan 2021 09:22:21 +0000
Date: Wed, 13 Jan 2021 10:22:18 +0100
Message-ID: <20210113092218.GK19063@pengutronix.de>
References: <20210113075757.21478-1-r.czerwinski@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210113075757.21478-1-r.czerwinski@pengutronix.de>
From: Sascha Hauer <sha@pengutronix.de>
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
Subject: Re: [PATCH 1/2] of: overlay: do not parse phandles as properties
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Jan 13, 2021 at 08:57:56AM +0100, Rouven Czerwinski wrote:
> Instead of handling phandles as properties, assign them directly as a
> handle to the node. This allows phandles within nodes inside the device
> tree overlays to be handled correctly.
> 
> Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> ---
>  drivers/of/overlay.c | 5 +++++
>  1 file changed, 5 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
> index b79dbff94d..0bebe26e39 100644
> --- a/drivers/of/overlay.c
> +++ b/drivers/of/overlay.c
> @@ -58,6 +58,11 @@ static int of_overlay_apply(struct device_node *target,
>  		if (of_prop_cmp(prop->name, "name") == 0)
>  			continue;
>  
> +		if (of_prop_cmp(prop->name, "phandle") == 0) {
> +			target->phandle = be32_to_cpup(prop->value);
> +			continue;
> +		}
> +
>  		err = of_set_property(target, prop->name, prop->value,
>  				      prop->length, true);
>  		if (err)
> -- 
> 2.29.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
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
