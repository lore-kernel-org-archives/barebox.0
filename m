Delivery-date: Mon, 12 Sep 2022 10:56:39 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oXfF9-0022iV-Te
	for lore@lore.pengutronix.de; Mon, 12 Sep 2022 10:56:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oXfF8-000873-CK
	for lore@pengutronix.de; Mon, 12 Sep 2022 10:56:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=v756OZpKK5DjLO0iiE7/Px7UNZyIuu1lp1mcFuDqRaE=; b=KRH7NPNR9P2iNpAHZRmldoDTqZ
	GalzD8Zh3jrKcLYiRTos6Zhq4B7k8TCDmUw0V0gl5l7SQU376f5KN8HlPMPzbhXIZWXMCWWcezsEo
	nKyQLZ4Yex8Wtnc1BLRKdyOoVXH7Tkjt65rNjWtvUdbhKGjYJJsjy3EIjAmb6YraO4dFgyLus1+q2
	lEnV7jh+0UJGLjmDfWw8gU1Sgq1toTzhD+tzQEz8Eyta79wZ+ie1N2tkkqiGx1ToH98czGml89y5r
	ZEjra41uCdHtkLhQrTCVDxjLLJTxoV/tsCMWEJRo7+MUeaWKRcJGmarPZDYc9uetk90kGj6jRttNZ
	2j1IMXkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXfDk-0080f0-7O; Mon, 12 Sep 2022 08:55:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXfDT-0080at-UI
	for barebox@lists.infradead.org; Mon, 12 Sep 2022 08:54:59 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oXfDS-0007j0-Jt; Mon, 12 Sep 2022 10:54:54 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oXfDS-0004oc-BA; Mon, 12 Sep 2022 10:54:54 +0200
Date: Mon, 12 Sep 2022 10:54:54 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220912085454.GH24324@pengutronix.de>
References: <20220905103639.1750714-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220905103639.1750714-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220912_015456_032701_79036079 
X-CRM114-Status: GOOD (  28.22  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] of: implement of_rename_property()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Sep 05, 2022 at 12:36:39PM +0200, Ahmad Fatoum wrote:
> It's often desirable to have the same barebox binary for multiple
> variants. DT-level differences between the variants are often handled
> by having extra device tree nodes that are disabled by default and
> patched as appropriate by board code. It can be useful to have a finer
> granularity for patching though, that covers only a select property, e.g.:
> 
>    usbotg1 {
> 	vbus-supply = <&reg_vbus_common>;
> 	vendor,specialvariant-vbus-supply = <&reg_vbus_specialvariant>;
>    };
> 
> The new of_rename_property allows board code to easily activate the
> alternative vbus supply on the specialvariant:
> 
>   of_rename_property(np, "vendor,specialvariant-vbus-supply",
> 			 "vbus-supply");
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/of/base.c             | 16 ++++++++++++++++
>  include/of.h                  |  8 ++++++++
>  test/self/of_manipulation.c   | 10 ++++++++++
>  test/self/of_manipulation.dts |  6 ++++--
>  4 files changed, 38 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/of/base.c b/drivers/of/base.c
> index 6a51dd71793d..212b226eb55c 100644
> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -2301,6 +2301,22 @@ void of_delete_property(struct property *pp)
>  	free(pp);
>  }
>  
> +struct property *of_rename_property(struct device_node *np,
> +				    const char *old_name, const char *new_name)
> +{
> +	struct property *pp;
> +
> +	pp = of_find_property(np, old_name, NULL);
> +	if (!pp)
> +		return NULL;
> +
> +	of_property_write_bool(np, new_name, false);
> +
> +	free(pp->name);
> +	pp->name = xstrdup(new_name);
> +	return pp;
> +}
> +
>  /**
>   * of_set_property - create a property for a given node
>   * @node - the node
> diff --git a/include/of.h b/include/of.h
> index 29df7d912b33..153e75d3e51d 100644
> --- a/include/of.h
> +++ b/include/of.h
> @@ -143,6 +143,8 @@ extern struct property *of_new_property_const(struct device_node *node,
>  extern struct property *__of_new_property(struct device_node *node,
>  					  const char *name, void *data, int len);
>  extern void of_delete_property(struct property *pp);
> +extern struct property *of_rename_property(struct device_node *np,
> +					   const char *old_name, const char *new_name);
>  
>  extern struct device_node *of_find_node_by_name(struct device_node *from,
>  	const char *name);
> @@ -550,6 +552,12 @@ static inline void of_delete_property(struct property *pp)
>  {
>  }
>  
> +static inline struct property *of_rename_property(struct device_node *np,
> +						  const char *old_name, const char *new_name)
> +{
> +	return NULL;
> +}
> +
>  static inline int of_property_read_u32_index(const struct device_node *np,
>  				const char *propname, u32 index, u32 *out_value)
>  {
> diff --git a/test/self/of_manipulation.c b/test/self/of_manipulation.c
> index 6eb6062e126b..7e30a60ca687 100644
> --- a/test/self/of_manipulation.c
> +++ b/test/self/of_manipulation.c
> @@ -57,6 +57,16 @@ static void test_of_basics(struct device_node *root)
>  	of_property_write_bool(node1, "property1", true);
>  
>  	assert_equal(node1, node2);
> +
> +	of_property_write_bool(node2, "property1", false);
> +	of_property_write_u32(node2, "property1", 1);
> +	of_property_write_u32(node2, "property2", 2);
> +
> +	of_property_write_u32(node1, "property3", 1);
> +	of_property_write_u32(node1, "property2", 2);
> +	of_rename_property(node1, "property3", "property1");
> +
> +	assert_equal(node1, node2);
>  }
>  
>  static void test_of_property_strings(struct device_node *root)
> diff --git a/test/self/of_manipulation.dts b/test/self/of_manipulation.dts
> index a69d944c1eb5..2cc6773fa98e 100644
> --- a/test/self/of_manipulation.dts
> +++ b/test/self/of_manipulation.dts
> @@ -4,12 +4,14 @@
>  
>  / {
>  	node1 {
> -		property1;
> +		property1 = <1>;
> +		property2 = <2>;
>  		node21 { };
>  	};
>  
>  	node2 {
> -		property1;
> +		property1 = <1>;
> +		property2 = <2>;
>  		node21 { };
>  	};
>  
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


