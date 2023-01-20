Delivery-date: Fri, 20 Jan 2023 08:39:00 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pIlzJ-00HKqN-Kv
	for lore@lore.pengutronix.de; Fri, 20 Jan 2023 08:39:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pIlzH-0003xL-Ry
	for lore@pengutronix.de; Fri, 20 Jan 2023 08:39:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=akTYDaX170outlx1l8vzSujWGNnlDSoI/CPufEo1YWQ=; b=F+rbbLf/Um+jpl7B62w++GrQEJ
	5nFqdgnbmYsvtqPUAX3kWy21OILODz4wfOGhXRIJoL+KLWyErfOECkXR5p/rgfW7fr0+Ov5g4aCP3
	bKcJgIChDGWvPUOq0ahu2eCA+tbLu1GA2Resp19LkjAmb2p4m0fHD5d2xAnl9z45A49bK7vGMK/qk
	zz5xyY2RVaH+C/fKloXfHaQMH7H44WSFQc/mEDdJ9T1N7927DbLMqiqwwC6duz8BtYJG+yWtripLJ
	caAL0iBlISVKpJlpqcEIPe2YvaBc9Lz3Euv4yQSIHnK476a2k+xbIyXWF7TDh5E+nnvs+jSx7PpVY
	posKJFuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIlxT-008pZ4-0q; Fri, 20 Jan 2023 07:37:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pIlxN-008pVs-C4
	for barebox@lists.infradead.org; Fri, 20 Jan 2023 07:37:03 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pIlxE-0003fU-GB; Fri, 20 Jan 2023 08:36:52 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pIlxE-0006ya-8T; Fri, 20 Jan 2023 08:36:52 +0100
Date: Fri, 20 Jan 2023 08:36:52 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230120073652.GI24755@pengutronix.de>
References: <20230116133639.1999170-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230116133639.1999170-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230119_233701_444115_BDF96D2C 
X-CRM114-Status: GOOD (  24.66  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/3] of: platform: call struct device::detect in
 of_device_create_on_demand
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jan 16, 2023 at 02:36:37PM +0100, Ahmad Fatoum wrote:
> Most devices featuring a detect callback use it to probe an underlying
> bus. However, of_device_create_on_demand so far created devices on the
> platform bus, ignoring that it might be e.g. an I2C device that's
> supposed to be crated by the parent controller.
> 
> Fix this by calling the parent's detect callback if available. Busses
> that probe via device tree, but register their devices on a different
> bus will need to register a detect callback to benefit from this.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/of/platform.c | 7 +++++++
>  1 file changed, 7 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/drivers/of/platform.c b/drivers/of/platform.c
> index ff7096b6eedd..edb082b106ff 100644
> --- a/drivers/of/platform.c
> +++ b/drivers/of/platform.c
> @@ -414,11 +414,18 @@ static struct device *of_device_create_on_demand(struct device_node *np)
>  {
>  	struct device_node *parent;
>  	struct device *parent_dev, *dev;
> +	int ret;
>  
>  	parent = of_get_parent(np);
>  	if (!parent)
>  		return NULL;
>  
> +	if (!np->dev && parent->dev) {
> +		ret = device_detect(parent->dev);
> +		if (ret && ret != -ENOSYS)
> +			return ERR_PTR(ret);
> +	}
> +
>  	if (!np->dev)
>  		pr_debug("Creating device for %s\n", np->full_name);
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


