Delivery-date: Thu, 28 May 2026 14:19:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wSZhp-004jgI-1H
	for lore@lore.pengutronix.de;
	Thu, 28 May 2026 14:19:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wSZho-0003wS-2b
	for lore@pengutronix.de; Thu, 28 May 2026 14:19:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=10YXh3KmR/2ekFaMGJ2TDTXbTazztab1Kuwb14DczwM=; b=1ze5bNntd72cs6mScdouj3fkNw
	zsQYWXEuLJ9kdsTyM7nG77FJMA/RIDyYmhl8LHpB9rL50fRhW/mGAuOvkG8gSYg2EEUtv1pb2QD7F
	tLjLCrwxlQxDoppoMooHEq8P7dJa9+9fB8w6bGVo4c9e3FeY08w1NtFUb7y/x85RO2+ONptL6GP29
	o2HxWWrTNUyLtNsFidne2kcBOEGkXmpmBh1O9gkLCks7aKau8oBCkCI2i5iNbMFvQqeq6wNhFEVQK
	w7HuPw1XSXmIkaehjJ8n9eQ+owAOUMgTzXMIQ8mxzcv1l8pz3oVXPkaYw78v4KLrp5LjDujq0mslI
	QeUejiZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSZgL-00000005i27-44i3;
	Thu, 28 May 2026 12:17:49 +0000
Received: from mail-dl1-x1231.google.com ([2607:f8b0:4864:20::1231])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSZgI-00000005i1g-0dJG
	for barebox@lists.infradead.org;
	Thu, 28 May 2026 12:17:48 +0000
Received: by mail-dl1-x1231.google.com with SMTP id a92af1059eb24-13721dfd471so4088812c88.1
        for <barebox@lists.infradead.org>; Thu, 28 May 2026 05:17:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1779970665; cv=none;
        d=google.com; s=arc-20240605;
        b=H87g2xLuI13fmscnqtyo2ylgsi1Au5VKeivE1avicSvgbU8XPwmHbywgxYfpHm0aNi
         82nM+VT6LgDdP31migLt915nsEgy0hW5wJC5mjbo1R2oyzmNGmNsTw5CRQptxZJVUVs3
         OJTtD+jWtRp+FozxjLnc5gQM9w9UeDHvJadHhF1gv4Z1Qn3Lixmoo+SYAl3/x1HI5kWq
         U8+wMeyVmTtUtZx/q8FLfbNpSCwSyydRDJbIbuBVqlVBuwUyWbQWqrNQfTK0BZzmH/kG
         ihDh3KrzwY7f6K3MXVT+Swbsmpj9XZXtzAaXkUCnT+9KVrhZjA7my+0izqdkUk8emY/J
         u9Rw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=10YXh3KmR/2ekFaMGJ2TDTXbTazztab1Kuwb14DczwM=;
        fh=7Yiba8wXx+vLUz4ud+g5VaEZLPel68E1Fvl1EGss/6I=;
        b=gsKUaCVlA7y25oZhVlB2ULwcmCYGVJMNqfL7t/qIi7Lbeay7Ydz/KP36ffJDGfQK7w
         SYLx9V90N7R1vMa7i0QFZ+Aj/5hV44BT39dBkabJW8e5MrV3RQroBrD7tcWL/7x0Pg/N
         gpVLPcucz2E0hLmSCfm5ySJWCalAf3E9J2y2UYHvbzrtAPsFEfyOf8v4blNUy3q+cve/
         /xHXHmVsubF4oUJ1ygCwittAiNQ3y+f01OvmDPj4zMiK74qj4gKiGR8XeFgqmK/XlaSA
         nJ0Q6SGmpuWInUUEZdk30dRnPFvfnM1g3JykXsOdBohQa/lSGJdX6gwgAYwSVG+no/bY
         OkgQ==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779970665; x=1780575465; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=10YXh3KmR/2ekFaMGJ2TDTXbTazztab1Kuwb14DczwM=;
        b=j+K3vugVHFs/4jDgb/qhrlyZiNt1mlMNt8VwTMelYlSwVWocdK6osmb9fzvypMBEtD
         3aOanlIfUQrtLkM72/irJO3fduBgJ2Jrsp5EUFhVi7wJLTC9jf5nh1vE9zjcBbbI30Pl
         BdP6AM2L/D4FGXHZDAzqzoQd1Y1LfP9dpG1Yq1PPWPo3B0Mm5HFQDR3iOm8J2kWu1G3A
         Dm8KWYygFxRVsrKZSseLzrptdHCBwEu1cRFdtIqVLbOZYw1YAj9LX9QM9h73+0hwJmEN
         Yi2BvsHmLOyWlNu/1/R12xMzt9jgLCe5byZdSuwplzWBC7l7JAdBtYHz6YX1Oxa6QnAT
         RJYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779970665; x=1780575465;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=10YXh3KmR/2ekFaMGJ2TDTXbTazztab1Kuwb14DczwM=;
        b=IBDzBe2lcmZ+P5awowqBXG1TRjPFqinoavCqsp9BC/FDsotVvP+I6MBpQc2A6MAth2
         vApzjIKPkhTSM/21Uw8wXVPiYw/DUBriVurslnm5Hv282WmdzJCjq3SOcIb4iUisRTl1
         l48OE+XZRVS8hxrdyPVonPEr0xMEaK/0DAScuXTI3Igq6WFO29KodRV8q67c6KTmA6ht
         pFfa59tgSFwDYR4IEJDFNjN9k8yXl0ItP1TT956smu47PBGLowkHVjPZhY5Ku7TGPBDY
         Zl/WRjg1R3QeWJwKSnkN7zXiep4eu1kAu4y7X0GImGNN4tLvOMpuc4oAHiV3aJbmFJFE
         CtIA==
