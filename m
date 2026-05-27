Delivery-date: Wed, 27 May 2026 14:33:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wSDRp-004O7x-2F
	for lore@lore.pengutronix.de;
	Wed, 27 May 2026 14:33:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wSDRo-0003hj-0m
	for lore@pengutronix.de; Wed, 27 May 2026 14:33:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6N0+JMQ4W9emHRbGf+3G6pu0DCl4YQpxy+4OqiQ/9BQ=; b=UaSdyw2fe1DJsL
	ym12LPI4ttWi5BbG32z4I6nLdhcoXp2Bx1rO3gBLzZLGuUDbQIGykAYboLsGTdtlzLgA45EcDZs1i
	2Zuo84FMIDgqLvCRm+CFF8BSAYtAcHHBEQ7dawfFnMR/D+fiRId0VuXw4Ezsc01zLMpyPXkJakuBr
	1GaWDJ6cmMHp3vVg2mpcPoBsBnp5vSDinS6pmwH2LsQ1VKQLaCsNDh0DoX4egwfX7GjmbpEdgbu/Q
	VIjBNhVn14uPUSAymsJP4TcXN2cU+lGwXDj/fDmM7yjauGxgGBXSjxYutDm4rKlPwEwE/l3ZhaPr8
	giFSjenKFwHxU1yIqcyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSDQi-000000045u5-2VH4;
	Wed, 27 May 2026 12:32:12 +0000
Received: from mail-dl1-x122b.google.com ([2607:f8b0:4864:20::122b])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wSDQg-000000045tZ-0vsc
	for barebox@lists.infradead.org;
	Wed, 27 May 2026 12:32:11 +0000
Received: by mail-dl1-x122b.google.com with SMTP id a92af1059eb24-134ac81c445so19795913c88.1
        for <barebox@lists.infradead.org>; Wed, 27 May 2026 05:32:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1779885129; cv=none;
        d=google.com; s=arc-20240605;
        b=ZYazw+UVWZFT81BrU29Mt44xbyhTmaTzH15r6n88V5CBgvQ7Ode+57dEmzX0yn4t+L
         6UWVS+0ht0gndw7bk7caP0K2Y2umm2dt6YyChQoU4Mu7XvlwSNXErcFXszHyAsxYkMo1
         94VLwQyo2NwgMgErTFfKvOKrm2aVAkFzKlbbvCfirziwWDAhyemcpf2vNCvPZficTkUC
         kuB6tybcc2Ziw4nC0Bez1rLeIeijVZUITMxizcy7yhFDwA5UbOP8M+7ldx4azM4/LWXz
         4lJMFlzamI152IZCfzJT9rgZ5H9xjaoB3Y0CmQw0FXBwh+BV6Pex1neey53iisdlv9KD
         hKig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=6N0+JMQ4W9emHRbGf+3G6pu0DCl4YQpxy+4OqiQ/9BQ=;
        fh=Hyl1xmAicDG8f20jGFy0RhKDG0XRwj8HJgCwTABMw7E=;
        b=QFp3LO4eq4naLxImSDVEseCi9m23TQ2HO28F1UMP/N9CtXqlmYYToF3yr/rUgLvdzF
         mguNjUaiL6LHMTJpOnfCnh7CKvvkwwnsYDhabAx1cS2UVUbIjnGvY71RuEh+EdvVAoae
         HRt7NP3CZEPzNHcN0eSmYbJ02XH5T4axPPpaI+K55U3nyLENBdUdtQFc10oOty8JaaGg
         g2qOVvEA4CAazKbKNkqClR7VXEwyoLC3MbGvyJT2jGRLERWiri3xeUKeIX84/1gwmkzd
         OWS7VVxy7rBrNdP+73KpCGbzqp0LBkCgBz33ht/INn8+3ddV9v+tJrDIkQEmAlXYm5Bd
         PNBw==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1779885129; x=1780489929; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6N0+JMQ4W9emHRbGf+3G6pu0DCl4YQpxy+4OqiQ/9BQ=;
        b=ocJ/8irXK0L8hADWuu2ep5yQTNolJnS5Em/gZGt7MgChoTvzZxXF5i/Iq57IpoqQTw
         /6fs7j1d6KMUngzASJC18CQiuJr+mj6XuAnCtd2Ku0Oo0tKCuNeX678p8c0/8Uf4tRVV
         L+Mx3IADEg9dpuhZtkMR8qmNKYXcIzIqJ11KkOqFqdNU8px4acPyN1yvb7Q9Ka3r2N9j
         siXoU/O3QRQV5dNwnxoVqhohnf1AtKet+bh2bczzdmZ4WXLCR/KGA4Bj6Jh+XA7F2NzE
         UG4E5eP+zn6+sKsaZX5o/u6YikJdr6QTjpEtIC/53rIwEuSQuUyCn1FLTRsK0BJWcIF9
         s2Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1779885129; x=1780489929;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=6N0+JMQ4W9emHRbGf+3G6pu0DCl4YQpxy+4OqiQ/9BQ=;
        b=LTGohPwjGpjrKA+k7hlvjvFLFiQPewI2FbSL5LxX7ya5Y9IAp2sPIYsuB2uys0WSJQ
         ykQM/vHHDZfF5TjULZV0QlEqY/jOy75wPaJz42W1mBERr5oOoc+k3OqQJJ4DUgPT8NX7
         qv9bXDvYM2Xyc4IptxY2/u2f75TxNkIVUWnj42u2wwhO/Fcjk5E6alzN5alxMpEnm3ON
         Zkei+kAQAmmtq/ke+2Vyl954sylZvWoSpD6VK312g8ClFz1ko22nocFCZ1hQHD+70uFu
         6DXXorkBYmRsi/xNvOerPAxTw56qJy2ya5rObAV9AZbGTaaAxi1Q/f0gEMaiT+0EElaB
         pybA==
