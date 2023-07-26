Delivery-date: Wed, 26 Jul 2023 14:17:15 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOdS8-00ApvU-CS
	for lore@lore.pengutronix.de; Wed, 26 Jul 2023 14:17:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOdS5-0002T0-QU
	for lore@pengutronix.de; Wed, 26 Jul 2023 14:17:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=M1hgX8PUVvNMHE0bu0ihxbVC0CMfxRI4n83h9eKcm+Y=; b=Vw/p6iPNfgfOm6HIA5CAgWN5IX
	GRHIH0IcQxoGvOSkvkAgVZqUqcwghFTbaMX1YpsfpoxR/oIavxKe66Cj7AU7a71apvLb3ry4CqQvi
	rxMoOqEbvViQn/eQXsXZW24EGiVUit1t+Yb090mFRF6U7bHllcYDM+SE3iZZ6nZxw5uS4QoBSr4XH
	jZpEBn6DExUijuAQUqKCZTPisIT4QMBM73ZFGdD2OkmETU4321VKHljLNoUJvIWu6rnM0IxxM6XV7
	J3Es4n06AL5bbc1a1mgw9aw+kJdCdEoGcESWsH4sMlcV6rQCB2tARLhqSFWcONnn+kIfVwHmCmwG1
	2Bkejdlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOdQy-00AJKw-0N;
	Wed, 26 Jul 2023 12:16:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qOdQu-00AJKE-1U
	for barebox@lists.infradead.org;
	Wed, 26 Jul 2023 12:16:02 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qOdQs-0002Ea-EA; Wed, 26 Jul 2023 14:15:58 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qOdQs-0005KD-6Q; Wed, 26 Jul 2023 14:15:58 +0200
Date: Wed, 26 Jul 2023 14:15:58 +0200
To: Michael Tretter <m.tretter@pengutronix.de>
Cc: barebox@lists.infradead.org, mtr@pengutronix.de
Message-ID: <20230726121558.GO18491@pengutronix.de>
References: <20230711101907.1814921-1-m.tretter@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230711101907.1814921-1-m.tretter@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230726_051600_497952_3625BE96 
X-CRM114-Status: GOOD (  30.91  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] of_firmware: fix lookup of fpga manager
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Jul 11, 2023 at 12:19:07PM +0200, Michael Tretter wrote:
> The of_parse_phandle() looks for the phandle in the root device tree,
> but as np is resolved for the target device tree, the phandle refers to
> the target device tree and may return a wrong node in the root tree.
> 
> Therefore, we must ensure that we look for the manager-node in the
> target device tree and look for the manager with that name.
> 
> firmwaremgr_find_by_node already uses the name for the lookup.
> 
> Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
> ---
>  drivers/of/of_firmware.c | 30 ++++++++++++++++++++++++------
>  1 file changed, 24 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/of/of_firmware.c b/drivers/of/of_firmware.c
> index 80feb3b90dba..0429875a26c4 100644
> --- a/drivers/of/of_firmware.c
> +++ b/drivers/of/of_firmware.c
> @@ -9,14 +9,32 @@
>  static struct firmware_mgr *of_node_get_mgr(struct device_node *np)
>  {
>  	struct device_node *mgr_node;
> +	const __be32 *property;
> +	phandle phandle;
> +	int size;
>  
> +	/* Find fpga-mgr phandle, which may be set in a parent fpga-region. */
>  	do {
> -		mgr_node = of_parse_phandle(np, "fpga-mgr", 0);
> -		if (mgr_node)
> -			return firmwaremgr_find_by_node(mgr_node);
> -	} while ((np = of_get_parent(np)) != NULL);

Not sure if I get this completely. Can't you just replace
of_parse_phandle() with of_parse_phandle_from() with the correct
root_node and be done with it?

Sascha

> -
> -	return NULL;
> +		property = of_get_property(np, "fpga-mgr", &size);
> +		if (property && size == sizeof(*property))
> +			break;
> +	} while ((np = of_get_parent(np)) != NULL &&
> +		 of_device_is_compatible(np, "fpga-region"));
> +	if (!property)
> +		return NULL;
> +	phandle = be32_to_cpup(property);
> +
> +	/*
> +	 * The phandle in the np will refer to a device node in the target
> +	 * tree, which may differ from the phandle in the root tree. We need
> +	 * the name of the target node, as firmwaremgr_find_by_node performs
> +	 * the lookup by the node name.
> +	 */
> +	mgr_node = of_find_node_by_phandle_from(phandle, of_find_root_node(np));
> +	if (!mgr_node)
> +		return NULL;
> +
> +	return firmwaremgr_find_by_node(mgr_node);
>  }
>  
>  struct fw_load_entry {
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


