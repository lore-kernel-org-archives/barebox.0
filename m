Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kx5WF-0003tm-6m
 for barebox@lists.infradead.org; Wed, 06 Jan 2021 09:54:20 +0000
Date: Wed, 6 Jan 2021 10:54:17 +0100
Message-ID: <20210106095417.GM19063@pengutronix.de>
References: <20201218093258.1736578-1-m.tretter@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201218093258.1736578-1-m.tretter@pengutronix.de>
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
Subject: Re: [PATCH] overlay: return error if target for firmware is missing
To: Michael Tretter <m.tretter@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Dec 18, 2020 at 10:32:58AM +0100, Michael Tretter wrote:
> If the overlay references a firmware, the overlay must not be applied if
> the firmware cannot be loaded. However, if the target node of the
> firmware (i.e., the firmware manager) was not found, the fragment was
> ignored and the firmware not loaded, but the overlay applied anyway.
> 
> If the overlay does not reference a firmware, of_process_overlay must
> succeed even if the target node cannot be found, because the overlay
> might still apply to the Linux device tree.
> 
> Always call the process function on a fragment, even if the target node
> was not found. This allows the caller to decide, if a missing target is
> fatal or if the overlay can be applied anyway.
> 
> Fix load_firmware to fail if a overlay references a firmware and the
> target is NULL. Also, rephrase and clarify the comment that documents
> this behavior.
> 
> Reported-by: Matthias Fend <matthias.fend@wolfvision.net>
> Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
> ---
>  drivers/of/of_firmware.c | 11 ++++++++---
>  drivers/of/overlay.c     |  5 +++--
>  2 files changed, 11 insertions(+), 5 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/of/of_firmware.c b/drivers/of/of_firmware.c
> index 0135631fb899..096f84572e63 100644
> --- a/drivers/of/of_firmware.c
> +++ b/drivers/of/of_firmware.c
> @@ -43,6 +43,9 @@ static int load_firmware(struct device_node *target,
>  	else if (err)
>  		return -EINVAL;
>  
> +	if (!target)
> +		return -EINVAL;
> +
>  	mgr = of_node_get_mgr(target);
>  	if (!mgr)
>  		return -EINVAL;
> @@ -69,11 +72,13 @@ int of_firmware_load_overlay(struct device_node *overlay, const char *path)
>  	struct device_node *ovl;
>  
>  	root = of_get_root_node();
> +	resolved = of_resolve_phandles(root, overlay);
>  	/*
> -	 * If we cannot resolve the symbols in the overlay, ensure that the
> -	 * overlay does depend on firmware to be loaded.
> +	 * If the overlay cannot be resolved, use the load_firmware callback
> +	 * with the unresolved overlay to verify that the overlay does not
> +	 * depend on a firmware to be loaded. If a required firmware cannot be
> +	 * loaded, the overlay must not be applied.
>  	 */
> -	resolved = of_resolve_phandles(root, overlay);
>  	ovl = resolved ? resolved : overlay;
>  
>  	err = of_process_overlay(root, ovl,
> diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
> index b79dbff94dbf..eb47378258b6 100644
> --- a/drivers/of/overlay.c
> +++ b/drivers/of/overlay.c
> @@ -215,12 +215,13 @@ int of_process_overlay(struct device_node *root,
>  
>  		target = find_target(root, fragment);
>  		if (!target)
> -			continue;
> +			pr_debug("cannot find target for fragment",
> +				 fragment->name);
>  
>  		err = process(target, ovl, data);
>  		if (err) {
>  			pr_warn("failed to process overlay for %s\n",
> -				target->name);
> +				target ? target->name : "unknown");
>  			break;
>  		}
>  	}
> -- 
> 2.20.1
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
