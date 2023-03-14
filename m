Delivery-date: Tue, 14 Mar 2023 14:19:26 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pc4Yn-00EOrf-UL
	for lore@lore.pengutronix.de; Tue, 14 Mar 2023 14:19:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pc4Yn-00084D-Rp
	for lore@pengutronix.de; Tue, 14 Mar 2023 14:19:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Resent-Message-ID:
	Resent-Date:Resent-To:Resent-From:Reply-To:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Sender:Resent-Cc:List-Owner;
	bh=x4NnNfKs4YLT4CuyRYF8nrfdl7yLGR5yE136S1lBKck=; b=3stucJuuxqMse7CP4OAdMmE/I4
	/I7tU2hb0ZAActTY4co/I+ADWltv3LCBlHCD8UBJDIIe+0xHJ/YpQTrsiyklKjhxRzWq8JCL11CyT
	HmzVIJQdtQ83ViYkelfl2fvAUk0GHhElYkqiAVAX9HwPE/k4xIhnoeDr6AH6/h889+QHbhuCz4vT0
	zPCtLOndm36iJSoYcRAQyYsWBVC7/HhKNIQ8TcktRJLX83cCl8IpJ63eScMM73VhqWuMtGtc/6CZY
	4YwiICWE6ivSHvwZcMEFDQ/w4Vx08V0AkNzNDEGvtjlwHzin6Xd9wAPh+ZWmSE1iH/qcTijlKCjRB
	7Un3AChA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pc4Xf-00AGhL-2G;
	Tue, 14 Mar 2023 13:18:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pc4Xc-00AGgX-26
	for barebox@lists.infradead.org;
	Tue, 14 Mar 2023 13:18:14 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1pc4Xb-0007sH-Bv
	for barebox@lists.infradead.org; Tue, 14 Mar 2023 14:18:11 +0100
Resent-From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Resent-To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Resent-Date: Tue, 14 Mar 2023 14:18:11 +0100
Resent-Message-ID: <f0901db7-0da1-418e-c635-187b39061615@pengutronix.de>
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pc0Y6-0001YF-RH; Tue, 14 Mar 2023 10:02:26 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pc0Y6-0007Vj-KP; Tue, 14 Mar 2023 10:02:26 +0100
Date: Tue, 14 Mar 2023 10:02:26 +0100
From: Sascha Hauer <sha@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230314090226.GG7446@pengutronix.de>
References: <20230314085805.1860986-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230314085805.1860986-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230314_061812_687291_6E743253 
X-CRM114-Status: GOOD (  22.31  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master 1/2] of: partition: skip NVMEM partition setup
 partition parsing fails
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Mar 14, 2023 at 09:58:04AM +0100, Ahmad Fatoum wrote:
> nvmem_partition_register should not be called with a NULL pointer
> argument, yet this is what happened when a partition with a nvmem-cells
> compatible conflicts with a partition parsed from an on-disk partition
> table. Fix this.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/of/partition.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/of/partition.c b/drivers/of/partition.c
> index ed1114193062..40c47f554ad2 100644
> --- a/drivers/of/partition.c
> +++ b/drivers/of/partition.c
> @@ -70,10 +70,10 @@ struct cdev *of_parse_partition(struct cdev *cdev, struct device_node *node)
>  	if (IS_ERR(new)) {
>  		pr_err("Adding partition %s failed: %pe\n", filename, new);
>  		new = NULL;
> +		goto out;
>  	}
>  
> -	if (new)
> -		new->device_node = node;
> +	new->device_node = node;
>  
>  	if (IS_ENABLED(CONFIG_NVMEM) && of_device_is_compatible(node, "nvmem-cells")) {
>  		struct nvmem_device *nvmem = nvmem_partition_register(new);
> @@ -81,6 +81,7 @@ struct cdev *of_parse_partition(struct cdev *cdev, struct device_node *node)
>  			dev_warn(cdev->dev, "nvmem registeration failed: %pe\n", nvmem);
>  	}
>  
> +out:
>  	free(filename);
>  
>  	return new;
> -- 
> 2.30.2
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



