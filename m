Delivery-date: Mon, 13 Dec 2021 23:44:55 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mwu3z-005jA9-It
	for lore@lore.pengutronix.de; Mon, 13 Dec 2021 23:44:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mwu3x-0004ix-P4
	for lore@pengutronix.de; Mon, 13 Dec 2021 23:44:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=foCofP+8AVBzqNtcKTnVBz+iEicHoPeI2g2eDhWquI0=; b=IQoBiLm8IUjEQF6moMnslfw1OJ
	98NS42y8WNZnPIyMR0FDRR7Od5TbtDS7hZO7BNvTggYEpAz+WJFQNa0q6WUEt4Y08pais+cjsM9xB
	cyIB1jzGh95/c7lqSNHjPK6WGQTGWt0vOFiNc5sRb08gLhz7Zu846ytRhpM2Rl3cYRB/NN7y4qOZF
	spReo2MXsRP//FA39myK8AX6C0rnYCNTh5VsOvvyyypeAADZwUyp8tF4TnP0z1ukL6l0YJKdgyQpe
	MHeGNgBvZtxzv5nIYLy9P4+Cs6REmi/BVoT1TR/RXk9cCiitS3W3mSj8DoiLm31CaZzjrHkFLtfvk
	wKrqc48w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mwu2U-00BpFd-Ew; Mon, 13 Dec 2021 22:43:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mwtjF-00Bi2L-9u
 for barebox@lists.infradead.org; Mon, 13 Dec 2021 22:23:31 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mwtjE-0002IR-0x; Mon, 13 Dec 2021 23:23:28 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mwtjD-0004IF-MZ; Mon, 13 Dec 2021 23:23:27 +0100
Date: Mon, 13 Dec 2021 23:23:27 +0100
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
Message-ID: <20211213222327.GK6003@pengutronix.de>
References: <20211211084406.448795-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211211084406.448795-1-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 23:23:17 up 3 days, 7:08, 33 users, load average: 0.01, 0.05, 0.08
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211213_142329_382610_F4B3ABA1 
X-CRM114-Status: GOOD (  22.79  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] misc: sram: remove duplicated resource handling code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sat, Dec 11, 2021 at 09:44:06AM +0100, Ahmad Fatoum wrote:
> Remove superfluous code. No functional change.
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  drivers/misc/sram.c | 9 +--------
>  1 file changed, 1 insertion(+), 8 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/misc/sram.c b/drivers/misc/sram.c
> index d45b5cb72f93..f4a7551fc760 100644
> --- a/drivers/misc/sram.c
> +++ b/drivers/misc/sram.c
> @@ -26,24 +26,17 @@ static int sram_probe(struct device_d *dev)
>  {
>  	struct resource *iores;
>  	struct sram *sram;
> -	struct resource *res;
> -	void __iomem *base;
>  	int ret;
>  
>  	iores = dev_request_mem_resource(dev, 0);
>  	if (IS_ERR(iores))
>  		return PTR_ERR(iores);
> -	base = IOMEM(iores->start);
>  
>  	sram = xzalloc(sizeof(*sram));
>  
>  	sram->cdev.name = basprintf("sram%d", cdev_find_free_index("sram"));
>  
> -	res = dev_get_resource(dev, IORESOURCE_MEM, 0);
> -	if (IS_ERR(res))
> -		return PTR_ERR(res);
> -
> -	sram->cdev.size = (unsigned long)resource_size(res);
> +	sram->cdev.size = (unsigned long)resource_size(iores);
>  	sram->cdev.ops = &memops;
>  	sram->cdev.dev = dev;
>  
> -- 
> 2.33.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

