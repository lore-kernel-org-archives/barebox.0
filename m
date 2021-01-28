Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l58w2-0003IO-JS
 for barebox@lists.infradead.org; Thu, 28 Jan 2021 15:10:15 +0000
Date: Thu, 28 Jan 2021 16:10:11 +0100
Message-ID: <20210128151011.GB19583@pengutronix.de>
References: <20210127134423.31587-1-s.trumtrar@pengutronix.de>
 <20210127134423.31587-9-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210127134423.31587-9-s.trumtrar@pengutronix.de>
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
Subject: Re: [PATCH v2 09/12] of: of_firmware: add support for fpga bridges
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Jan 27, 2021 at 02:44:20PM +0100, Steffen Trumtrar wrote:
> +static int of_load_firmware(struct device_node *target, const char *path)
> +{
> +	struct list_head bridge_list;
> +	struct firmware_mgr *mgr;
> +	int err;
> +
> +	mgr = of_node_get_mgr(target);
> +	if (!mgr)
> +		return -EINVAL;
> +
> +	pr_debug("Found firmware manager @%s\n", target->name);
> +
> +	INIT_LIST_HEAD(&bridge_list);
> +
> +	of_get_bridges(target, &bridge_list);
> +
> +	fpga_bridges_disable(&bridge_list);
> +
> +	pr_debug("Loading %s to %s\n", path, target->name);
> +
> +	err = firmwaremgr_load_file(mgr, path);
> +
> +	fpga_bridges_enable(&bridge_list);

The resources added to this list are never freed.

> +
> +	return err;
> +}
> +
>  static int load_firmware(struct device_node *target,
>  			 struct device_node *fragment, void *data)
>  {
> @@ -33,7 +100,6 @@ static int load_firmware(struct device_node *target,
>  	const char *firmware_path = info->firmware_path;
>  	char *firmware;
>  	int err;
> -	struct firmware_mgr *mgr;
>  
>  	err = of_property_read_string(fragment,
>  				      "firmware-name", &firmware_name);
> @@ -46,21 +112,73 @@ static int load_firmware(struct device_node *target,
>  	if (!target)
>  		return -EINVAL;
>  
> -	mgr = of_node_get_mgr(target);
> -	if (!mgr)
> -		return -EINVAL;
> -
>  	firmware = basprintf("%s/%s", firmware_path, firmware_name);
>  	if (!firmware)
>  		return -ENOMEM;
>  
> -	err = firmwaremgr_load_file(mgr, firmware);
> +	err = of_load_firmware(target, firmware);
>  
>  	free(firmware);
>  
>  	return err;
>  }
>  
> +int of_firmware_load_file(const char *path, const char *compatible,
> +			  const char *search_path, const char *firmware)
> +{
> +	struct overlay_info info = {
> +		.firmware_path = search_path,
> +	};
> +	struct device_node *target;
> +	struct device_node *node;
> +	struct device_node *root;
> +
> +	if (!compatible) {
> +		compatible = basprintf("fpga-region");
> +		if (!compatible)
> +			return -ENOMEM;
> +	}

compatible is not freed. The original pointer comes in as a const char *,
allocated and freed outside of this function, so you can do a plain

	if (!compatible)
		comaptible = "fpga-region";

> +
> +	/*
> +	 * firmware-name not specified. Use load_firmware function to get it from
> +	 * the devicetree. This allows loading firmware to multiple devices.
> +	 */
> +	if (!firmware && !path) {
> +		int err;
> +
> +		pr_debug("No firmware specified. Searching devicetree for %s\n", compatible);
> +		for_each_compatible_node(node, NULL, compatible) {
> +			pr_debug("Load firmware from %s\n", node->name);
> +			err = load_firmware(node, node, &info);
> +			if (err == -ENOMEM)
> +				return err;
> +		}
> +
> +		return 0;
> +	}
> +
> +	root = of_get_root_node();

root is only used in the if () path below, so you can assign it there.

> +
> +	if (path) {
> +		target = of_find_node_by_path_or_alias(root, path);
> +		if (!target) {
> +			pr_debug("Cannot find nodepath %s\n", path);
> +			return -ENOENT;
> +		}
> +	} else {
> +		target = of_find_compatible_node(NULL, NULL, compatible);
> +		if (!target) {
> +			pr_debug("No node matching %s found\n", compatible);
> +			return -ENOSYS;
> +		}
> +	}
> +	
> +	if (!firmware)
> +		return load_firmware(target, target, &info);
> +
> +	return of_load_firmware(target, firmware);
> +}
> +
>  int of_firmware_load_overlay(struct device_node *overlay, const char *path)
>  {
>  	struct overlay_info info = {
> diff --git a/include/of.h b/include/of.h
> index 645f429bdeed..b18875478dc0 100644
> --- a/include/of.h
> +++ b/include/of.h
> @@ -1020,6 +1020,23 @@ static inline struct device_node *of_find_root_node(struct device_node *node)
>  	return node;
>  }
>  
> +#ifdef CONFIG_FIRMWARE
> +int of_firmware_load_file(const char *path, const char *compatible,
> +			  const char *search_path, const char *firmware);
> +int of_firmware_load_overlay(struct device_node *overlay, const char *path);
> +#else
> +int of_firmware_load_file(const char *path, const char *compatible,
> +			  const char *search_path, const char *firmware)
> +{
> +	return -ENOSYS;
> +}
> +
> +static inline int of_firmware_load_overlay(const char *path)
> +{
> +	return -ENOSYS;
> +}
> +#endif
> +
>  #ifdef CONFIG_OF_OVERLAY
>  struct device_node *of_resolve_phandles(struct device_node *root,
>  					const struct device_node *overlay);
> @@ -1032,7 +1049,6 @@ int of_process_overlay(struct device_node *root,
>  				   struct device_node *overlay, void *data),
>  		    void *data);
>  
> -int of_firmware_load_overlay(struct device_node *overlay, const char *path);
>  #else
>  static inline struct device_node *of_resolve_phandles(struct device_node *root,
>  					const struct device_node *overlay)
> @@ -1059,11 +1075,6 @@ static inline int of_process_overlay(struct device_node *root,
>  {
>  	return -ENOSYS;
>  }
> -
> -static inline int of_firmware_load_overlay(struct device_node *overlay, const char *path)
> -{
> -	return -ENOSYS;
> -}
>  #endif
>  
>  #endif /* __OF_H */
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
