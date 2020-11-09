Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kc3OG-00059z-SW
 for barebox@lists.infradead.org; Mon, 09 Nov 2020 09:23:09 +0000
Date: Mon, 9 Nov 2020 10:23:07 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20201109092307.GH29830@pengutronix.de>
References: <20201109055150.16444-1-r.czerwinski@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201109055150.16444-1-r.czerwinski@pengutronix.de>
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
Subject: Re: [PATCH] of: base: ignore disabled memory nodes
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Nov 09, 2020 at 06:51:50AM +0100, Rouven Czerwinski wrote:
> Qemu with the secure extension enabled will insert a secram node into
> the device tree:
> 
>   secram@e000000 {
>           secure-status = "okay";
>           status = "disabled";
>           reg = <0x0 0xe000000 0x0 0x1000000>;
>           device_type = "memory";
>   };
> 
> Barebox would previously parse this node, add it as a memory bank and
> than reinsert an enabled node into the fixed up device tree.
> Fix this by skipping disabled memory nodes.
> 
> Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> ---
>  drivers/of/base.c | 3 +++
>  1 file changed, 3 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/drivers/of/base.c b/drivers/of/base.c
> index 0a2632f963..32cb1e78a5 100644
> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -2090,6 +2090,9 @@ int of_add_memory(struct device_node *node, bool dump)
>  		if (!resource_size(&res))
>  			continue;
>  
> +		if (!of_device_is_available(node))
> +			continue;
> +
>  		of_add_memory_bank(node, dump, mem_bank_num,
>  				res.start, resource_size(&res));
>  		mem_bank_num++;
> -- 
> 2.28.0
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
