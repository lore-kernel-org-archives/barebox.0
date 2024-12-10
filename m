Delivery-date: Tue, 10 Dec 2024 12:31:08 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tKySK-006MFC-10
	for lore@lore.pengutronix.de;
	Tue, 10 Dec 2024 12:31:08 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tKySK-00015m-6r
	for lore@pengutronix.de; Tue, 10 Dec 2024 12:31:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xlt23zmJZymmzMIaAYSVnC1klznYyqH21Nxf1w/1kB0=; b=qTg2VS7FE1/FApPyzhVnIR91Om
	RM14Wv0SLHv5HcdzPvavHOatslML07RkcRHoF5zr/2+boDqpUSK3iNWDeUdJl2ROVx911y14u7VET
	mpzokKwIjJWi+A+yev4SasCXnhJxKUkD0INlqXlhbL2sMYRIyqbz7LVaa7BU1PeWkaKNQ9ahYa7L/
	2FiMN5H+3L7sDT/s/dSIY1b2osIJNcfl/22VZHRQ9CpgCJ0GASpvOD2D9iESBnk/VnB+Bon8TySy/
	oc5ldJpCmFCcEpXAew/MqzQN2sOOx6v+mF0VU6cMOdph0fe1W5/vQteQ49STonAbrfNjLctXviqDJ
	rplzRgYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tKyRc-0000000BJit-0zK4;
	Tue, 10 Dec 2024 11:30:24 +0000
