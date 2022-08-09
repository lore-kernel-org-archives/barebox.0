Delivery-date: Tue, 09 Aug 2022 06:52:30 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oLHEC-00GtxH-7B
	for lore@lore.pengutronix.de; Tue, 09 Aug 2022 06:52:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oLHED-0004ux-4q
	for lore@pengutronix.de; Tue, 09 Aug 2022 06:52:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VJX133NXYsDzNjr/6LDeYg2lgsUs3q6NzucHF+gEjeo=; b=kh5Re2EC5Ncb9bYh5kB/Ljk1B4
	munOumSiQnlEwv8UxKfvcLp0rFYuePbeoru0O+Ik1Q2cH91SvSlueTvuiGhoD8lIy2wEIQsHVziNw
	tKF8FcIz0NBh8VhJrrja5zuXh0dnlZUtKXDKGevCuiH9BrE8DQu4rt7/HNkC0sVy8LRUIUJZscifo
	x4HzKxoXiwERGVj7+OeN4mRcNy8pJ4qbakgxoThLoYbX8JXQbUm/DEoM3o5UaGpxqjzocrWfqdkIy
	zeC1k88K3/ePBtudLZk7JpbZMzNyXh3+FfEdTcDpcpNC2W/ru/DtDd3xvOJbMjzcp0ZjoUr17IU/P
	8ghlQgeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLHCM-001JkM-VQ; Tue, 09 Aug 2022 04:50:35 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLHCG-001Ji2-Um
	for barebox@bombadil.infradead.org; Tue, 09 Aug 2022 04:50:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=From:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=VJX133NXYsDzNjr/6LDeYg2lgsUs3q6NzucHF+gEjeo=; b=if3JlalU+yU9DYJ4w2YgqXhxQN
	OsLKkKYmClcJxwn/DdU2fR9SPo6S0+oiL0/EHYKEB7cz8pKfQ8K21ugF4hEh3GrkLXr3PhE9vqZ/h
	EauOdAjv0u7xORaNX2FFMDnW1bOe6ObZfiXKj3Sf2xWdnWVpoeleAdSoQcdZ/+Lt85GULh+Z+sh8l
	LOKsZrNSY46OC0RNb0wb5xKNf4t7YSCPY9WDJCkKysGuah2HPMsaYHWT4MjPb7W35vDFQR0OIB7yU
	9JG9lQFyeBXY5k3o4Ng4B+/Q7WL12CapY5wLVRGEu/c8UZ2HP63SAPAKVqualmCbH1DxnjhuIp7gY
	d8Ok+e+Q==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oLGxW-00EkG7-2B
	for barebox@lists.infradead.org; Tue, 09 Aug 2022 04:35:21 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oLGxQ-0003An-Hf; Tue, 09 Aug 2022 06:35:08 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oLGxQ-0001tS-7d; Tue, 09 Aug 2022 06:35:08 +0200
Date: Tue, 9 Aug 2022 06:35:08 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220809043508.GY31528@pengutronix.de>
References: <20220808140035.1672733-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220808140035.1672733-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220809_053514_131937_222D0E7D 
X-CRM114-Status: GOOD (  15.52  )
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
Subject: Re: [PATCH master v3 1/4] soc: imx: gpcv2: associate PGC device tree
 node with platform device
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Aug 08, 2022 at 04:00:32PM +0200, Ahmad Fatoum wrote:
> We aren't using of_platform_device_create, but instead create our own
> platform devices which lack a reference from the device tree node to the
> newly created device. Add this reference to support of_device_ensure_probed.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> v2 -> v3:
>   - no change
> v1 -> v2:
>   - no change
> ---
>  drivers/soc/imx/gpcv2.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/soc/imx/gpcv2.c b/drivers/soc/imx/gpcv2.c
> index 62cfc21519b1..a0e78ce55e3e 100644
> --- a/drivers/soc/imx/gpcv2.c
> +++ b/drivers/soc/imx/gpcv2.c
> @@ -483,10 +483,10 @@ again:
>  
>  		pd_dev = xzalloc(sizeof(*pd_dev));
>  		pd_dev->device_node = np;
> +		pd_dev->device_node->dev = pd_dev;
>  		pd_dev->id = domain_index;
>  		pd_dev->parent = dev;
>  		pd_dev->priv = domain;
> -		pd_dev->device_node = np;
>  		dev_set_name(pd_dev, imx_pgc_domain_id[0].name);
>  
>  		ret = platform_device_register(pd_dev);
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


