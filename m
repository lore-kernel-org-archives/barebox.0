Delivery-date: Wed, 21 Jan 2026 12:22:53 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1viWIX-003k8Y-1P
	for lore@lore.pengutronix.de;
	Wed, 21 Jan 2026 12:22:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1viWIW-00017z-DS
	for lore@pengutronix.de; Wed, 21 Jan 2026 12:22:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AOLVc1zlCn7thn9hN1I4PDOXDHJmW/rzjHvSg36pRkI=; b=Dx8ez43lT89z/5WxspbBOkJEle
	PrARlRsPiS3qAIs6wGEqfKN5WIzLDLfOfmMA3RI+KznSDq82gKmvA8tQxSuhmcD3vKLCj3B5T8qMu
	WPoakyQdQ+ZAcXpqgyiJKvN5DLf5YTuueaZ37GwYU+ioa+0VX9/KE2ZdOEPIx3c0nQsYqAzQXs9f8
	+8I4LO6KupxFbptNQFpAuSzXRnpXXZ7dy6SM/076kS+eMhSAugfFCINS659FMNYuRIKIzI806RJSE
	ihPL1FjIe6S0Ox/5bVuwtbxjkmLPnKPM0/6jcznrLznouF+Px06WFPls0g2jG6rRaxzjDp7PUDqms
	5b5/v3Eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viWHy-00000005LRJ-1rW7;
	Wed, 21 Jan 2026 11:22:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1viWHv-00000005LQg-2AMk
	for barebox@lists.infradead.org;
	Wed, 21 Jan 2026 11:22:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1viWHt-00012K-CY; Wed, 21 Jan 2026 12:22:13 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1viWHt-001jwA-2m;
	Wed, 21 Jan 2026 12:22:13 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1viWHt-0076CD-0J;
	Wed, 21 Jan 2026 12:22:13 +0100
Date: Wed, 21 Jan 2026 12:22:13 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20260121112213.yo7eyytvssk3vufj@pengutronix.de>
References: <20260120181333.3375979-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260120181333.3375979-1-a.fatoum@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260121_032215_558638_242D5315 
X-CRM114-Status: GOOD (  24.78  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] of: base: add new barebox,status property
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 26-01-20, Ahmad Fatoum wrote:
> I am confronted with an occasional hang on the Radxa Rock 3A during
> PCI probe. The board has no PCI devices connected.
> 
> This hang doesn't happen in Linux and doesn't happen on the QNAP
> TS433-eU, which is also RK3568, but actually has PCIe devices, which are
> probed normally.
> 
> For such purposes, add a barebox,status property as setting the status
> to disabled, would impact Linux as well if barebox were to pass along
> its own device tree.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  .../devicetree/bindings/barebox/barebox,status.rst        | 8 ++++++++
>  drivers/of/base.c                                         | 4 +++-
>  2 files changed, 11 insertions(+), 1 deletion(-)
>  create mode 100644 Documentation/devicetree/bindings/barebox/barebox,status.rst
> 
> diff --git a/Documentation/devicetree/bindings/barebox/barebox,status.rst b/Documentation/devicetree/bindings/barebox/barebox,status.rst
> new file mode 100644
> index 000000000000..06524b218fb1
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/barebox/barebox,status.rst
> @@ -0,0 +1,8 @@
> +barebox,status property
> +=======================
> +
> +barebox interprets ``barebox,status`` the same as it does ``status``,
> +but gives the former precedence if both exist.
> +
> +Use this property only for devices for which barebox has a driver, but
> +that barebox should not be probing on a per-board basis.

I would rephrase the 2nd sentence a bit:

"""
The purpose of this property is to keep the status property of the
upstream DT, provided by Linux, untouched.

This may be necessary to temporary workaround broken barebox drivers on
a per-board basis in case you can't disable the driver due to a
multi-config build.
"""

Regards,
  Marco


> diff --git a/drivers/of/base.c b/drivers/of/base.c
> index 54fd458bd9a1..4e83a757a4e9 100644
> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -2149,7 +2149,9 @@ int of_device_is_available(const struct device_node *device)
>  	const char *status;
>  	int statlen;
>  
> -	status = of_get_property(device, "status", &statlen);
> +	status = of_get_property(device, "barebox,status", &statlen);
> +	if (status == NULL)
> +		status = of_get_property(device, "status", &statlen);
>  	if (status == NULL)
>  		return 1;
>  
> -- 
> 2.47.3
> 
> 
> 

-- 
#gernperDu 
#CallMeByMyFirstName

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |


