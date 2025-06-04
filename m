Delivery-date: Wed, 04 Jun 2025 11:58:23 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uMkt5-003c9F-2b
	for lore@lore.pengutronix.de;
	Wed, 04 Jun 2025 11:58:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uMkt5-0001Z9-5b
	for lore@pengutronix.de; Wed, 04 Jun 2025 11:58:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:Cc:To:Subject:
	Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oFWzYMe9saJ1aaRkBLqAQTAotMYeIkau5YYpG9GdjRM=; b=b9mt1dTaZwBIlZxu7wf/Ow55D4
	Xs/hGsdmvHatkxZXmSDWOIAgzmkkAoRVreW0hOaT5hf3dszIdsRAGJjLWXN0OsddB5+zSQeOGK256
	VDWynFTKBoUfH9EDzOJQHYvmu0VMWT2WIO3fuw4opGTNYsEDL+FQ/UanVCP7EsRUStEuVls9jbNbl
	bO5/TjKlEso4rWWFrDbY4keHtFTiqq/daMAaqcNSDWqWA9SaB3FBsbBJnGHimPSUqK9hs8JGU0VZ8
	QDyBuSxGnT2VrrDSonToedTKoZYwrX1Gu8BqbbO25dX9JbVaU7X4zXK8pYU2QsrDN/Ol2KxTwvGZD
	EJUpThtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMksN-0000000D5ID-1zyb;
	Wed, 04 Jun 2025 09:57:39 +0000
Received: from mail-ej1-x636.google.com ([2a00:1450:4864:20::636])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMksL-0000000D5Ha-1OGL
	for barebox@lists.infradead.org;
	Wed, 04 Jun 2025 09:57:38 +0000
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-adb5fd85996so644536866b.2
        for <barebox@lists.infradead.org>; Wed, 04 Jun 2025 02:57:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749031055; x=1749635855; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=oFWzYMe9saJ1aaRkBLqAQTAotMYeIkau5YYpG9GdjRM=;
        b=OSTmS05UV1TrrgpuXA+NlMEkUmuqrfSiO2M/rKjslVYv+z9FIr2kCStRSTa6AG9Y/Q
         mXhNygD89NpUKOOzCbtypABLsRqMosF061XqYDKmE20yRoE7srMvQKJi7lQx/guidlYl
         YaiSHzTnz1L/hMBxbdmDc+eHMu+eDqAA2R0FK2ZpFKNo98qpFCx95xV+rG6SBxIC6kUs
         i9KOH+5ZoLbXWXId+pyPAbWEA7FxioylePho39n9+WZI49PyBSODjMb/D9OH6FDcl02e
         PVZsf6HT63XVMQ0AoqA5nk4gHjfkyTff5DHg1Wq6KrrOAObYHlNIV7LEp9qLyGoh+h0P
         aZMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749031055; x=1749635855;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oFWzYMe9saJ1aaRkBLqAQTAotMYeIkau5YYpG9GdjRM=;
        b=ZLOLAMl5YxsVAkuewSawkRhtQ4DCciEVrU6GLxw9ELq3x9MXTaF+7JhmyuUw3tWBxN
         BGiOuCK7F+C8oDhNI1DSp8ZKU30dF3katDwJnkKeyLbtrC3LxuQ1eFbwFtHHMdB3Tr0D
         sDhncMSMkUtqq7MtDSK1MybYMymPI9EZg4edQh5sr1zaWtiD2lhhvwZ/0F/D1t0vUfEN
         nl9XHtkU3lKYa4+Zqs0ERnDPlzbA1AZqovqNFQiTWbtw+illoar/us+mlbGQNYZtl6YX
         HQdJy4zjlvSJmCSTi1JRbqsjDtPCLC0/b6RyQoZnQW5hp7pyeWU47g00qZRMHi3UJlf8
         GB0Q==
X-Forwarded-Encrypted: i=1; AJvYcCUzM0LlV4iug//u6d41niF9eHLAhbr7Ua5Fhy4jZZspX31/RlD51BQpfJoNR7p8aHWMuK4fTRU5@lists.infradead.org
X-Gm-Message-State: AOJu0Yz2zB+TmrN/r2N0nkqxG4iY6iwW7WtG+aHrQID68Oo4dMLoeczn
	jOZY5Vf1cvBTsXS+QXHi+TVfCaHkkUzWEpZHZ7KYZpb1AbaQwKTTpgCJXZsgmu74M690tNwMzVX
	gzR1jWeE0yNN6BtO+0PnzrrupSENuWM4BhIOZAtgHow==
X-Gm-Gg: ASbGncvwndMOBljesP9OnNG6J+tpl/Rrn5V53H7tgnkFaD682x8pjFmkSdnD6qELQr2
	EJIfb053qu+KSAB4d0jDTle7M7EnMZPkAnRGAvR5UNfKA8AVUOcD+4vjJMYsFVr+tfrl8GIaHEj
	/zHWmtWMw0oSKfaeQMirTYcAoDsrUJdlIYaH4ukDHQxickRTxyRoRYTT6gNwGMr/+pNLsnm+J0I
	XfR
