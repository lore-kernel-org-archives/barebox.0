Delivery-date: Wed, 27 May 2026 15:14:19 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wSE5T-004Oqf-1T
	for lore@lore.pengutronix.de;
	Wed, 27 May 2026 15:14:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wSE5S-0000ba-GT
	for lore@pengutronix.de; Wed, 27 May 2026 15:14:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UY7CcMmmiyLmIzrf4cKHG7U/vaj9dgveUI2WzedW5Q4=; b=wfml1wb8YlxS98XpaqUn76zaub
	3C+FGkgoDw6oLTqWxwqosi/GBkh8bsb1uSRa2f1Vy2pN1IfEYx5f/QRfNXXC+Pmpv2pjYQ2vdAX9T
	Emxd/IkoAliw6ugN8nSGxN93loy3JYtbDW+74M3emICwHYeVVnwqNrzunAU/zijtbYg4F8BdPT6Vm
	K3A4WwZCHw0wW0EnHAUAUuhqtBG9glln1FRZkdas6EDgnTYAra7u8pz0/Ihn8lN6o0g/PtQIur6gd
	2pB6OHH+t/lVGVgpc7E3Oa+1NAtDs6/O3VE/Y0D8BlBdBUNLKeUZvgHrlLIxGBXEqk4+qh8+EXhtM
	lt2VUv5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSE46-00000004A7L-2h0w;
	Wed, 27 May 2026 13:12:54 +0000
Received: from mail-dl1-x1233.google.com ([2607:f8b0:4864:20::1233])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSE44-00000004A6V-25h1
	for barebox@lists.infradead.org;
	Wed, 27 May 2026 13:12:53 +0000
Received: by mail-dl1-x1233.google.com with SMTP id a92af1059eb24-1329fc4bf77so238009c88.1
        for <barebox@lists.infradead.org>; Wed, 27 May 2026 06:12:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1779887571; cv=none;
        d=google.com; s=arc-20240605;
        b=DqQqGeyIxSSY+R8X5BilS1wrpHluQZdIe90sy8kMfPPJ/19A7BcMbNom3u+C300Zo+
         64ENPDouAQJ6r8iuCLc/wRn8v7/RVcsbSlG/IIEhe3zLbk+IMD5YdtVoU3pZKBDZ0JRw
         uodhddvLh3Nb5nXRvr3gfIZGqSXps1a8AMo0lcrHBw/KVfoOLsJ6mDe72GOrzUTFxxSM
         Ov0H7hwUeWW+X84wEXzdjSi2//8yNpMMUh6NkIAL2tF7zhTcaWBgzfGZQtb56wReme0/
         xg1q27tXkUJGUDkGNwWTBALdjAi8HpEu2GlZ2tk6lm8dbBxiOaB8LYOjnGwwyGXAOhss
         u31Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=UY7CcMmmiyLmIzrf4cKHG7U/vaj9dgveUI2WzedW5Q4=;
        fh=7Yiba8wXx+vLUz4ud+g5VaEZLPel68E1Fvl1EGss/6I=;
        b=EZyQ6DJgrC0lP6nQw0jxChWgGfxppsxuiootsKl/gTe7fLYOMLb6YeeJOvn1H4OJWH
         uumFnCIAlIv0J/IHtNm9XBobxwuDqwTio7TxHslIm1i07iPheTTwPDTItOhXUdvJfCdC
         ju+ZX4gwu+mh9e8zySExiFIsqQTKR83L19WtX6lqkA8wURMpCVsgLXUd1SLJTvnn76eH
         qrQWrK9Flwvfcqsnx987yQMvCZxF1UNZRQYbqmxopBjsD6JPwMe32pmubmFCU5dST02w
         bOHZMs4xA1sq5Mkm6ZHBXNmjz8dTL/Cxzz5g5I/lQmEtjCkouSuMYrT0rwwPHXt54tHJ
         9XWw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779887571; x=1780492371; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UY7CcMmmiyLmIzrf4cKHG7U/vaj9dgveUI2WzedW5Q4=;
        b=dTuxXW6vYBJq93+sEYhoF1o8j5ZDiJqcsdV32lv9LT2mYH8jkwh1UI3JbKXEzdEk1+
         By66qGDqBWtIhhiWg36ioh0r1cP+KV9SdUskHoFyzgSKcEmDw9WMnmoX3fhIh+fREwBD
         xawFIZpSUCQZ2UnFWtQCxxk9BlsHSErlNDzZtV1BraUijAF+wiBlNZNrZDPwpI/6sXSp
         T25ku7na9bdCbr0hKBdPIF+Z6F3GBaWndIVtBJLfNORZgtUlVCXv16WPuvDfohPch1+G
         ihChMj09IO1cTUhJHgIyanQxg5y+aKURMeOXvZ4QnRtqazrrSqS7kDu15SUaTMySXbTk
         szMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779887571; x=1780492371;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=UY7CcMmmiyLmIzrf4cKHG7U/vaj9dgveUI2WzedW5Q4=;
        b=g98wtCCCUAYwbmCim4C+ZlthefqI4ghgfWi4oiEizK33g8ERlqZACvZpZkuBWvRW+V
         CLXpfjJrTn5/997NM2DzdhAFO7YEKjz5mduJaZpLrGOBq6dUSHQq2goRCLHgfgE8UGiN
         cbqvYIy6Pm72i2w4WSU4+Zhl1XWN/l5zzneshxVuUFB6bJKFNgunb076pkZlr4S3tpAY
         VAcHmCqP2quZt2eFBwyDXLyaYmsgQxVA6uybck4dR3WDwXDnEz2eZ7Q9HeaxX069dP2O
         g64CKZkfA7//9B4T/y3LyYuI0ikLdPIebxLec6yvp9p2g6xXswVeulTIa6SVo+BF6PXp
         4i2g==
