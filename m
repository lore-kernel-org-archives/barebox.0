Delivery-date: Thu, 30 Nov 2023 15:30:52 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r8i43-00ETqA-2D
	for lore@lore.pengutronix.de;
	Thu, 30 Nov 2023 15:30:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r8i43-0005ke-Oh
	for lore@pengutronix.de; Thu, 30 Nov 2023 15:30:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:Subject:
	Message-ID:Date:From:MIME-Version:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=fwoREsDJA8PxsN5aKvukhY/OO9CPyT9RGXbe/vDiFwM=; b=Tm1UYX5Za7SyK7lixEN5Cl3yEF
	c7e+/S2+SADQJ6eVYUmkIoq5thdzneYfHgai1ElvyRNBsVG3KojbgjW8jpzn0dctYNxeXpPxqRan/
	cPtqc1gbZZmZXx9oWrKbsLpL0zlpHVpy+OeT/PAdZ3Zx0DGH96A4OIslTx7X6qb3TR6CXcGGpmnoR
	KjAQMbK0K+Tr5pk0EbXwOBI1InLBH9jfuRF2eGAWJA20z7oQS3x8u3E5BVKDY01rjXGfO2osBWIE/
	J6hlwc1x6z4uK3uHFhVP+YGCidsbgU04njPFbem/3O0T/f2QNoFWflWhXr6bjjumgEVV3J4DUhUhu
	foFJyDSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8i2L-00B62N-0y;
	Thu, 30 Nov 2023 14:29:05 +0000
Received: from mail-pj1-x1031.google.com ([2607:f8b0:4864:20::1031])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r8i2I-00B61y-0L
	for barebox@lists.infradead.org;
	Thu, 30 Nov 2023 14:29:03 +0000
Received: by mail-pj1-x1031.google.com with SMTP id 98e67ed59e1d1-28555b0c7afso1002933a91.1
        for <barebox@lists.infradead.org>; Thu, 30 Nov 2023 06:28:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1701354535; x=1701959335; darn=lists.infradead.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=fwoREsDJA8PxsN5aKvukhY/OO9CPyT9RGXbe/vDiFwM=;
        b=Rs3QgdYnUorUzOmnxM+4qhkSLnsaHvTLqoc2kCOagtqBTft7ChslDWGhhpmBni+Ekk
         DbnrUJGqP07Hq1XqSAS80gKlcDOnyFbDTtrfSY/ERWKK3mRzhVKTTW6zva3Fh766cbhA
         3bfkgCeJm8qyGNU0JsUxmk5gL6icrIbV+EX20NMZ/QEHzIdrz+rMrB9/1YY5p2yDCDLt
         pZN7eMLlAxUC+88673B4k3EVk+G6N2UOImvYldtaTahKgqRPcGwUsf890K3MI3Cm6DmJ
         tmi8LNo9Ob4g2fTlif7MRgYtkQsEsuBBQXxZc8E4R9MnGoJAWy9Ns2CinaioTOjbZysJ
         dWnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701354535; x=1701959335;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fwoREsDJA8PxsN5aKvukhY/OO9CPyT9RGXbe/vDiFwM=;
        b=lyNgKZxraOGj8I8O2oz/4X84Ix8kZfObyoZMPo8T2pVPV97qleHdS4dEzRNKihXAv5
         T0+dwq93uS65h56CmcfBt8DBwwvXoAfFDtxZS4w5jtsWNYTrPZjYGoNDT/RL7Et5lPUW
         PBGYpJaTvBYfKcc5LVkSupGVqISMEWddaP50b0BlcnSWuXxFwHeM4zEdTHDpjMpqAYE2
         uKabEL6a11sRJNUDyJPZqyhQb14lBkGF2MWibnySYhW1dfGQ2SBjHg1a6IrPJTlZ+/ZT
         RVPIJkoAHLsxGtscQulfxmpiiFs6WUyMO5cPehbbJBKkCu+a44G6UStd04OWdKeFCE6u
         3I9Q==
X-Gm-Message-State: AOJu0YwymnZfI4TFD6FMXpIiIa757LiUsbzWWtLTIkqLWn/nObnss7NO
	vL1ELXu/81IRyeQJ/fspB34dFEcErwd5fE6zSPhmCBwjkxY=
X-Google-Smtp-Source: AGHT+IEUl4l4E1Z3yKGHrgMggzCrudvZxR3W+uPx7l0EkNZq33RVoRCiHPkevR8aJmnf+0rOn+KL+hRdeU1jgHVgMJA=
X-Received: by 2002:a17:90b:1d90:b0:285:b6be:d89c with SMTP id
 pf16-20020a17090b1d9000b00285b6bed89cmr18043960pjb.7.1701354535415; Thu, 30
 Nov 2023 06:28:55 -0800 (PST)
MIME-Version: 1.0
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu, 30 Nov 2023 17:28:44 +0300
Message-ID: <CAP1tNvSUuHY0RGQ0hSOOKPPHHzaRJfnHR4c2hJ2JznqA2t-H9A@mail.gmail.com>
To: Barebox List <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231130_062902_146597_E6EE34B0 
X-CRM114-Status: UNSURE (   3.63  )
X-CRM114-Notice: Please train this message.
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
Subject: RK3568 fail with 2023.11.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello All.

The latest version of the barebox does not work on a RK3568 with 4G memory.
With a similar board with 2G memory, everything works fine.
...
NOTICE:  BL31: v2.3():v2.3-607-gbf602aff1:cl
NOTICE:  BL31: Built : 10:16:03, Jun  5 2023
INFO:    GICv3 without legacy support detected.
INFO:    ARM GICv3 driver initialized in EL3
INFO:    pmu v1 is valid 220114
INFO:    Using opteed sec cpu_context!
INFO:    boot cpu mask: 0
INFO:    BL31: Initializing runtime services
WARNING: No OPTEE provided by BL2 boot loader, Booting device without
OPTEE initialization. SMC`s destined for OPTEE will return SMC_UNK
ERROR:   Error initializing runtime service opteed_fast
INFO:    BL31: Preparing for EL3 exit to normal world
INFO:    Entry point address = 0xb00000
INFO:    SPSR = 0x3c9
>rockchip-dmc: rockchip_sdram_size(reg2=1000eaf1, reg3=30000001)
rockchip-dmc: rank 2 cs0_col 10 cs1_col 10 bk 3 cs0_row 16 cs1_row 16
bw 2 row_3_4 0
rockchip-dmc: rk3568_ram0_size() = 4026531840
uncompress.c: memory at 0x00a00000, size 0xef600000
mmu: enabling MMU, ttb @ 0xeffe0000
===STALL HERE===

Through various manipulations, I identified the faulty patch: "ARM:
mmu64: mark barebox text section executable during early init".
After its rollback everything works as it should.


