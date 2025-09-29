Delivery-date: Mon, 29 Sep 2025 10:29:53 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v39Gb-002M9K-0N
	for lore@lore.pengutronix.de;
	Mon, 29 Sep 2025 10:29:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v39Ga-0007I7-KR
	for lore@pengutronix.de; Mon, 29 Sep 2025 10:29:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:Cc:To:Subject:
	Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OYmLvGhjvy9DpOCUT9qfZ8/0cKg1IXhhUNacp1O6+Z8=; b=HlWHzprbxUwVaHdQTOzX2wesTA
	wlEddDdcG5piPQbLuTBjgN0/wbt9ol5D/YNISDXlOm3fY79sk4fmBILRNuki5h8HoMY+ZB6Gt3bl3
	y436Uh3aHyCcApZoFT4N2YBtd7dhsoMfbN0aQ/KLCMZdSKfckXW63LH2TIm9vBBNG/aEA2PKqeZd1
	9mec9+mwDgztGL3vLgXbiwGOXR4wdOa6Q5T9B7QpiJCCNRBGlMCfWTWbFtrgqHYNWdO7jLAurH1Yq
	61tg3O6RWZDMLkOBqjf7PhJNC9f1frc8Oyj6l7aVJ1rcNodZZ2+at/DouOA860+iUP4FsY+6QJr/T
	M/a2y3YA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v39G4-00000001mx3-0GNj;
	Mon, 29 Sep 2025 08:29:20 +0000
Received: from mail-pg1-x52b.google.com ([2607:f8b0:4864:20::52b])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v39G0-00000001mwb-46jb
	for barebox@lists.infradead.org;
	Mon, 29 Sep 2025 08:29:18 +0000
Received: by mail-pg1-x52b.google.com with SMTP id 41be03b00d2f7-b5565f0488bso2993754a12.2
        for <barebox@lists.infradead.org>; Mon, 29 Sep 2025 01:29:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1759134556; x=1759739356; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=OYmLvGhjvy9DpOCUT9qfZ8/0cKg1IXhhUNacp1O6+Z8=;
        b=bCrsFz2ulD+wtMDluQDGtxW6HoHByKjJmFChbtZlH8aLuKAEUfvIzucPdhEcHLzLDn
         VFdoNzhWK8RYgX6FLMucbG/78Qcu42hxMJT8J3AUvnjlqGhfSOIvZVU73uAg4hSLTjSL
         /+kuzUzBfLEOf0y8snc4r3pBt0wStnErdjt8GoIKVWjqZm9Qcjb7scT3dy3So0eY9xIX
         T+iCXCxI+flsIJfNiOpksG1dgDFYCPUT+aGpOomZl2AEoIdUZIGpoZF5ay8aFZWOwtKz
         79JIhWVfE8GBIuUNWMTNShxoaRbguf/THdWEg+JkOffsk6JQyhe9FLa1DSs3DhZeBn4h
         JQvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759134556; x=1759739356;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OYmLvGhjvy9DpOCUT9qfZ8/0cKg1IXhhUNacp1O6+Z8=;
        b=RmVDukdrAWkTnUvzc1flvpcXwRoKtEJQnbV+5z36oxKzmk7D3156TKIob7haordvQj
         vKmXFnZ3yvqykTkKOf2VJPztXi6XR2W64fBCJFN+Ck9L4d3Fl2VepjfF965ayVMEnr5M
         VhbKCBOvNl3JTLSltHrEdSY4IrnGocKHGwwjhvSDFC9s1/CGblN7hYrMv6tDoKbOBXWL
         yRgnIt47blxwK8Hjme6YxzVSskek2cmH8UX/0Km3qBplRD+0hvRyjCddOrsy6BZs3xZU
         4QMz6D+Q6Xs36fCTldcW8WeesybdpoTLgO2ZAUJ3er6GqZzLIg/QbEeQ+aEltTPH12Me
         LtaA==
X-Gm-Message-State: AOJu0Ywlax43I8Jo7UjldHnSYMr/jbOIMKwVFddYzIU9v09JZyobbP5S
	f9Omzxogpq79TcpLcojZoCtFrw9f8yrWQu3z09B5qSn7HpV0j7fUHTaqVzFUBzD8KFgCJy9J56P
	lEKIfuQCKSAPCy0OiuZK5vR06P2zKhKmfTsF3
X-Gm-Gg: ASbGncsKVoco6sYrqhFXpCPwdMTPWE53xDZdmZusZZ0WZ2u5kZoovHL4483WhDTMFr2
	smzeY//T+FA+gKGULWhSnrlLrPE7zN00rQ64MV2IipW42UST1NvNKAkHc0Lf61wr9sNhBxUlfs2
	mZtZ0GzxcuSRijIXzL2ZdT/NT5K5rlg5tFsKNN9O8+RDH2PYW5sjGmM9BnUnLe6MG9jV/JitgOz
	03D1AVszYoRymMYHA==
X-Google-Smtp-Source: AGHT+IHHkcMYaGatUD66nkpHNgT4Q32V/OHLfYwGZQ4pO4ec9ROD7sCPy/Oxdh4bkbfdztEpP9k12iuwl4taUq9uq2c=
X-Received: by 2002:a17:902:e84e:b0:269:aba0:f0a7 with SMTP id
 d9443c01a7336-27ed4a06c9amr205144885ad.2.1759134556055; Mon, 29 Sep 2025
 01:29:16 -0700 (PDT)
MIME-Version: 1.0
References: <20250926131514.673245-1-eagle.alexander923@gmail.com> <aNo_htA1L8khUehc@pengutronix.de>
In-Reply-To: <aNo_htA1L8khUehc@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Mon, 29 Sep 2025 11:29:04 +0300
X-Gm-Features: AS18NWC_G9YwJXo76t3hxpBsZO4qWYTz42HuUaB86BZ8rFWDaYxIwUMBIyN5E8U
Message-ID: <CAP1tNvRnHbCoi=29u_6WbXbD_CZ1kc01deppba4WuWW5mrcMXg@mail.gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250929_012917_019623_5703297B 
X-CRM114-Status: GOOD (  13.86  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [RFC] clk: rockchip: Fix CPLL setup issue
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello.

> On Fri, Sep 26, 2025 at 04:15:14PM +0300, Alexander Shiyan wrote:
> > This is a dirty patch to solve the RK3588 CPLL clock setup issue.
> > It's taken from the Rockchip U-Boot repository [1].
> > Any ideas on how to improve it?
> >
> > [1] https://github.com/rockchip-linux/u-boot/commit/bd11beba4f997b62809d24eba30a8713c8bbeb81
...
> > +     /* Barebox addition */
> > +     if (pll->reg_base - pll->ctx->reg_base == 0x1a0) {
> > +             /* Determine CPLL clock and patch clk_bisrintf_pllsrc_en back */
> > +             writel(HIWORD_UPDATE(0, BIT(1), 0),
> > +                    pll->ctx->reg_base + 0x84c);
> > +     }
>
> Resetting this bit is not in the U-Boot patch you reference. Do we need
> this?

Yes.
https://github.com/rockchip-linux/u-boot/commit/7560cacdd3a68bb475f23b4249a98025c89064d4


