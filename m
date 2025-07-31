Delivery-date: Thu, 31 Jul 2025 11:05:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uhPEI-005Xwt-0s
	for lore@lore.pengutronix.de;
	Thu, 31 Jul 2025 11:05:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uhPEH-0001U6-M4
	for lore@pengutronix.de; Thu, 31 Jul 2025 11:05:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aj+CDUwWgKKCTOzc4MIllGIW40bJVdAT7BbRLEDL41M=; b=i/JRq5rSAs5wx0eFdG9gLv2c+Q
	wX3BGk7Bar7IvPsR5BCj9wmO0D9nlg1lcJZYAuRZ083Nnchgd988TK2jybgLnALprHc2NK04UBseq
	kd+j3GjBOsXh07u6sC9WvM9Es1YHdD4Sziaw6Vo43NNmM8hhRnPKQsuoFM19oYSU86gIc41JFDyo4
	Lbx48JKz76qCS8U6XTmSamKuVN4an6LwoAxJO7hX/uUi5cXWsqjVqvNbtbLjcHragvLaThHqXo8kk
	O2M2GaJW8V5+Dcjolc/k4w5Ab+trj64sF5G/ogInke9h/6KFb9t6Rpm04+XavMbE9cJQw3oHNYWYm
	R5Bx1GdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uhPDo-00000003EWF-0GIf;
	Thu, 31 Jul 2025 09:05:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uhPD7-00000003ERq-03MH
	for barebox@lists.infradead.org;
	Thu, 31 Jul 2025 09:04:26 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uhPD5-0001Fb-S3; Thu, 31 Jul 2025 11:04:23 +0200
Message-ID: <2e595a7d-de5e-4f83-b41d-f304a2bf6191@pengutronix.de>
Date: Thu, 31 Jul 2025 11:04:23 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Bo Sun <bo@mboxify.com>, barebox@lists.infradead.org
References: <20250717131431.1127636-1-bo@mboxify.com>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20250717131431.1127636-1-bo@mboxify.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250731_020425_055410_8371D3F1 
X-CRM114-Status: GOOD (  20.46  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] of: platform: rename parameter 'bus' to 'node' in
 of_platform_bus_create()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 7/17/25 15:14, Bo Sun wrote:
> The parameter represents a device tree node, not specifically a bus.
> Use more accurate naming following device tree conventions.
> 
> Signed-off-by: Bo Sun <bo@mboxify.com>

Acked-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  drivers/of/platform.c | 18 +++++++++---------
>  1 file changed, 9 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/of/platform.c b/drivers/of/platform.c
> index 3600b5f9c1..092ec39b05 100644
> --- a/drivers/of/platform.c
> +++ b/drivers/of/platform.c
> @@ -399,14 +399,14 @@ static inline struct device *of_amba_device_create(struct device_node *np)
>  
>  /**
>   * of_platform_bus_create() - Create a device for a node and its children.
> - * @bus: device node of the bus to instantiate
> + * @node: device node of the bus to instantiate
>   * @matches: match table for bus nodes
>   * @parent: parent for new device, or NULL for top level.
>   *
>   * Creates a platform_device for the provided device_node, and optionally
>   * recursively create devices for all the child nodes.
>   */
> -static int of_platform_bus_create(struct device_node *bus,
> +static int of_platform_bus_create(struct device_node *node,
>  				const struct of_device_id *matches,
>  				struct device *parent)
>  {
> @@ -415,22 +415,22 @@ static int of_platform_bus_create(struct device_node *bus,
>  	int rc = 0;
>  
>  	/* Make sure it has a compatible property */
> -	if (!of_get_property(bus, "compatible", NULL)) {
> +	if (!of_get_property(node, "compatible", NULL)) {
>  		pr_debug("%s() - skipping %pOF, no compatible prop\n",
> -			__func__, bus);
> +			__func__, node);
>  		return 0;
>  	}
>  
> -	if (of_device_is_compatible(bus, "arm,primecell")) {
> -		if (of_amba_device_create(bus))
> +	if (of_device_is_compatible(node, "arm,primecell")) {
> +		if (of_amba_device_create(node))
>  			return 0;
>  	}
>  
> -	dev = of_platform_device_create(bus, parent);
> -	if (!dev || !of_match_node(matches, bus))
> +	dev = of_platform_device_create(node, parent);
> +	if (!dev || !of_match_node(matches, node))
>  		return 0;
>  
> -	for_each_child_of_node(bus, child) {
> +	for_each_child_of_node(node, child) {
>  		pr_debug("   create child: %pOF\n", child);
>  		rc = of_platform_bus_create(child, matches, dev);
>  		if (rc)
> 
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



