Delivery-date: Tue, 13 Sep 2022 10:33:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oY1Mk-003Qqn-Bo
	for lore@lore.pengutronix.de; Tue, 13 Sep 2022 10:33:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oY1Mi-0003rt-7j
	for lore@pengutronix.de; Tue, 13 Sep 2022 10:33:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=44SMdsmy/JTltJ30Mpr9jB6rXl9GaZEqtydziPHM8VE=; b=ucDOuXoJpKgOLbATAYMxJdtT3x
	P7ArQfahZxLCo7qxx5AQQfyBxMXLHSPjaswwfEsCvrf/LNqIXOrcMcXtogNdSJQfoyu6YBIP0VzMd
	ImhvRG5FgbyeYRrWsCcGXNWSU9o+K8JBB1A989y6qyh8f5L++xlxZ9gpfNvqObKu23JkxXrrK7Z17
	Np0DNrzaMqsaSyCsuQwQe+m3IqszxLNRW+Gy9vAryZyWbOQ7jQqDdeMRkVGZSI/xUS3290aD3iQNI
	YozKiFn/ibW3DLNM+xpiwdkhuZZ53Q6AyUvYBYZJ63Hgwau/eNtzrFXsv9ssjbFOY5+Mzwtk49g2p
	9mx3Dplg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY1Kw-004QAh-Rc; Tue, 13 Sep 2022 08:32:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY1Gv-004MX3-Em
	for barebox@lists.infradead.org; Tue, 13 Sep 2022 08:27:59 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oY1Gt-0002wG-SA; Tue, 13 Sep 2022 10:27:55 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oY1Gt-00048B-JY; Tue, 13 Sep 2022 10:27:55 +0200
Date: Tue, 13 Sep 2022 10:27:55 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220913082755.GL6477@pengutronix.de>
References: <20220905070208.538012-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220905070208.538012-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220913_012757_542214_1A23AC62 
X-CRM114-Status: GOOD (  25.11  )
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
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] of: of_probe: create board's machine device at the
 earliest
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Sep 05, 2022 at 09:02:08AM +0200, Ahmad Fatoum wrote:
> We currently create devices for matching reserved memory entries and
> firmware before creating the machine device. In a deep probe system, the
> machine driver would be probed directly at registration and as such
> needs to be probed before other devices are created, so it can disable
> other devices if needed. Move the machine device registration to the
> top, so board drivers can disabled reserved memory entries and firmware
> if they need to.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/of/base.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/of/base.c b/drivers/of/base.c
> index 52e6a9294e11..6a51dd71793d 100644
> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -2503,6 +2503,12 @@ int of_probe(void)
>  	if(!root_node)
>  		return -ENODEV;
>  
> +	/*
> +	 * We do this first thing, so board drivers can patch the device
> +	 * tree prior to device creation if needed.
> +	 */
> +	of_platform_device_create_root(root_node);
> +
>  	/*
>  	 * Handle certain compatibles explicitly, since we don't want to create
>  	 * platform_devices for every node in /reserved-memory with a
> @@ -2515,8 +2521,6 @@ int of_probe(void)
>  	if (node)
>  		of_platform_populate(node, NULL, NULL);
>  
> -	of_platform_device_create_root(root_node);
> -
>  	of_platform_populate(root_node, of_default_bus_match_table, NULL);
>  
>  	return 0;
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


