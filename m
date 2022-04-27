Delivery-date: Wed, 27 Apr 2022 10:02:22 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1njccx-00GmPg-FU
	for lore@lore.pengutronix.de; Wed, 27 Apr 2022 10:02:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1njccu-0001Ys-Pe
	for lore@pengutronix.de; Wed, 27 Apr 2022 10:02:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=upu7+HC1IBVpSyAjfWPRqoYrumCEjubidFQlbRAq0GE=; b=EfdX5Bkqmea7Kv
	haDTRJI3i+0YjbPSCz0iD9QNEQ0aF/ODqqMxy4f7IzBhQiVvTRb7fyrapizuBt/c3Pw+FNRbFjROt
	CXSolGQIFmyKoQHtxtk/oZAXrx5PiBWCJ1oo5yvNjCW7liQ0MTb+cmEDKMZSlwOCbz0SujeWPpx+S
	3+Nv8ypqo7C6mBY0RUv8POurXLoKbuqF4Q1K7TSHEh/WJvkPdrlZGEnHbA8i9VK0pUfly5y6qrfA5
	gTZU6JLv+Hw2zHG9ooJ76JOirNXuqk5p5kSWb/8k35UIoggY94n2PhznMNiAZblsnd8UC6xPKIXqC
	cutSsQd+Buh+/qz+cAIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1njcbZ-000SU0-Qi; Wed, 27 Apr 2022 08:00:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1njcbS-000SRU-Ht
 for barebox@lists.infradead.org; Wed, 27 Apr 2022 08:00:52 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77]
 helo=[127.0.0.1]) by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1njcbQ-0001GB-M0; Wed, 27 Apr 2022 10:00:48 +0200
Message-ID: <0f90ecf7-75a3-4a6a-5188-90817c595bc0@pengutronix.de>
Date: Wed, 27 Apr 2022 10:00:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Oleksij Rempel <o.rempel@pengutronix.de>, barebox@lists.infradead.org
References: <20220427073724.3126601-1-o.rempel@pengutronix.de>
 <20220427073724.3126601-5-o.rempel@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220427073724.3126601-5-o.rempel@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220427_010050_656694_E8451389 
X-CRM114-Status: GOOD (  21.64  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-6.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1 5/5] ARM: boards: protonic-imx6: add HW revision
 specific machine compatible
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 27.04.22 09:37, Oleksij Rempel wrote:
> Currently we use generic/pinned machine compatible for different HW
> revisions. With this patch we extend this compatible string with HW
> revision specific.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  arch/arm/boards/protonic-imx6/board.c | 25 +++++++++++++++++++++----
>  1 file changed, 21 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm/boards/protonic-imx6/board.c b/arch/arm/boards/protonic-imx6/board.c
> index 0fadd148b4..1a1e5540ee 100644
> --- a/arch/arm/boards/protonic-imx6/board.c
> +++ b/arch/arm/boards/protonic-imx6/board.c
> @@ -85,6 +85,7 @@ struct prt_imx6_priv {
>  	const struct prt_machine_data *dcfg;
>  	unsigned int hw_id;
>  	unsigned int hw_rev;
> +	const char *compatible;
>  	const char *name;
>  	unsigned int usb_delay;
>  	unsigned int no_usb_check;
> @@ -126,6 +127,20 @@ static const struct gpio prt_imx6_kvg_gpios[] = {
>  	},
>  };
>  
> +static int prt_of_fixup_hwrev(struct device_node *dstroot, void *arg)
> +{
> +	struct prt_imx6_priv *priv = prt_priv;
> +	char *buf;
> +
> +	buf = xasprintf("%s,model:%u,rev:%u", priv->compatible, priv->hw_id,
> +			priv->hw_rev);

: is not a valid character for device tree property names.
(https://github.com/devicetree-org/devicetree-specification/releases/download/v0.4-rc1/devicetree-specification-v0.4-rc1.pdf
 Table 2.2)

While barebox might not mind, it's better you stick to the standard
character set.

> +	of_fixup_machine_compatible(dstroot, buf);
> +
> +	free(buf);
> +
> +	return 0;
> +}
> +
>  static int prt_imx6_read_rfid(struct prt_imx6_priv *priv, void *buf,
>  			      size_t size)
>  {
> @@ -797,7 +812,7 @@ exit_get_dcfg:
>  static int prt_imx6_probe(struct device_d *dev)
>  {
>  	struct prt_imx6_priv *priv;
> -	const char *name, *ptr;
> +	const char *ptr;
>  	struct param_d *p;
>  	int ret;
>  
> @@ -806,9 +821,9 @@ static int prt_imx6_probe(struct device_d *dev)
>  		return -ENOMEM;
>  
>  	priv->dev = dev;
> -	name = of_device_get_match_compatible(priv->dev);
> -	ptr = strchr(name, ',');
> -	priv->name =  ptr ? ptr + 1 : name;
> +	priv->compatible = of_device_get_match_compatible(priv->dev);
> +	ptr = strchr(priv->compatible, ',');
> +	priv->name =  ptr ? ptr + 1 : priv->compatible;

Could you reuse of_get_machine_compatible() here?

>  
>  	pr_info("Detected machine type: %s\n", priv->name);
>  
> @@ -841,6 +856,8 @@ static int prt_imx6_probe(struct device_d *dev)
>  
>  	prt_priv = priv;
>  
> +	of_register_fixup(prt_of_fixup_hwrev, NULL);
> +
>  	return 0;
>  free_priv:
>  	kfree(priv);


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