Received: from mail-pg1-x532.google.com ([2607:f8b0:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tKyRQ-0000000BJhk-1ldm
	for barebox@lists.infradead.org;
	Tue, 10 Dec 2024 11:30:13 +0000
Received: by mail-pg1-x532.google.com with SMTP id 41be03b00d2f7-7f4325168c8so2728035a12.1
        for <barebox@lists.infradead.org>; Tue, 10 Dec 2024 03:30:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733830211; x=1734435011; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xlt23zmJZymmzMIaAYSVnC1klznYyqH21Nxf1w/1kB0=;
        b=mcTadCP/vzqoz7E+WMPH/QywYd2Zx3UQRoHJGIHslezUdwHnZRFhfWRI7ptN4Rgu6k
         mjnyeE5MVSM+l9oMAehEqgpPo37lbcT4m8ylR2+U5SmCUOKPgMWJypDMw6+WSdFhA16C
         3ZJlPBY1cp1HJjr4Kt4XpCBcIYWWrjHeGeUeNe9xxLAWGvsitz4ogqfcjC57cNwGY31i
         NNA2yMbqQ9shZW4eWwa2/tRHsD0PzgIrtT9Rt21RdGiow7G9CTajZhUy35WXkBUFjQqk
         CNWpP4kHM3mYGwNMdaSaJlW8VuzpxRlzYeFxq7Kc1Rh1PzkSir4/rt9SXbbX5RHor7m6
         FkHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733830211; x=1734435011;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xlt23zmJZymmzMIaAYSVnC1klznYyqH21Nxf1w/1kB0=;
        b=avbtcFB1Vdi8T/qIANF4snuKbJFzB1P//TKVEuO1n4yfZENf60kUrSmy9sqgcC3bJ8
         KPEiiCFwFI6dI2b2MAChOhsHrncm583mSOr3JJTs38DwBSR3iFXkaeoXGf06776a917x
         wLGkLJ4UCnc3UwsJorNwRuba4ASPVGBy0IpBlH0kf4tnl+pSVQjllHfWeCLhNjwxeAlP
         4ydsGZZhSKNhZ2B1lhCqLNeP2HkAQDNJLFVsEC2FMgHaGFU0h4EaaKzigSU1GipJxb1E
         tzYAJuEyoMitBMQfR4JPNVcqG/8/lECOIKRw9hvQdnP2jMAbxcwePZ+2vmBmNv2VLQCA
         dSKw==
X-Gm-Message-State: AOJu0Yxl/qwdb2nU7yDadZYDDizhodVb3oP4Y/95Eh5Vv/ixV4qaz2FY
	gl2B42d8rNG/ECjHxrs5JrVvCUHJI/aWFSm5DvokHWgGHaDdzlE2YzD1H+So27C3+kNFa5DtURo
	NU1n6eG2Ey+SRqnAkc4XJGvy79xdhik5Z
X-Gm-Gg: ASbGnctnGxHoyopyqwoN0lFixYUN7Jkaj6mr3a5SXnqZ6i7HLryGtM/n+KQE5auqmpP
	ZW3IFEy6luMCkdthHY5qUfAgS27VnbtY94J42
X-Google-Smtp-Source: AGHT+IEqUYpyDX0kkpRJs7Ux+SCmC6lwY597s00WVNTjZGCc42T14kPqI3g4L1zC0VnyDnnoLDWtlEYxb57scPjL1aE=
X-Received: by 2002:a17:90b:1812:b0:2ee:a4f2:b311 with SMTP id
 98e67ed59e1d1-2efcf10a203mr6491224a91.8.1733830210963; Tue, 10 Dec 2024
 03:30:10 -0800 (PST)
MIME-Version: 1.0
References: <CAP1tNvQXh3sQz8exOva9oY-XFUh0ULrSuuAA5fNrCREdw8cxAA@mail.gmail.com>
 <Z1MJPVfJY7v2vEgL@pengutronix.de>
In-Reply-To: <Z1MJPVfJY7v2vEgL@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Tue, 10 Dec 2024 14:29:59 +0300
Message-ID: <CAP1tNvSEpZ_==v4o0Om_vCBoN3iuGGu8Qr1SxGxRy4NqCzOB4A@mail.gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241210_033012_463595_8BCE1391 
X-CRM114-Status: GOOD (  17.06  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: memtest failed for rk3588
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello.

The dump does not cause a crash, but the output is very strange:

barebox@Diasom DS-RK3588-BTB-EVB:/ md 0x3fc000100
3fc000100: 940033fd b0000060 39477ea1 91274c00               .3..`....~G9.L=
'.
3fc000110: 17ffffe2 91404001 b9428020 37f80180               .....@@. .B...=
.7
3fc000120: b9428020 32010000 b9028020 52800020                .B....2 ... .=
.R
3fc000130: b9420822 32000042 b9020822 b9420822               ".B.B..2"...".=
B.
3fc000140: 521c0042 b9020822 d65f03c0 52800000               B..R"....._...=
.R
3fc000150: 17fffff8 91404000 34000081 b9428001               .....@@....4..=
B.
3fc000160: 12007821 b9028001 b9420801 121f7821               !x........B.!x=
..
3fc000170: b9020801 b9420801 521c0021 b9020801               ......B.!..R..=
..
3fc000180: d65f03c0 d37b7c21 71000c5f 8b010000               .._.!|{._..q..=
..
3fc000190: 528aaaa1 72bdddc1 f9400400 b900ac01               ...R...r..@...=
..
3fc0001a0: 529dddc1 72aaaaa1 b90a7c01 b94a2401               ...R...r.|...$=
J.
3fc0001b0: 321c0021 b90a2401 b94a2403 12147463               !..2.$...$J.ct=
..
3fc0001c0: 54000300 52808001 1ac22022 2a030042               ...T...R" ..B.=
.*
3fc0001d0: b90a2402 b94a2401 32000021 b90a2401               .$...$J.!..2.$=
..
3fc0001e0: b94a2401 360fffe1 b94a2401 121f7821               .$J....6.$J.!x=
..
3fc0001f0: b90a2401 b94a2401 12147421 b90a2401               .$...$J.!t...$=
..
barebox@Diasom DS-RK3588-BTB-EVB:/ md 0x3fc000200
3fc000200: xxxxxxxx xxxxxxxx xxxxxxxx xxxxxxxx               ..............=
..
3fc000210: xxxxxxxx xxxxxxxx xxxxxxxx xxxxxxxx               ..............=
..
3fc000220: xxxxxxxx xxxxxxxx xxxxxxxx xxxxxxxx               ..............=
..
3fc000230: xxxxxxxx xxxxxxxx xxxxxxxx xxxxxxxx               ..............=
..
3fc000240: xxxxxxxx xxxxxxxx xxxxxxxx xxxxxxxx               ..............=
..
3fc000250: xxxxxxxx xxxxxxxx xxxxxxxx xxxxxxxx               ..............=
..
3fc000260: xxxxxxxx xxxxxxxx xxxxxxxx xxxxxxxx               ..............=
..
3fc000270: xxxxxxxx xxxxxxxx xxxxxxxx xxxxxxxx               ..............=
..
3fc000280: xxxxxxxx xxxxxxxx xxxxxxxx xxxxxxxx               ..............=
..
3fc000290: xxxxxxxx xxxxxxxx xxxxxxxx xxxxxxxx               ..............=
..
3fc0002a0: xxxxxxxx xxxxxxxx xxxxxxxx xxxxxxxx               ..............=
..
3fc0002b0: xxxxxxxx xxxxxxxx xxxxxxxx xxxxxxxx               ..............=
..
3fc0002c0: xxxxxxxx xxxxxxxx xxxxxxxx xxxxxxxx               ..............=
..
3fc0002d0: xxxxxxxx xxxxxxxx xxxxxxxx xxxxxxxx               ..............=
..
3fc0002e0: xxxxxxxx xxxxxxxx xxxxxxxx xxxxxxxx               ..............=
..
3fc0002f0: xxxxxxxx xxxxxxxx xxxxxxxx xxxxxxxx               ..............=
..
barebox@Diasom DS-RK3588-BTB-EVB:/

=D0=BF=D1=82, 6 =D0=B4=D0=B5=D0=BA. 2024=E2=80=AF=D0=B3. =D0=B2 17:25, Sasc=
ha Hauer <s.hauer@pengutronix.de>:
>
> Hi Alexander,
>
> On Fri, Dec 06, 2024 at 04:10:42PM +0300, Alexander Shiyan wrote:
> > Hello all!
> >
> > When testing a board with a RK3588 CPU, I get a stable crash on memtest=
.
> > This is the first sample of the board on this CPU and of course it is p=
ossible
> > that something is really not soldered correctly, but should the
> > bootloader crash in this case?
> >
> >
> > Testing memory space: 0x0000000100000000 -> 0x00000003ffffffff:
> > Starting data line test.
> > Check for address bits stuck high.
> > Check for address bits stuck low or shorted.
> > Starting moving inversions test of RAM:
> > Fill with address, compare, fill with inverted address, compare again
> >         [##########################################DABT (current EL)
> > exception (ESR 0x96000010) at 0x00000003fc000200
>
> Can you access 0x3fc000200 using md/mw?
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


