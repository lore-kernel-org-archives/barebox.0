Delivery-date: Mon, 14 Apr 2025 11:30:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4G93-000aJV-2C
	for lore@lore.pengutronix.de;
	Mon, 14 Apr 2025 11:30:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4G93-0007Ta-3G
	for lore@pengutronix.de; Mon, 14 Apr 2025 11:30:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IppaP3PEjfrXnfMBk4mWejUPLNSZMAQYKNzhwywiO7Y=; b=fkNF5s0a5ZCHSLQnyuEnTQRdNr
	i6SO9VJ6gDDrHKTXlks+UqjzTfayHSXBZP8Yux9vmaet1eG27G1BYYnedrIPlrW9fStzREVMoFJO6
	D3nXV8ePBs97Gc6cI7PrDtICIv93+uDamv+KUsXJJ6btgodfAMJ1cfXwYBnBGa90CRNdZLj/Wsy0w
	CySmNj12z/Y/6JZ+eTOp/Ez/OcQxInK3eH9RL/+9sbOOxlQZzR5X8mgkAan5VDZ9SP4dJhdSZXl98
	q77fKIYsut6nwvXTSRAkYrtedJRGF73NqXsHw7RA5Vd9sx4wvG5qyig9JgJKdUopKgkIifG4z9hub
	Av+t1rbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4G8Y-00000001HII-1e9W;
	Mon, 14 Apr 2025 09:29:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4FnD-00000001Dsb-0Mnr
	for barebox@lists.infradead.org;
	Mon, 14 Apr 2025 09:07:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1u4FnB-00088k-Hh; Mon, 14 Apr 2025 11:07:49 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1u4FnB-000DsS-1A;
	Mon, 14 Apr 2025 11:07:49 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1u4FnB-000Ejn-0r;
	Mon, 14 Apr 2025 11:07:49 +0200
Date: Mon, 14 Apr 2025 11:07:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Z_zQZY-ioQUWlIt2@pengutronix.de>
References: <20250414062303.2721390-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250414062303.2721390-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250414_020751_123062_85B0DA67 
X-CRM114-Status: GOOD (  24.19  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] driver: have dev_platform_ioremap_resource return error
 pointer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Apr 14, 2025 at 08:23:03AM +0200, Ahmad Fatoum wrote:
> From: Ahmad Fatoum <a.fatoum@barebox.org>
> 
> devm_request_mem_region doesn't return NULL on error on Linux and thus
> it should neither in barebox. Fix this.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/base/driver.c  | 2 ++
>  include/linux/device.h | 2 +-
>  2 files changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/base/driver.c b/drivers/base/driver.c
> index edba037fa2dd..4e361a96c9ee 100644
> --- a/drivers/base/driver.c
> +++ b/drivers/base/driver.c
> @@ -587,6 +587,8 @@ void __iomem *dev_request_mem_region(struct device *dev, int num)
>  	struct resource *res;
>  
>  	res = dev_request_mem_resource(dev, num);
> +	if (!IS_ERR(res) && WARN_ON(IS_ERR_VALUE(res->start)))
> +		return IOMEM_ERR_PTR(res->start);

Which code can set res->start to an error value?

Sascha

>  	if (IS_ERR(res))
>  		return ERR_CAST(res);
>  
> diff --git a/include/linux/device.h b/include/linux/device.h
> index 66294910abb3..661d8b24730e 100644
> --- a/include/linux/device.h
> +++ b/include/linux/device.h
> @@ -39,7 +39,7 @@ static inline void __iomem *dev_platform_ioremap_resource(struct device *dev,
>  	 * so we don't need to do anything besides requesting the regions
>  	 * and can leave the memory attributes unchanged.
>  	 */
> -	return dev_request_mem_region_err_null(dev, resource);
> +	return dev_request_mem_region(dev, resource);
>  }
>  
>  static inline void __iomem *devm_ioremap(struct device *dev,
> -- 
> 2.39.5
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


