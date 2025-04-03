Delivery-date: Thu, 03 Apr 2025 16:26:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u0LWg-007r3D-0w
	for lore@lore.pengutronix.de;
	Thu, 03 Apr 2025 16:26:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u0LWf-0000eS-ON
	for lore@pengutronix.de; Thu, 03 Apr 2025 16:26:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+OwD8mX9hbfbNRcvrV9XRgfEkk7Bqh6zg7kGtfnS1KM=; b=3n8Tp8Krf0TugnuLttcEEX7KOS
	G1b7hCihDLNTFqhqHT+EV5EjoYYSuydOWyTfSgecToApf8WP82CSAgypT+47orTmLsupStN8tzWgD
	THuGJlKtLt29vTZHIPXjx3TcxVSriGmcEofnQVHAJs0YEL/EwZV4oe2ahL1eu2vqkSmdDl+GDLWhK
	Ej5H3BOaRp7z3+Cs8i23Squ07fEI5x8VSN5jHgubPl1AlV4fEmI48FTaagw4tj5fNxdh7YnuGJmd3
	sVUKRGuiCKZEJjaUxhUS9zlagmdqJqyZZuM/HJL+rImxS0aMRwxzdplgEsNxNMcj8UHgIgsw8OIg5
	lVcS71Lg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0LW5-000000093z2-3U1j;
	Thu, 03 Apr 2025 14:26:01 +0000
Received: from mail-pj1-x1029.google.com ([2607:f8b0:4864:20::1029])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0LR0-0000000935D-1Jou
	for barebox@lists.infradead.org;
	Thu, 03 Apr 2025 14:20:47 +0000
Received: by mail-pj1-x1029.google.com with SMTP id 98e67ed59e1d1-30185d00446so824015a91.0
        for <barebox@lists.infradead.org>; Thu, 03 Apr 2025 07:20:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743690045; x=1744294845; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+OwD8mX9hbfbNRcvrV9XRgfEkk7Bqh6zg7kGtfnS1KM=;
        b=lURd9qwFBKn/6JUKck0QbaIGUJJPK6/XQVEWOXv1edOFD/cD+yTxm1D3NEfXkktfQp
         5RU5ij/ERf9/y3t8Pp/+cO+RBiazYwM01HRFHIBBAOpi8J05TBp0pR0nkiWW1qqW0lAm
         zmukoulkdzpPqpnzCZrwMfUdwO1EmFwKD2o/RlJeMKqWAfAJOJBg6CJT8QuU8CzdrM0p
         kPPlhcQoeG1sZRYc/OZbhGPBXCChcYaRwzyOZ3TAiVCjyJJlLFsqdzOjr1IsPc9fMgIq
         hG4IydDsuBX2UysmBrhWo/inGRNgddikGwI74nJ70Q5/1m7/Eom9mbwdS7lgHGyynDQr
         /pYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743690045; x=1744294845;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+OwD8mX9hbfbNRcvrV9XRgfEkk7Bqh6zg7kGtfnS1KM=;
        b=ZnrlCLHkd2usD/Qj6RjflY+YEiSoqZxzGcgqbTdZqHyAsVG2wLchWvFljOlzfxxe/7
         EuRJghXz24UeABMlVS9EBz9AjfoP77p2FH0ICJ8Iije/gMAbAVX4kungWgLlQ8Ctes52
         gL8/oHpKx6JAmhiuQqWTb5PuIx0Ray9beTKM0i7wZfFHG+J/Hs85JL/CrMCyNkL+4mM2
         8hqXdlDicwa+qB+qfjmp/Hjm0zagmQajCJ/P5Cdw7Pq1K1rvSRebdiSG73mAyT9SfTmb
         0fuB4JF+gpgx99jLv1MCdsgwg8txJZ9ZwauCSM5gGlsKpbjp+cK8zMLBkCpdlQG0MX1L
         e5ug==
X-Gm-Message-State: AOJu0YyV6zYkDr8rBs8szjEfdehw9etBacjNnNrDvD5lODMjLf2MwRSD
	GyDTsSA6pMAR8Yk66ZJI6rmgneAFAPa/FXXcNq6Lad3RpLS3lxBTT1t2BUSKy1FR1PibxaD9oBV
	ZDLVsbafZHN3xwPG6FL5uI4CUvoowDqef
X-Gm-Gg: ASbGncvf71uHTSi0+as3oB8lrjJ4FoXjzUcwEMRGse/fxrDgmOKzSAYgbSqK/acbk4B
	v1EUFSx5JbMyH/Eh+fX0DL4trKMBaewchNGk+bVdJ1KbQbQ7XhPhq0MXhzEvmv3+LbzFUQmyNxf
	0QnzGw689bYU+D78l6j4m7kBqi62g=
X-Google-Smtp-Source: AGHT+IGlR/1Ck15UZnPxmbluQSZ88VtQk9Nbehcr0ahH8Z9C85ghiM9+z4NZn3EK1ZneJVryMI2PNowZ88V5V5aTVH8=
X-Received: by 2002:a17:90b:5251:b0:302:fc48:4f0a with SMTP id
 98e67ed59e1d1-3057a3af91fmr4985640a91.0.1743690045583; Thu, 03 Apr 2025
 07:20:45 -0700 (PDT)
MIME-Version: 1.0
References: <CAP1tNvQLfni2s37JYe-hDBxQfWLc2TNhrypH+-bicWXmW9o6Og@mail.gmail.com>
 <Z-6TBYRYiazahICg@pengutronix.de> <CAP1tNvR6mxe8gMSb05U20GdGqaO4N9zq-7so74+fm0DJ0iopVA@mail.gmail.com>
 <Z-6WbLbIkVS_wvLj@pengutronix.de>
In-Reply-To: <Z-6WbLbIkVS_wvLj@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu, 3 Apr 2025 17:20:33 +0300
X-Gm-Features: AQ5f1JpbgwK7Q12_ZzBiVFPYd_zJ8R_EJ90M_OTh2vZEcdGr8jcTZW1_4SPyXhM
Message-ID: <CAP1tNvTfCC=f+naoA5MJXnwr8EGxL2wEsMpOVbKWGBjb=CGztg@mail.gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250403_072046_374462_039336AB 
X-CRM114-Status: GOOD (  14.70  )
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
Subject: Re: RK3588 CPLL question
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

I found this hack:
https://github.com/u-boot/u-boot/blob/master/drivers/clk/rockchip/clk_rk358=
8.c#L1933

=D1=87=D1=82, 3 =D0=B0=D0=BF=D1=80. 2025=E2=80=AF=D0=B3. =D0=B2 17:08, Sasc=
ha Hauer <s.hauer@pengutronix.de>:
>
> On Thu, Apr 03, 2025 at 05:01:05PM +0300, Alexander Shiyan wrote:
> > Thanks Sascha!
> >
> > So something is wrong here.
> > At least the GMAC0/1 interfaces end up with the wrong frequency.
> > I have another image with u-boot and Rockchip kernel where CPLL
> > is 1.5GHz and network is ok.
>
> The only place where the PLL rates are configured in barebox is via
> assigned-clock-rates in the clock controller node. PLL_CPLL doesn't show
> up there, so I would assume it is just left to the default whatever that
> is.
>
> You could chainload barebox from U-Boot and see what the CPLL rate is
> then.
>
> Sascha
>
> --
> Pengutronix e.K.                           |                             =
|
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  =
|
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    =
|
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 =
|


