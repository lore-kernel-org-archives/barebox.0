Delivery-date: Tue, 12 Sep 2023 11:36:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qfzpM-00CUkx-75
	for lore@lore.pengutronix.de; Tue, 12 Sep 2023 11:36:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qfzpK-0007ur-92
	for lore@pengutronix.de; Tue, 12 Sep 2023 11:36:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=e3iF/huieKLf6XaM1EMzhWaAbgWg5r1fO17Q+MW4HuE=; b=L4FmroevTAC9pAEQyGHj8MBYhM
	A3OHq6XRcXrfuNiZiK4cZLoS+WXRag1xGkseUJSL2BZAWaVL0GALg6fS6C/x5XLvU1+z6nRaG7e4C
	HXo4gxHopJLfWFG537YYjlHkgTKSigPhC/7rt6uo/SovZwyvvNVBgxFXqTLtnAbQhenS7cINqOvQc
	77wtnqs3X7CaRW6Nzl+hPSmGenAn/+lDEbMyVaMIsgiSjMAR8twGaV+ZeGBirjBuwPYFE32lHTWqV
	rnicKJP3JmDMQHa68Aie0PcAy/wkd1c78y+csFq0SwNkyZ8R2x7jd7Fzv6ng2ax5j9CgBvXwmWjlr
	rEy13xEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qfzoF-002lRt-1G;
	Tue, 12 Sep 2023 09:35:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qfzoC-002lRG-1A
	for barebox@lists.infradead.org;
	Tue, 12 Sep 2023 09:35:50 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qfzoB-0007cq-3t; Tue, 12 Sep 2023 11:35:47 +0200
Message-ID: <7f1f8e0f-0da1-170d-78ea-967e1c546558@pengutronix.de>
Date: Tue, 12 Sep 2023 11:35:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Denis Osterland-Heim <denis.osterland@gmail.com>,
 barebox@lists.infradead.org
Cc: Denis OSTERLAND-HEIM <denis.osterland@diehl.com>
References: <20230801104417.8941-1-denis.osterland@gmail.com>
 <c030c5f45f0e3206cfa99d99dc62813df7dac6aa.camel@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <c030c5f45f0e3206cfa99d99dc62813df7dac6aa.camel@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230912_023548_393897_9CDF2AAB 
X-CRM114-Status: GOOD (  22.47  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] raspi: fixup additional vc created nodes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 02.08.23 12:50, Denis Osterland-Heim wrote:
> From: Denis OSTERLAND-HEIM <denis.osterland@diehl.com>
> 
> The video core creates some additional nodes.
> This code takes over this values.
> The /hat node is only there if an raspi hat with EEPROM is detected.
> 
> Signed-off-by: Denis OSTERLAND-HEIM <denis.osterland@diehl.com>

Acked-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  arch/arm/boards/raspberry-pi/rpi-common.c | 38 +++++++++++++++++------
>  1 file changed, 29 insertions(+), 9 deletions(-)
> 
> diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c
> b/arch/arm/boards/raspberry-pi/rpi-common.c
> index 2f525e7d70..9c85c85d14 100644
> --- a/arch/arm/boards/raspberry-pi/rpi-common.c
> +++ b/arch/arm/boards/raspberry-pi/rpi-common.c
> @@ -264,19 +264,36 @@ static enum reset_src_type
> rpi_decode_pm_rsts(struct device_node *chosen,
>  
>  static int rpi_vc_fdt_fixup(struct device_node *root, void *data)
>  {
> -       const struct device_node *vc_chosen = data;
> -       struct device_node *chosen;
> +       const struct device_node *vc_node = data;
> +       struct device_node *node;
> +       struct property *pp;
>  
> -       chosen = of_create_node(root, "/chosen");
> -       if (!chosen)
> +       node = of_create_node(root, vc_node->full_name);
> +       if (!node)
>                 return -ENOMEM;
>  
> -       of_copy_property(vc_chosen, "overlay_prefix", chosen);
> -       of_copy_property(vc_chosen, "os_prefix", chosen);
> +       for_each_property_of_node(vc_node, pp)
> +               of_copy_property(vc_node, pp->name, node);
>  
>         return 0;
>  }
>  
> +static struct device_node *register_vc_fixup(struct device_node *root,
> const char *path)
> +{
> +       struct device_node *ret, *tmp;
> +
> +       ret = of_find_node_by_path_from(root, path);
> +       if (ret) {
> +               tmp = of_dup(ret);
> +               tmp->full_name = xstrdup(ret->full_name);
> +               of_register_fixup(rpi_vc_fdt_fixup, tmp);
> +       } else {
> +               pr_info("no '%s' node found in vc fdt\n", path);
> +       }
> +
> +       return ret;
> +}
> +
>  static u32 rpi_boot_mode, rpi_boot_part;
>  /* Extract useful information from the VideoCore FDT we got.
>   * Some parameters are defined here:
> @@ -300,14 +317,17 @@ static void rpi_vc_fdt_parse(struct device_node
> *root)
>                 free(str);
>         }
>  
> -       chosen = of_find_node_by_path_from(root, "/chosen");
> +       register_vc_fixup(root, "/system");
> +       register_vc_fixup(root, "/axi");
> +       register_vc_fixup(root, "/reserved-memory");
> +       register_vc_fixup(root, "/hat");
> +       register_vc_fixup(root, "/chosen/bootloader");
> +       chosen = register_vc_fixup(root, "/chosen");
>         if (!chosen) {
>                 pr_err("no '/chosen' node found in vc fdt\n");
>                 goto out;
>         }
>  
> -       of_register_fixup(rpi_vc_fdt_fixup, of_dup(chosen));
> -
>         bootloader = of_find_node_by_name(chosen, "bootloader");
>  
>         str = of_read_vc_string(chosen, "bootargs");

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



