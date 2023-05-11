Delivery-date: Thu, 11 May 2023 14:51:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1px5lp-00Dvjx-Hm
	for lore@lore.pengutronix.de; Thu, 11 May 2023 14:51:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1px5lm-0007He-Ss
	for lore@pengutronix.de; Thu, 11 May 2023 14:51:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CcgEHnlXfqcfJj5MR6BxXHq3g+yA3WHgYrz5/78sP1w=; b=DZ5mmw6Ys495mt1PErCS83vQe+
	6pOVRg3GZyF0KWv0fvw7i6PhFi8MP4+nsB0dSCCoEZPFNX5vFWbonwpb/MxtNJqsTd+JBxlCt0WJt
	gqyiC21C5HpyDL51G/xzNKVuxcTqhdrFRvS10QDgafNefKyD5NHqNkEKdazWJ/8ww74YPudY9qgWi
	LUNbhUTO4d/8jBoQCjzhEpvdGKf4fNh5eddGN+QxdhuQKvKFIyuoR3RavWHUWgZ1kXUADbvS4Hu7B
	V6O+C4hIg59QSwafmw/hiwSEyWLIeSCZaarm9hVjaF3RUZba2HDySHnqSUIpA8T7UsRxuWnZM+DNq
	CU/PGDOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1px5kk-008mFk-20;
	Thu, 11 May 2023 12:50:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1px5kh-008mF9-1E
	for barebox@lists.infradead.org;
	Thu, 11 May 2023 12:50:37 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1px5kd-00076W-3k; Thu, 11 May 2023 14:50:31 +0200
Message-ID: <27e6a128-2561-c82d-cc36-13a6825bc4e2@pengutronix.de>
Date: Thu, 11 May 2023 14:50:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Denis Orlov <denorl2009@gmail.com>, barebox@lists.infradead.org
References: <20230511124743.2878952-1-denorl2009@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230511124743.2878952-1-denorl2009@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230511_055035_420637_8B3CD5B6 
X-CRM114-Status: GOOD (  22.25  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] video: bochs: fix IOMEM usage
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 11.05.23 14:47, Denis Orlov wrote:
> For the PCI version of the driver, we end up calling IOMEM() twice on
> both the fb_map and mmio pointers. This happens because we first use
> pci_iomap() on PCI resources in the bochs_pci_probe() and then
> explicitly call IOMEM() in the bochs_hw_probe(). However, judging from
> the parameters of the latter function having __iomem attributes, we
> should not be remapping them. So, remove those IOMEM calls and instead
> do explicit remapping in bochs_isa_detect(), which was missing it.
> 
> Also fix bochs_hw_probe() declaration missing one __iomem.
> 
> Signed-off-by: Denis Orlov <denorl2009@gmail.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Thanks!
Ahmad

> ---
>  drivers/video/bochs/bochs_hw.c  | 4 ++--
>  drivers/video/bochs/bochs_hw.h  | 2 +-
>  drivers/video/bochs/bochs_isa.c | 2 +-
>  3 files changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/video/bochs/bochs_hw.c b/drivers/video/bochs/bochs_hw.c
> index f31020acd4..48de5ea0bd 100644
> --- a/drivers/video/bochs/bochs_hw.c
> +++ b/drivers/video/bochs/bochs_hw.c
> @@ -158,8 +158,8 @@ int bochs_hw_probe(struct device *dev, void __iomem *fb_map,
>  
>  	bochs = xzalloc(sizeof(*bochs));
>  
> -	bochs->fb_map	= IOMEM(fb_map);
> -	bochs->mmio	= IOMEM(mmio);
> +	bochs->fb_map	= fb_map;
> +	bochs->mmio	= mmio;
>  
>  	ret = bochs_hw_read_version(bochs);
>  	if (ret < 0) {
> diff --git a/drivers/video/bochs/bochs_hw.h b/drivers/video/bochs/bochs_hw.h
> index e01ef13d47..c721113656 100644
> --- a/drivers/video/bochs/bochs_hw.h
> +++ b/drivers/video/bochs/bochs_hw.h
> @@ -10,6 +10,6 @@
>  
>  struct device;
>  
> -int bochs_hw_probe(struct device *dev, void *fb_map, void __iomem *mmio);
> +int bochs_hw_probe(struct device *dev, void __iomem *fb_map, void __iomem *mmio);
>  
>  #endif
> diff --git a/drivers/video/bochs/bochs_isa.c b/drivers/video/bochs/bochs_isa.c
> index 3cedb5c345..50fdecd9c8 100644
> --- a/drivers/video/bochs/bochs_isa.c
> +++ b/drivers/video/bochs/bochs_isa.c
> @@ -26,6 +26,6 @@ static int bochs_isa_detect(void)
>  	if (ret)
>  		return ret;
>  
> -	return bochs_hw_probe(dev, (void *)0xe0000000, NULL);
> +	return bochs_hw_probe(dev, IOMEM(0xe0000000), NULL);
>  }
>  device_initcall(bochs_isa_detect);

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



