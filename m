Delivery-date: Mon, 01 Dec 2025 15:21:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQ4lx-006qJc-0M
	for lore@lore.pengutronix.de;
	Mon, 01 Dec 2025 15:21:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQ4lw-0000TZ-Hs
	for lore@pengutronix.de; Mon, 01 Dec 2025 15:21:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sA+qP3eWWvYNFlbaCjfs20CDhNMOyuJ+VWc8TlWUBa0=; b=cjxVmCtmE+gZhpfQC2NXqX4Kkq
	JcPm924k/UNfZrqJ33jhWnbhX6OrLfmYhOzI2CBD1PArOvQhBWsQ47P9VpRMxkOP3UuDswaJn+dw7
	H2jUHw4ohvzrzEUjO4bLZ0KkGBRq4FFnIJNZ6tFdIi4fYbWguh3SgX/sO4zf/ehqYPTZqHEBE751N
	Bex2uMxHe6duwYLvVO9l5n5n1Xerdd7Yol7kQ/w6gVY0WRePMfNJb5Zy1fR3gizeDFHry6GLZ+O60
	RSnmSm5vw3hD9IjjIfBW1g2zdZ/fR5E2WN6vPoGPoXL5k8o0wnyxHss/wHCNaMWhFHMVzIxvxr3KG
	oFIrGmiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ4lY-0000000453H-3EXn;
	Mon, 01 Dec 2025 14:20:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQ4lW-0000000452s-3Ilf
	for barebox@lists.infradead.org;
	Mon, 01 Dec 2025 14:20:36 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vQ4lV-0000Pw-2n; Mon, 01 Dec 2025 15:20:33 +0100
Message-ID: <7e69d888-7891-44b5-9240-e4e65c5242ed@pengutronix.de>
Date: Mon, 1 Dec 2025 15:20:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jonas Rebmann <jre@pengutronix.de>, Sascha Hauer
 <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20251201-tlv-hardening-v1-1-5dcaa5f7aed5@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251201-tlv-hardening-v1-1-5dcaa5f7aed5@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251201_062034_833166_BD64999B 
X-CRM114-Status: GOOD (  19.32  )
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
Subject: Re: [PATCH] tlv: register_device() error handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 12/1/25 3:12 PM, Jonas Rebmann wrote:
> register_device() returns 0 on success, or an error, which must be
> handled appropriately.
> 
> Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
> ---
> Resolves coverity CID 584716 (Unchecked return value).
> ---
>  common/tlv/bus.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/common/tlv/bus.c b/common/tlv/bus.c
> index a59f8d297a..36a3022fdf 100644
> --- a/common/tlv/bus.c
> +++ b/common/tlv/bus.c
> @@ -23,6 +23,7 @@ struct tlv_device *tlv_register_device(struct tlv_header *header,
>  	const char *name = NULL;
>  	struct device *dev;
>  	static int id = 0;
> +	int ret;
>  
>  	tlvdev = xzalloc(sizeof(*tlvdev));
>  
> @@ -46,7 +47,12 @@ struct tlv_device *tlv_register_device(struct tlv_header *header,
>  
>  	dev->device_node = of_new_node(tlv_parent_node, dev_name(dev));
>  	dev->device_node->dev = dev;
> -	register_device(dev);
> +	ret = register_device(dev);
> +	if (ret) {
> +		pr_err("Failed to register device %s, %d\n", name, ret);

Please drop the error message, there is a single failure mode anyway and
-EINVAL is descriptive enough.

> +		free(tlvdev);
> +		return ERR_PTR(ret);
> +	}
>  
>  	return tlvdev;
>  }
> 
> ---
> base-commit: ec00fef65d808f8bc9c5655262b0e4f8ce2c4e92
> change-id: 20251201-tlv-hardening-fd07381bc3f8
> 
> Best regards,
> --  
> Jonas Rebmann <jre@pengutronix.de>
> 
> 
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



