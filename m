Delivery-date: Fri, 01 Dec 2023 08:26:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r8xvF-00FX1o-26
	for lore@lore.pengutronix.de;
	Fri, 01 Dec 2023 08:26:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r8xvF-00013U-CY
	for lore@pengutronix.de; Fri, 01 Dec 2023 08:26:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=isqEzRunsMZObDOXA4i35ldAgZEFXR8FJGY+SySn2Rk=; b=D4ngOUmPehV3rbpG7uMKDy7PgZ
	Q/cHUFoGTRhGVPIb+noDTXEuO2z46uQ2GYWA3qSVoBZ7yzH5m1P/8NImEFSrs0IBmXSNVjF3GZk5m
	4A+zYIZR8LK7aoErmLBghAMwuH/3khhQL6G2bfw+S5fPQqkGlhEsqpV10ogaYIp2mF/4ExDD7jgM/
	X+2s0PnR5YzOwKdVxxdhdFw6CZ8yOhA5Ry0RyYed/TAHNrQxZAJFY48b4I6LRDsIcQrMgd2sW0v+R
	i3SsGu6ysepqcu/g5XO8KXmCGWYlZ0OdXKbU5ILZPvoOMb4eDOgr8MsTRnWF683PJQmNzMKAQekrv
	duayyJ/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8xtL-00Csq0-1a;
	Fri, 01 Dec 2023 07:24:51 +0000
