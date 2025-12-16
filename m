Delivery-date: Tue, 16 Dec 2025 12:05:09 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vVSrd-00C5RJ-0l
	for lore@lore.pengutronix.de;
	Tue, 16 Dec 2025 12:05:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vVSrc-0001H9-L5
	for lore@pengutronix.de; Tue, 16 Dec 2025 12:05:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Yx+um4UQPzU8PSwjXwgoKY8pzDcBrDthWMRHHjWIpqo=; b=r0Nahy4BixQlklWEjAl+YflBtJ
	YMtzGFLdVBnA/svwNRBPXzUIzRbvMR97TqX3qHxL54rJWV0pWWKT178hyOk0tQvf8LEA4KP6yNYz6
	9piD4l3QGQSWxak9lNGORVdO9xeMZbzdnALiPANRlRk240ePUn5LXHzU8bwY5v1gjSKxaqmXaor2T
	NpQP9CjY+FqZSsWFXR+T2Vxnyn9ZjrM0/tuXRZd1mva+cgxlRZ1+tSM0GgEqdDEw7fbcbrmqW5L2v
	HOay5Q7Wo2PicZlaGPziEI+XcowpMW5M2jry1XpJU91u16EMarhFhkU+oMbHU4BBstbgf5Z6kEVj+
	wGLCxseQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVSOl-00000005314-1I9M;
	Tue, 16 Dec 2025 10:35:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVSOh-0000000530O-3y4B
	for barebox@lists.infradead.org;
	Tue, 16 Dec 2025 10:35:17 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vVSOe-0005zl-6X; Tue, 16 Dec 2025 11:35:12 +0100
Message-ID: <f54c14fa-25ee-448e-b94f-50d4190e12f5@pengutronix.de>
Date: Tue, 16 Dec 2025 11:35:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: maudspierings@gocontroll.com, Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20251216-genpd_fix-v1-1-b4ca268d3b31@gocontroll.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20251216-genpd_fix-v1-1-b4ca268d3b31@gocontroll.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251216_023516_016398_66595E8F 
X-CRM114-Status: GOOD (  20.77  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] pmdomain: fix collision in names when registering
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Maud,

On 12/16/25 11:24 AM, Maud Spierings via B4 Relay wrote:
> From: Maud Spierings <maudspierings@gocontroll.com>
> 
> After adding the imx8m-blk-ctrl driver errors started appearing about
> the genpd device already being registered.
> 
> incorperate some extra device details in the device name so this
> possible collision goes away.
> 
> Signed-off-by: Maud Spierings <maudspierings@gocontroll.com>

Thanks for your patch. Did you check what the device is called now?

Do we need to change virt_dev->id = DEVICE_ID_SINGLE; just after the
context to get rid of a trailing 0?

Cheers,
Ahmad

> ---
> It wasn't just errors, it started crashing but that is a seperate issue.
> It at least loads normally with this change
> ---
>  drivers/base/power.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/base/power.c b/drivers/base/power.c
> index c71389422a..af06f984c0 100644
> --- a/drivers/base/power.c
> +++ b/drivers/base/power.c
> @@ -506,7 +506,7 @@ struct device *genpd_dev_pm_attach_by_id(struct device *dev,
>  	if (!virt_dev)
>  		return ERR_PTR(-ENOMEM);
>  
> -	dev_set_name(virt_dev, "genpd");
> +	dev_set_name(virt_dev, "genpd:%u:%s", index, dev_name(dev));
>  	virt_dev->bus = &genpd_bus_type;
>  	virt_dev->parent = dev;
>  	virt_dev->of_node = dev->of_node;
> 
> ---
> base-commit: 63898c48611dfe51409ff1f4e1c30de4b2737c48
> change-id: 20251216-genpd_fix-0f1ed7d8cbb2
> 
> Best regards,

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