X-Gm-Message-State: AOJu0YzPNE5PynGaEdD7a4AyzMHsVzD2mCi9C0YS7lswsBjCJ9KonmEl
	Oel4JLON/6JvAmLH+7xeeUOPqdI5csuPzVRJEo8WURiT/Gu0EBjNU2K6nW3PFz21rrdRx3VZSKh
	nhTqQayF2VHJGais0VbfjUZgc3z7TH7TiqiN2QacPvA==
X-Gm-Gg: Acq92OET6JBQr+3beZU/IU2HEfJ3e6TNngcJuvyoXrJpt4fVF9bfGacVDtXBMW0mSwp
	XE4AUfoFiKfWSLWPkUhM3smHWDkTcg4jQclClt/XNahPXupZ5UxMOHZ2TocBPhkZ+gPd4JDQGTu
	LbuVxcR9x3K/hC6vHEe1cGB+0/c3rAPMeVp0VIyy0yaJqOgmq2MT+stlvho2KxyYP0E5O3F28pW
	ZfWIyW3XdoVCQANSJlS+aWhz9DnrjS+aB62b7oPCwN/p8Vj+Yj+6cQFoIOVL4ogtxksnehLt2tX
	+s3a7HA9I9SU60Ftj80=
X-Received: by 2002:a05:7022:60a3:b0:133:3c47:932e with SMTP id
 a92af1059eb24-1365fc636aemr8447739c88.28.1779887571457; Wed, 27 May 2026
 06:12:51 -0700 (PDT)
MIME-Version: 1.0
References: <20260527121649.3365172-1-a.fatoum@pengutronix.de> <20260527121649.3365172-6-a.fatoum@pengutronix.de>
In-Reply-To: <20260527121649.3365172-6-a.fatoum@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Wed, 27 May 2026 16:12:38 +0300
X-Gm-Features: AVHnY4Jv_MRuSvJaEA_1CBEPlPEGlPnvEqix-LyeL4vBVjSkVd0cNjgkZ-fY7jU
Message-ID: <CAP1tNvT23wr-_Usy5q+VMu3qLXAfmWEnRTP=WqrMx+e7Bk-D8A@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260527_061252_555985_433B41CB 
X-CRM114-Status: GOOD (  20.34  )
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
Subject: Re: [PATCH master v2 5/5] ARM64: place PBL malloc area at start of
 barebox proper malloc area
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Tested-by: Alexander Shiyan <eagle.alexander923@gmail.com>

