Delivery-date: Mon, 27 Jun 2022 08:57:49 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o5igs-00G4rM-9V
	for lore@lore.pengutronix.de; Mon, 27 Jun 2022 08:57:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o5igu-0005oC-37
	for lore@pengutronix.de; Mon, 27 Jun 2022 08:57:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JvAOpWuv3Nvj8ISuKsVNi5l7tq3Xa5wFxtlEAtpNE7k=; b=fMfbpmA06U2p329/WBU+/Ei55q
	xd05Rb/VV6RS23kuJdTu4Dv2Xzrh7t2q3+1trutSQEXgB7VnYU5wPD7stpkyrK+8lCMl7/WgKhNiy
	TizVFx5rL+I5Xo7jziPlGaMQmljkFIf4Ljo3UUDa4SUuI42gEocrPcfQm/rX3absle72CfipQ44BH
	pL5MKlNbkKf231e6jClB0VVgc1r92BeQIbo4DbdBAAhOmmKwGWHYyED4TEphOVpurSE+2jsFaKXpP
	XRCBewd87wOf3dA6lDZg4ET6QCIepxvT6zTqIQV+L+elaCCV9jr9INRO2zO0m2AE2g6ii/IpGMDuA
	Xv5dEJ1g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o5ifK-00GEv9-Au; Mon, 27 Jun 2022 06:56:10 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o5idS-00GE6p-Md
	for barebox@lists.infradead.org; Mon, 27 Jun 2022 06:54:16 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o5idR-0005Ew-61; Mon, 27 Jun 2022 08:54:13 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o5idQ-0000Jh-T1; Mon, 27 Jun 2022 08:54:12 +0200
Date: Mon, 27 Jun 2022 08:54:12 +0200
To: Daniel =?iso-8859-15?Q?Br=E1t?= <danek.brat@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20220627065412.GB19026@pengutronix.de>
References: <20220621200201.24899-1-danek.brat@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220621200201.24899-1-danek.brat@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220626_235414_782277_D752C206 
X-CRM114-Status: GOOD (  31.65  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: rpi: cleanup parsing of vc fdt
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Jun 21, 2022 at 10:02:01PM +0200, Daniel Brát wrote:
> Refactoring and cleanup of vc fdt parsing based on advice
> from Ahmad Fatoum.
> 
> Signed-off-by: Daniel Brát <danek.brat@gmail.com>
> ---
> I originally wanted to send these as part of v5 of
> 'ARM: rpi: parse useful data from vc fdt' patch, but you
> were quicker with accepting the v4 :)
> Hope that's not a problem.

No problem. Squashed into that patch, thanks

Sascha

