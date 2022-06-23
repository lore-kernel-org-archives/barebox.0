Delivery-date: Thu, 23 Jun 2022 14:18:36 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o4Ln9-00BwPT-73
	for lore@lore.pengutronix.de; Thu, 23 Jun 2022 14:18:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o4Ln8-0004C4-F4
	for lore@pengutronix.de; Thu, 23 Jun 2022 14:18:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PIOb88YyT6OZfhx6Rh4txGjWq9lpC4UlAODrgWjrCI4=; b=rBE4t1CqhuomdunNBqfSuYGz72
	JRkkp/FC4MCK4sSoE0Q3qPzM+YC47smtwA9ulslMeBoPChXPznvPJYEuk3Jg1j/ptZ5VKmutsSnun
	xm4fvEjud64vKgJwr+Ha7hXU7xjQ244ofvSW1dO7BVATXCifZuw35jpl7Gimnbwhspd+JBqgs4lVE
	qHz5FMbbeWcPi+je+d/bWsBOP79TySPt/nEGnCaZRU2V7W+0ULI5w4gDrRE4d2p7SMPeUGMWvAOwG
	tQDt/7np+yRLT33xzZB47prnA1crp/8ewdJx2r3dWCU0UQAZft5O0LLFmrQTJf4/71a4ddG2YeJAz
	Z3QEKgdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4Lld-00Ex74-LW; Thu, 23 Jun 2022 12:17:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4Lf3-00EuMl-Q2
	for barebox@lists.infradead.org; Thu, 23 Jun 2022 12:10:16 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1o4Lf1-0002iv-Pq; Thu, 23 Jun 2022 14:10:11 +0200
Message-ID: <00c2841a-a006-b43d-5df8-0026f1c05962@pengutronix.de>
Date: Thu, 23 Jun 2022 14:10:11 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Content-Language: en-US
To: =?UTF-8?Q?Daniel_Br=c3=a1t?= <danek.brat@gmail.com>,
 barebox@lists.infradead.org
References: <20220621200201.24899-1-danek.brat@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220621200201.24899-1-danek.brat@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220623_051013_922940_72AFC9A0 
X-CRM114-Status: GOOD (  29.77  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: rpi: cleanup parsing of vc fdt
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 21.06.22 22:02, Daniel Brát wrote:
> Refactoring and cleanup of vc fdt parsing based on advice
> from Ahmad Fatoum.
> 
> Signed-off-by: Daniel Brát <danek.brat@gmail.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
> I originally wanted to send these as part of v5 of
> 'ARM: rpi: parse useful data from vc fdt' patch, but you
> were quicker with accepting the v4 :)
> Hope that's not a problem.

Original patch is in next, so this should be squashable.

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


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


