Delivery-date: Thu, 04 Jan 2024 12:18:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rLLk3-003Sly-1D
	for lore@lore.pengutronix.de;
	Thu, 04 Jan 2024 12:18:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rLLk2-0005j1-Ai
	for lore@pengutronix.de; Thu, 04 Jan 2024 12:18:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PcN1lTIdJVUNBno8PH6zfhoN/d0gR1qAi6MI6g7uZUY=; b=1XbjGjHMT5uzPLaKRHEp+8FapX
	lZwCbhlRXu1LzwsdDISzV0C+S+ufr3Tk1fszVnnZ68bld1NZ24MOiZj/cw5lCpOWyAZ3fowtluZls
	LkJYsyDijGv3mo0oB+Wqpz6wEKwaPWUcsjeb5nApb10fS17IClzcxf9HUfuauj67Gz3j5nE1a2+No
	/GlG7BsTiDV1B3RTJmAWn1iIyHn5dmS410434Oe1nGi/5owOYw0D2X/c6VsWM8IkMS8H33qY2QD/H
	EXNHwYVLyvNLsmkTXX8HlK9LoU9gG1izNjcyjn0A57f4dtKQWMg7L8ifR6LIgaRKuAKDwZsrzP7vq
	IvSSKECQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLLip-00Dfoi-1k;
	Thu, 04 Jan 2024 11:17:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLLim-00Dfm4-17
	for barebox@lists.infradead.org;
	Thu, 04 Jan 2024 11:17:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rLLii-0005JO-BI; Thu, 04 Jan 2024 12:17:04 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rLLih-000KlB-UX; Thu, 04 Jan 2024 12:17:03 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rLLih-00ACkz-SO; Thu, 04 Jan 2024 12:17:03 +0100
Date: Thu, 4 Jan 2024 12:17:03 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20240104111703.GO1318922@pengutronix.de>
References: <20240103102035.2630735-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240103102035.2630735-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240104_031708_381332_3CA480BA 
X-CRM114-Status: GOOD (  22.44  )
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
X-Spam-Status: No, score=-6.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/2] cdev: simplify loop in cdev_by_device_node
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Jan 03, 2024 at 11:20:34AM +0100, Ahmad Fatoum wrote:
> We don't need to compare the cdev's device node pointer both against NULL
> and against the searched for device node on each iteration.
> 
> Instead, it's sufficient to just compare the device nodes directly.
> To maintain previous behavior, when searching for a NULL device node, we
> shouldn't return the first cdev, but return NULL. Do that via an early
> exit instead of doing it after iterating over all cdevs.
> 
> No functional change.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  fs/devfs-core.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/fs/devfs-core.c b/fs/devfs-core.c
> index 244f76f62c52..c79b092a112e 100644
> --- a/fs/devfs-core.c
> +++ b/fs/devfs-core.c
> @@ -87,9 +87,10 @@ struct cdev *cdev_by_device_node(struct device_node *node)
>  {
>  	struct cdev *cdev;
>  
> +	if (!node)
> +		return NULL;
> +
>  	for_each_cdev(cdev) {
> -		if (!cdev->device_node)
> -			continue;
>  		if (cdev->device_node == node)
>  			return cdev_readlink(cdev);
>  	}
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