> 
>  arch/arm/boards/raspberry-pi/rpi-common.c | 114 +++++++++++-----------
>  1 file changed, 58 insertions(+), 56 deletions(-)
> 
> diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
> index eaca4edef..77935e5c8 100644
> --- a/arch/arm/boards/raspberry-pi/rpi-common.c
> +++ b/arch/arm/boards/raspberry-pi/rpi-common.c
> @@ -202,22 +202,52 @@ static int rpi_env_init(void)
>  }
>  
>  /* Some string properties in fdt passed to us from vc may be
> - * malformed by not being null terminated. In that case, create and
> - * return a null terminated copy.
> + * malformed by not being null terminated, so just create and
> + * return a fixed copy.
>   */
>  static char *of_read_vc_string(struct device_node *node,
> -				     const char *prop_name,
> -				     bool *is_dyn)
> +			       const char *prop_name)
>  {
>  	int len;
> -	char *str;
> +	const char *str;
>  
> -	str = (char *)of_get_property(node, prop_name, &len);
> -	if (!str || len <= 0)
> +	str = of_get_property(node, prop_name, &len);
> +	if (!str) {
> +		pr_warn("no property '%s' found in vc fdt's '%s' node\n",
> +			prop_name, node->full_name);
>  		return NULL;
> -	if (is_dyn)
> -		*is_dyn = str[len - 1] != '\0';
> -	return str[len - 1] == '\0' ? str : xstrndup(str, len);
> +	}
> +	return xstrndup(str, len);
> +}
> +
> +static enum reset_src_type rpi_decode_pm_rsts(struct device_node *chosen,
> +					      struct device_node *bootloader)
> +{
> +	u32 pm_rsts;
> +	int ret;
> +
> +	ret = of_property_read_u32(chosen, "pm_rsts", &pm_rsts);
> +	if (ret && bootloader)
> +		 ret = of_property_read_u32(bootloader, "rsts", &pm_rsts);
> +
> +	if (ret) {
> +		pr_warn("'pm_rsts' value not found in vc fdt\n");
> +		return RESET_UKWN;
> +	}
> +	/*
> +	 * https://github.com/raspberrypi/linux/issues/932#issuecomment-93989581
> +	 */
> +
> +	if (pm_rsts & PM_RSTS_HADPOR_SET)
> +		return RESET_POR;
> +	if (pm_rsts & PM_RSTS_HADDR_SET)
> +		return RESET_JTAG;
> +	if (pm_rsts & PM_RSTS_HADWR_SET)
> +		return RESET_WDG;
> +	if (pm_rsts & PM_RSTS_HADSR_SET)
> +		return RESET_RST;
> +
> +	return RESET_UKWN;
>  }
>  
>  static u32 rpi_boot_mode, rpi_boot_part;
> @@ -229,31 +259,22 @@ static void rpi_vc_fdt_parse(void *fdt)
>  {
>  	int ret;
>  	struct device_node *root, *chosen, *bootloader;
> -	enum reset_src_type rst_src = RESET_UKWN;
>  	char *str;
> -	bool is_dyn;
> -	u32 pm_rsts;
>  
>  	root = of_unflatten_dtb(fdt, INT_MAX);
>  	if (IS_ERR(root))
>  		return;
>  
> -	str = of_read_vc_string(root, "serial-number", &is_dyn);
> +	str = of_read_vc_string(root, "serial-number");
>  	if (str) {
>  		barebox_set_serial_number(str);
> -		if (is_dyn)
> -			free(str);
> -	} else {
> -		pr_warn("no 'serial-number' property found in vc fdt root\n");
> +		free(str);
>  	}
>  
> -	str = of_read_vc_string(root, "model", &is_dyn);
> +	str = of_read_vc_string(root, "model");
>  	if (str) {
>  		barebox_set_model(str);
> -		if (is_dyn)
> -			free(str);
> -	} else {
> -		pr_warn("no 'model' property found in vc fdt root\n");
> +		free(str);
>  	}
>  
>  	chosen = of_find_node_by_path_from(root, "/chosen");
> @@ -264,23 +285,23 @@ static void rpi_vc_fdt_parse(void *fdt)
>  
>  	bootloader = of_find_node_by_name(chosen, "bootloader");
>  
> -	str = of_read_vc_string(chosen, "bootargs", NULL);
> -	if (str)
> +	str = of_read_vc_string(chosen, "bootargs");
> +	if (str) {
>  		globalvar_add_simple("vc.bootargs", str);
> -	else
> -		pr_warn("no 'bootargs' property found in vc fdt '/chosen'\n");
> +		free(str);
> +	}
>  
> -	str = of_read_vc_string(chosen, "overlay_prefix", NULL);
> -	if (str)
> +	str = of_read_vc_string(chosen, "overlay_prefix");
> +	if (str) {
>  		globalvar_add_simple("vc.overlay_prefix", str);
> -	else
> -		pr_warn("no 'overlay_prefix' property found in vc fdt '/chosen'\n");
> +		free(str);
> +	}
>  
> -	str = of_read_vc_string(chosen, "os_prefix", NULL);
> -	if (str)
> +	str = of_read_vc_string(chosen, "os_prefix");
> +	if (str) {
>  		globalvar_add_simple("vc.os_prefix", str);
> -	else
> -		pr_warn("no 'os_prefix' property found in vc fdt '/chosen'\n");
> +		free(str);
> +	}
>  
>  	ret = of_property_read_u32(chosen, "boot-mode", &rpi_boot_mode);
>  	if (ret && bootloader)
> @@ -300,28 +321,9 @@ static void rpi_vc_fdt_parse(void *fdt)
>  	else
>  		globalvar_add_simple_int("vc.boot_partition", &rpi_boot_part, "%u");
>  
> -	if (IS_ENABLED(CONFIG_RESET_SOURCE)) {
> -		ret = of_property_read_u32(chosen, "pm_rsts", &pm_rsts);
> -		if (ret && bootloader)
> -			 ret = of_property_read_u32(bootloader, "rsts", &pm_rsts);
> +	if (IS_ENABLED(CONFIG_RESET_SOURCE))
> +		reset_source_set(rpi_decode_pm_rsts(chosen, bootloader));
>  
> -		if (ret) {
> -			pr_warn("pm_rsts could not be get from vc fdt\n");
> -		} else {
> -/*
> - * https://github.com/raspberrypi/linux/issues/932#issuecomment-93989581
> - */
> -			if (pm_rsts & PM_RSTS_HADPOR_SET)
> -				rst_src = RESET_POR;
> -			else if (pm_rsts & PM_RSTS_HADDR_SET)
> -				rst_src = RESET_JTAG;
> -			else if (pm_rsts & PM_RSTS_HADWR_SET)
> -				rst_src = RESET_WDG;
> -			else if (pm_rsts & PM_RSTS_HADSR_SET)
> -				rst_src = RESET_RST;
> -			reset_source_set(rst_src);
> -		}
> -	}
>  out:
>  	if (root)
>  		of_delete_node(root);
> -- 
> 2.17.1
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


