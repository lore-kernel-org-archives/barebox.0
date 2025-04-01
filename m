Delivery-date: Tue, 01 Apr 2025 14:00:15 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzaHv-006ymu-0S
	for lore@lore.pengutronix.de;
	Tue, 01 Apr 2025 14:00:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzaHu-0002qD-JO
	for lore@pengutronix.de; Tue, 01 Apr 2025 14:00:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:Cc:To:Subject:
	Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DfInEcgkY15hkKo+35J0hJ99bhxfRuV9IEIBWT2wug0=; b=IsLs+6NdVy6DcQ7GhE3bwgwQgj
	2rXiMs4PZJ8d6mY5oI3K98m0y1K6BiHKHdeTyWa+8DydBDJiAks+NvUTAVDoeTnRThlt/XpmmQtca
	D6ZrbvvQuYMtuzohSankMlleDXQ/z6FGt4rSRX0ofCpycuMv+Xu6Va3d9F/uInVDzWQU477dc4sRn
	DXCN1Sxnwvpak57RGVj8x/VdxsPayxx6ricMhzg8VwkyF9uX5ddTHc4brVTYAG6gLU/Tz23MVBT6g
	TPZ3KxU/iK2KzVtBqcnNRhCqDjIs1KqyYmSr9Euyf6um0+pOUHRwGeWFa3SYVKUOsbCJ+fkbtijwn
	WuDgWaQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzaHM-00000002rwG-0FYx;
	Tue, 01 Apr 2025 11:59:40 +0000
Received: from mail-pj1-x102a.google.com ([2607:f8b0:4864:20::102a])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzaEY-00000002rKG-3DRn
	for barebox@lists.infradead.org;
	Tue, 01 Apr 2025 11:56:48 +0000
Received: by mail-pj1-x102a.google.com with SMTP id 98e67ed59e1d1-2ff85fec403so12259963a91.1
        for <barebox@lists.infradead.org>; Tue, 01 Apr 2025 04:56:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743508606; x=1744113406; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=DfInEcgkY15hkKo+35J0hJ99bhxfRuV9IEIBWT2wug0=;
        b=koSCimcnKTUtzpMl2V6+JW7lJwXJ1D16+RiOr/0UNEgrGqoA80s0Qs0KVwJjuGL7l0
         HgxwAjdv1D8TknBZk7TPhvs9EopuT6vJYM2Q3vgf4n+Ga9lNs26u7ZGvYYA3qeTrxM29
         8g36VEsy3BrMDAZ6MfgxMykiJ6fzeSDsg/6jm9Qz7nBSjb5ygRvEoJfhbTVgcHTqZ/Be
         LQTWEqnianCMZuqYEPQHQZpUXmsPe8GDtMWjsL02zdffUfQY1AVSh1OxrjSAPCtP0Wge
         lxFhBIjNnSKl/9U9C1MV2Y8VB0NsQizXnHhAqvMfCp7c7eoe7O2bWGVk+U3ldLu+bKhl
         fiNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743508606; x=1744113406;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=DfInEcgkY15hkKo+35J0hJ99bhxfRuV9IEIBWT2wug0=;
        b=U548zYUm/DzTZYWV55uqCIMNqd8WiBXT6Fvyox7vuaSq/jZpAID3qhiPvvLD66e0xF
         VWC1NuXNgYOSx2QdQDsN1NKxtwKXwYwr7ki8567+3Snghhvz8efdtEqSsjRlilD0JYjX
         knIzpd7hJno04Xd/+caOMZ9mHilauthcu0DdgfYnuOiwJKzKt1IW0rKMagO8wlyyX5w6
         TmF7WlGRdGu8/Qt0uxweIbwaVM8O/CiuPhwVz0wExT7Hwqwvhdn1S2biTwYEcmXEBIPr
         c8H1FldpZh8rwAvSE6eEXgmBEC9ayG8r5lvwVV3079UAuA9vx+UhkSb55EqVz+22hncI
         2oSA==
X-Gm-Message-State: AOJu0YzqIlpE9nUpB/6MGslRQU6PW9tXBcko3L5PUE1yonHGkz5ahDbJ
	Qi/h6NT5yvGuG57VIsVR28WWgj/ujZbFTUNDDUL31UM3trnbbe17hIRNKtG7sQHMobAGD7TLuoI
	C6eN5DyAI8DtUvyL2bBRl5z5FhORG3fUlvbk=
X-Gm-Gg: ASbGncuv3+XqueefTp9bYUgMc9kE4eVDfzSI1Fyy6zUBe6jm4D0mhWSrxIWnRtCV7/E
	DlU9NTWkumEzNXKHKMEw0HjHcez+Yht3JVFN/s9WxPnpxriPGVco1YPtYbyaRNvYu/lp+XnBIGn
	tgC142naqEPXVHuINEHaIVYUss0YM=
X-Google-Smtp-Source: AGHT+IES+F/KVDPrm/V0MIE/GpjpR38YxeZ7JMYXy0AND1GDJHRrx25njXGmwyQi0Jq5JE8HULra5DHw3NndzMvbABI=
X-Received: by 2002:a17:90a:dfc7:b0:2fa:42f3:e3e4 with SMTP id
 98e67ed59e1d1-3051c85e607mr23218017a91.3.1743508605829; Tue, 01 Apr 2025
 04:56:45 -0700 (PDT)
MIME-Version: 1.0
References: <CAP1tNvQiAqipRwBp9MBcOrPEQnbtqxr5GVZQ0vWhOnzhn3Wijw@mail.gmail.com>
 <Z-uZfXkw7pCkeD_4@pengutronix.de>
In-Reply-To: <Z-uZfXkw7pCkeD_4@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Tue, 1 Apr 2025 14:56:33 +0300
X-Gm-Features: AQ5f1JpgNMZrbsdupi0g0sC9Yyc2PqhSW1S4whQyqQfzCu8gN-yO9mTtnAkujNA
Message-ID: <CAP1tNvQ3qtYdsBE5W2Ep3Wz1em0GqGJamW0zQapu73bywFCigA@mail.gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250401_045646_802883_427ACBBF 
X-CRM114-Status: GOOD (  14.14  )
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
Subject: Re: NOR damage problem
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello.

> > Found NOR partition damage after use ubiformat.
> > There is a NOR memory (256M) connected via atmel-qspi.
...
> The messages above say that 64bytes were written which matches the
> number of bytes that are corrupted here. Maybe this can be a starting
> point where to look at. Also the 64 bytes were written without the block
> being erased. You could erase the block manually before calling
> ubiformat, then you could see what the code really tried to write here.
>
> Just an idea: Is the size of your Flash correctly detected? When writing
> past the device then the write operations could roll over to the first
> block.

The problem is more complex than I thought...
ATMEL QSPI only works in the mapping range up to 128 MB,
larger chips will not work correctly.
To solve this, we will have to update the spi-mem and atmel-quadspi
drivers and add spi_transfer() support to the driver (and in the kernel too).

Thanks!


