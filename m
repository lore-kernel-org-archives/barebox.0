Delivery-date: Sat, 22 May 2021 18:03:06 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lkU5i-0005Zm-2O
	for lore@lore.pengutronix.de; Sat, 22 May 2021 18:03:06 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lkU5h-0004RN-Ey
	for lore@pengutronix.de; Sat, 22 May 2021 18:03:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:
	References:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GJr+lxStI9UtkquYzKZLSUUz0bgBOPz8dJe6vpCGHtM=; b=R9HOsRKR0mcp5sIhlphTWr/EeL
	dV4fOuxTdeLtLjWGqmaGpmdwqzKswJWAzysUX6+rz/u4GbmBgf8uY0Tsg94l3hsrCBFj8MKZBDITK
	6Rx/yskHVovJ9XLsxGVYoQKqVjY9+2qV+oJkj+KXcLdqJu0wB0FO7FmIHCE5T2KH6eOPAy7/0V6bU
	MphWzCUNufAgoLO5ELb3SQTDaKsGGPFygJd85a3hik1VgCygzw2xdiWlc16o9aVxzPl3HhEC5GYH0
	fyH5y+18K8oMvbCSxQ2OQj6ytqhULVHcmxzH3awHLfvfmY+ZfAoKp0KGipaJ7p6+kF54tXEK+v/vY
	9A66Ydcg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lkU4Y-002khu-31; Sat, 22 May 2021 16:01:54 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lkU4S-002khe-T2
 for barebox@desiato.infradead.org; Sat, 22 May 2021 16:01:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Type:Cc:To:Subject:Message-ID
 :Date:From:In-Reply-To:References:MIME-Version:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=/fj5pPIMR8OoZL+Gb1R9xfadEz5FB5mZs3r2c5f9+Jc=; b=kvvKv8ekaC/zoNWLoMPdmAb3yj
 /FY7dlt4b8oWebp4KCbWWS+/xIkcPPamucZlXD6350J6V0iATw3kq5UpOZYQbFGVUQa7ft0z6qdD6
 dv/Belur2601wJqHF9sRl48f5TJ1PRrEgI6l7QfSvTIqmZkhTCo/YiHJBKrk3RkwgE6iBa4mxV7aL
 lBkQhdKKuq5IyDidVEAFpQw9pcYlelooUGRGMiNW3hLdvUyHoQxHoBnCu832Y8NzyoIn6u8Br7F9V
 C9seusSh2V30tU4IS8RyQhVenoIiKPLsoWTKzJQUsbNxufPaF3a1bArKibfdH7fFc4Qdhu1DT1AwL
 ReIfLHRg==;
Received: from conssluserg-02.nifty.com ([210.131.2.81])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lkU4P-0008uv-RF
 for barebox@lists.infradead.org; Sat, 22 May 2021 16:01:47 +0000
Received: from mail-pl1-f170.google.com (mail-pl1-f170.google.com
 [209.85.214.170]) (authenticated)
 by conssluserg-02.nifty.com with ESMTP id 14MG1CO9024738
 for <barebox@lists.infradead.org>; Sun, 23 May 2021 01:01:13 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com 14MG1CO9024738
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1621699273;
 bh=/fj5pPIMR8OoZL+Gb1R9xfadEz5FB5mZs3r2c5f9+Jc=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=b1lkAeCs3/XR42dYJTxmsNCDYBHKfWfo0o1ZRgK3WkOcUNcs1ovxPJtPgBu1Xpklc
 qhaDXc5Wij2qbbXo65xhWeGfNAIXSNT8FvphLdKVlf7j7XR07UFTX9oumEuJnahmMD
 uVbdIN9HfHbnoxJhOfeV8OA1AoJjVk0TwD8bhV73wl64hrh2bGYGAalKwpYrgSQ52m
 csCQkiPxqObv0DmTDMDR/FSZ+pC9MsDAk/yZq9rcgAbwhRW4HPM6VcXaxO9UPOP1Io
 9OTjLUr1aq4QtFwioToHauiLZP7kQnC6yNilHFzpFpoyJ+VZ6EttGHOyMc1vtZZk5m
 cGPYkijM+SlAQ==
X-Nifty-SrcIP: [209.85.214.170]
Received: by mail-pl1-f170.google.com with SMTP id t9so4053191ply.6
 for <barebox@lists.infradead.org>; Sat, 22 May 2021 09:01:13 -0700 (PDT)
X-Gm-Message-State: AOAM5338Wb+wo6jqf8PTfCsO4M87DzzG8UU/HsV5uhgXkiN+rMCgtzC6
 djRJ0LvK7ZDaV2gzk5o9HFGq3sL4+Hvfto6Vqu4=
X-Google-Smtp-Source: ABdhPJy0NvaOGdSdSvt+pYVOdYTr1V85Uh+B91uUPU9mPsctF3Eas0vRb+0ssUZxy7dJ7Dt+FSu/nufC9yIOmSbQztg=
X-Received: by 2002:a17:90a:8b12:: with SMTP id
 y18mr15719581pjn.153.1621699272021; 
 Sat, 22 May 2021 09:01:12 -0700 (PDT)
MIME-Version: 1.0
References: <20210511150845.10973-1-masahiroy@kernel.org>
 <20210517065740.GF31738@pengutronix.de>
In-Reply-To: <20210517065740.GF31738@pengutronix.de>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Sun, 23 May 2021 01:00:35 +0900
X-Gmail-Original-Message-ID: <CAK7LNARKLsN2Eg7uyE2pFjKCkJkSzo4ByugSOwb+K7QPQjQK6Q@mail.gmail.com>
Message-ID: <CAK7LNARKLsN2Eg7uyE2pFjKCkJkSzo4ByugSOwb+K7QPQjQK6Q@mail.gmail.com>
To: Sascha Hauer <sha@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210522_090146_245095_4E4EEE94 
X-CRM114-Status: GOOD (  15.50  )
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
X-Spam-Status: No, score=-103.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED,
	USER_IN_WELCOMELIST,USER_IN_WHITELIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] kconfig: update to Linux 5.13-rc1
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, May 17, 2021 at 3:57 PM Sascha Hauer <sha@pengutronix.de> wrote:
>
> Hi Masahiro,
>
> On Wed, May 12, 2021 at 12:08:45AM +0900, Masahiro Yamada wrote:
> > The previous sync was Linux 5.9-rc2.
> >
> > Resync scripts/kconfig/ with Linux 5.13-rc1.
> >
> > Highlights:
> >
> >  - make header names in include/config/ and CONFIG symbols match
> >    (scripts/basic/fixdep.c was adjusted)
> >
> >  - remove all 'option' syntax
> >    (common/Kconfig was adjusted)
> >
> >  - introduce KCONFIG_DEFCONFIG_LIST instead of 'option defconfig_list'
> >
> >  - bug fixes and cleanups of nconfig
> >
> >  - drop Qt4 support from xconfig
> >
> >  - bug fixes, improvements, cleanups of xconfig
> >
> >  - print a short log for syncconfig
> >
> > Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> > ---
>
> This breaks building firmware:
>
> make[1]: *** No rule to make target 'include/config/extra/firmware/dir.h', needed by 'firmware/lpddr4_pmu_train_1d_dmem.bin.gen.S'.  Stop.
>
> This happens on imx_v8_defconfig.
>
> Do we need an adoption of 3470d9eb6387 any maybe more?

Yes, I think so.

Thanks.

-- 
Best Regards
Masahiro Yamada

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

