Delivery-date: Thu, 30 Nov 2023 16:09:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r8iff-00EVbp-06
	for lore@lore.pengutronix.de;
	Thu, 30 Nov 2023 16:09:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r8ife-0003ib-PK
	for lore@pengutronix.de; Thu, 30 Nov 2023 16:09:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pyE8927mTKGCq+WY8sc6+QUYERLrhdzBk7UbtthLcJc=; b=ihaC+N7QHGNbTPWcSY7oNZohMV
	y3/BuSjxbBO5bQabd4qSKfL72SpI0hRbWrrh+As/79IkhRWI4qPxJrFPzJ4eeL+ErxVHWByqzpUOy
	dKnagbLNMGautcP6p42Lijim8ehN/6a+Sk5b+6VbnKe3gOAm/ZdlG9/syMRFp/unuaz2NgaT9bMcg
	Xzw9n5r4Nc9LD59VnkNKvc2XP1UQ0kuprmTYX7ECZJnAKir7VzynoSiPzIaX46ccEyHcTLnH9gk+E
	PEcEDpg6CKAtF/X5x6bjN+ij2n1RdKB2XP6alZFJ9OxgTFOyea6N8+9a4Y4mLslhg06EPuuKE4m0B
	xoJYUt1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8ieG-00BAfL-0m;
	Thu, 30 Nov 2023 15:08:16 +0000