X-Gm-Message-State: AOJu0Yy2UTT7etynywMDBJ6rbW+vofxxn1MfQivib6ftCb2hOcfePybY
	GgZq4140YW4Ixrie82ns/MA+2bsGUQ/ciJgvIvjZNCa8mJ7X+s+a8TnPCPowOdOo+cpOdKNivcY
	5zNA7S9pbmFsJAnVlGfOjW/PpgH1ZtgJY49VSXWPuUg==
X-Gm-Gg: Acq92OEHmHHqaYO/IjddG61qDpLRidHDpg4Q8ukj33BrCdkIhpE55E6OwiA3R/rbNKj
	nn+yu0/xoOZL5O0f+t/laiItlWxBodqfpsTafLpISldh2e4/UIOZYCNnhA+cj0o+sqHr7tXRMG9
	frBfOGw57MxiG86gycTTe2OUU5Rl/kgJey4mtgJyjrWfJoXmpHVhvFUqHMT6GPnfAZD3CYx7qmL
	FzEbumEQm3N8BLEIj80nlTTzwwV9qT34iW2FYEjWWojE3eCLyEWbTV+6LGbV2lPMpk/dWXefMJb
	ZBu47yP/qQrb6MznxrQ=
X-Received: by 2002:a05:701b:2914:b0:128:bae0:e043 with SMTP id
 a92af1059eb24-1365fb50c7fmr6301940c88.31.1779970665077; Thu, 28 May 2026
 05:17:45 -0700 (PDT)
MIME-Version: 1.0
References: <20260527121649.3365172-1-a.fatoum@pengutronix.de>
 <20260527121649.3365172-6-a.fatoum@pengutronix.de> <CAP1tNvT23wr-_Usy5q+VMu3qLXAfmWEnRTP=WqrMx+e7Bk-D8A@mail.gmail.com>
 <a012ae44-9a5e-4d48-883a-609751012028@pengutronix.de>
In-Reply-To: <a012ae44-9a5e-4d48-883a-609751012028@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu, 28 May 2026 15:17:33 +0300
X-Gm-Features: AVHnY4IilE9stvf6gen-UqnGiWdskJzWYWLXKyfbcQupReo90k2nh7EmSzqfh7U
Message-ID: <CAP1tNvQXhxYvyOM8F2ECeTcqd6uLhWMb7-6phqUZh7y95TvGXA@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260528_051746_314191_35C32BB3 
X-CRM114-Status: GOOD (  27.00  )
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
Subject: Re: [PATCH master v2 5/5] ARM64: place PBL malloc area at start of
 barebox proper malloc area
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Ahmad.

Just checked the fixup.

