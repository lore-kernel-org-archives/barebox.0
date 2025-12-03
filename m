Delivery-date: Wed, 03 Dec 2025 16:12:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQoWk-007YFg-0R
	for lore@lore.pengutronix.de;
	Wed, 03 Dec 2025 16:12:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQoWj-0002WU-7u
	for lore@pengutronix.de; Wed, 03 Dec 2025 16:12:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TmLhHDnuCTdxEX6tUFe+3cDvWMSs7OocnPSFfisaK/A=; b=zo1pdlrpv673whVaKSA89dYsMI
	HuZxKS+wvjTaAeWVs1SlhW64onPb5Bn6nV5/3ANLGB7Vz6gnjG+GewZLRHqOn/d2l8uYTTAHpem1R
	HSlKZm8kZURJCcdjzFwYgFl5fLul261dWLPyC9wSQOJvpXezC5vwybfuvOlMnySqhHA7X20bjk34/
	04VvSAO4pa1hninL00dN83yt3uWnq3u8dY+q/dSpMML4VeX7nDLdhSjoOQ0ZdMfby0fzft4YKdeml
	tj7SKrj8Iq5yt7BcIXbIVafeMKn47ed8C27cpnDqM0Qc8SaqdEYJI0rmwfpft9daHitGC3bvJlhKK
	O8ELY00A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQoW3-00000006gSa-233V;
	Wed, 03 Dec 2025 15:11:39 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQoW0-00000006gS9-3d3V
	for barebox@lists.infradead.org;
	Wed, 03 Dec 2025 15:11:38 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-47796a837c7so50599265e9.0
        for <barebox@lists.infradead.org>; Wed, 03 Dec 2025 07:11:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764774694; x=1765379494; darn=lists.infradead.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=TmLhHDnuCTdxEX6tUFe+3cDvWMSs7OocnPSFfisaK/A=;
        b=eS34xrrRW6UBZmhvikeqEEEzmgZvFYGfP5H6a8nC1+1wX71GIc5sWaKM8P0ulOcVYu
         kRxx6nUz+PC36MnOux1ngHsNJU3KDCywtg3B+qfS0XTUtFm7r5HtCZuI+siMjUiVd7HI
         NRIzFxS3x3IqO7UCOcThWYwjMrLc6QE1pqxBeSOjROvMwSt3kN21lz6IXcmsnYkBwqh1
         vI4BtGzFXf/AKsFPicejEUWZQ+QoxMSx4liqnWJWmlZBNg35+dqKfW1itJROrrgkhU9q
         +pXIlDoey4qUPHa7btrcBR3eMzCSRXE0T4vkB5me/RaKm+h2V7MG2rjYgTbhu2qZ4J9z
         I6cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764774694; x=1765379494;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TmLhHDnuCTdxEX6tUFe+3cDvWMSs7OocnPSFfisaK/A=;
        b=cos1NKwgPtI2yfQnR/1spc7OGG3VrKBplk3UilVaFGXxfvvir6szFHs31zaN70xzEF
         xuMNHJGpfrMLC3m1O1fvigQErogHJbc0ddRoKE+iC+mXSPwWnyh38488dteXoRNrZ070
         fuNqOHEWX37Cmu9oYDCIpcn9I8RdROoU81IaPW0VJ58f+Z2jlxepN4f5Nyzv2YcnWafy
         XL99479x+NmHoX3Sn0irVZ+QJq9/fTFwXpglW/yTHEYdkguq3whAbaWCVZ7wxI6VYlmu
         XZOzQ3lONzmz7G0/0wuRBFvJvvljvHAyprk4T/2ax37Z2D+Fo66bZMA5/WVj5E4/kyxQ
         ei4Q==
X-Gm-Message-State: AOJu0YxQHC1MEAYDoBzJMUzPbmyLe04znDQPeS11OEHBgrJQzw5oxrx0
	MZfxQq9ibNbTYMOtFmX8KxiDx4/ykMK7/tKkuk3vAREZaxlAVpLIRsF5ak5l7g==
