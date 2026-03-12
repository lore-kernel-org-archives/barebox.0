Delivery-date: Thu, 12 Mar 2026 17:02:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0iUm-00Asmz-2P
	for lore@lore.pengutronix.de;
	Thu, 12 Mar 2026 17:02:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0iUm-0002Y3-RT
	for lore@pengutronix.de; Thu, 12 Mar 2026 17:02:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=c3hUfzFVdFF0JLas6WGv6eJ6qBjhTujU69EMm3eHMKg=; b=UdBWCEX75ITYyVgYMIrtC6+z9L
	2A8YCALZ+obtv4aDEwdGY7MQyon2OCz+TPW1qPK+Yi0BJjjOGwl/XWRf+34nTzkMHZwOb3Rd3gPVn
	jlxVsRmWqa/n3eNCP1o5StHdizQP31OI7d1ti8BrfcV3i6fOhb2TJxRP5mksNVrE/24g61A35zrKP
	beWyX5JlVEhR+KDHdnzJWTJroeeyfzHa90BwUL/9v9HAktyc4UDTzWhYmKN+byLmkeua+msd1MuWc
	xp2lOtqTS47EBRJPMx7KtHuWgZ8dhV3yxLcIHKHzTYjGMcXPiDnWvvgbqmCHWPKsOxNBkdmf2rfAB
	GWHNi3Pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0iU1-0000000ETrE-3XDl;
	Thu, 12 Mar 2026 16:01:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0iTy-0000000ETq9-32S0
	for barebox@lists.infradead.org;
	Thu, 12 Mar 2026 16:01:55 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w0iTw-0002Ol-Nz; Thu, 12 Mar 2026 17:01:52 +0100
