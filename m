Delivery-date: Thu, 31 Aug 2023 11:43:02 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qbeCd-00FmcW-Ng
	for lore@lore.pengutronix.de; Thu, 31 Aug 2023 11:43:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qbeCb-0004AI-GD
	for lore@pengutronix.de; Thu, 31 Aug 2023 11:43:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:Cc:To:Subject:
	Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6KnTID/v/z9KuV/fnPR6Tlz+eZEdWhIDbaml7k+SfG4=; b=L+szxu3c0M6PJeReIc9ec1Tt9Q
	4l76ThkIXvSlCl6yCWOoVCmS4TEFZc9WLdDnYVgfS+xIZkZDHoTP1TGuswCZsfCiT4bNQID8tg2tT
	B5qse7za4xnMGfN0xb0WJ+63pAwHR0Ild6yPUck4guAusX3NdRYWExw5ldGRgrYbORJjQCsvhHiPe
	kGMPWXD8VpLgwmoOpwvt/l4FTV1PFt42nGmYfjUsxguufTwN/GdYkIz5LCBHhgaJ0i+dzwMPrq4rI
	Xs5aD6v3gbQMGdgptu6xzurRaDAP1broqsJQ19l7wGfIcAlJ8cKc1/C2KPY9kUIooLeCcAbcN7EMl
	mox6sgig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qbeBH-00ExvZ-38;
	Thu, 31 Aug 2023 09:41:40 +0000
Received: from mail-pg1-x534.google.com ([2607:f8b0:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qbeBF-00Exv6-1Y
	for barebox@lists.infradead.org;
	Thu, 31 Aug 2023 09:41:38 +0000
Received: by mail-pg1-x534.google.com with SMTP id 41be03b00d2f7-56a8794b5adso515230a12.2
        for <barebox@lists.infradead.org>; Thu, 31 Aug 2023 02:41:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693474895; x=1694079695; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=6KnTID/v/z9KuV/fnPR6Tlz+eZEdWhIDbaml7k+SfG4=;
        b=lbZjZyffwh3v7KjZwIqEaXB199xKJdeZRJSX4dfl0ZmQjWRV2TPD8mH8siv98XiadN
         fdvrjVSEDqcF0krMFbez01wK9KsFbxrOedjMpSx3vUc0oNXaeWhN+yLrUd1GsJwZbA4f
         qXZdBQf7+jUKlu56sJF4psWyNPWTy7Nw3k6rSZgDsFctCMTAaJROgvNr65uqOnDOXp1T
         8FiAthiLu/Bwb+6j5lB+iWz93j5L4l4BKx8MXmajOC4gdiTNJ2R3j3+HOrazdJR6gYyW
         8gaTQeK+48lAvhL16m0UKRfZtY4VVOC+P/WYapWc37UKSS3pWG0M73aH7GDy6X9xNe0a
         B2NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693474895; x=1694079695;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6KnTID/v/z9KuV/fnPR6Tlz+eZEdWhIDbaml7k+SfG4=;
        b=DYdEOJauFAmNJDEkuMdCAN6w7oWLjHDQ+BTi+6Uf1Waew12uiSJEfGaU0NCHqDhrZA
         gyDveXxz359fSohDNMdY9s/HNhdlWqlrkK1bXfvwtptdpUZJE7s3N66h1oK6GovPo7LI
         UzUOhB88IB9jmtlefZpYH+QHxbXb59QzaCaMageViUcA8f/X5ZE3c321+7L7vRR5X7UI
         Ue4XyEmuzjGEIUOYnIQ//oBAZXJkfj1JFdqh5AEcP4auUby7GSvyNrOJHCH8xro6YbHS
         hGhd8HB9V3d6d4mNe2ZIw1brzYVfWBzlZx86hVBMB3vKSQ0n+ydYa0HndcX8GQJhkEWL
         bDtw==
X-Gm-Message-State: AOJu0Yyt4xkPXSVWrqTg+9sl1YEGlFHC777u9SOHqeMR6FdWMneKGTA0
	l8K+zkcr5/8xwDBPs/gyrKbDRxnzkJkl5X3SPptc/gLE3nvGAq9O
X-Google-Smtp-Source: AGHT+IHLjQxY5KOfqjA3M2j+SD0A70bgR8RPVhIu2T4MZ+deHo85FGb+F71ATNtgU9+hOfyDQYMg8ja+eG+FeqbanAM=
X-Received: by 2002:a17:90b:128f:b0:267:f66a:f25f with SMTP id
 fw15-20020a17090b128f00b00267f66af25fmr4339311pjb.11.1693474895309; Thu, 31
 Aug 2023 02:41:35 -0700 (PDT)
MIME-Version: 1.0
References: <20230830104747.43193-1-eagle.alexander923@gmail.com>
 <20230830104747.43193-3-eagle.alexander923@gmail.com> <aa20d72f-8cb6-7b51-9ae6-2f8d15d6c690@pengutronix.de>
In-Reply-To: <aa20d72f-8cb6-7b51-9ae6-2f8d15d6c690@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu, 31 Aug 2023 12:41:24 +0300
Message-ID: <CAP1tNvQAWvbFSYe1MPa7f7RRB5PDOFP1EVvNF+ma3+dM5jPSdg@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230831_024137_539284_9D21E8CA 
X-CRM114-Status: GOOD (  14.17  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 3/3] ARM: boards: Add MyirTech MYD-YA15XC-T development
 board support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

> > +struct id_eeprom {
> > +     u8 hrcw_primary[0x10];
> > +     u8 pn[64];
> > +     u8 sn[64];
> > +     u8 mac0[6];
> > +     u8 mac1[6];
> > +} __packed;
>
> You could describe this as nvmem-cells in the DT and you'd automatically
> get the MAC addresses assigned.
...
> > +     if (!is_valid_ether_addr(eeprom.mac0)) {
> > +             int i, j;
> > +
> > +             /* Make fixed MAC-address based on serial number */
> > +             memcpy(eeprom.mac0, str, sizeof(eeprom.mac0));
> > +             for (i = sizeof(eeprom.mac0); i < len; i++)
> > +                     for (j = 0; j < sizeof(eeprom.mac0); j++)
> > +                             eeprom.mac0[j] ^= str[i];
> > +     }
> > +
> > +     eth_register_ethaddr(0, eeprom.mac0);
> You could check if the nvmem cell exists and only do the fixup
> if it doesn't. Check Marco's recent Debix patches for an example
> of how to call nvmem from board code.

I can't find a way to know if an MAC address that was automatically
assigned via nvmem is valid.
So in this case we always need to use eth_register_ethaddr() manually?