X-Gm-Gg: ASbGncuyHK0GZYEbadULlYKsBNCAYmoONVItpHLEzqK+K/j9TRciKLaO6ncwCO8Yap5
	vxofSC2Gog164OETaJQBptPDgoPHTsx0d19Ai20p/QpAEZddHPfGfLVPKA1VOQM/riqiVnVyk0X
	er2EwKeH7GX5FLNcFxx2ScO21LlkFssXrDux/Tq1nVm+EN8nH+HBzbTjSuC3H+pltw0Mq+x6W3h
	ZF50DZK0FbXsJGzA3mcrx0lHFkDmOO48UNMx3OboUq6ZxV94hw13Ga/Tx90U4yfQdmkCPqwu053
	xHIeYJGiTpmLkmY4I1l+f3cxLN22wivxHDnQhaAic9o7/X6j1zklZOGePGf1zRYayoBHtoCY3+S
	jud/fObdMy4TBYDvxEA6DvTLdz3wkBVecxRBv1eUIdElc10SR2tMYw3lZKjv0E1QUczQNdzUCCl
	AlxiRgjnNvvzpI3IEgbu+0oTrp3UvRDuUgBfkMsru9nnO+Hk9sX95kfbxpsOGIdCsVOnoXwOjqv
	3WSDphKnwCAn3co89Fl8wzoEU4fAmdi9827QMq7f8gBf5gUFVToR7B86CPjU39F9ee+0Mf6v3Te
	6+UPb243njZAf9U0wKHFvh0Zc6R+SLEn1b0r5Q==
X-Google-Smtp-Source: AGHT+IEmpo/aynxdsrurFxOoQEj/3mXQ5a9jLQ2p931w+fHBHKS0V3plb25guQB5qcXy6GJLPy1sDw==
X-Received: by 2002:a05:600c:198a:b0:477:5aaa:57a6 with SMTP id 5b1f17b1804b1-4792aef1c83mr27227015e9.10.1764774694154;
        Wed, 03 Dec 2025 07:11:34 -0800 (PST)
Received: from smalinux (2a02-8388-08be-f800-b582-e1f7-764e-a16b.cable.dynamic.v6.surfer.at. [2a02:8388:8be:f800:b582:e1f7:764e:a16b])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-42e1c5c3c81sm40125430f8f.3.2025.12.03.07.11.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Dec 2025 07:11:33 -0800 (PST)
Date: Wed, 3 Dec 2025 16:11:32 +0100
From: Sohaib Mohamed <sohaib.amhmd@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <uhhhpqmdhnuycj4harqiycdbczxaeu6qxn7jlsuxn33guklohd@2sfe4g66i5tn>
References: <20251128-avenger96-v1-0-009b13bd8df7@gmail.com>
 <20251128-avenger96-v1-2-009b13bd8df7@gmail.com>
 <aS1wGqrhGhU6XfIR@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aS1wGqrhGhU6XfIR@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251203_071136_958421_88FD9404 
X-CRM114-Status: GOOD (  34.27  )
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
X-Spam-Status: No, score=-2.9 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/3] ARM: stm32mp: bbu: add NOR flash FIP update handler
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Dec 01, 2025 at 11:38:18AM +0100, Sascha Hauer wrote:
> On Fri, Nov 28, 2025 at 01:51:18AM +0100, Sohaib Mohamed wrote:
> > Add support for updating STM32MP1 bootloader in NOR flash. The handler
> > automatically detects FIP location (256K or 512K offset) and flashes
>
> The "or 512K offset" part isn't implemented, right?

You're correct. Offset 512K is actually the default location for FIP
images in NOR flash layout. I will clarify this in the commit message.