=D1=87=D1=82, 28 =D0=BC=D0=B0=D1=8F 2026=E2=80=AF=D0=B3. =D0=B2 14:04, Ahma=
d Fatoum <a.fatoum@pengutronix.de>:
>
> Hi,
>
> On 5/27/26 3:12 PM, Alexander Shiyan wrote:
> > Tested-by: Alexander Shiyan <eagle.alexander923@gmail.com>
>
> Unfortunately, I placed the very early malloc area at the wrong place.
>
> I just sent out v3 and would appreciate if you can check if that also
> works for you.
>
> Cheers,
> Ahmad
>
> >
> > =D1=81=D1=80, 27 =D0=BC=D0=B0=D1=8F 2026=E2=80=AF=D0=B3. =D0=B2 15:17, =
Ahmad Fatoum <a.fatoum@pengutronix.de>:
> >>
> >> The early PBL malloc area used by the Rockchip code overlaps the regio=
n
> >> used for OP-TEE. Moving it a bit lower would overlap the region occupi=
ed
> >> by the scratch area.
> >>
> >> With the switch to CONFIG_BAREBOX_MEMORY_OFFSET, we can compute the st=
art
> >> of the malloc area in barebox proper without knowing how big barebox w=
ill
> >> eventually be, so make use of that and always place the PBL malloc are=
a
> >> exactly at the start of the eventual barebox proper memory area.
> >>
> >> The memory will automatically be reclaimed when the TLSF allocator is
> >> instantiated and we will be sure not to overwrite anything by allocati=
ng
> >> in PBL.
> >>
> >> Reported-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> >> Fixes: 76b1f31275fe ("ARM: rockchip: initialize PBL malloc")
> >> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> >> ---
> >>  arch/arm/cpu/common.c              |  5 +++++
> >>  arch/arm/cpu/uncompress.c          |  4 ++++
> >>  arch/arm/include/asm/barebox-arm.h | 10 ++++++----
> >>  arch/arm/mach-rockchip/atf.c       |  2 +-
> >>  4 files changed, 16 insertions(+), 5 deletions(-)
> >>
> >> diff --git a/arch/arm/cpu/common.c b/arch/arm/cpu/common.c
> >> index 6b82ee8b810c..adb5d6a02bc8 100644
> >> --- a/arch/arm/cpu/common.c
> >> +++ b/arch/arm/cpu/common.c
> >> @@ -114,8 +114,13 @@ void print_pbl_mem_layout(ulong membase, ulong en=
dmem, ulong barebox_base)
> >>  #endif
> >>         printf("arm_mem_barebox_image =3D 0x%08lx+0x%08lx\n",
> >>                barebox_base, arm_mem_barebox_image_end(endmem) - bareb=
ox_base);
> >> +#ifdef CONFIG_ARM64
> >> +       printf("pbl_malloc area       =3D 0x%08lx+0x%08x\n",
> >> +              barebox_malloc_base(membase, endmem - membase), PBL_MAL=
LOC_SIZE);
> >> +#else
> >>         printf("arm_mem_early_malloc  =3D 0x%08lx+0x%08x\n",
> >>                barebox_base - PBL_MALLOC_SIZE, PBL_MALLOC_SIZE);
> >> +#endif
> >>         printf("membase               =3D 0x%08lx+0x%08lx\n",
> >>                membase, endmem - membase);
> >>  }
> >> diff --git a/arch/arm/cpu/uncompress.c b/arch/arm/cpu/uncompress.c
> >> index 61bcba6e8549..55bbe0019cc4 100644
> >> --- a/arch/arm/cpu/uncompress.c
> >> +++ b/arch/arm/cpu/uncompress.c
> >> @@ -75,7 +75,11 @@ void __noreturn barebox_pbl_start(unsigned long mem=
base, unsigned long memsize,
> >>
> >>         handoff_data =3D (void *)barebox_base + ALIGN(uncompressed_len=
, 8) + MAX_BSS_SIZE;
> >>
> >> +#ifdef CONFIG_ARM64
> >> +       pbl_malloc_init(barebox_malloc_base(membase, memsize), PBL_MAL=
LOC_SIZE);
> >> +#else
> >>         pbl_malloc_init(barebox_base - PBL_MALLOC_SIZE, PBL_MALLOC_SIZ=
E);
> >> +#endif
> >>
> >>  #ifdef DEBUG
> >>         print_pbl_mem_layout(membase, endmem, barebox_base);
> >> diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm=
/barebox-arm.h
> >> index 38cceba010ed..f75cddc77243 100644
> >> --- a/arch/arm/include/asm/barebox-arm.h
> >> +++ b/arch/arm/include/asm/barebox-arm.h
> >> @@ -95,10 +95,12 @@ void *barebox_arm_boot_dtb(void);
> >>   *                       + BSS) rounded to SZ_1M
> >>   *                                   =E2=86=93
> >>   *  ---------------------- arm_mem_barebox_image() ------------------=
---
> >> - *                                   =E2=86=91
> >> - *                                SZ_128K
> >> - *                                   =E2=86=93
> >> - *  ------------------------ arm_mem_early_malloc -------------------=
---
> >> + *     ARM32      =E2=86=91                  |                =E2=86=
=95         ARM64
> >> + *         PBL_MALLOC_SIZE           |------- pbl_malloc area end ---=
---
> >> + *                =E2=86=93                  |                =E2=86=
=91
> >> + *  --- arm_mem_early_malloc --------|         PBL_MALLOC_SIZE
> >> + *                                   |                =E2=86=93
> >> + *                                   ----- pbl_malloc area start ----=
---
> >>   */
> >>  void print_pbl_mem_layout(ulong membase, ulong endmem, ulong barebox_=
base);
> >>
> >> diff --git a/arch/arm/mach-rockchip/atf.c b/arch/arm/mach-rockchip/atf=
.c
> >> index 14797a1e0601..f9dbc8b20c5a 100644
> >> --- a/arch/arm/mach-rockchip/atf.c
> >> +++ b/arch/arm/mach-rockchip/atf.c
> >> @@ -173,7 +173,7 @@ static void rockchip_atf_load_bl31(void *fdt)
> >>         unsigned long bl31_ep;
> >>
> >>         mmu_early_enable(membase[0], memsize[0]);
> >> -       pbl_malloc_init(membase[0] + memsize[0] - PBL_MALLOC_SIZE, PBL=
_MALLOC_SIZE);
> >> +       pbl_malloc_init(membase[0], memsize[0]);
> >>
> >>         bl31_ep =3D load_elf64_image_phdr(&bl31);
> >>
> >> --
> >> 2.47.3
> >>
> >
>
> --
> Pengutronix e.K.                  |                             |
> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
>