X-Forwarded-Encrypted: i=1; AFNElJ8R8xql7eu6OZp/V03J6OVaqmyhz6F9tO5arhJoCYnx8Aqh4Lhxeli/rWquSS5yJ0PpJHlMGbVt@lists.infradead.org
X-Gm-Message-State: AOJu0YzMXgPhwwDgXfmLyDk0qY4Z82UCv41zNmpRIsjYCIQ1ueu80FqC
	rntUtIOgS7n7uhmSMbNJQh2IKGeIVIWmTjwK+/l7uwyyfOkoCDI6axg8eX2W6F+GF7UUruqWl9f
	BtTIkzqI5BgAXkuEmunoVyk/57vu7xrMhF4rDkJqbfw==
X-Gm-Gg: Acq92OGMaJX+qzGhfHbu6+lZrVVyI1Y1xqibOIeiky1Vo0hFzlKTnXfAI7tZQKQ7MRP
	vGjkhGFvqTiz7cFBS6Bd8LeM9XwXFBcAUbO8F0F2zyLf8lKFoP+mIihGsaQBtT0fI1sQ8Ky4Qe4
	92xczQkABg/L7Yu+xVP484wvnWpMsH+mStKorpGSAfVDEFvB0POMVjLSWops8w3xG6pw5GUqUdY
	Tj51ezOktVqdM8ZSPUKqWMsomrE/Vn57dm/oUvwFiMbMVOPberVa7oovHRNRVfxz2gjbfDtzVYH
	1LrxG4N9U0uhcgJnt3s=
X-Received: by 2002:a05:7022:68d:b0:136:959a:abdc with SMTP id
 a92af1059eb24-136959aae22mr6854662c88.11.1779885128843; Wed, 27 May 2026
 05:32:08 -0700 (PDT)
MIME-Version: 1.0
References: <CAP1tNvQh2dCn9_+dwiOzRgCeNFT6AC9n4rJNC39AB2tNYC_W-w@mail.gmail.com>
 <E1wPgnR-0000000264u-3MOI@pty.whiteo.stw.pengutronix.de> <CAP1tNvR-jMbSk7e=TvQU_8COWAoYWsz=P5Pa58g86hKi8=_GYw@mail.gmail.com>
 <4637a71c-3a3d-4489-82a6-804701a655b8@pengutronix.de> <CAP1tNvQxK74rPXgrFqXjMAYpTr0hQNjVYOe+HTPOaGTjMCzn2A@mail.gmail.com>
 <30ef7c90-998f-451a-8113-30883514e084@pengutronix.de>
In-Reply-To: <30ef7c90-998f-451a-8113-30883514e084@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Wed, 27 May 2026 15:31:57 +0300
X-Gm-Features: AVHnY4JAnsxnyIPLzGeE6s19fQcEOKvntxqVkmdjJ6F3FSUup7E9JMWpAO4pTds
Message-ID: <CAP1tNvT2bB6dkcW7yh1ETb73gh+TfnuNaoFnwzwjZ60hADBXBQ@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260527_053210_323129_FA659F4F 
X-CRM114-Status: GOOD (  20.91  )
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
Cc: barebox@lists.infradead.org
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FORGED_GMAIL_RCVD,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: v2026.05.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Ahmad.

I haven't worked with these commands before, but it gives the following:

shc@gentoo /home/ARM64/barebox.b4 $ b4 shazam -H
'https://lore.kernel.org/barebox/20260527121649.3365172-1-a.fatoum@pengutro=
nix.de/T/#t'
Grabbing thread from
lore.kernel.org/all/20260527121649.3365172-1-a.fatoum@pengutronix.de/t.mbox=
.gz
Checking for newer revisions
Grabbing search results from lore.kernel.org
Analyzing 6 messages in the thread
Analyzing 0 code-review messages
Checking attestation on all messages, may take a moment...
---
=E2=9C=93 [PATCH v2 1/5] arch: introduce new CONFIG_ARCH_HAS_MALLOC_SIZE
=E2=9C=93 [PATCH v2 2/5] arch: introduce CONFIG_BAREBOX_MEMORY_OFFSET
=E2=9C=93 [PATCH v2 3/5] ARM64: switch to CONFIG_BAREBOX_MEMORY_OFFSET
=E2=9C=93 [PATCH v2 4/5] ARM64: configs: drop CONFIG_MALLOC_SIZE=3D0x0 as i=
t's
now the default
=E2=9C=93 [PATCH v2 5/5] ARM64: place PBL malloc area at start of barebox
proper malloc area
---
=E2=9C=93 Signed: DKIM/lists.infradead.org (From: a.fatoum@pengutronix.de)
---
Total patches: 5
---
Base: attempting to guess base-commit...
Base: tags/v2026.05.0-778-g20e641c7a5 (best guess, 18/24 blobs matched)
Magic: Preparing a sparse worktree
Unable to cleanly apply series, see failure log below
---
Applying: arch: introduce new CONFIG_ARCH_HAS_MALLOC_SIZE
Applying: arch: introduce CONFIG_BAREBOX_MEMORY_OFFSET
Applying: ARM64: switch to CONFIG_BAREBOX_MEMORY_OFFSET
Applying: ARM64: configs: drop CONFIG_MALLOC_SIZE=3D0x0 as it's now the def=
ault
Applying: ARM64: place PBL malloc area at start of barebox proper malloc ar=
ea
Patch failed at 0005 ARM64: place PBL malloc area at start of barebox
proper malloc area
error: patch failed: arch/arm/cpu/uncompress.c:75
error: arch/arm/cpu/uncompress.c: patch does not apply
hint: Use 'git am --show-current-patch=3Ddiff' to see the failed patch
hint: When you have resolved this problem, run "git am --continue".
hint: If you prefer to skip this patch, run "git am --skip" instead.
hint: To restore the original branch and stop patching, run "git am --abort=
".
hint: Disable this message with "git config set advice.mergeConflict false"
---
Not fetching into FETCH_HEAD

Thanks!

