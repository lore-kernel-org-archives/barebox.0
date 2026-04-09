Delivery-date: Thu, 09 Apr 2026 14:16:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wAoIy-00AI64-1d
	for lore@lore.pengutronix.de;
	Thu, 09 Apr 2026 14:16:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wAoIx-0007aJ-UJ
	for lore@pengutronix.de; Thu, 09 Apr 2026 14:16:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2pwlZCk3XJDnagVYvjeS3R9zZxUnp01ZkB9sBoU2WyU=; b=x6UKJCqFMyPWoUynGVitVf3EAn
	vKrftkKn0+sRn+kaUlpR97z/8dxFe7iiFsuLLJAFnJCgwq3JVsBrYQwOPWiWAYu4wvYp0VZQlLUFP
	IxH5aaWSSxJJ91t+rakjsDeNYp+VYqYhOpBbS3bdZDz/KTNzHcKh6dj3qRHjb2/vKYFQqL5W8igIh
	f67XKlI5D4Bn7E+obNHjrF2vRZK3zB+U3y+T4ou2CGeUCL6FyCvjJzXMfT5yLaSfDG8MAjP0zcEFd
	I4xCWFhyJU/4S0yWdseeZpp4FMT5NksY2d+Ljyy4KOY9wTOyaiKj6CPbWI1hl62a8mRLELP5w8Uil
	Ea7UutBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wAoIX-0000000AMPJ-0dsX;
	Thu, 09 Apr 2026 12:15:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wAoIT-0000000AMOY-3R9W
	for barebox@lists.infradead.org;
	Thu, 09 Apr 2026 12:15:47 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wAoIS-0007Rz-6G; Thu, 09 Apr 2026 14:15:44 +0200
Message-ID: <980fa2e8-c4c9-4cad-acf2-ab8f3656ca7a@pengutronix.de>
Date: Thu, 9 Apr 2026 14:15:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Michael Grzeschik <m.grzeschik@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20260409-simple-fixup-v1-1-5c4f16de17bd@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260409-simple-fixup-v1-1-5c4f16de17bd@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260409_051546_047738_D709F92A 
X-CRM114-Status: GOOD (  16.47  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] video: simplefb-fixup: IORESOURCE_BUSY is deprecated use
 reserve_resource
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 4/9/26 2:10 PM, Michael Grzeschik wrote:
> Since the IORESOURCE_BUSY was retired, the simple-fixup driver was
> missed to be changed. We fix this and also mark the driver memory as
> reserved.
> 
> Fixes: 191b639dd53d ('resource: retire IORESOURCE_BUSY in favor of resource::type')
> Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  drivers/video/simplefb-fixup.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/video/simplefb-fixup.c b/drivers/video/simplefb-fixup.c
> index e20f2922445bddcb13a049b2581c4c632289d6ee..94cf5a7884504a2dad80768ebedb413b171be868 100644
> --- a/drivers/video/simplefb-fixup.c
> +++ b/drivers/video/simplefb-fixup.c
> @@ -124,8 +124,8 @@ static int simplefb_create_node(struct device_node *root,
>  		return ret;
>  
>  	res.name = "simple-framebuffer";
> -	res.flags |= IORESOURCE_BUSY;
>  	resource_set_range(&res, screen_base, fbi->screen_size);
> +	reserve_resource(&res);
>  
>  	of_fixup_reserved_memory(root, &res);
>  
> 
> ---
> base-commit: 86269eff785a915cfb96f09d9c7ec81a89d33012
> change-id: 20260409-simple-fixup-d519715f3e5f
> 
> Best regards,

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



