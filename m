Delivery-date: Fri, 07 Mar 2025 09:24:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tqT0l-00Aw9z-0f
	for lore@lore.pengutronix.de;
	Fri, 07 Mar 2025 09:24:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tqT0k-0000hi-2E
	for lore@pengutronix.de; Fri, 07 Mar 2025 09:24:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:Cc:To:Subject:
	Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bZ8LU6RTfl1l/loZrYBP2HZYymemtpSoU2jPvHX46hI=; b=teoa7k2OedcgjvgVAnL8ABb8et
	RFMm4cIPxDx8x6aFciU0C1Xq76QY5J/mSlT1mezLuHx90aeJB4gG67BHDTyWjywy277quhJu8AGJS
	iuQZLoD1imNBy1f5S5kW/VZrSUrBOaIIKIF9SkccWu2Vm5skqsnAXxvaZT/uKJdkJhVH3yEGmcqXv
	lAv0vNMmRBGIKbiixaIIXoptaeeBar3e8vBpmOLh11e/BF2HWrSMBVFKOah3vZGoPCnelGRxWYLN0
	tl+HrN2EjcX3KnkrxWHdlimqEFZfttp0Fk+qj3+vI3JrxOb1Wr6Z9E/CVYUu7bk4mLFiPfWD4KMjV
	J//N12Mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tqT0B-0000000DYgy-0PcZ;
	Fri, 07 Mar 2025 08:24:15 +0000
Received: from mail-pj1-x102d.google.com ([2607:f8b0:4864:20::102d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tqT09-0000000DYgF-0cby
	for barebox@lists.infradead.org;
	Fri, 07 Mar 2025 08:24:14 +0000
Received: by mail-pj1-x102d.google.com with SMTP id 98e67ed59e1d1-2fec3176ef3so2436647a91.1
        for <barebox@lists.infradead.org>; Fri, 07 Mar 2025 00:24:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1741335852; x=1741940652; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=bZ8LU6RTfl1l/loZrYBP2HZYymemtpSoU2jPvHX46hI=;
        b=GHs4pyA2Nsmr969+eYDpQibEPRG0aQqs4QhgCOg0Z4QGtPzRcwVfGQCDE5eXbalnGb
         j2U82SizKer+ZXiIxy+v2aB49BycaO4UwSV5s1BckxHHnGAAJ530w9fxW2DBWcBJaOXD
         cqPjo+NaOpEg2YDlNUfDmwFr+tTZZu6rjd7kfmXueK+5pBWd0zdRzhx8LrmVnt5uNUCO
         56S77SydC3EFzs2tWhbtBMZ+tnhztUXC4nqQMcLoTF1xsv4eAzVrEWXbM/HTv/N14SjU
         9a8tedGLineOHger+w/i8sJvb57mM4e0+WzImk8Z8ttUWO9+ZwccWEKGOmZHhOdOFBAT
         0B3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741335852; x=1741940652;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bZ8LU6RTfl1l/loZrYBP2HZYymemtpSoU2jPvHX46hI=;
        b=u28NqQe+kjDXBBa8/sPa1VZ51arX+8G4XaSEI9FpCXo5b7BJI0M3gbGprdHHE93VvA
         JKEeae5IhRcRs6/NtOrnfgB+ShCTLmTmk4YCar9kEvV+ylRBOeo35BiJnoVFkBU7Z+3b
         PNywjOt6o4vC5OnG3t8yYAmYZwIAmZLhXOzkeY2Vt6l58pgsDXnAAS0NURlm4URqcusf
         ztWfnAATODT9wi4OQNehU7CR5o69M718LzoDMRQron/e0xw8iyMaJ4IjsTQR2PJms1C1
         A6rfxPUoFnTt4kNZeNOhQDPWnOepYUZ4ZqYNFxN7eXgPdenKp42odkBWOxQxtBdMOchv
         sJ0A==
X-Gm-Message-State: AOJu0YyFlYYDA5MCCqJfxL36gBPdcttuMssQUDSx/WOXGd9QiSsxY/Nl
	+6ziY42Sn8QsHW3JDluhH5hPsa7HntfIN+jCOm68i5aG0Y/xaykkc4NKcIBdbgQYSnRa8x7iEMw
	wvUJg9mqpNk2e2UzzmL4615KfbKsKK72x
X-Gm-Gg: ASbGnctC+RYDTo+14TeE7XISGgYevUGIAp5r14bc8EFaPrbJaaPLVNh9OiE83OxyB9h
	gYjAieX8WjbTJwtryurt3FKV+I2pNGptAI0wxgSraSQjaxWhkZ0YbrAV9rI0T+DTdy6g3EO2amY
	E3ju7dq2iLlz2InokacwkblZ1ZGw==
X-Google-Smtp-Source: AGHT+IG9s/ty3lAttF3VhWFReeYbMIgZvmpfpROh1B9QA2xiNhv5yP1Stvo1jruWI5WaNpxqvmDdnF2GH58uLN2SfE0=
X-Received: by 2002:a17:90b:1dc9:b0:2ee:96a5:721c with SMTP id
 98e67ed59e1d1-2ff7cea3e99mr3917045a91.21.1741335851968; Fri, 07 Mar 2025
 00:24:11 -0800 (PST)
MIME-Version: 1.0
References: <20250305062101.25588-1-eagle.alexander923@gmail.com>
 <20250305062101.25588-2-eagle.alexander923@gmail.com> <Z8qrxskIpfyBO74o@pengutronix.de>
In-Reply-To: <Z8qrxskIpfyBO74o@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri, 7 Mar 2025 11:24:00 +0300
X-Gm-Features: AQ5f1JoF_ilKHK3adzRrwIr5ruWntptvdL3bJqhYtic1tI1h_ufRo8B__uK2HMY
Message-ID: <CAP1tNvRyshvEEEumXZEfOQr475vDsaSovYtE2xLyLJL-AirToQ@mail.gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250307_002413_185281_D603A518 
X-CRM114-Status: GOOD (  14.08  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 2/4] at91: Use the ddramc driver for all boards whose
 architecture uses it
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello.

> > diff --git a/arch/arm/mach-at91/sama5d3_devices.c b/arch/arm/mach-at91/sama5d3_devices.c
> > index f6d5617e5f..4871c2bd69 100644
> > --- a/arch/arm/mach-at91/sama5d3_devices.c
> > +++ b/arch/arm/mach-at91/sama5d3_devices.c
> > @@ -21,10 +21,9 @@
> >
> >  void at91_add_device_sdram(u32 size)
> >  {
> > -     if (!size)
> > -             size = at91sama5d3_get_ddram_size();
> > -
> > -     arm_add_mem_device("ram0", SAMA5_DDRCS, size);
> > +     add_generic_device("sama5-ddramc", DEVICE_ID_SINGLE, NULL,
> > +                        SAMA5D3_BASE_MPDDRC, SZ_512,
> > +                        IORESOURCE_MEM, NULL);
>
> Is this necessary? I just merged your patch that says that all SAMA5D3
> boards are merged to device tree. The device tree already has a
> "atmel,sama5d3-ddramc" node, so there shouldn't be a need to create the
> device here again.

This series was created before I realized that board files for SAMA5D3 can
be deleted completely. In general, in this case it is a patch race :)

Thanks!