=D1=81=D1=80, 27 =D0=BC=D0=B0=D1=8F 2026=E2=80=AF=D0=B3. =D0=B2 15:17, Ahma=
d Fatoum <a.fatoum@pengutronix.de>:
>
> The early PBL malloc area used by the Rockchip code overlaps the region
> used for OP-TEE. Moving it a bit lower would overlap the region occupied
> by the scratch area.
>
> With the switch to CONFIG_BAREBOX_MEMORY_OFFSET, we can compute the start
> of the malloc area in barebox proper without knowing how big barebox will
> eventually be, so make use of that and always place the PBL malloc area
> exactly at the start of the eventual barebox proper memory area.
>
> The memory will automatically be reclaimed when the TLSF allocator is
> instantiated and we will be sure not to overwrite anything by allocating
> in PBL.
>
> Reported-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> Fixes: 76b1f31275fe ("ARM: rockchip: initialize PBL malloc")
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/cpu/common.c              |  5 +++++
>  arch/arm/cpu/uncompress.c          |  4 ++++
>  arch/arm/include/asm/barebox-arm.h | 10 ++++++----
>  arch/arm/mach-rockchip/atf.c       |  2 +-
>  4 files changed, 16 insertions(+), 5 deletions(-)
>
> diff --git a/arch/arm/cpu/common.c b/arch/arm/cpu/common.c
> index 6b82ee8b810c..adb5d6a02bc8 100644
> --- a/arch/arm/cpu/common.c
> +++ b/arch/arm/cpu/common.c
> @@ -114,8 +114,13 @@ void print_pbl_mem_layout(ulong membase, ulong endme=
m, ulong barebox_base)
>  #endif
>         printf("arm_mem_barebox_image =3D 0x%08lx+0x%08lx\n",
>                barebox_base, arm_mem_barebox_image_end(endmem) - barebox_=
base);
> +#ifdef CONFIG_ARM64
> +       printf("pbl_malloc area       =3D 0x%08lx+0x%08x\n",
> +              barebox_malloc_base(membase, endmem - membase), PBL_MALLOC=
_SIZE);
> +#else
>         printf("arm_mem_early_malloc  =3D 0x%08lx+0x%08x\n",
>                barebox_base - PBL_MALLOC_SIZE, PBL_MALLOC_SIZE);
> +#endif
>         printf("membase               =3D 0x%08lx+0x%08lx\n",
>                membase, endmem - membase);
>  }
> diff --git a/arch/arm/cpu/uncompress.c b/arch/arm/cpu/uncompress.c
> index 61bcba6e8549..55bbe0019cc4 100644
> --- a/arch/arm/cpu/uncompress.c
> +++ b/arch/arm/cpu/uncompress.c
> @@ -75,7 +75,11 @@ void __noreturn barebox_pbl_start(unsigned long membas=
e, unsigned long memsize,
>
>         handoff_data =3D (void *)barebox_base + ALIGN(uncompressed_len, 8=
) + MAX_BSS_SIZE;
>
> +#ifdef CONFIG_ARM64
> +       pbl_malloc_init(barebox_malloc_base(membase, memsize), PBL_MALLOC=
_SIZE);
> +#else
>         pbl_malloc_init(barebox_base - PBL_MALLOC_SIZE, PBL_MALLOC_SIZE);
> +#endif
>
>  #ifdef DEBUG
>         print_pbl_mem_layout(membase, endmem, barebox_base);
> diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/ba=
rebox-arm.h
> index 38cceba010ed..f75cddc77243 100644
> --- a/arch/arm/include/asm/barebox-arm.h
> +++ b/arch/arm/include/asm/barebox-arm.h
> @@ -95,10 +95,12 @@ void *barebox_arm_boot_dtb(void);
>   *                       + BSS) rounded to SZ_1M
>   *                                   =E2=86=93
>   *  ---------------------- arm_mem_barebox_image() ---------------------
> - *                                   =E2=86=91
> - *                                SZ_128K
> - *                                   =E2=86=93
> - *  ------------------------ arm_mem_early_malloc ----------------------
> + *     ARM32      =E2=86=91                  |                =E2=86=95 =
        ARM64
> + *         PBL_MALLOC_SIZE           |------- pbl_malloc area end ------
> + *                =E2=86=93                  |                =E2=86=91
> + *  --- arm_mem_early_malloc --------|         PBL_MALLOC_SIZE
> + *                                   |                =E2=86=93
> + *                                   ----- pbl_malloc area start -------
>   */
>  void print_pbl_mem_layout(ulong membase, ulong endmem, ulong barebox_bas=
e);
>
> diff --git a/arch/arm/mach-rockchip/atf.c b/arch/arm/mach-rockchip/atf.c
> index 14797a1e0601..f9dbc8b20c5a 100644
> --- a/arch/arm/mach-rockchip/atf.c
> +++ b/arch/arm/mach-rockchip/atf.c
> @@ -173,7 +173,7 @@ static void rockchip_atf_load_bl31(void *fdt)
>         unsigned long bl31_ep;
>
>         mmu_early_enable(membase[0], memsize[0]);
> -       pbl_malloc_init(membase[0] + memsize[0] - PBL_MALLOC_SIZE, PBL_MA=
LLOC_SIZE);
> +       pbl_malloc_init(membase[0], memsize[0]);
>
>         bl31_ep =3D load_elf64_image_phdr(&bl31);
>
> --
> 2.47.3
>