X-Google-Smtp-Source: AGHT+IElUB7nGZyYz3NfcN+wY7u5wUFXf/xFt8Db+0w3haR1EZxWm8N4fYvCuSRCHo4rP28BTf0rnwmsaV1pyjFTOII=
X-Received: by 2002:a17:907:728d:b0:adb:335b:decb with SMTP id
 a640c23a62f3a-addf8d1d6c5mr187252566b.24.1749031054894; Wed, 04 Jun 2025
 02:57:34 -0700 (PDT)
MIME-Version: 1.0
References: <20250603092044.1464440-1-f.pflug@pengutronix.de>
 <20250603092044.1464440-2-f.pflug@pengutronix.de> <569963942cf35755dfdf34b240c350986fda4727.camel@pengutronix.de>
 <6ce5c98c-4f8e-46f6-8dd3-7c911578feb8@pengutronix.de> <47261d55d72a6f34618ca9d4b86214f306a91f5a.camel@pengutronix.de>
 <f3f703ea-c7e6-4635-ace6-d5ccd0418c4f@pengutronix.de> <d6a0be9631286122e56fdfd87b9911c310554baf.camel@pengutronix.de>
In-Reply-To: <d6a0be9631286122e56fdfd87b9911c310554baf.camel@pengutronix.de>
From: Rouven Czerwinski <rouven.czerwinski@linaro.org>
Date: Wed, 4 Jun 2025 11:57:22 +0200
X-Gm-Features: AX0GCFvNbKq3wZyyz3uyLQEbgn8r4GB70O6A623YaYdCgs-XUihohuWocMz1mTM
Message-ID: <CAK8z29X9Hfco+SqQrSTifh6Tp8BBcEPQqkNewRYjKGpqOa5RGA@mail.gmail.com>
To: Lucas Stach <l.stach@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, Fabian Pflug <f.pflug@pengutronix.de>, 
	barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250604_025737_384373_1259BD63 
X-CRM114-Status: GOOD (  26.68  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] ARM: optee-early: invalidate caches before jump to OP-TEE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

On Tue, 3 Jun 2025 at 17:20, Lucas Stach <l.stach@pengutronix.de> wrote:
>
> Am Dienstag, dem 03.06.2025 um 16:51 +0200 schrieb Ahmad Fatoum:
> [...]
> > > > > I guess it would be much better to simply have the
> > > > > arm_early_mmu_cache_invalidate() as part of the Cortex A9 lowlevel CPU
> > > > > initialization at the very start of the PBL entry.

To add my few cents:
I have had customer systems where without cache invalidation,
imx-usb-loader would
sporadically hang. This hang was fixed by calling
arm_early_mmu_cache_invalidate()
in the lowlevel pbl code as well. Barebox already has i.MX6 boards
which to call the
invalidation early in PBL, but unfortunately none have a comment or
commit description
why.

> > > >
> > > > We don't have a dedicated Cortex-A9 lowlevel entry function
> > > > unfortunately, just some for specific processors, e.g. the
> > > > imx6_cpu_lowlevel_init.
> > > >
> > > > We could add CONFIG_CPU_CORTEX_A9, select it from the relevant SoC
> > > > options and depending on it, add the invalidation to
> > > > arm_cpu_lowlevel_init()? What do you think?
> > > >
> > > This would then trigger the invalidation even on systems that don't
> > > need it in case of a multiarch Barebox. There aren't that many Cortex
> > > A9 based SoCs supported in Barebox and all of them should have a SoC
> > > specific init function to apply the necessary workarounds, so I think
> > > it would be fine to call the cache invalidate from the SoC specific
> > > lowlevel init of those few SoCs?
> >
> > Fair enough. How do we know we only need this for Cortex-A9 though?
> > Couldn't e.g. the Cortex-A8 also be affected?
>
> We can't be 100% sure without specific knowledge about each SoC
> integration. Both the Cortex A8 [1] and Cortex A15 [2] TRMs define a
> reset sequence that mandates the straps to be set in such a way that
> the processor will clear all L1 and L2 memory arrays on power-on reset.
>
> The only odd one where the TRM doesn't even mention memory arrays in
> the reset sequence is the Cortex A9 [3], which pretty much lines up
> with the number of SoCs where we have seen issues due to uninitialized
> cache content.
>
> Regards,
> Lucas
>
> [1] https://developer.arm.com/documentation/ddi0344/k/Cihcbcgi
> [2] https://developer.arm.com/documentation/ddi0438/i/functional-description/clocking-and-resets/resets
> [3] https://developer.arm.com/documentation/100511/0401/functional-description/clocking-and-resets/reset

Adding this to imx6_cpu_lowlevel_init() is IMO the correct way as well.

- Rouven