Message-ID: <859a45ba-28c0-4d37-853f-39529ab2521b@pengutronix.de>
Date: Thu, 12 Mar 2026 17:01:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20260312135526.5005-1-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260312135526.5005-1-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260312_090154_775225_2F09C8D0 
X-CRM114-Status: GOOD (  32.82  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] FIT: reconstruct hashed-nodes property during
 verification
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 3/12/26 2:55 PM, Sascha Hauer wrote:
> The hashed-nodes property in FIT signed image configurations is used to
> determine which nodes are hashed, but is itself not hashed, so could be
> manipulated.
> 
> To fix this do not use the hashed-nodes property to calculate which
> nodes must be hashed, but instead reconstruct the hashed nodes list by
> the images used in a FIT configuration, the same way mkimage does it
> when creating the image.
> 
> The approach mirrors U-Boot commit 2092322b31c ("boot: Add
> fit_config_get_hash_list() to build signed node list")
> 
> Fixes: ac55adb321 ("bootm: add initial FIT support")
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Tested-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Thanks,
Ahmad

> ---
>  common/image-fit.c | 123 ++++++++++++++++++++++++++++++++++++++-------
>  1 file changed, 106 insertions(+), 17 deletions(-)
> 
> diff --git a/common/image-fit.c b/common/image-fit.c
> index 27e5ec9062..b78dee9e65 100644
> --- a/common/image-fit.c
> +++ b/common/image-fit.c
> @@ -55,18 +55,6 @@ static char *dt_string(struct fdt_header *f, char *strstart, uint32_t ofs)
>  		return strstart + ofs;
>  }
>  
> -static int of_read_string_list(struct device_node *np, const char *name, struct string_list *sl)
> -{
> -	struct property *prop;
> -	const char *s;
> -
> -	of_property_for_each_string(np, name, prop, s) {
> -		string_list_add(sl, s);
> -	}
> -
> -	return prop ? 0 : -EINVAL;
> -}
> -
>  static int fit_digest(struct fit_handle *handle, struct digest *digest,
>  		      struct string_list *inc_nodes, struct string_list *exc_props,
>  		      uint32_t hashed_strings_start, uint32_t hashed_strings_size)
> @@ -316,10 +304,106 @@ static int fit_check_signature(struct fit_handle *handle, struct device_node *si
>  	return 0;
>  }
>  
> +static int fit_config_build_hash_nodes(struct fit_handle *handle,
> +				       struct device_node *conf_node,
> +				       struct string_list *node_list)
> +{
> +	struct device_node *image_node, *child;
> +	struct property *prop;
> +	const char *unit;
> +	int i, ret, count;
> +
> +	ret = string_list_add(node_list, "/");
> +	if (ret)
> +		return ret;
> +	ret = string_list_add_asprintf(node_list, "%s", conf_node->full_name);
> +	if (ret)
> +		return ret;
> +
> +	for_each_property_of_node(conf_node, prop) {
> +		if (!strcmp(prop->name, "description") ||
> +		    !strcmp(prop->name, "compatible") ||
> +		    !strcmp(prop->name, "default"))
> +			continue;
> +
> +		count = of_property_count_strings(conf_node, prop->name);
> +		for (i = 0; i < count; i++) {
> +			if (of_property_read_string_index(conf_node, prop->name,
> +							  i, &unit))
> +				return -EINVAL;
> +
> +			if (strchr(unit, '/'))
> +				return -EINVAL;
> +
> +			ret = string_list_add_asprintf(node_list, "/images/%s", unit);
> +			if (ret)
> +				return ret;
> +
> +			image_node = of_get_child_by_name(handle->images, unit);
> +			if (!image_node)
> +				return -EINVAL;
> +
> +			for_each_child_of_node(image_node, child) {
> +				if (!of_node_has_prefix(child, "hash"))
> +					continue;
> +				ret = string_list_add_asprintf(node_list, "/images/%s/%s",
> +							       unit, child->name);
> +				if (ret)
> +					return ret;
> +			}
> +		}
> +	}
> +
> +	return 0;
> +}
> +
> +static int fit_config_check_hash_nodes(struct device_node *sig_node,
> +				       struct string_list *inc_nodes)
> +{
> +	struct string_list *entry;
> +	const char *node;
> +	int ret, i = 0;
> +
> +	/*
> +	 * Check if the hashed-nodes property matches the list of nodes we calculated.
> +	 * We don't use the hashed-nodes property finally, but let's check for consistency
> +	 * to inform the user if something is wrong.
> +	 */
> +
> +	string_list_for_each_entry(entry, inc_nodes) {
> +
> +		ret = of_property_read_string_index(sig_node, "hashed-nodes", i, &node);
> +		if (ret) {
> +			pr_err("Cannot read hashed-node[%u]: %pe\n", i,
> +			       ERR_PTR(ret));
> +			return ret;
> +		}
> +
> +		if (strcmp(entry->str, node)) {
> +			pr_err("hashed-node[%u] doesn't match calculated node: %s != %s\n",
> +			       i, entry->str, node);
> +			return -EINVAL;
> +		}
> +
> +		i++;
> +	}
> +
> +	ret = of_property_read_string_index(sig_node, "hashed-nodes", i,
> +					    &node);
> +	if (!ret) {
> +		pr_err("hashed-nodes property has more entries than we calculated\n");
> +		return -EINVAL;
> +	}
> +
> +	return 0;
> +}
> +
>  /*
>   * The consistency of the FTD structure was already checked by of_unflatten_dtb()
>   */
> -static int fit_verify_signature(struct fit_handle *handle, struct device_node *sig_node)
> +static int fit_verify_signature(struct fit_handle *handle,
> +				struct device_node *sig_node,
> +				struct device_node *conf_node)
>  {
>  	uint32_t hashed_strings_start, hashed_strings_size;
>  	struct string_list inc_nodes, exc_props;
> @@ -333,6 +417,7 @@ static int fit_verify_signature(struct fit_handle *handle, struct device_node *s
>  		pr_err("hashed-strings start not found in %pOF\n", sig_node);
>  		return -EINVAL;
>  	}
> +
>  	if (of_property_read_u32_index(sig_node, "hashed-strings", 1,
>  	    &hashed_strings_size)) {
>  		pr_err("hashed-strings size not found in %pOF\n", sig_node);
> @@ -342,12 +427,16 @@ static int fit_verify_signature(struct fit_handle *handle, struct device_node *s
>  	string_list_init(&inc_nodes);
>  	string_list_init(&exc_props);
>  
> -	if (of_read_string_list(sig_node, "hashed-nodes", &inc_nodes)) {
> -		pr_err("hashed-nodes property not found in %pOF\n", sig_node);
> -		ret = -EINVAL;
> +	ret = fit_config_build_hash_nodes(handle, conf_node, &inc_nodes);
> +	if (ret) {
> +		pr_err("Failed to build hash node list for %pOF\n", conf_node);
>  		goto out_sl;
>  	}
>  
> +	ret = fit_config_check_hash_nodes(sig_node, &inc_nodes);
> +	if (ret)
> +		goto out_sl;
> +
>  	string_list_add(&exc_props, "data");
>  
>  	digest = fit_alloc_digest(sig_node, &algo);
> @@ -734,7 +823,7 @@ int fit_config_verify_signature(struct fit_handle *handle, struct device_node *c
>  		if (handle->verbose)
>  			of_print_nodes(sig_node, 0, ~0);
>  
> -		ret = fit_verify_signature(handle, sig_node);
> +		ret = fit_verify_signature(handle, sig_node, conf_node);
>  		if (ret < 0)
>  			return ret;
>  	}

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



