Delivery-date: Mon, 16 Jan 2023 15:29:15 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pHQU8-00DdX6-37
	for lore@lore.pengutronix.de; Mon, 16 Jan 2023 15:29:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pHQU6-0000Ck-4c
	for lore@pengutronix.de; Mon, 16 Jan 2023 15:29:14 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nGfRwOqswxP80r5hjcP6mA+b3w4kGBXbRqBoCIsiJqw=; b=TSVycB/L5GyUGDPAhCIvOQyWCS
	hSMCzD5YUTnSkjDrRm6CC33oKpYbh3gpyrNJmU+uPEfkwYr43ZaFpr3CrXM700nVVA9dJUORthKRi
	xg5WqZ1ai/cdfQnx4B745aOKLkfakHTbouE1B/mMGdBXMDQR6xyISBkuPyLGg+rMG+XB+pqwZJuhm
	1QWkvZXW1lXiCz5/JwQIoMsbNAYFfXNytEa6EvFo3rWsK8UY/UlsU/gMFq9HHzyx0T6n29XX8bSu7
	8Jahuh6yrBGVSD7r/WO8SpJ+A2XIAZX9xai1jJI6rP1Blk2Gr8sNmsKm594pU7ga7p5eV6FFQWg5P
	XKjizekg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHQSf-00AtSz-OB; Mon, 16 Jan 2023 14:27:46 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHQPH-00As14-9D
	for barebox@lists.infradead.org; Mon, 16 Jan 2023 14:24:16 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pHQPF-0007fP-Vq; Mon, 16 Jan 2023 15:24:13 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pHQPF-0005fQ-Ob; Mon, 16 Jan 2023 15:24:13 +0100
Date: Mon, 16 Jan 2023 15:24:13 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230116142413.GF24755@pengutronix.de>
References: <20230116133500.1998550-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230116133500.1998550-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230116_062415_352354_32BF6D77 
X-CRM114-Status: GOOD (  22.75  )
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
Subject: Re: [PATCH] of: implement of_device_enable_by_alias
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jan 16, 2023 at 02:35:00PM +0100, Ahmad Fatoum wrote:
> For symmetry with of_device_disable, which already has direct, path and
> by alias variants, implement the missing of_device_enable_by alias as
> well.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/of/base.c | 15 +++++++++++++++
>  include/of.h      |  1 +
>  2 files changed, 16 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/drivers/of/base.c b/drivers/of/base.c
> index 9504ac47cb09..937847f44ab7 100644
> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -2789,6 +2789,21 @@ int of_device_enable_path(const char *path)
>  	return of_device_enable(node);
>  }
>  
> +/**
> + * of_device_enable_by_alias - enable a device node by alias
> + * @alias - the alias of the device tree node to enable
> + */
> +int of_device_enable_by_alias(const char *alias)
> +{
> +	struct device_node *node;
> +
> +	node = of_find_node_by_alias(NULL, alias);
> +	if (!node)
> +		return -ENODEV;
> +
> +	return of_device_enable(node);
> +}
> +
>  /**
>   * of_device_disable - disable a devicenode device
>   * @node - the node to disable
> diff --git a/include/of.h b/include/of.h
> index 4f4e9248ada9..7ee1304b932b 100644
> --- a/include/of.h
> +++ b/include/of.h
> @@ -1146,6 +1146,7 @@ extern const struct of_device_id of_default_bus_match_table[];
>  
>  int of_device_enable(struct device_node *node);
>  int of_device_enable_path(const char *path);
> +int of_device_enable_by_alias(const char *alias);
>  int of_device_disable(struct device_node *node);
>  int of_device_disable_path(const char *path);
>  int of_device_disable_by_alias(const char *alias);
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


