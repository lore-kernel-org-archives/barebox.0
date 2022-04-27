Delivery-date: Wed, 27 Apr 2022 09:55:09 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1njcVy-00Gm9C-Q7
	for lore@lore.pengutronix.de; Wed, 27 Apr 2022 09:55:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1njcVw-0000Qm-6B
	for lore@pengutronix.de; Wed, 27 Apr 2022 09:55:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oMO346iQwsHriQo9EP1uhMFmMuBm7H2chpI2VY5PnGY=; b=V6aKKKDJvMqtIs
	zlli6fwb1SuaHrOb6GK0m87Or9iv16lT3lDWsCrQCOEtr7ub+E0D2LtiP1sIg6lF+k8bBVsEZ+FtZ
	kZuznfd96VC3BCLT2juvESUTZcLFDGizvTDrv1ilWnkjgATZIqp1KXpcwTriixglF2+J2u3GEKfS6
	7dS69I0O3+8nKfhqv28bpMF5EgTY6JoXNoJEHnpx9yyNjN2pvDkEe9oSrTZLNlAjzdoyABDVA6vOy
	nyEMlvsnUNylF2W98JwSlul/b7WfEaHZHCJZtvIAa37e4AfUghmtO9vZZsdqyab3j3DcBIg9uXuFU
	a31z3OcL0iw9sMt2fJYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1njcUX-000PXy-9H; Wed, 27 Apr 2022 07:53:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1njcUR-000PVl-LA
 for barebox@lists.infradead.org; Wed, 27 Apr 2022 07:53:37 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77]
 helo=[127.0.0.1]) by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1njcUO-0000Go-9F; Wed, 27 Apr 2022 09:53:32 +0200
Message-ID: <ee9ae311-8b76-9c23-d2a2-2f22225cd4fd@pengutronix.de>
Date: Wed, 27 Apr 2022 09:53:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Oleksij Rempel <o.rempel@pengutronix.de>, barebox@lists.infradead.org,
 Rouven Czerwinski <rcz@pengutronix.de>
References: <20220427073724.3126601-1-o.rempel@pengutronix.de>
 <20220427073724.3126601-3-o.rempel@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20220427073724.3126601-3-o.rempel@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220427_005335_743620_FB9B7675 
X-CRM114-Status: GOOD (  22.76  )
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
Subject: Re: [PATCH v1 3/5] of: add generic of_fixup_machine_compatible()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 27.04.22 09:37, Oleksij Rempel wrote:
> Add generic function to extend/fixup machine compatible.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>

Cc += Rouven, who had a similar use case

> ---
>  common/oftree.c | 30 ++++++++++++++++++++++++++++++
>  include/of.h    |  6 ++++++
>  2 files changed, 36 insertions(+)
> 
> diff --git a/common/oftree.c b/common/oftree.c
> index c6d75055cc..0a66882946 100644
> --- a/common/oftree.c
> +++ b/common/oftree.c
> @@ -487,3 +487,33 @@ int of_autoenable_i2c_by_component(char *path)
>  
>  	return ret;
>  }
> +
> +int of_fixup_machine_compatible(struct device_node *root, const char *compat)
> +{
> +	int cclen = 0, clen = strlen(compat) + 1;
> +	const char *curcompat;
> +	void *buf;
> +
> +	if (!root) {
> +		root = of_get_root_node();
> +		if (!root)
> +			return -ENODEV;
> +	}
> +
> +	curcompat = of_get_property(root, "compatible", &cclen);
> +
> +	buf = xzalloc(cclen + clen);
> +
> +	memcpy(buf, compat, clen);

add an 

if (curcompat)

> +	memcpy(buf + clen, curcompat, cclen);
> +
> +	/*
> +	 * Prepend the compatible from board entry to the machine compatible.
> +	 * Used to match bootspec entries against it.
> +	 */
> +	of_set_property(root, "compatible", buf, cclen + clen, true);

That way it should work even if there was no compatible property to begin with.


If you feel like it, you could add a new $global.of_compatible to make this
easier to test. :))

> +
> +	free(buf);
> +
> +	return 0;
> +}
> diff --git a/include/of.h b/include/of.h
> index cf9950e9b3..9f514c5ec2 100644
> --- a/include/of.h
> +++ b/include/of.h
> @@ -316,6 +316,7 @@ struct device_node *of_find_node_by_path_or_alias(struct device_node *root,
>  		const char *str);
>  int of_autoenable_device_by_path(char *path);
>  int of_autoenable_i2c_by_component(char *path);
> +int of_fixup_machine_compatible(struct device_node *root, const char *compat);
>  #else
>  static inline bool of_node_name_eq(const struct device_node *np, const char *name)
>  {
> @@ -834,6 +835,11 @@ static inline int of_autoenable_i2c_by_component(char *path)
>  	return -ENODEV;
>  }
>  
> +static int of_fixup_machine_compatible(struct device_node *root,
> +				       const char *compat)
> +{
> +	return -ENODEV;
> +}
>  
>  #endif
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

