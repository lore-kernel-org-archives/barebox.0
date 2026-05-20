Delivery-date: Wed, 20 May 2026 14:13:19 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPfnb-001rKk-2F
	for lore@lore.pengutronix.de;
	Wed, 20 May 2026 14:13:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPfna-0000c0-Uz
	for lore@pengutronix.de; Wed, 20 May 2026 14:13:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eCqejs9SaGfLE0uSwePRzrvqHhUW9/cE843GD5UYRRc=; b=iu8XrtTK9O/JjG9Edsdbtl75c5
	OgTNPjuK9hTPxYoRGCrGNIxW6p71wFlptwT+zlt1To8OSvbsu44kWQ0xhV8vLNLvLnihigPLa7+RZ
	NhCFwC6w4n2S7IRhV91++iiBuktxXu4IBRarw1hEryJRUX2jP48LBh4qhhSyCY+V3WaXDH4kbtodQ
	32uxCCd9wlzSQSiHo0vYer56vm35620LKU/iG+XwBFBU99NS/zBCoJNOPZKqHzvuM9pAWCoSeainb
	zrdRkWHPnKdXHJ4S81AOhInqUzPNWwqt1rqiyd+wQmO/i1bLpfpLTNGLqeUAlEPIQG7SCFR6INnVK
	kUrtaeHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPfmK-00000004WsN-0zgP;
	Wed, 20 May 2026 12:12:00 +0000
