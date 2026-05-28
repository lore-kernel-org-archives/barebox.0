Delivery-date: Thu, 28 May 2026 18:42:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wSdoG-004sNj-0D
	for lore@lore.pengutronix.de;
	Thu, 28 May 2026 18:42:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wSdoF-0001ev-4u
	for lore@pengutronix.de; Thu, 28 May 2026 18:42:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UdmNBZ8bphOaaz3s9RTiQldT2H1disueAnWfOkFIn2o=; b=f+VLp8pGPD+U0WKKjWXyDQ6mTV
	FIs3rcOoO2okdq0VWJUfdq5AJkBE9qFXof9ZSFfX0IdUMFUAcPOA8lqPT1gUwmQFnpGkBfV8ibJXZ
	H9HxmUGCKzb+KoRH1FkfW93/PuvFd+Jj2XWKAroy7+hTAHBG5/umaw9POpLyitOKvlz+HRYY0nmeo
	hDhSGJUrNX2dC0OmKFOM9C5Hk/r62KbisT9lWE8Qa/sTT+gWchGunTv4MAjQCVhHTARkjYdE/Hwiw
	r+OcxudIgEv1YuBk2d8Qx5Axd6y37oxVCQi98ThSwfi2F5nvEB+AqyctfvVY9nRx8y2dsK2cXR+l/
	wYq0sjTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSdhk-000000060pN-2UN0;
	Thu, 28 May 2026 16:35:32 +0000
Received: from mail-dl1-x1231.google.com ([2607:f8b0:4864:20::1231])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSdhi-000000060p0-0B7T
	for barebox@lists.infradead.org;
	Thu, 28 May 2026 16:35:31 +0000
Received: by mail-dl1-x1231.google.com with SMTP id a92af1059eb24-1363e78746eso9185307c88.1
        for <barebox@lists.infradead.org>; Thu, 28 May 2026 09:35:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1779986129; cv=none;
        d=google.com; s=arc-20240605;
        b=Hc2YXvtLCpxIjNiWG6nHafrTVrKb6wDc7vbg1qupZjlstyKmaoarnS5QHpeuGQ49sZ
         gM10AobxhtfK5bfWKvGe8UMoX2t0CSAs+T6DNiXq1Y0syIh0I+aiYVuqeKsA/D9dnO6E
         ZgnoENuThA+8VEYKR0Xe+OPlwT+AKdXNewt+22kNjqOdiIT5y6f99xvE+i1zqjfYGqbN
         VO6OLmsNWVQ9/8GiU4b1mpc+QYqxafc3jM+elkaz7qh50SfJDtrgT05p6RgSl4DZ4/Eo
         wqbZJYVDTrEdFzgueSGD1Rn0VUWGLTIiDq0pRPTOFOczIzydlgwQkrUwWkUwYhXozOEO
         QV+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=UdmNBZ8bphOaaz3s9RTiQldT2H1disueAnWfOkFIn2o=;
        fh=7Yiba8wXx+vLUz4ud+g5VaEZLPel68E1Fvl1EGss/6I=;
        b=LbCUfaG0KC25ZKEWbBbpqCT7pNoAZhrJesboVLnAjCw3T1LaLj99EE9lShSJr3bwJv
         g3joFPtYFPYyNxiulU0pAiCkNWNmgefdb3xyjzxUG9vgZQoivkIS8nNVtvfbRx9arVod
         OEJif2gp7wLnlRPjRyKCjZC3XPGfMATGXOg9U6sNXqSJZtW1rA8hCz2NdAxjnbi2VL9L
         ZUUU/4TRgRP0LDeSVOgsUae0jhT3HIze9xAzGu6TxsLBwAcfxbhPiYI+KXX15FSlruFG
         T5bL6pdNp211Slv8krcF0JnAUFMbomK+boQQQlkTfyqn5/k8FL3zN1beGpTT8bJW+EaB
         FgLg==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779986129; x=1780590929; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UdmNBZ8bphOaaz3s9RTiQldT2H1disueAnWfOkFIn2o=;
        b=EOCiYeK2YuV7nncl2kWsrTBoVQ2Rz0yRdRbsuKO6EwBYZsBUXZ0pU9sT60/fiWOmeZ
         Sa0UHZfU/wJpA/cgyiE5QNnvNhtRQzZh3vW3buAzca/M+7MCUn491mlxblnKiDG2FT/b
         yRaLKmPXDeHtpuTlAEF8GrxNrrlShwBYzRTvul3oaCl1eZsO8NoKMenB/2QcpZp2Kh+j
         pKsqvy+tInAkyHBUoimih1nkg5/uy1gLkqcerk2Em/gsZV9Ahh6p6c/Toz5SP0omnulx
         B4Vbuqk/icsDFawkuoo12Nb8lqMvq7Rq7davaYgOG5ghDQWHc4Jy2YlfSQ+cwGaDYObs
         WHsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779986129; x=1780590929;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=UdmNBZ8bphOaaz3s9RTiQldT2H1disueAnWfOkFIn2o=;
        b=JPXtOtNZBL5vZ3QQVO3pzln69e4TPvCS/YvgnR75ToiyCTop4tsWr7LZL8Qppu92tu
         1+OiaLbUo7CO8i7sKoixjAAQpqs68NjXyypz1Z7Zn8zC4/stGcf0G0PZTuCLnk1fbOQs
         bdppO1pohFt4kEgfNh9xF2JrrEPO/8eS9TzffTLmlsgzuQjpf+cZxcLue7Gz99xjLhQU
         bFbWEU9NJRooTm7EgwOJN+fq/p9P8oxB1jeQv9ewYEPfR0iLms8ALFgHVmzfPM8U1B9A
         ZTDc7Odh4wEKgdZRMlAOEYwSi0mqiF/q5pKzZWlMpFQg0qfF3ETIxpJLpW/e9Zrdhhb0
         Kgbw==
