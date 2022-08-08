Delivery-date: Mon, 08 Aug 2022 15:45:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oL34A-00GE8l-6f
	for lore@lore.pengutronix.de; Mon, 08 Aug 2022 15:45:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oL34B-0004sp-30
	for lore@pengutronix.de; Mon, 08 Aug 2022 15:45:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7A//6T0lhX8lC3zwlrA7fWI1NRW3zNsn3++U1mGjmHc=; b=J5ouEif5URyheaQOQ5NZFA2z+q
	c5QlDg2+9evD6MotQ2kJ31GiL2A6moGqJzdyufU2RYQVz2cvTsYgpcIEqDgCQx1vSFsNF7IBXs71E
	0ElWS92Mwl/yZ9Qsr24BAtZ5vQiiZ/69enXibqGJZEgOiS6KH/EyOF/Ar5NFMSkQV4VNx/6rZRP+S
	ZyOHUS/2yXcHrmoOLkRTnmSCDhdu8vERodTrYabAHWx0n4pM0hoHuWQdCYxKrYj3j+DuufHBlP4E0
	IjIqTaH4mQh4JmDCk6i1anMAgNl+8cCQmkUrv0wVMWG0+HnbxyKw+g+77Katmd7Db4u194iyLlzte
	pynn6Bfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oL330-00EAso-2d; Mon, 08 Aug 2022 13:43:58 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oL32v-00EArN-Jc
	for barebox@lists.infradead.org; Mon, 08 Aug 2022 13:43:55 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oL32u-0004mG-BN; Mon, 08 Aug 2022 15:43:52 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oL32u-0004Xv-2e; Mon, 08 Aug 2022 15:43:52 +0200
Date: Mon, 8 Aug 2022 15:43:52 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, mfe@pengutronix.de
Message-ID: <20220808134352.GT31528@pengutronix.de>
References: <20220725074259.2651494-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220725074259.2651494-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220808_064353_668714_1F14E77D 
X-CRM114-Status: GOOD (  20.22  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH master] driver: disassociate dev from device_node on
 unregister_device
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jul 25, 2022 at 09:43:00AM +0200, Ahmad Fatoum wrote:
> Reusing the same device node with of_platform_device_create
> after unregistering an old device doesn't work, because the device_node
> -> device_d association added along with deep probe isn't cleared.
> Resolve this.
> 
> Fixes: 46afd4bf8fa6 ("of: platform: Keep track of populated platform devices")
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/base/driver.c | 2 ++
>  1 file changed, 2 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/drivers/base/driver.c b/drivers/base/driver.c
> index 4898e0114d56..e7288f6a61cc 100644
> --- a/drivers/base/driver.c
> +++ b/drivers/base/driver.c
> @@ -265,6 +265,8 @@ int unregister_device(struct device_d *old_dev)
>  	/* remove device from parents child list */
>  	if (old_dev->parent)
>  		list_del(&old_dev->sibling);
> +	if (dev_of_node(old_dev))
> +		old_dev->device_node->dev = NULL;
>  
>  	return 0;
>  }
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