=D1=81=D1=80, 27 =D0=BC=D0=B0=D1=8F 2026=E2=80=AF=D0=B3. =D0=B2 15:22, Ahma=
d Fatoum <a.fatoum@pengutronix.de>:
>
> Hello Alexander,
>
> On 5/25/26 8:06 PM, Alexander Shiyan wrote:
> > Hello Ahmad.
> >
> > I typically use the master branch for my validation work.
> > This is also why I haven't been able to send the extlinux patch v3 yet
> > - the necessary code changes aren't currently in master.
> > If you could provide the required commits as a set that can be
> > cherry-picked directly onto master, I'd be happy to run a full test.
>
> v2 is based off master. You can apply it with:
>
> b4 shazam 'https://lore.kernel.org/barebox/20260527121649.3365172-1-a.fat=
oum@pengutronix.de/T/#t'
>
> In case you didn't know, b4 shazam -H automatically tries to find a suita=
ble
> base and then applies the patches onto it and points FETCH_HEAD there.
>
> Cheers,
> Ahmad
>
> >
> > Thanks!
> >
> > =D0=BF=D1=82, 22 =D0=BC=D0=B0=D1=8F 2026=E2=80=AF=D0=B3. =D0=B2 14:00, =
Ahmad Fatoum <a.fatoum@pengutronix.de>:
> >>
> >> Hello Alexander,
> >>
> >> On 5/20/26 3:27 PM, Alexander Shiyan wrote:
> >>> Hello Sascha.
> >>>
> >>> Yes, that's how it works.
> >>
> >> Can you also give this here a test:
> >> https://lore.barebox.org/barebox/20260522105852.2681680-1-a.fatoum@pen=
gutronix.de/
> >>
> >> Thanks!
> >> Ahmad
> >>
> >>>
> >>> The new version adds a different trap, but it's most likely a board
> >>> issue; I'll investigate.
> >>>
> >>> Thanks!
> >>>
> >>>> rockchip-dmc: rockchip_sdram_size(reg2=3D1000ea01, reg3=3D30000031)
> >>> rockchip-dmc: rank 2 cs0_col 10 cs1_col 10 bk 3 cs0_row 17 cs1_row 17
> >>> bw 2 row_3_4 0
> >>> rockchip-dmc: rk3568_ram_sizes() =3D 8589934592
> >>> uncompress.c: memory at 0x00a00000, size 0xef600000
> >>> endmem                =3D 0xf0000000
> >>> arm_mem_optee         =3D 0xee000000+0x02000000
> >>> arm_mem_scratch       =3D 0xedff8000+0x00008000
> >>> arm_mem_stack         =3D 0xedff0000+0x00008000
> >>> arm_mem_ttb           =3D 0xedf80000+0x00040000
> >>> arm_mem_barebox_image =3D 0xedc00000+0x00400000
> >>> arm_mem_early_malloc  =3D 0xedbe0000+0x00020000
> >>> membase               =3D 0x00a00000+0xef600000
> >>> mmu: enabling MMU, ttb @ 0xedf80000
> >>> mmu: __arch_remap_range: 0x00000000+0x8000000000 type UNCACHED
> >>> mmu: __arch_remap_range: 0x8000000000+0x8000000000 type UNCACHED
> >>> mmu: __arch_remap_range: 0x00a00000+0xef600000 type RWX
> >>> mmu: __arch_remap_range: 0x08400000+0x2000000 type FAULT
> >>> mmu: __arch_remap_range: 0x00b00000+0x60000 type RWX
> >>> uncompress.c: uncompressing barebox ELF at 0x0000000000b60680 (size
> >>> 0x000737a4) to 0xedc00000 (uncompressed size: 0x001bb598)
> >>> uncompress.c: relocating ELF in place
> >>> In-place ELF relocation: text_vaddr=3D0x0, text_offset=3D0x10000,
> >>> load_addr=3D00000000edc00000, offset=3D0xedc10000
> >>> In-place ELF relocation completed successfully
> >>> pbl-mmu: Setting up MMU from ELF segments
> >>> pbl-mmu: Segment 0 not page-aligned, rounding
> >>> pbl-mmu: Segment 0: addr=3D0xedc10000 size=3D0x000b6000 flags=3D0x5 [=
R-X] ->
> >>> mmu_flags=3D0x3
> >>> mmu: __arch_remap_range: 0xedc10000+0xb6000 type CODE
> >>> pbl-mmu: Segment 1 not page-aligned, rounding
> >>> pbl-mmu: Segment 1: addr=3D0xedcc6000 size=3D0x000b9000 flags=3D0x4 [=
R--] ->
> >>> mmu_flags=3D0x4
> >>> mmu: __arch_remap_range: 0xedcc6000+0xb9000 type RO
> >>> pbl-mmu: Segment 3 not page-aligned, rounding
> >>> pbl-mmu: Segment 3: addr=3D0xedd7f000 size=3D0x00047000 flags=3D0x6 [=
RW-] ->
> >>> mmu_flags=3D0x1
> >>> mmu: __arch_remap_range: 0xedd7f000+0x47000 type CACHED
> >>> pbl-mmu: MMU setup from ELF complete
> >>> uncompress.c: jumping to ELF entry point at 0x00000000edcc2c9c
> >>> start.c: memory at 0x00a00000, size 0xef600000
> >>> start.c: initializing malloc pool at 0xadc10000 (size 0x40000000)
> >>> start.c: starting barebox...
> >>> initcall-> command_slice_init+0x0/0x3c
> >>> initcall-> globalvar_init+0x0/0x8c
> >>> initcall-> register_bus_class+0x0/0x20
> >>> initcall-> platform_init+0x0/0x1c
> >>> initcall-> mdio_bus_init+0x0/0x1c
> >>> initcall-> register_mii_class+0x0/0x20
> >>> initcall-> usb_bus_init+0x0/0x1c
> >>> initcall-> otg_bus_init+0x0/0x1c
> >>> initcall-> register_udc_class+0x0/0x20
> >>> initcall-> spi_bus_init+0x0/0x1c
> >>> initcall-> i2c_bus_init+0x0/0x1c
> >>> initcall-> register_i2c_adapter_class+0x0/0x20
> >>> initcall-> register_mmc_class+0x0/0x20
> >>> initcall-> register_fb_class+0x0/0x20
> >>> initcall-> register_backlight_class+0x0/0x20
> >>> initcall-> nvmem_init+0x0/0x14
> >>> initcall-> register_nvmem_class+0x0/0x20
> >>> initcall-> register_watchdog_class+0x0/0x20
> >>> initcall-> gpio_desc_alloc+0x0/0x24
> >>> initcall-> pci_bus_init+0x0/0x1c
> >>> initcall-> scmi_bus_driver_init+0x0/0x40
> >>> initcall-> register_phy_class+0x0/0x20
> >>> initcall-> register_eth_class+0x0/0x20
> >>> initcall-> fs_bus_init+0x0/0x1c
> >>> initcall-> defaultenv_init+0x0/0x6c
> >>> initcall-> console_common_init+0x0/0xac
> >>> initcall-> partitions_init+0x0/0x50
> >>> initcall-> genpd_bus_init+0x0/0x1c
> >>> initcall-> rk_clk_gate_link_driver_register+0x0/0x1c
> >>> initcall-> clk_rk3568_driver_register+0x0/0x1c
> >>> initcall-> clk_rk3588_driver_register+0x0/0x1c
> >>> initcall-> scmi_clocks_driver_register+0x0/0x1c
> >>> initcall-> gated_fixed_clk_driver_register+0x0/0x1c
> >>> initcall-> gpio_gate_clock_driver_register+0x0/0x1c
> >>> initcall-> syscon_driver_register+0x0/0x1c
> >>> initcall-> rockchip_gpio_driver_register+0x0/0x1c
> >>> initcall-> rockchip_pinctrl_driver_register+0x0/0x1c
> >>> initcall-> simple_pm_bus_driver_register+0x0/0x1c
> >>> initcall-> scmi_drv_register+0x0/0x1c
> >>> initcall-> scmi_reset_driver_register+0x0/0x1c
> >>> initcall-> arm_scmi_driver_register+0x0/0x1c
> >>> initcall-> scmi_power_domain_driver_register+0x0/0x1c
> >>> initcall-> aarch64_init_vectors+0x0/0x50
> >>> initcall-> of_arm_init+0x0/0x2c
> >>> deep-probe: enabled in device tree
> >>> initcall-> register_autoboot_vars+0x0/0x7c
> >>> initcall-> system_partitions_var_init+0x0/0x50
> >>> initcall-> register_env_vars+0x0/0x30
> >>> initcall-> mipi_dsi_bus_init+0x0/0x1c
> >>> initcall-> arm_arch_timer_driver_register+0x0/0x1c
> >>> initcall-> of_init_early_vars+0x0/0x8
> >>> initcall-> of_timer_init+0x0/0x20
> >>> initcall-> rockchip_pm_domain_drv_register+0x0/0x1c
> >>> initcall-> net_init+0x0/0x94
> >>> initcall-> init_fs+0x0/0x2c
> >>> initcall-> rockchip_init+0x0/0xe8
> >>> initcall-> ns16550_serial_driver_register+0x0/0x1c
> >>> initcall-> dos_partition_init+0x0/0x1c
> >>> initcall-> efi_partition_init+0x0/0x1c
> >>> initcall-> of_stdoutpath_init+0x0/0x28
> >>> Switch to console [cs0]
> >>>
> >>>
> >>> barebox 2026.05.0-00773-g4ba3c57b6144-dirty #5 Wed May 20 16:20:30 MS=
K 2026
> >>>
> >>>
> >>> Board: Diasom DS-RK3568-SMARC-EVB
> >>> start.c: memory at 0x00a00000, size 0xef600000
> >>> start.c: initializing malloc pool at 0xadc10000 (size 0x40000000)
> >>> start.c: starting barebox...
> >>> initcall-> command_slice_init+0x0/0x3c
> >>> initcall-> globalvar_init+0x0/0x8c
> >>> initcall-> register_bus_class+0x0/0x20
> >>> initcall-> platform_init+0x0/0x1c
> >>> initcall-> mdio_bus_init+0x0/0x1c
> >>> initcall-> register_mii_class+0x0/0x20
> >>> initcall-> usb_bus_init+0x0/0x1c
> >>> initcall-> otg_bus_init+0x0/0x1c
> >>> initcall-> register_udc_class+0x0/0x20
> >>> initcall-> spi_bus_init+0x0/0x1c
> >>> initcall-> i2c_bus_init+0x0/0x1c
> >>> initcall-> register_i2c_adapter_class+0x0/0x20
> >>> initcall-> register_mmc_class+0x0/0x20
> >>> initcall-> register_fb_class+0x0/0x20
> >>> initcall-> register_backlight_class+0x0/0x20
> >>> initcall-> nvmem_init+0x0/0x14
> >>> initcall-> register_nvmem_class+0x0/0x20
> >>> initcall-> register_watchdog_class+0x0/0x20
> >>> initcall-> gpio_desc_alloc+0x0/0x24
> >>> initcall-> pci_bus_init+0x0/0x1c
> >>> initcall-> scmi_bus_driver_init+0x0/0x40
> >>> initcall-> register_phy_class+0x0/0x20
> >>> initcall-> register_eth_class+0xinitcall-> of_probe_memory+0x0/0x60
> >>> initcall-> rockchip_dmc_driver_init+0x0/0x324
> >>> rockchip-dmc memory-controller.of: Detected memory size: 0x200000000
> >>> initcall-> __image_start+0x0/0x74
> >>> initcall-> mem_register_barebox+0x0/0x4c
> >>> initcall-> of_reserved_mem_walk+0x0/0x1bc
> >>> initcall-> mmu_init+0x0/0x1e0
> >>> initcall-> mem_malloc_resource+0x0/0xdc
> >>> initcall-> reset_source_init+0x0/0x50
> >>> initcall-> usbgadget_globalvars_init+0x0/0x44
> >>> initcall-> bootsource_init+0x0/0x40
> >>> initcall-> usb_udc_init+0x0/0x20
> >>> initcall-> rockchip_spi_driver_register+0x0/0x1c
> >>> initcall-> rk3x_i2c_driver_register+0x0/0x1c
> >>> initcall-> rk808_spi_driver_register+0x0/0x28
> >>> initcall-> rk808_i2c_driver_register+0x0/0x28
> >>> initcall-> regulator_fixed_driver_register+0x0/0x1c
> >>> initcall-> rockchip_usb2phy_driver_register+0x0/0x1c
> >>> initcall-> rockchip_combphy_driver_register+0x0/0x1c
> >>> initcall-> rockchip_p3phy_driver_register+0x0/0x1c
> >>> initcall-> rk_udphy_driver_register+0x0/0x1c
> >>> initcall-> rockchip_iodomain_driver_register+0x0/0x1c
> >>> initcall-> digest_hmac_initcall+0x0/0x44
> >>> initcall-> sha1_digest_register+0x0/0x1c
> >>> initcall-> sha256_digest_register+0x0/0x1c
> >>> initcall-> ext_init+0x0/0x1c
> >>> initcall-> ramfs_init+0x0/0x1c
> >>> initcall-> tftp_init+0x0/0x38
> >>> initcall-> nfs_init+0x0/0x5c
> >>> initcall-> fat_init+0x0/0x1c
> >>> initcall-> diasom_rk3568_driver_register+0x0/0x1c
> >>> initcall-> diasom_rk3588_driver_register+0x0/0x1c
> >>> initcall-> psci_driver_register+0x0/0x1c
> >>> initcall-> arm_request_stack+0x0/0x4c
> >>> initcall-> mount_root+0x0/0x74
> >>> initcall-> binfmt_sh_init+0x0/0x1c
> >>> initcall-> binfmt_uimage_init+0x0/0x1c
> >>> initcall-> png_init+0x0/0x1c
> >>> initcall-> extlinux_init+0x0/0x1c
> >>> initcall-> of_kernel_init+0x0/0x28
> >>> initcall-> console_ctrlc_init+0x0/0x30
> >>> initcall-> firmware_init+0x0/0x38
> >>> initcall-> bootdef_entry_init+0x0/0x1c
> >>> initcall-> fastboot_globalvars_init+0x0/0x12c
> >>> initcall-> genphy_driver_register+0x0/0x1c
> >>> initcall-> realtek_drvs_register+0x0/0x20
> >>> initcall-> mdio_gpio_driver_register+0x0/0x1c
> >>> initcall-> rk_gmac_driver_register+0x0/0x1c
> >>> initcall-> rtl8169_eth_driver_register+0x0/0x1c
> >>> initcall-> usb_hub_init+0x0/0x1c
> >>> initcall-> dwc3_driver_register+0x0/0x1c
> >>> initcall-> usb_stor_init+0x0/0x1c
> >>> initcall-> ehci_driver_register+0x0/0x1c
> >>> initcall-> xhci_driver_register+0x0/0x1c
> >>> initcall-> gsermod_init+0x0/0x1c
> >>> initcall-> acmmod_init+0x0/0x1c
> >>> initcall-> dfumod_init+0x0/0x1c
> >>> initcall-> fastbootmod_init+0x0/0x1c
> >>> initcall-> umsmod_init+0x0/0x1c
> >>> initcall-> onboard_dev_driver_register+0x0/0x1c
> >>> initcall-> pca954x_driver_register+0x0/0x28
> >>> initcall-> rk_sdhci_driver_register+0x0/0x1c
> >>> initcall-> dw_mmc_driver_register+0x0/0x1c
> >>> initcall-> backlight_pwm_of_driver_register+0x0/0x1c
> >>> initcall-> vop2_driver_register+0x0/0x1c
> >>> initcall-> dw_hdmi_rockchip_driver_register+0x0/0x1c
> >>> initcall-> dw_mipi_dsi_rockchip_driver_register+0x0/0x1c
> >>> initcall-> led_gpio_of_driver_register+0x0/0x1c
> >>> initcall-> at24_driver_register+0x0/0x28
> >>> initcall-> rockchip_pwm_driver_register+0x0/0x1c
> >>> initcall-> sram_driver_register+0x0/0x1c
> >>> initcall-> mem_init+0x0/0x90
> >>> initcall-> nvmem_cells_driver_register+0x0/0x1c
> >>> initcall-> rmem_driver_register+0x0/0x1c
> >>> initcall-> rockchip_otp_driver_register+0x0/0x1c
> >>> initcall-> dw_wdt_driver_register+0x0/0x1c
> >>> initcall-> pca953x_driver_register+0x0/0x28
> >>> initcall-> rk_rng_driver_register+0x0/0x1c
> >>> initcall-> of_partition_init+0x0/0x48
> >>> initcall-> of_overlay_init+0x0/0x104
> >>> initcall-> fan53555_regulator_driver_register+0x0/0x28
> >>> initcall-> rk808_regulator_driver_register+0x0/0x1c
> >>> initcall-> rockchip_pcie_driver_register+0x0/0x1c
> >>> initcall-> inno_dsidphy_driver_register+0x0/0x1c
> >>> initcall-> rockchip_saradc_driver_register+0x0/0x1c
> >>> initcall-> nvme_driver_register+0x0/0x1c
> >>> initcall-> gpio_restart_driver_register+0x0/0x1c
> >>> initcall-> prng_init+0x0/0x40
> >>> initcall-> null_init+0x0/0x40
> >>> initcall-> full_init+0x0/0x40
> >>> initcall-> zero_init+0x0/0x40
> >>> initcall-> md5_digest_register+0x0/0x1c
> >>> initcall-> sha224_digest_register+0x0/0x1c
> >>> initcall-> init_net_poll+0x0/0x24
> >>> initcall-> netconsole_init+0x0/0x12c
> >>> netconsole: registered as netconsole-1
> >>> initcall-> diasom_rk3568_init+0x0/0x448
> >>> CPU version 0x03 detected.
> >>> rk808 rk8090: chip id: 0x8090
> >>> vcc_ddr: Bringing 500000uV into 1100000-1100000uV
> >>> vdd_npu: Bringing 500000uV into 850000-850000uV
> >>> vdda0v9_image: Bringing 600000uV into 900000-900000uV
> >>> vcca1v8_image: Bringing 600000uV into 1800000-1800000uV
> >>> rockchip_saradc fe720000.saradc@fe720000.of: registered as aiodev0
> >>> SOM version 2+ detected.
> >>> SMARC version 3 used.
> >>> arm-scmi firmware:scmi.of: SCMI Protocol v2.0 'rockchip:' Firmware ve=
rsion 0x0
> >>> psci psci.of: detected version 1.1
> >>> xHCI xHCI0: USB XHCI 1.10
> >>> xHCI xHCI1: USB XHCI 1.10
> >>> ehci fd800000.usb@fd800000.of: USB EHCI 1.00
> >>> ehci fd880000.usb@fd880000.of: USB EHCI 1.00
> >>> fan53555-regulator tcs45250: FAN53555 Option[12] Rev[15] Detected!
> >>> mdio_bus: miibus0: probed
> >>> dwhdmi-rockchip fe0a0000.hdmi@fe0a0000.of: registered I2C bus driver
> >>> dwhdmi-rockchip fe0a0000.hdmi@fe0a0000.of: Detected HDMI TX controlle=
r
> >>> v2.11a with HDCP (DWC HDMI 2.0 TX PHY)
> >>> rockchip-vop2 fe040000.vop@fe040000.of: Registered fb0 on VP0, window
> >>> Smart0-win0, type primary
> >>> rockchip-vop2 fe040000.vop@fe040000.of: Registered fb0_0 on VP0,
> >>> window Smart1-win0, type overlay
> >>> rockchip-vop2 fe040000.vop@fe040000.of: Registered fb0_1 on VP0,
> >>> window Esmart1-win0, type overlay
> >>> rockchip-vop2 fe040000.vop@fe040000.of: Registered fb0_2 on VP0,
> >>> window Esmart0-win0, type overlay
> >>> rockchip-dw-pcie 3c0000000.pcie@fe260000.of: Phy link never came up
> >>> dw_mmc fe2b0000.mmc@fe2b0000.of: registered as mmc1
> >>> mmc1: detected SD card version 3.0
> >>> WARNING: mmc1: GPT:Primary header thinks Alt. header is not at the en=
d
> >>> of the disk.
> >>> WARNING: mmc1: GPT:2669671 !=3D 62333951
> >>> WARNING: mmc1: GPT:Alternate GPT header not at the end of the disk.
> >>> WARNING: mmc1: GPT:2669671 !=3D 62333951
> >>> mmc1: GPT: will repair later if global.system.gpt_refresh=3D1
> >>> mmc1: registered mmc1
> >>> rk3568-dwcmshc-sdhci fe310000.mmc@fe310000.of: registered as mmc0
> >>> mmc0: detected MMC card version 5.1
> >>> mmc0: registered mmc0.boot0
> >>> mmc0: registered mmc0.boot1
> >>> mmc0: registered mmc0
> >>> i2c2: Added multiplexed i2c bus 6
> >>> i2c2: Added multiplexed i2c bus 7
> >>> i2c2: Added multiplexed i2c bus 8
> >>> i2c2: Added multiplexed i2c bus 9
> >>> pca954x pca95460: registered 4 multiplexed busses for I2C switch
> >>> phy6: lane number 0, val 1
> >>> phy6: lane number 1, val 2
> >>> phy6: bifurcation enabled
> >>> rockchip-dw-pcie 3c0800000.pcie@fe280000.of: Phy link never came up
> >>> mdio_bus: miibus1: probed
> >>> mdio_bus: miibus2: probed
> >>> PANIC: unable to handle NULL pointer dereference at address 0x0000000=
000000018
> >>> DABT (current EL) (ESR 0x9600000b)
> >>> elr: 00000000edc6ff00 lr : 00000000edc6ff00
> >>> x0 : 00000000edcd5c17 x1 : 00000000edd7f000
> >>> x2 : 0000000000000000 x3 : 0000000000000030
> >>> x4 : 0000000000000000 x5 : 00000000edff7d18
> >>> x6 : 0000000000000002 x7 : 0000000000000000
> >>> x8 : 00000000aff3aa90 x9 : 6f2e726f74616c75
> >>> x10: 63702d3376336363 x11: 6b6c632d30336569
> >>> x12: 00000000edff7b30 x13: 00000000ffffffc8
> >>> x14: 0000000000000001 x15: 0000000000000000
> >>> x16: 00000000edccb95f x17: 0000000000000000
> >>> x18: 000000000000000a x19: 00000000aff3aa60
> >>> x20: 0000000000000000 x21: 0000000000000010
> >>> x22: 0000000000000000 x23: 00000000edcd5c17
> >>> x24: 0000000000000000 x25: 00000000f0000000
> >>> x26: 00000000000737a4 x27: 00000000001bb598
> >>> x28: 0000000000000000 x29: 00000000edff7dd0
> >>>
> >>> Call trace:
> >>> [<edc6ff00>] (__of_new_property+0x38/0x74) from [<edc6ff94>]
> >>> (of_new_property+0x58/0x6c)
> >>> [<edc6ff94>] (of_new_property+0x58/0x6c) from [<edc700d0>]
> >>> (of_property_write_bool+0x5c/0x68)
> >>> [<edc700d0>] (of_property_write_bool+0x5c/0x68) from [<edc7013c>]
> >>> (of_set_root_node+0x60/0x88)
> >>> [<edc7013c>] (of_set_root_node+0x60/0x88) from [<edcc0854>]
> >>> (diasom_rk3568_init+0x230/0x448)
> >>> [<edcc0854>] (diasom_rk3568_init+0x230/0x448) from [<edc125f4>]
> >>> (start_barebox+0x84/0xa4)
> >>> [<edc125f4>] (start_barebox+0x84/0xa4) from [<edcc2d74>]
> >>> (barebox_non_pbl_start+0xd8/0xe8)
> >>> [<edcc2d74>] (barebox_non_pbl_start+0xd8/0xe8) from [<00b02cfc>] (0xb=
02cfc)
> >>> [<00b02cfc>] (0xb02cfc) from [<00b020c4>] (0xb020c4)
> >>>
> >>> ### ERROR ### Please RESET the board ###
> >>>
> >>> =D1=81=D1=80, 20 =D0=BC=D0=B0=D1=8F 2026=E2=80=AF=D0=B3. =D0=B2 16:17=
, Sascha Hauer <s.hauer@pengutronix.de>:
> >>>>
> >>>> On 2026-05-20 15:11, Alexander Shiyan wrote:
> >>>>> Here is output with lowlevel debug:
> >>>>> DDR 03ea844c5d typ 24/09/03-10:42:57,fwver: v1.23
> >>>>> In
> >>>>> ...
> >>>>> out
> >>>>>> rockchip-dmc: rockchip_sdram_size(reg2=3D1000ea01, reg3=3D30000031=
)
> >>>>> rockchip-dmc: rank 2 cs0_col 10 cs1_col 10 bk 3 cs0_row 17 cs1_row =
17
> >>>>> bw 2 row_3_4 0
> >>>>> rockchip-dmc: rk3568_ram_sizes() =3D 8589934592
> >>>>> mmu: enabling MMU, ttb @ 0xedf80000
> >>>>> mmu: __arch_remap_range: 0x00000000+0x8000000000 type UNCACHED
> >>>>> mmu: __arch_remap_range: 0x8000000000+0x8000000000 type UNCACHED
> >>>>> mmu: __arch_remap_range: 0x00a00000+0xef600000 type RWX
> >>>>> mmu: __arch_remap_range: 0xee000000+0x2000000 type FAULT
> >>>>> mmu: __arch_remap_range: 0x00b00000+0x60000 type RWX
> >>>>
> >>>> Damn. I introduced this:
> >>>>
> >>>>         pbl_malloc_init(membase[0] + memsize[0] - PBL_MALLOC_SIZE, P=
BL_MALLOC_SIZE);
> >>>>
> >>>> This exactly ends up in the area marked as FAULT above (reserved for
> >>>> OP-TEE).
> >>>>
> >>>> Try this:
> >>>>
> >>>>         pbl_malloc_init(membase[0] + memsize[0] - OPTEE_SIZE - PBL_M=
ALLOC_SIZE,
> >>>>                         PBL_MALLOC_SIZE);
> >>>>
> >>>> You have XZ as image compression, right?
> >>>>
> >>>> The rockchip_v8_defconfig uses LZ4 which doesn't need any dynamic me=
mory
> >>>> for decompression. I tested with XZ as well, but the configuration I
> >>>> used for this test doesn't have OP-TEE enabled, so the faulting area=
 was
> >>>> not there.
> >>>>
> >>>> Sascha
> >>>>
> >>>> --
> >>>> Pengutronix e.K.                           |                        =
     |
> >>>> Steuerwalder Str. 21                       | http://www.pengutronix.=
de/  |
> >>>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-=
0    |
> >>>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-=
5555 |
> >>>
> >>>
> >>
> >> --
> >> Pengutronix e.K.                  |                             |
> >> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
> >> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
> >> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
> >>
> >
>
> --
> Pengutronix e.K.                  |                             |
> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
>