Received: from mail-pg1-x531.google.com ([2607:f8b0:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8ieC-00BAev-12
	for barebox@lists.infradead.org;
	Thu, 30 Nov 2023 15:08:14 +0000
Received: by mail-pg1-x531.google.com with SMTP id 41be03b00d2f7-5c2b7ec93bbso819501a12.2
        for <barebox@lists.infradead.org>; Thu, 30 Nov 2023 07:08:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701356891; x=1701961691; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pyE8927mTKGCq+WY8sc6+QUYERLrhdzBk7UbtthLcJc=;
        b=E7nxGoBDo3Ewl+1MRxYFGGw/D4xOZOm4ZkdMHA8bsaL2dX6jAWuqcuSjktyEbTwZTh
         KhMzw4Zs5+fHA1lI/COM6Z/PlzmQQFDav9X8WkdMJlYIMYc2GJXMz7u9zi0Y2zRgFzBs
         zsZhQyR8jQJXg6g+0BqdUQD4v2vW6njA5224KoM8RdtFVC+SggTiLL5LxY9uNmgkqg1e
         DYipsOaPXvtwB2Hkis9fJ08XdlVuMWbalY5Rlt1KXUVXHTve9IpOY8eyAGdzQK/QCzEf
         QdCAkgUD3YLKNQQfV53u5dQwxDZ7HkV9iNVV+PakC5cuVcUSIgTDumYMnF6ssEARqpyl
         MsxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701356891; x=1701961691;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pyE8927mTKGCq+WY8sc6+QUYERLrhdzBk7UbtthLcJc=;
        b=XCCpKsIql/0LC/UxOZyYQcNujEPcC6h+ySnXMAoI5Q47/Nl4jmNIOF2Q3+pVcmuiDJ
         cldYUNLD8TkAl7reNBGGuDmDLnMO146S6enOysB5O8OqfR00ClhWPIXqE9B4xi2A4Irz
         dD2aCMtoFgtqYvO9hkNuYatGYr5BywLsXwAyDYL9D1T7+iRc68K5sYNoEJQDW5WvXgiN
         czNVpyS7i4L3zdUokp9T4L/agsNcXAmy5zjlD/ziAA6zu9oEkFMMMfb4Q6riHzVqhi9/
         DvodWeaY2R5PpL2ZM2UYJXiAM3HHw33tDWi5xtLEXAqtXeySiURGYGaUuRt7DK4CiEg/
         flAg==
X-Gm-Message-State: AOJu0Yzn5AUlvuDi6norGFbYcxpktU50WjJK5Q5mLCMfSGOE9ODyGQ5/
	lqg9mFMvF2aqxwyjU3utmAdD57WqwFVsC2Ks1o2AQquSb9M=
X-Google-Smtp-Source: AGHT+IFLGI1yFIY9ZrbkpJ5QwsL1sxMw8yM4z9Br/bVj8qlmWSeACauHVHLLTd/JshqEztwx8KjFzkYADyqDtISc2GY=
X-Received: by 2002:a17:90b:3b43:b0:285:940a:b9c0 with SMTP id
 ot3-20020a17090b3b4300b00285940ab9c0mr21368420pjb.35.1701356890619; Thu, 30
 Nov 2023 07:08:10 -0800 (PST)
MIME-Version: 1.0
References: <CAP1tNvSUuHY0RGQ0hSOOKPPHHzaRJfnHR4c2hJ2JznqA2t-H9A@mail.gmail.com>
 <8b300282-86fb-40bd-adfa-4ee0fd60045e@pengutronix.de>
In-Reply-To: <8b300282-86fb-40bd-adfa-4ee0fd60045e@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu, 30 Nov 2023 18:07:38 +0300
Message-ID: <CAP1tNvRxRqiHgEKQ645di+KLOHTM0bU5qfogBSps-6xj49MtcQ@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231130_070812_404995_5A393B4F 
X-CRM114-Status: GOOD (  15.46  )
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

barebox@Diasom DS-RK3568-EVB:/ iomem
0x0000000000000000 - 0xffffffffffffffff (size 0x0000000000000000) iomem
  0x000000000010f000 - 0x000000000010f0ff (size 0x0000000000000100)
10f000.sram@10f000.of
  0x0000000000a00000 - 0x00000000efffffff (size 0x00000000ef600000) ram0
    0x00000000afce0e00 - 0x00000000efce0dff (size 0x0000000040000000)
malloc space
    0x00000000efce0e00 - 0x00000000efcffff5 (size 0x000000000001f1f6) board=
 data
    0x00000000efd00000 - 0x00000000efdad1a7 (size 0x00000000000ad1a8) bareb=
ox
    0x00000000efdad1a8 - 0x00000000efdff13f (size 0x0000000000051f98)
barebox data
    0x00000000efdff140 - 0x00000000efe0608f (size 0x0000000000006f50) bss
    0x00000000effe0000 - 0x00000000effeffff (size 0x0000000000010000) ttb
    0x00000000efff0000 - 0x00000000efff7fff (size 0x0000000000008000) stack
  0x00000000fcc00000 - 0x00000000fcffffff (size 0x0000000000400000) xHCI0
  0x00000000fd000000 - 0x00000000fd3fffff (size 0x0000000000400000) xHCI1
  0x00000000fdd40000 - 0x00000000fdd40fff (size 0x0000000000001000)
fdd40000.i2c@fdd40000.of
  0x00000000fdd60000 - 0x00000000fdd600ff (size 0x0000000000000100)
fdd60000.gpio@fdd60000.of
  0x00000000fe010000 - 0x00000000fe01ffff (size 0x0000000000010000)
fe010000.ethernet@fe010000.of
  0x00000000fe2a0000 - 0x00000000fe2affff (size 0x0000000000010000)
fe2a0000.ethernet@fe2a0000.of
  0x00000000fe2b0000 - 0x00000000fe2b3fff (size 0x0000000000004000)
fe2b0000.mmc@fe2b0000.of
  0x00000000fe310000 - 0x00000000fe31ffff (size 0x0000000000010000)
fe310000.mmc@fe310000.of
  0x00000000fe38c000 - 0x00000000fe38ffff (size 0x0000000000004000)
fe38c000.nvmem@fe38c000.of
  0x00000000fe5a0000 - 0x00000000fe5a0fff (size 0x0000000000001000)
fe5a0000.i2c@fe5a0000.of
  0x00000000fe5d0000 - 0x00000000fe5d0fff (size 0x0000000000001000)
fe5d0000.i2c@fe5d0000.of
  0x00000000fe600000 - 0x00000000fe6000ff (size 0x0000000000000100)
fe600000.watchdog@fe600000.of
  0x00000000fe660000 - 0x00000000fe6600ff (size 0x0000000000000100)
fe660000.serial@fe660000.of
  0x00000000fe670000 - 0x00000000fe6700ff (size 0x0000000000000100)
fe670000.serial@fe670000.of
  0x00000000fe6b0000 - 0x00000000fe6b00ff (size 0x0000000000000100)
fe6b0000.serial@fe6b0000.of
  0x00000000fe6c0000 - 0x00000000fe6c00ff (size 0x0000000000000100)
fe6c0000.serial@fe6c0000.of
  0x00000000fe6d0000 - 0x00000000fe6d00ff (size 0x0000000000000100)
fe6d0000.serial@fe6d0000.of
  0x00000000fe720000 - 0x00000000fe7200ff (size 0x0000000000000100)
fe720000.saradc@fe720000.of
  0x00000000fe740000 - 0x00000000fe7400ff (size 0x0000000000000100)
fe740000.gpio@fe740000.of
  0x00000000fe750000 - 0x00000000fe7500ff (size 0x0000000000000100)
fe750000.gpio@fe750000.of
  0x00000000fe760000 - 0x00000000fe7600ff (size 0x0000000000000100)
fe760000.gpio@fe760000.of
  0x00000000fe770000 - 0x00000000fe7700ff (size 0x0000000000000100)
fe770000.gpio@fe770000.of
  0x00000000fe820000 - 0x00000000fe8200ff (size 0x0000000000000100)
fe820000.phy@fe820000.of
  0x00000000fe830000 - 0x00000000fe8300ff (size 0x0000000000000100)
fe830000.phy@fe830000.of
  0x00000000fe840000 - 0x00000000fe8400ff (size 0x0000000000000100)
fe840000.phy@fe840000.of
  0x00000000fe8a0000 - 0x00000000fe8affff (size 0x0000000000010000)
fe8a0000.usb2phy@fe8a0000.of

=D1=87=D1=82, 30 =D0=BD=D0=BE=D1=8F=D0=B1. 2023=E2=80=AF=D0=B3. =D0=B2 17:5=
9, Ahmad Fatoum <a.fatoum@pengutronix.de>:
>
> On 30.11.23 15:28, Alexander Shiyan wrote:
> > Hello All.
> >
> > The latest version of the barebox does not work on a RK3568 with 4G mem=
ory.
> > With a similar board with 2G memory, everything works fine.
> > ...
> > NOTICE:  BL31: v2.3():v2.3-607-gbf602aff1:cl
> > NOTICE:  BL31: Built : 10:16:03, Jun  5 2023
> > INFO:    GICv3 without legacy support detected.
> > INFO:    ARM GICv3 driver initialized in EL3
> > INFO:    pmu v1 is valid 220114
> > INFO:    Using opteed sec cpu_context!
> > INFO:    boot cpu mask: 0
> > INFO:    BL31: Initializing runtime services
> > WARNING: No OPTEE provided by BL2 boot loader, Booting device without
> > OPTEE initialization. SMC`s destined for OPTEE will return SMC_UNK
> > ERROR:   Error initializing runtime service opteed_fast
> > INFO:    BL31: Preparing for EL3 exit to normal world
> > INFO:    Entry point address =3D 0xb00000
> > INFO:    SPSR =3D 0x3c9
> >> rockchip-dmc: rockchip_sdram_size(reg2=3D1000eaf1, reg3=3D30000001)
> > rockchip-dmc: rank 2 cs0_col 10 cs1_col 10 bk 3 cs0_row 16 cs1_row 16
> > bw 2 row_3_4 0
> > rockchip-dmc: rk3568_ram0_size() =3D 4026531840
> > uncompress.c: memory at 0x00a00000, size 0xef600000
> > mmu: enabling MMU, ttb @ 0xeffe0000
> > =3D=3D=3DSTALL HERE=3D=3D=3D
> >
> > Through various manipulations, I identified the faulty patch: "ARM:
> > mmu64: mark barebox text section executable during early init".
> > After its rollback everything works as it should.
>
> Can you print the output of the iomem command after reverting my patch?
>
> Thanks,
> Ahmad
>
> >
> >
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
>