Received: from mail-pg1-x52e.google.com ([2607:f8b0:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8xtI-00CspT-0m
	for barebox@lists.infradead.org;
	Fri, 01 Dec 2023 07:24:49 +0000
Received: by mail-pg1-x52e.google.com with SMTP id 41be03b00d2f7-5b9a456798eso175359a12.3
        for <barebox@lists.infradead.org>; Thu, 30 Nov 2023 23:24:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701415487; x=1702020287; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=isqEzRunsMZObDOXA4i35ldAgZEFXR8FJGY+SySn2Rk=;
        b=SAB+HDaIS31m8CPfkzYsTLzQcZjbz9lsmwC9QP+AmeSBXrMbHXiRn4vAi1rryjXJkv
         wvGQ96ajpWbVxnZryT+WXzugHbQQZHZtVZBk4HQycMcvTaaKG4GA/oi1oP70408vhSrS
         4a8Yi+RaUL0hfWmWBx5gh5CYGYBFd+rBWGgXavFMKX46EVEPZ8zvbK0WzJLGY7GhJYhA
         XIm/6M9eVn+kz3Z4ApfvDSwKzFVOSLmhq7AjBFZ7jiBenyeKXFdZdO0YLE0hmvnXuV8n
         2IG+R2S2P1VQ9jGRQ0a3xY+FV+RTp8KD+wrwGHKoe/KN7JendaHhA2RNAEzhc6jDJEmM
         zubA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701415487; x=1702020287;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=isqEzRunsMZObDOXA4i35ldAgZEFXR8FJGY+SySn2Rk=;
        b=OYrkbSfkdDW+ymhSZzRnowJ4X3hZTvA1+WC21POMhBYhKTaICo+6c8aN7zPehhUQ+4
         nyFUr4xaGZZhwmZgA6SiLf3UIRDhCD7Vjgc+g17kLUJtEp9t6A/aC63cTF5OGmEVlE33
         KKjh7+nefXZ3coYrdce4DIo100iihM9hVKsSqNX41ARjWjDRj0qRcsvgGqDrs94uyPP3
         FzYbADZYaTK2pnapEr7jLzKD+U8NSFfkCZ2Nai68W89+WfLwslRv2Tyi+ANwfy7B6q1/
         cplwA/cdCWlLbym1Ubq97FccEHRTWYUQJkia+AGXWcXZVa5mdhqeMWPAi8a8XTM0iwDr
         O/XQ==
X-Gm-Message-State: AOJu0Yz/LAiZR8h3bhzjqtCRKNfiHTahk7vvKN25z3tzdPw9DGHtPHZf
	zzYlD/RFzkWbfH9qUB/XEiQZa6My+Q885xz+JpjIlnWpOcU=
X-Google-Smtp-Source: AGHT+IFbRirDknqyGrO1eJuAyqYjJA7suMYw1j/wA6kZ7DTZD4N7uDtRqFWEGf3CL1JixFWxYXi50kZnD51a8yasZXI=
X-Received: by 2002:a05:6a21:3989:b0:187:a581:cc4e with SMTP id
 ad9-20020a056a21398900b00187a581cc4emr29329541pzc.29.1701415487001; Thu, 30
 Nov 2023 23:24:47 -0800 (PST)
MIME-Version: 1.0
References: <CAP1tNvSUuHY0RGQ0hSOOKPPHHzaRJfnHR4c2hJ2JznqA2t-H9A@mail.gmail.com>
 <8b300282-86fb-40bd-adfa-4ee0fd60045e@pengutronix.de> <CAP1tNvRxRqiHgEKQ645di+KLOHTM0bU5qfogBSps-6xj49MtcQ@mail.gmail.com>
In-Reply-To: <CAP1tNvRxRqiHgEKQ645di+KLOHTM0bU5qfogBSps-6xj49MtcQ@mail.gmail.com>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri, 1 Dec 2023 10:24:35 +0300
Message-ID: <CAP1tNvTK5AKgPCXrU8TZ0NHvYts8bcihsh5M3axMAAn7+NtNAw@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231130_232448_279530_38215CF4 
X-CRM114-Status: GOOD (  18.09  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: RK3568 fail with 2023.11.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello all.

Update:
In both of the problems I described for the RK3568 with 4 GB memory,
the dmc driver is probably not working correctly.

rockchip-dmc: rk3568_ram0_size() =3D 4026531840
Here is 0xf0000000, i.e. 4G minus 256M.
Next, the barebox writes that 0x0000000100000000 memory is detected.
In what direction should I look for the problem?

Thanks!

=D1=87=D1=82, 30 =D0=BD=D0=BE=D1=8F=D0=B1. 2023=E2=80=AF=D0=B3. =D0=B2 18:0=
7, Alexander Shiyan <eagle.alexander923@gmail.com>:
>
> barebox@Diasom DS-RK3568-EVB:/ iomem
> 0x0000000000000000 - 0xffffffffffffffff (size 0x0000000000000000) iomem
>   0x000000000010f000 - 0x000000000010f0ff (size 0x0000000000000100)
> 10f000.sram@10f000.of
>   0x0000000000a00000 - 0x00000000efffffff (size 0x00000000ef600000) ram0
>     0x00000000afce0e00 - 0x00000000efce0dff (size 0x0000000040000000)
> malloc space
>     0x00000000efce0e00 - 0x00000000efcffff5 (size 0x000000000001f1f6) boa=
rd data
>     0x00000000efd00000 - 0x00000000efdad1a7 (size 0x00000000000ad1a8) bar=
ebox
>     0x00000000efdad1a8 - 0x00000000efdff13f (size 0x0000000000051f98)
> barebox data
>     0x00000000efdff140 - 0x00000000efe0608f (size 0x0000000000006f50) bss
>     0x00000000effe0000 - 0x00000000effeffff (size 0x0000000000010000) ttb
>     0x00000000efff0000 - 0x00000000efff7fff (size 0x0000000000008000) sta=
ck
>   0x00000000fcc00000 - 0x00000000fcffffff (size 0x0000000000400000) xHCI0
>   0x00000000fd000000 - 0x00000000fd3fffff (size 0x0000000000400000) xHCI1
>   0x00000000fdd40000 - 0x00000000fdd40fff (size 0x0000000000001000)
> fdd40000.i2c@fdd40000.of
>   0x00000000fdd60000 - 0x00000000fdd600ff (size 0x0000000000000100)
> fdd60000.gpio@fdd60000.of
>   0x00000000fe010000 - 0x00000000fe01ffff (size 0x0000000000010000)
> fe010000.ethernet@fe010000.of
>   0x00000000fe2a0000 - 0x00000000fe2affff (size 0x0000000000010000)
> fe2a0000.ethernet@fe2a0000.of
>   0x00000000fe2b0000 - 0x00000000fe2b3fff (size 0x0000000000004000)
> fe2b0000.mmc@fe2b0000.of
>   0x00000000fe310000 - 0x00000000fe31ffff (size 0x0000000000010000)
> fe310000.mmc@fe310000.of
>   0x00000000fe38c000 - 0x00000000fe38ffff (size 0x0000000000004000)
> fe38c000.nvmem@fe38c000.of
>   0x00000000fe5a0000 - 0x00000000fe5a0fff (size 0x0000000000001000)
> fe5a0000.i2c@fe5a0000.of
>   0x00000000fe5d0000 - 0x00000000fe5d0fff (size 0x0000000000001000)
> fe5d0000.i2c@fe5d0000.of
>   0x00000000fe600000 - 0x00000000fe6000ff (size 0x0000000000000100)
> fe600000.watchdog@fe600000.of
>   0x00000000fe660000 - 0x00000000fe6600ff (size 0x0000000000000100)
> fe660000.serial@fe660000.of
>   0x00000000fe670000 - 0x00000000fe6700ff (size 0x0000000000000100)
> fe670000.serial@fe670000.of
>   0x00000000fe6b0000 - 0x00000000fe6b00ff (size 0x0000000000000100)
> fe6b0000.serial@fe6b0000.of
>   0x00000000fe6c0000 - 0x00000000fe6c00ff (size 0x0000000000000100)
> fe6c0000.serial@fe6c0000.of
>   0x00000000fe6d0000 - 0x00000000fe6d00ff (size 0x0000000000000100)
> fe6d0000.serial@fe6d0000.of
>   0x00000000fe720000 - 0x00000000fe7200ff (size 0x0000000000000100)
> fe720000.saradc@fe720000.of
>   0x00000000fe740000 - 0x00000000fe7400ff (size 0x0000000000000100)
> fe740000.gpio@fe740000.of
>   0x00000000fe750000 - 0x00000000fe7500ff (size 0x0000000000000100)
> fe750000.gpio@fe750000.of
>   0x00000000fe760000 - 0x00000000fe7600ff (size 0x0000000000000100)
> fe760000.gpio@fe760000.of
>   0x00000000fe770000 - 0x00000000fe7700ff (size 0x0000000000000100)
> fe770000.gpio@fe770000.of
>   0x00000000fe820000 - 0x00000000fe8200ff (size 0x0000000000000100)
> fe820000.phy@fe820000.of
>   0x00000000fe830000 - 0x00000000fe8300ff (size 0x0000000000000100)
> fe830000.phy@fe830000.of
>   0x00000000fe840000 - 0x00000000fe8400ff (size 0x0000000000000100)
> fe840000.phy@fe840000.of
>   0x00000000fe8a0000 - 0x00000000fe8affff (size 0x0000000000010000)
> fe8a0000.usb2phy@fe8a0000.of
>
> =D1=87=D1=82, 30 =D0=BD=D0=BE=D1=8F=D0=B1. 2023=E2=80=AF=D0=B3. =D0=B2 17=
:59, Ahmad Fatoum <a.fatoum@pengutronix.de>:
> >
> > On 30.11.23 15:28, Alexander Shiyan wrote:
> > > Hello All.
> > >
> > > The latest version of the barebox does not work on a RK3568 with 4G m=
emory.
> > > With a similar board with 2G memory, everything works fine.
> > > ...
> > > NOTICE:  BL31: v2.3():v2.3-607-gbf602aff1:cl
> > > NOTICE:  BL31: Built : 10:16:03, Jun  5 2023
> > > INFO:    GICv3 without legacy support detected.
> > > INFO:    ARM GICv3 driver initialized in EL3
> > > INFO:    pmu v1 is valid 220114
> > > INFO:    Using opteed sec cpu_context!
> > > INFO:    boot cpu mask: 0
> > > INFO:    BL31: Initializing runtime services
> > > WARNING: No OPTEE provided by BL2 boot loader, Booting device without
> > > OPTEE initialization. SMC`s destined for OPTEE will return SMC_UNK
> > > ERROR:   Error initializing runtime service opteed_fast
> > > INFO:    BL31: Preparing for EL3 exit to normal world
> > > INFO:    Entry point address =3D 0xb00000
> > > INFO:    SPSR =3D 0x3c9
> > >> rockchip-dmc: rockchip_sdram_size(reg2=3D1000eaf1, reg3=3D30000001)
> > > rockchip-dmc: rank 2 cs0_col 10 cs1_col 10 bk 3 cs0_row 16 cs1_row 16
> > > bw 2 row_3_4 0
> > > rockchip-dmc: rk3568_ram0_size() =3D 4026531840
> > > uncompress.c: memory at 0x00a00000, size 0xef600000
> > > mmu: enabling MMU, ttb @ 0xeffe0000
> > > =3D=3D=3DSTALL HERE=3D=3D=3D
> > >
> > > Through various manipulations, I identified the faulty patch: "ARM:
> > > mmu64: mark barebox text section executable during early init".
> > > After its rollback everything works as it should.
> >
> > Can you print the output of the iomem command after reverting my patch?
> >
> > Thanks,
> > Ahmad
> >
> > >
> > >
> >
> > --
> > Pengutronix e.K.                           |                           =
  |
> > Steuerwalder Str. 21                       | http://www.pengutronix.de/=
  |
> > 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0  =
  |
> > Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-555=
5 |
> >


