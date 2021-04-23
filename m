Delivery-date: Fri, 23 Apr 2021 17:28:05 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lZxiv-0006Gg-4m
	for lore@lore.pengutronix.de; Fri, 23 Apr 2021 17:28:05 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lZxiu-0006n8-Eq
	for lore@pengutronix.de; Fri, 23 Apr 2021 17:28:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=URMOYoJHbdj7Pcq8Jr7xQtdRyPgBAvmjaD372kxUVGM=; b=C6d/6xwZX53annwkTwDscPQpy
	tEpCKKgb4vaC8WzMKJDMTvsc29uyLuYKLXlk/gfBnSAhK+MpOhYE1i3mCBsOJMbTi3uiYy8P5yBDa
	5Arc+rU5JcxII/hLSsJwLeVRnwUmIB8TQYEvdlFQxrm36pFkDRloglLOJ2I4ryx6GEdrVijXo4nqY
	smN+8hXNkJYJ/xaQsAMxF1XFcB1vKIBKjH+l4ePDR6kV2+uZuEwtXg/9qWm4qA77v/jWUY4SGbvzC
	0/tTVIHM3Q2c7CHluV6VANWifbRlHZAR1BUpWUtqj06Lj0fEXtgPnvZAUkxwisxsACwxUZjV9+wfR
	pm2tFLB2w==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lZxhY-001lB9-Et; Fri, 23 Apr 2021 15:26:40 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZxhP-001lAr-0j
 for barebox@desiato.infradead.org; Fri, 23 Apr 2021 15:26:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:To:
 Subject:Sender:Reply-To:Cc:Content-ID:Content-Description;
 bh=Ce18NVKOeLD97miAiXXGyB/XNkYPzwd4Obv036HoF5o=; b=ZJytjFNZposXz3flQkVpVRzpYm
 TdHdve9qLZB99aQHVsE7xEl/+pJJaNs6D+J7e/udLHOtgxc2ACXqj5NZIew0v/+VhsLoFhbwdXxrB
 itf2D0y2kQ3iMn30TKvoSw07H+nCfHWPeJxjzep6p1egj2+rkH25Qm2jicFBDwogV4bmQAS+RVemc
 a3e9xdpM/GI9rhD1xuTrYTY2UD6znW1jltYbFBfcxajfzvPZnJNU7WSZGLw5BPLnB4u8tiGacJBtH
 S4dxqvJ2xgodLPEKamCQ4dvG6ffnHVOAgx39Jy+AcyjbhVJMEK6gs7Rg7+gjrsR+YoRnkxcAIU/Tn
 kTzudvKw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZxhK-00EVrn-Ja
 for barebox@lists.infradead.org; Fri, 23 Apr 2021 15:26:28 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1lZxhF-0006jS-Vi; Fri, 23 Apr 2021 17:26:21 +0200
To: Oleksij Rempel <o.rempel@pengutronix.de>, barebox@lists.infradead.org
References: <20210423142829.29468-1-o.rempel@pengutronix.de>
 <20210423142829.29468-3-o.rempel@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <e2787ffc-cdcd-9b94-fd8e-2e64616f3c47@pengutronix.de>
Date: Fri, 23 Apr 2021 17:26:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <20210423142829.29468-3-o.rempel@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210423_082626_675956_7F29656F 
X-CRM114-Status: GOOD (  15.10  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 2/6] ARM: at91: xload-mmc: add
 sama5d3_atmci_start_image() helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Oleksij,

On 23.04.21 16:28, Oleksij Rempel wrote:
> +void __noreturn sama5d3_atmci_start_image(u32 boot_src, unsigned int clock,
> +					  unsigned int slot)
> +{
> +	void *buf = (void *)SAMA5_DDRCS;
> +	const struct atmci_instance *instance;
> +	struct pbl_bio bio;
> +	const s8 *pin;
> +	int ret;
> +
> +	ret = sama5_bootsource_instance(boot_src);
> +	if (ret > ARRAY_SIZE(atmci_instances) - 1)
> +		panic("Couldn't determine boot MCI instance\n");
> +
> +	instance = &atmci_instances[boot_src];

What's the difference between slot and instance?
Looks to me like you could drop slot in favor of instance and support
booting from any controller with the same image?

> +
> +	sama5d3_pmc_enable_periph_clock(SAMA5D2_ID_PIOD);
> +	for (pin = instance->pins; *pin >= 0; pin++) {
> +		at91_mux_pio3_pin(IOMEM(SAMA5D3_BASE_PIOD),
> +					 pin_to_mask(*pin), instance->periph, 0);
> +	}
> +
> +	sama5d3_pmc_enable_periph_clock(instance->id);
> +
> +	ret = at91_mci_bio_init(&bio, instance->base, clock, slot);
> +	if (ret)
> +		goto out_panic;
> +
> +	at91_fat_start_image(&bio, buf, SZ_16M, boot_src);
> +
> +out_panic:
> +	panic("FAT chainloading failed\n");
> +}
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

