Delivery-date: Mon, 12 Sep 2022 09:23:23 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oXdmt-001wMc-L2
	for lore@lore.pengutronix.de; Mon, 12 Sep 2022 09:23:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oXdmr-0003IC-Ua
	for lore@pengutronix.de; Mon, 12 Sep 2022 09:23:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZheZ9XMLyrzgydwETkn2N/aDnkrjDuHLc9+xl9jmWns=; b=0a9S+EmaqVGcv+RRmBGcGHhmxm
	gLb4dhe/+YtI+nD997Odp+WJ7p8iEzMnjKNb3mS6W4XLbqCTKgB759QTvXxKZxcMvFly1dI32Fih+
	EU0lv3nSXcx063oiMLu0fL2hyj4NTy2edLHFGdhZSV8s3FCinxzaZxxSxXEqvwW9yXPUn9fZXZTWI
	okZkhIEU+PI7R5H9N4YnK10l6bOPW9zelOzJ4UH3BVvz9jym7PSclgO7KwndjcJhjt3WHkwDLCVW0
	ZceiauPxLWRq4Zi/22vEI3QmSOy+Z+oCRzc13q4XooRhS/a7GZAgEDSR73ZPfeKZ9DqvqSoK0gcA6
	wrmnzYlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXdkt-007Thh-Rk; Mon, 12 Sep 2022 07:21:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXdfs-007Qlg-Vh
	for barebox@lists.infradead.org; Mon, 12 Sep 2022 07:16:11 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oXdfr-0001cm-GG; Mon, 12 Sep 2022 09:16:07 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oXdfr-0007sD-7E; Mon, 12 Sep 2022 09:16:07 +0200
Date: Mon, 12 Sep 2022 09:16:07 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220912071607.GD24324@pengutronix.de>
References: <20220909074050.3875659-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220909074050.3875659-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220912_001609_223060_8629ADEC 
X-CRM114-Status: GOOD (  25.89  )
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
Subject: Re: [PATCH] of: implement of_prepend_property
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Sep 09, 2022 at 09:40:50AM +0200, Ahmad Fatoum wrote:
> Like of_append_property for adding at the end of properties, implement
> of_prepend_property for placing data into the front.
> 
> This is especially useful to fixup most-specific compatibles into
> existing nodes.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/of/base.c           | 35 +++++++++++++++++++++++++++++++++++
>  include/of.h                |  8 ++++++++
>  test/self/of_manipulation.c |  2 +-
>  3 files changed, 44 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/of/base.c b/drivers/of/base.c
> index 212b226eb55c..e208949b08bd 100644
> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -2378,6 +2378,41 @@ int of_append_property(struct device_node *np, const char *name, const void *val
>  	return 0;
>  }
>  
> +int of_prepend_property(struct device_node *np, const char *name, const void *val, int len)
> +{
> +	struct property *pp;
> +	int orig_len;
> +	const void *orig_buf;
> +	void *buf;
> +
> +	if (!np)
> +		return -ENOENT;
> +
> +	pp = of_find_property(np, name, NULL);
> +	if (!pp) {
> +		of_new_property(np, name, val, len);
> +		return 0;
> +	}
> +
> +	orig_len = pp->length;
> +	buf = realloc(pp->value, orig_len + len);
> +	if (!buf)
> +		return -ENOMEM;
> +
> +	orig_buf = pp->value_const ?: buf;
> +	if (orig_buf) {

orig_buf is always non NULL here.

> +		memmove(buf + len, orig_buf, orig_len);
> +		pp->value_const = NULL;
> +	}
> +
> +	memcpy(buf, val, len);
> +
> +	pp->value = buf;
> +	pp->length += len;
> +
> +	return 0;
> +}

How about a bit more straight forward variant like this:

int of_prepend_property(struct device_node *np, const char *name, const void *val, int len)
{
	struct property *pp;
	int oldlen = 0;

	pp = of_find_property(np, name, &oldlen);
	if (!pp) {
		of_new_property(np, name, val, len);
		return 0;
	}

	oldval = of_property_get_value(pp);

	buf = malloc(len + oldlen);
	if (!buf)
		return -ENOMEM;

	memcpy(buf, val, len);
	memcpy(buf + len, oldval, oldlen);

	free(pp->value);
	pp->value = buf;
	pp->length = len + oldlen;
	pp->value_const = NULL;

	return 0;
}

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


