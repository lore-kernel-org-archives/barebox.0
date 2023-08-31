Delivery-date: Thu, 31 Aug 2023 08:41:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qbbNQ-00Fbe1-MY
	for lore@lore.pengutronix.de; Thu, 31 Aug 2023 08:41:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qbbNO-0008FT-7n
	for lore@pengutronix.de; Thu, 31 Aug 2023 08:41:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:Cc:To:Subject:
	Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1piDWR4WlCPSbso+39YCG+cYyQcat5gZSZyLu0iIFNw=; b=mehCyghoi9XE9uBvBF2nKGikZX
	K0VAugPTwgcQIC2i9+XCWzUBu2w6wQgOkDqBSy1ZA++kX7IQIaLZNJ0D3yeIk2C+aYrgKsTMJAQFX
	DeTiYfBsZxdOJ2OaTYdvGa8eSfRXBmh2cuz8TyfUaQOo26jkE8flUqM3Vkej2riE/0Fn+j1SxaBsh
	qGMOU43LRdiXs5oFfQvDKNth1huUTvJstza7sHclYv5Aiiai4iGZqXLhfrA6kdwFHcCfE4R88yjld
	E6jxLDXzScnY6d6aV+gVeRVxlL6WdoJBepMTXyVU8pkV9/Y/dvcMf1kn3+rWDgcuELd+IhfjWKDfA
	Ow75SUCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qbbM2-00Elfm-0d;
	Thu, 31 Aug 2023 06:40:34 +0000
Received: from mail-pg1-x530.google.com ([2607:f8b0:4864:20::530])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qbbLy-00ElfN-2n
	for barebox@lists.infradead.org;
	Thu, 31 Aug 2023 06:40:32 +0000
Received: by mail-pg1-x530.google.com with SMTP id 41be03b00d2f7-56b2e689828so421438a12.1
        for <barebox@lists.infradead.org>; Wed, 30 Aug 2023 23:40:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693464028; x=1694068828; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=1piDWR4WlCPSbso+39YCG+cYyQcat5gZSZyLu0iIFNw=;
        b=BuYp32PAmGELmPBneVaHNZD6WuWAzdHwu9Bo3h1vGzOeOXzAJeSVSnZAW7pZV18h8j
         n69FKWaI0k2o2T51i+4Idye6taCcsdAd5v/wGDWKMsAtTImPQL2XhdPkT5yFwe9oCXpK
         mEyNe9/LTu2AVD+L93zf8LIXd7esUPskZM667V/Ighhjn3n3TXwHNdWkXDhkfbEW84J2
         qlKkoTOKYmNFbr8VRLRYp+Jq6jKPg0WETjWxVrRBrCVJiCWRYflp9kID8ebTbW83zF36
         gPPVvvkAfyIP5AHVd2Ixzu/MVWeqi/LppE3cGlPNLOtbO3VFYhfOhLaK7EuMb0E45x4q
         mNSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693464028; x=1694068828;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=1piDWR4WlCPSbso+39YCG+cYyQcat5gZSZyLu0iIFNw=;
        b=MHaI0UFPU/8KOTtqHB5GBq1pGx0I6oZwu/ec9TL4BXo7BLe1cScX+23n5tS92I/hMU
         nVfvZN63qv2ejUhnsNisKbMngRZUiDEtTIrg5xX2cEdoLs80cMi84LKbRfkIdbm7yLJj
         Yw0ARbOg4SNXdN71aV4qanQtl1mAhZ9gONMVoWPXIAzSC7ApKCY84fl+TkjXSnm5t3l8
         pLhtcsTfnnJkwe9OFN2wFl5j6B5f34tCzfu5iBXNkpiCJaU7+6Zr2QybFPmPJPAe2Rfm
         iDVwq6Imk3iL+HlZTnPl/ql/bLn2HGlIDYhl6kWllWtNW8KlgDLiYtOHXh12sep1Aqpm
         ADdg==
X-Gm-Message-State: AOJu0YwwwenVALCjcrhK9gU/8A2KBdONpY77675LFCp46DJkir8qJb6C
	R0ioDg4fkm8bviFdu9khtViGAcBYJNSk7uDCwXd0/n8fuGH6Uf6V
X-Google-Smtp-Source: AGHT+IGPo8rMYlsTp8ZtxGm8tzPihJtfIPEzlNM8YcF65FH7mdtSA22ORhnqsjGuqrNX6j7oLSjfOl5yagn2RDIqhgE=
X-Received: by 2002:a17:90a:be06:b0:26b:3a18:3559 with SMTP id
 a6-20020a17090abe0600b0026b3a183559mr4286831pjs.4.1693464027816; Wed, 30 Aug
 2023 23:40:27 -0700 (PDT)
MIME-Version: 1.0
References: <20230830104747.43193-1-eagle.alexander923@gmail.com>
 <20230830104747.43193-3-eagle.alexander923@gmail.com> <aa20d72f-8cb6-7b51-9ae6-2f8d15d6c690@pengutronix.de>
In-Reply-To: <aa20d72f-8cb6-7b51-9ae6-2f8d15d6c690@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu, 31 Aug 2023 09:40:16 +0300
Message-ID: <CAP1tNvQdQUhy_YcY_afTYQyHhgRsvhY5BEdu+p6Y+3oXVUX9nA@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230830_234030_907178_F1CA3F1B 
X-CRM114-Status: GOOD (  13.33  )
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

Hello Ahmad.

> Thanks for your patch. A few comments below.
...
> > +ENTRY_FUNCTION(start_stm32mp15x_myir, r0, r1, r2)
> > +{
> > +     void *fdt;
> > +
> > +     stm32mp_cpu_lowlevel_init();
> > +
> > +     if (IS_ENABLED(CONFIG_DEBUG_LL))
> > +             setup_uart();
> > +
> > +     fdt = __dtb_z_stm32mp15x_myirtech_myd_start + get_runtime_offset();
> > +
> > +     stm32mp1_barebox_entry(fdt);
>
> Same question: Do you use an old TF-A or why do you need a specific entry
> point instead of barebox-stm32mp-generic-bl33.img?

Initially, I used the old version of TF-A, to facilitate the first
start-up of the board.
Now I'm using new version and FIP, so yes, this piece of code can be removed.

Thanks for the comments on the patch, I'll rework some parts of the code.

2 Sascha: Is it possible to commit the first two parts of the patch
now to minimize the overall work?