X-Gm-Message-State: AOJu0Yxw4yYGZ0JiZcXSjkeUbE5T5Od7Q4EUXiXPamBnJvQrQwl0hic0
	SE+MELH8lFBQywQ6CvLj3qvz9U83fIvXvY9WnSPWDvHNw9zL1Ogq41tvZrc5Wp3E6qxPGJabIrR
	jzIkYtqAXDqF7zMbsjK2zMt7YKbc7pGM=
X-Gm-Gg: Acq92OGpj7fpL0mHeKKAnObHTrO0dX09TiuNSUe/MdRIaOmW3LYlQvZ83P0jUjKyBAn
	QFFtLufLC+JXBsjL4Ize25m01dgo3j3NWLpSxE+kRm/f2l5bkkL+T5Lcviyfi6Lcxzu98GHDDNx
	OmiGmC1QBVWaUuxo9oyMX2MzXHlioxq+y/F7Yqa6HhCdWIE9M8ZHX4xvYFPALR4YvVYU/ESM35x
	NASp7br7Ldb4CtNHHZ7RTswLADNBeIgJz1fecCfLPGXWE4zkZhi/nqRhkFo4p75SDfazV2vbIbD
	m/1UFRl2eOEsUZ+tlHs=
X-Received: by 2002:a05:7022:393:b0:136:60e7:53b with SMTP id
 a92af1059eb24-13660e7064dmr8766823c88.1.1779986128645; Thu, 28 May 2026
 09:35:28 -0700 (PDT)
MIME-Version: 1.0
References: <20260528110401.3920904-1-a.fatoum@pengutronix.de> <20260528110401.3920904-6-a.fatoum@pengutronix.de>
In-Reply-To: <20260528110401.3920904-6-a.fatoum@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu, 28 May 2026 19:35:16 +0300
X-Gm-Features: AVHnY4KJ_YUw0hEgbOMEJA2uT9_yD1Wex_ZCH02vi51OXmIV_rdj387EpLa8L3c
Message-ID: <CAP1tNvR-0gepFsjE6d=2yXLAnwi0EtiofQfDy=PWEDycE5OUCA@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260528_093530_104256_F792EF79 
X-CRM114-Status: GOOD (  19.89  )
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
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH master v3 5/5] ARM64: place PBL malloc area at start of
 barebox proper malloc area
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Tested-by: Alexander Shiyan <eagle.alexander923@gmail.com>

=D1=87=D1=82, 28 =D0=BC=D0=B0=D1=8F 2026=E2=80=AF=D0=B3. =D0=B2 14:04, Ahma=
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
> index 14797a1e0601..74b8cdc2f499 100644
> --- a/arch/arm/mach-rockchip/atf.c
> +++ b/arch/arm/mach-rockchip/atf.c
> @@ -173,7 +173,7 @@ static void rockchip_atf_load_bl31(void *fdt)
>         unsigned long bl31_ep;
>
>         mmu_early_enable(membase[0], memsize[0]);
> -       pbl_malloc_init(membase[0] + memsize[0] - PBL_MALLOC_SIZE, PBL_MA=
LLOC_SIZE);
> +       pbl_malloc_init(barebox_malloc_base(membase[0], memsize[0]), PBL_=
MALLOC_SIZE);
>
>         bl31_ep =3D load_elf64_image_phdr(&bl31);
>
> --
> 2.47.3
>


