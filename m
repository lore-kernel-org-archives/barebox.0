Delivery-date: Tue, 26 Sep 2023 13:40:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ql6Q8-00BxQ3-Vv
	for lore@lore.pengutronix.de; Tue, 26 Sep 2023 13:40:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ql6Q6-0007tD-Qw
	for lore@pengutronix.de; Tue, 26 Sep 2023 13:40:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Lz7r6hEoZE4kMrIr6s6PRlf3eQCiGx59NruGRIFKXOw=; b=hQhJgKv6GczMYWzg33gecgzGSW
	viWYrfwLLjR1GVzoJIIP2+ck9cuGSsjrokliRS7sGoQL/EwZEDHmn9l+mGPYPk1WmXV3PQsdhkWYi
	1XmwshRWFPwGQK1NVM6dlPitrzcjodiUqQf77t2Rzf4uvWVQS9GTqJwhpBarzHLJbd7fY/IWeiLLV
	EbPiJAr/qcVGvLlK7yKe3EyGfyFiXHH4yPYfUJuG0QYCUKVDubdn5v32vsnxgvEheLow4tb6FEhIV
	IvzhIXQSUrBmASsxQVHaK4Eh/wAba5VROoyhdc4bxMGtpsypD6R0WI9QB21IBwpGI5C8DxzvgHWF/
	ePEo27Iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ql6P4-00GHA4-2k;
	Tue, 26 Sep 2023 11:38:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ql6P1-00GH9g-1Z
	for barebox@lists.infradead.org;
	Tue, 26 Sep 2023 11:38:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ql6P0-0007BZ-9g; Tue, 26 Sep 2023 13:38:54 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ql6Oz-0095qo-Th; Tue, 26 Sep 2023 13:38:53 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ql6Oz-00BYd5-RO; Tue, 26 Sep 2023 13:38:53 +0200
Date: Tue, 26 Sep 2023 13:38:53 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230926113853.GC637806@pengutronix.de>
References: <20230914073018.3462650-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230914073018.3462650-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230926_043855_521733_5D948561 
X-CRM114-Status: GOOD (  24.44  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] of: platform: don't fail of_find_device_by_node() if no
 driver bound
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Sep 14, 2023 at 09:30:18AM +0200, Ahmad Fatoum wrote:
> of_find_device_by_node() may be called by a driver following
> of_platform_populate in order to bind the children to drivers.
> It's thus wrong to return NULL when a device has been found, but no
> driver was registered. That also aligns the function with the
> expectation resulting from its name: A device is found and devices may
> be bound or not.

I hesitated applying this one because I am not sure if some users expect
to have a driver bound when of_find_device_by_node() returns a valid
pointer.

I applied it now, let's see what happens.

Sascha

> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/of/platform.c | 6 ++----
>  1 file changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/of/platform.c b/drivers/of/platform.c
> index bd5f2ad82c6b..1f79a539f541 100644
> --- a/drivers/of/platform.c
> +++ b/drivers/of/platform.c
> @@ -23,11 +23,9 @@
>  struct device *of_find_device_by_node(struct device_node *np)
>  {
>  	struct device *dev;
> -	int ret;
>  
> -	ret = of_device_ensure_probed(np);
> -	if (ret)
> -		return NULL;
> +	/* Not having a driver is not an error here */
> +	(void)of_device_ensure_probed(np);
>  
>  	if (deep_probe_is_supported())
>  		return np->dev;
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


