Delivery-date: Fri, 19 Dec 2025 10:14:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWWZM-00D9Iv-1z
	for lore@lore.pengutronix.de;
	Fri, 19 Dec 2025 10:14:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWWZM-0003mh-1w
	for lore@pengutronix.de; Fri, 19 Dec 2025 10:14:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jk5OO/OfhtS07V7ZmsofCsq7aMDd5VAQp1JK57pQx5E=; b=rcyXzn4n7TynKdNcwrzdl2R9CH
	wjiMCoiggjn90f8TCgBAIcFBCrXXBMUypQ7fOi5yU2s8g0pb7oqldZOm1rivgh/GoyXEkRtjTJ+w1
	RcvTDuQIuAyo8VedYtjU2Gc5W04rluVF34TyFXxwWy7TiWLS2AcP8rduWWY6Ug/fyS5SzUDP5tN3Q
	2tcTO4na6Ughcv5p2346/dWp/vcwT6w5r8wR+68AwbpYe4ZHfKyeg90mHlCA4T6c1bjeDSuS+yZsV
	yUydWNSmlyvv1NgAKHEqYCW6DwxWfkjwAG9Z5cr2p0Eg0sZZiVhAMsd5vnCvZfK8Pe4e3c/3QMVSs
	3akIrvlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWWYo-00000009uv8-0ree;
	Fri, 19 Dec 2025 09:14:06 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWWYm-00000009uv0-3kID
	for barebox@bombadil.infradead.org;
	Fri, 19 Dec 2025 09:14:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=jk5OO/OfhtS07V7ZmsofCsq7aMDd5VAQp1JK57pQx5E=; b=KUc+UPvOQwCLbuOAx3MM2p51pk
	YJjWnkrrlfWZlpPdSllPXRvzUUJvt2yFc2hfX3gAhs516T2Ts1WH6xs/CCtI6v4knaDI0BQZ2CtTY
	E7gd+Ioby98DyqFcyghM9BHm8gWvwSOyiRnsFgqF4OXRgn90tWAOirX+WbPfazhirGyVwbsxKPrwp
	5axFGklaW908aI61CzleHKedLE4WfzEngrLAad8nA3iKFNnR8mxviJYBEY0XfiluraFKNjACoTj0j
	ZgaU2xBOLMqb0Xazyf4jjEwYCvXdLh278bHQNYnT+cHKRax6FoB+JIceoCEnCxSaecw7nBa+naXfv
	BFVbt7WA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWVhH-0000000ASUL-1tBl
	for barebox@lists.infradead.org;
	Fri, 19 Dec 2025 08:18:49 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWWYj-0003iH-0r; Fri, 19 Dec 2025 10:14:01 +0100
Message-ID: <4114d7e2-9331-413f-9dda-b16b53ea42bc@pengutronix.de>
Date: Fri, 19 Dec 2025 10:14:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Fabian Pflug <f.pflug@pengutronix.de>,
 Marco Felsch <m.felsch@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20251219-v2025-11-0-topic-imx6-field-return-v2-0-2696ac61ae2d@pengutronix.de>
 <20251219-v2025-11-0-topic-imx6-field-return-v2-1-2696ac61ae2d@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20251219-v2025-11-0-topic-imx6-field-return-v2-1-2696ac61ae2d@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251219_081847_818819_0E27619C 
X-CRM114-Status: GOOD (  15.45  )
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
Subject: Re: [PATCH v2 1/4] arm: mach-imx6: use kconfig for field return
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On 12/19/25 10:06 AM, Fabian Pflug wrote:
> There is a Kconfig option for the field return, that is also documented,
> so using it here instead of providing a headerfile to patch.
> 
> Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>
> Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
> ---
>  include/mach/imx/habv4-imx6-gencsf-template.h | 11 +++--------
>  1 file changed, 3 insertions(+), 8 deletions(-)
> 
> diff --git a/include/mach/imx/habv4-imx6-gencsf-template.h b/include/mach/imx/habv4-imx6-gencsf-template.h
> index 45da2981cb..c24bf84b85 100644
> --- a/include/mach/imx/habv4-imx6-gencsf-template.h
> +++ b/include/mach/imx/habv4-imx6-gencsf-template.h
> @@ -39,17 +39,12 @@ hab Engine = SETUP_HABV4_ENGINE
>  hab Features = SETUP_HABV4_FEATURES
>  #endif
>  
> -/*
> -// allow fusing FIELD_RETURN
> -// # ocotp0.permanent_write_enable=1
> -// # mw -l -d /dev/imx-ocotp 0xb8 0x1
> +#if defined(CONFIG_HABV4_CSF_UNLOCK_FIELD_RETURN)
>  hab [Unlock]
>  hab Engine = OCOTP
>  hab Features = FIELD RETURN
> -// device-specific UID:
> -// $ dd if=/sys/bus/nvmem/devices/imx-ocotp0/nvmem bs=4 skip=1 count=2 status=none | hexdump -ve '1/1 "0x%.2x, "' | sed 's/, $//'
> -hab UID = 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08
> -*/
> +hab UID = HABV4_CSF_UNLOCK_UID

How can this work without a CONFIG_ in front of the option?

Thanks,
Ahmad

> +#endif
>  
>  hab [Install Key]
>  /* verification key index in key store (0, 2...4) */
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