>
> > FSBL at offset 0 and FIP at offset 512K. FIP is truncated if it exceeds
> > available space.
> >
> > The handler detects the FIP location within the image (at either 256K
> > or 512K offset) and flashes components to their appropriate locations:
> > - FSBL at offset 0 (first 256K)
> > - FIP at offset 512K (remainder of flash)
> >
> > When flashing from eMMC boot partitions to NOR, the FIP is truncated if
> > needed since eMMC boot partitions are typically larger than available
> > NOR flash space.
>
> I guess you mean that not the FIP image is truncated, but the input
> image (/dev/mmcx.boot) is truncated to the actual FIP image size.
>
> But like Ahmad I can't find this part implemented. Should we just drop
> this sentence for now?
>
> Sascha
>
> >
> > Signed-off-by: Sohaib Mohamed <sohaib.amhmd@gmail.com>
> > ---
> >  arch/arm/mach-stm32mp/bbu.c | 77 +++++++++++++++++++++++++++++++++++++++++++++
> >  include/mach/stm32mp/bbu.h  | 10 ++++++
> >  2 files changed, 87 insertions(+)
> >
> > diff --git a/arch/arm/mach-stm32mp/bbu.c b/arch/arm/mach-stm32mp/bbu.c
> > index 07b5111341..e8d0138cc7 100644
> > --- a/arch/arm/mach-stm32mp/bbu.c
> > +++ b/arch/arm/mach-stm32mp/bbu.c
> > @@ -193,3 +193,80 @@ int stm32mp_bbu_mmc_fip_register(const char *name,
> >
> >  	return ret;
> >  }
> > +
> > +static int stm32mp_bbu_nor_fip_handler(struct bbu_handler *handler,
> > +			 struct bbu_data *data)
> > +{
> > +	struct bbu_data *fsbl_data, *fip_data;
> > +	enum filetype filetype;
> > +	int ret;
> > +
> > +	filetype = file_detect_type(data->image, data->len);
> > +	if (filetype == filetype_fip) {
> > +		pr_debug("Flashing FIP at offset 512K\n");
> > +		return bbu_flash(data, SZ_512K);
> > +	}
> > +
> > +	if (filetype != filetype_stm32_image_fsbl_v1) {
> > +		if (!bbu_force(data, "incorrect image type. Expected: %s, got %s",
> > +				file_type_to_string(filetype_stm32_image_fsbl_v1),
> > +				file_type_to_string(filetype)))
> > +			return -EINVAL;
> > +
> > +		/* Force: Let's assume it's an FSBL and flash anyway */
> > +	}
> > +
> > +	if (data->len > SZ_256K)
> > +		filetype = file_detect_type(data->image + SZ_256K,
> > +					    data->len - SZ_256K);
> > +	else
> > +		filetype = filetype_unknown;
> > +
> > +	/* Not an eMMC image, just flash 1:1 */
> > +	if (filetype != filetype_fip) {
> > +		pr_debug("Flashing FSBL at offset 0\n");
> > +		return bbu_flash(data, 0);
> > +	}
> > +
> > +	/* On SPI-NOR, offset 256K is FSBL2. If we get a FIP image there
> > +	 * instead, let's assume that's an eMMC boot partition image
> > +	 * and flash the FSBL to offset 0 and the remainder to offset 512K
> > +	 */
> > +
> > +	pr_debug("Flashing FSBL at offset 0\n");
> > +	fsbl_data = data;
> > +	fsbl_data->image = data->image;
> > +	fsbl_data->len = SZ_256K;
> > +
> > +	ret = bbu_flash(fsbl_data, 0);
> > +	if (ret < 0)
> > +		return ret;
> > +
> > +	pr_debug("Flashing FIP from file offset 256K at offset 512K\n");
> > +	fip_data = data;
> > +	fip_data->image = data->image + SZ_256K;
> > +	fip_data->len = data->len - SZ_256K;
> > +
> > +	return bbu_flash(fip_data, SZ_512K);
> > +}
> > +
> > +int stm32mp_bbu_nor_fip_register(const char *name,
> > +				 const char *devicefile,
> > +				 unsigned long flags)
> > +{
> > +	struct stm32mp_bbu_handler *priv;
> > +	int ret;
> > +
> > +	priv = xzalloc(sizeof(*priv));
> > +
> > +	priv->handler.flags = flags;
> > +	priv->handler.devicefile = devicefile;
> > +	priv->handler.name = name;
> > +	priv->handler.handler = stm32mp_bbu_nor_fip_handler;
> > +
> > +	ret = bbu_register_handler(&priv->handler);
> > +	if (ret)
> > +		free(priv);
> > +
> > +	return ret;
> > +}
> > diff --git a/include/mach/stm32mp/bbu.h b/include/mach/stm32mp/bbu.h
> > index 233bcf6478..87b29f1527 100644
> > --- a/include/mach/stm32mp/bbu.h
> > +++ b/include/mach/stm32mp/bbu.h
> > @@ -10,6 +10,9 @@
> >  int stm32mp_bbu_mmc_fip_register(const char *name, const char *devicefile,
> >  				 unsigned long flags);
> >
> > +int stm32mp_bbu_nor_fip_register(const char *name, const char *devicefile,
> > +				 unsigned long flags);
> > +
> >  #else
> >
> >  static inline int stm32mp_bbu_mmc_fip_register(const char *name,
> > @@ -19,6 +22,13 @@ static inline int stm32mp_bbu_mmc_fip_register(const char *name,
> >  	return -ENOSYS;
> >  }
> >
> > +static inline int stm32mp_bbu_nor_fip_register(const char *name,
> > +					       const char *devicefile,
> > +					       unsigned long flags)
> > +{
> > +	return -ENOSYS;
> > +}
> > +
> >  #endif
> >
> >  #endif /* MACH_STM32MP_BBU_H_ */
> >
> > --
> > 2.43.0
> >
> >
>
> --
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