Received: from mail-dl1-x122a.google.com ([2607:f8b0:4864:20::122a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPfmI-00000004Wrr-0Nso
	for barebox@lists.infradead.org;
	Wed, 20 May 2026 12:11:59 +0000
Received: by mail-dl1-x122a.google.com with SMTP id a92af1059eb24-12c8f9846c8so5567586c88.0
        for <barebox@lists.infradead.org>; Wed, 20 May 2026 05:11:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1779279117; cv=none;
        d=google.com; s=arc-20240605;
        b=P/KGNcX9q4f0N847qkBAXM7prMTDtwfRSN7h9SOLDrEvf/P+lfZLbfm4fTNwH8glw2
         K+A6czU5GtKZt/i2VU/LwN5iqQGTTG+Gben25wnCLS7Red2kNVbGp/DG5dFeCSvZM1+3
         aDmGHlgPl0jYXgoLnDg6RGNz1cDoKquMn6DGkP2lkJuwZrEyKP+OGerZyuKd2dDagQL7
         15A693IeS3FVAijqbhEkIkGm54nTKod81YToCZc0iUPfgtxhfYp1h5aeSlDWmJeWm2En
         rCg7puD8Ywv9DqlA3Zx2G2zax021dNqMFvPiIfl/AxhCpN9pea9qsktEg9ryi5YDSEHJ
         sFCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=eCqejs9SaGfLE0uSwePRzrvqHhUW9/cE843GD5UYRRc=;
        fh=QTl4aF0/iXkDY6Uf61Tk/V/7sh5GF70RwK/YHfa2l1k=;
        b=NWpqVM2c/yzvABn8zfCyRlkfbtiODWq7Nd78tznicCzwne9DbUs4TC+FeYgIGyMDHj
         DzXrTDwuQo/Hsw3C8E84To7GTVViFE21Q6sb7WUwgpaHIw3ErZPjg9c+14y7Ugouve1r
         z+OsX4BCV208gTNmZKJkjzJWuacqfo5eDciSLw/tP3Ef8ie1HSfwqyhlEoFVY3bakjfA
         Cfb7B52qJRsdnxu/uKwCeGdw8+N3eRE+MjK+F1rQFGCn5maW9EFTxdaJ7M7OSSjcHbk+
         FxYVBvxUtEHSp5/0NtJpYV81DgdS744IcXK6qysbaA9fKmrG9P+RMvAOv2F/6GRLBYpK
         3JjA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779279117; x=1779883917; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eCqejs9SaGfLE0uSwePRzrvqHhUW9/cE843GD5UYRRc=;
        b=UsTD1L2oQ2p66ayPbVZnYr8aO0JdiG68431a9HqET6fBNl+83a0g914AjRVH2eEyl3
         km8WJDXc0WXau3wHoJE6nG5xwDcCAtS/wWg4Bhicf9X/TdtoDYYhHn+TNRpFaQJqCMrT
         +Q5aq/QM6hL2eryevOjBGmCZAjD01MGIVQ8Qs0NMSpJAGpnFESdV8/1sklEN9vGU8JsJ
         c5a9gTs9/TyTE100kHF8/2GNmCVrCoIQMnkyh3j+ye8xViXP9lDw7NyPVwSUjw61YB5h
         t8torHo7sbMQebM1PX6HIM+Z8UHomV0t4lNa6C3T8GfU9Qh0K9fh0Vi/7R2vlRIwAdsB
         /jjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779279117; x=1779883917;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=eCqejs9SaGfLE0uSwePRzrvqHhUW9/cE843GD5UYRRc=;
        b=c0RlEPVhfBs+Ygsm8mgiafc11vNQfGWmhE53dZCeonhRkmGc9djg/HHazaD/fwSvhx
         b2SMeRvjqUTTk2rSWX3dYnSpsbUj2x8UxwVDOQ90PhwlilPVY9T3epbfDOsBqy9prjHS
         yDEBnE6qJ9pNI/D+jJPdREsAmzEv0TaD5Z1dFNRCTFdxQW+A6SoRG0/FnND980sDqxp9
         Z/DQoMTln7eCwxeTMZmwIZALOoFjWng0VB2r8CDh/bODwj0qBUVEOlBt6AecX7x+rBYY
         ucPz8trfCSNQfq869e2n1Y+WBvOJYvwfeUr0EBtxoD5s5tDVvUYoVrhnx3k8WLNcUeA2
         hu8A==
X-Gm-Message-State: AOJu0YzUotFtxFyzynBTDCBG2P/0Zmiq1t3SbJckIN9yZ5zJ8Bpe1QLm
	MiZmqfYjHtNrqHACago/Ma7oAm4OZ3EivyW9VjjQ+EF2L/UtY/hcTEErsK08sAlgGPjEPeWW/d/
	khhiFTP0GmshEyJSwfDmkqxNPhw45t2g=
X-Gm-Gg: Acq92OHlXtN6kAOH2DNNpXvBUJ+ew/ZQ9Suet3EMC9u9aHg/hedPoU7gvhXH2pGmMLc
	nuAS+TOrMYpw2RjlzyyhedeTvdnWc6Qq0ZcvjqShPiWdwiw3pbOOyINoMrKScJqQPjFB288IAq+
	CsxSxyBqg3B3vZLR3e7/8p/aIQohgs0BpG6j2uvXlxeAjZHVJoq1Hcc/LTqcrjHVFKXrSblMvT5
	pqCfzlHZB8YswibUP11RRHy7OlDDiu//EOwX184DojZLVxvHM50M2lllvDldNruvOn3CDKNrmzK
	R11RpUWi
X-Received: by 2002:a05:7022:4381:b0:12c:3d30:37ba with SMTP id
 a92af1059eb24-135047445d6mr10141839c88.25.1779279117002; Wed, 20 May 2026
 05:11:57 -0700 (PDT)
MIME-Version: 1.0
References: <CAP1tNvQNpjt4e2AhwTPoMKM0E9gra__3feFdczhvVWTc6e_4CA@mail.gmail.com>
 <E1wPaJS-00000001yEr-2gmZ@pty.whiteo.stw.pengutronix.de>
In-Reply-To: <E1wPaJS-00000001yEr-2gmZ@pty.whiteo.stw.pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Wed, 20 May 2026 15:11:44 +0300
X-Gm-Features: AVHnY4JO5nDaot3hwpRxXsXf2gXTizuMhqPT11iGSj_HTkfzjJ68fGiud8uosR0
Message-ID: <CAP1tNvQh2dCn9_+dwiOzRgCeNFT6AC9n4rJNC39AB2tNYC_W-w@mail.gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260520_051158_135593_ED9F01B2 
X-CRM114-Status: GOOD (  22.22  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_GMAIL_RCVD,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: v2026.05.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Here is output with lowlevel debug:
DDR 03ea844c5d typ 24/09/03-10:42:57,fwver: v1.23
In
...
out
>rockchip-dmc: rockchip_sdram_size(reg2=3D1000ea01, reg3=3D30000031)
rockchip-dmc: rank 2 cs0_col 10 cs1_col 10 bk 3 cs0_row 17 cs1_row 17
bw 2 row_3_4 0
rockchip-dmc: rk3568_ram_sizes() =3D 8589934592
mmu: enabling MMU, ttb @ 0xedf80000
mmu: __arch_remap_range: 0x00000000+0x8000000000 type UNCACHED
mmu: __arch_remap_range: 0x8000000000+0x8000000000 type UNCACHED
mmu: __arch_remap_range: 0x00a00000+0xef600000 type RWX
mmu: __arch_remap_range: 0xee000000+0x2000000 type FAULT
mmu: __arch_remap_range: 0x00b00000+0x60000 type RWX

Everything looks good, but it hangs at this step.

=D1=81=D1=80, 20 =D0=BC=D0=B0=D1=8F 2026=E2=80=AF=D0=B3. =D0=B2 09:21, Sasc=
ha Hauer <s.hauer@pengutronix.de>:
>
> Hi Alexander,
>
> On 2026-05-20 08:15, Alexander Shiyan wrote:
> > Hello Sascha.
> >
> > The first launch of the new release has failed.
> > On the RK3568 platform, BL31 does not start. The size of the final
> > binary has decreased from 1.5 MB
> > to 930 KB - possibly due to the announced compression, but it seems to
> > me that this is too
> > large a reduction...
> > Are there any additional settings/calls required for custom boards in
> > the new release?
>
> No board level adjustments required. I just re-tested the relase on a
> Rock-3a board using rockchip_v8_defconfig. It works here.
>
> The size reduction depends on the size of your firmware binaries. You
> could look at the firmware/*.z files and compare with the original files
> to see if that explains the size reduction. The TF-A and OP-TEE files
> that I use only have around 700KiB in total, so a size reduction of
> 600KiB would be unreasonable in my case.
>
> Do you have any console output to share?
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


