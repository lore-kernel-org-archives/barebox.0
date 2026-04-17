Delivery-date: Fri, 17 Apr 2026 13:04:15 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDgzf-00DAbp-2h
	for lore@lore.pengutronix.de;
	Fri, 17 Apr 2026 13:04:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDgzf-0006GA-81
	for lore@pengutronix.de; Fri, 17 Apr 2026 13:04:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KIc3ivDqFHxaAH+JKbgDfkzv+7T/DRxiFBeAG3J4Ra0=; b=FP8ILwAyJWX7pMLE/HyyaG/ptX
	0oSnoMOIvraMvvip0dOt7MQKb69Gt4+YhHIgCqMfGiHOqq5FMlzgK3hJeTHk2VKm7I/l43Fg+LyjX
	8qSaMDXSzP+ucALu2zV90vXpEtJ1bMj7dAiWOElvrjKaJVm4flJrSLgcFZCBKQRbNVQS76ihxUBDz
	H60xBmodbK4XQXrY6pHp/oy+prQdP4v2MktYH6M0XJA5+m/l24svqKDIjf5WKSGf9U1FLDB3ODH0Z
	Cp7DGweSiOsP3PfIrx0KQd+y9MOREUkVPqopLtXeXvzLY0xyaVljLEdK3epqGyIG3LaJmZx5BqtGb
	zIHqe5sA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDgzD-00000003wpM-1Um8;
	Fri, 17 Apr 2026 11:03:47 +0000
Received: from mail-dl1-x122f.google.com ([2607:f8b0:4864:20::122f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDgzB-00000003wp1-0CCR
	for barebox@lists.infradead.org;
	Fri, 17 Apr 2026 11:03:46 +0000
Received: by mail-dl1-x122f.google.com with SMTP id a92af1059eb24-12c726f46baso751457c88.1
        for <barebox@lists.infradead.org>; Fri, 17 Apr 2026 04:03:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1776423824; cv=none;
        d=google.com; s=arc-20240605;
        b=RELuq26B21znGsUkDoiylKa21Q3i9ITfwRlXlCrBJm4JDLLbWTD6vY407hUQwEDStw
         TYxPXSEwACSptxcHAyw7/405Dqet2uZZ6N5YnJ4sVLKMMPN1ubPbuyoT8JGb2kDT6aEA
         I9iiWuQ/Hyuz7dk6quuDj5rxJ7r+vKieK29IoJ28nV1r2AzNN1Npr9NwxEFFwtmzSuAJ
         /pjjfsuhXtUPyu05Vka0XlmipiT4tBqEOw46vKg7fBE2p1mWuENk5SjaU8RfbLudhitw
         E/lhiRDP7zTVFhVbLvjG3IAwPK5WHum0hyCQ/M/bLSC1iDdD08ACWl7YkISznUs1O0Pm
         QrtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=KIc3ivDqFHxaAH+JKbgDfkzv+7T/DRxiFBeAG3J4Ra0=;
        fh=QTl4aF0/iXkDY6Uf61Tk/V/7sh5GF70RwK/YHfa2l1k=;
        b=aja56WyZr4uj3YkcgC3+2eeumkq7wkW/9AK71+EGRcp0jvjpDcD1ppdUmjRmSkkLGC
         H63rkCrcleCJqDSwWZJ9ywFs/JlQGITalvowe7179PEJMDK1W2CcWjF24VPY1bl5v2yq
         pSzZCEKrs34fA6JHc4nGSVugzc535B9hLiZCUAsR3xWoT9hYvN9USbaCpFApoGSlofkg
         tXoIzI7he7oR81WY2wt1yQTDmeXxxSflN/nQOLd9KjVcQMKj6CDiUAzn8NVeZ+T77XD6
         2p4LrJMrhed3vqQJgKzHxPee4BoNLC5USjCWy+ilaLeA+s0C3Rpp+2/lX1DFDxB7fi2I
         tomA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776423824; x=1777028624; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KIc3ivDqFHxaAH+JKbgDfkzv+7T/DRxiFBeAG3J4Ra0=;
        b=Eh2Cj1DxldlE46nFs7BjhhkKpCemlhta2sp2oU+Y6ZSuLiu6scYdt2UpGwFg3R5Vci
         5CqNCtF4Ukq7XYtuSXPL1a6p3+NRnr8+O07IHKw2lX1Tbe9e6J4faD7HVtOUtu4w/1df
         yz9KaXhcSMJ0MMHnAT3LceWkjI+CbV9OzrZbiZesuROKd2OAHgeaiTkQ0QOBkx/7d6eP
         TrEOXcp4gpYyX7xC70enSM7bmrbj0ZcpF1Y93GpRVGtryaWpL+mfwEObMMuxuyBq6exV
         EI+K7HWdakMiYyLAA89gZwhAcGANUZ3lCdMMjW/RX06LkAjR59WSIlP2qiii8wsBFDBc
         I8jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776423824; x=1777028624;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=KIc3ivDqFHxaAH+JKbgDfkzv+7T/DRxiFBeAG3J4Ra0=;
        b=lvx/TI3ySjla0gp8VMHwGNmsx1UHGUYc0LgM/Crp3ZgSohOwwU2qKaG4/BgES3VXsO
         RomWKtsidLEcMIBSTDzRmQ+vue8wwaCv45qVRV1K/kK9oXmIgbFpVxtWyPB7LQ6rEM5s
         xvG+RtYwnP21ovSuXmL+pZFyppNvD5euglORe4OFAJmvXZaNTSBFu8jdy7YptHO5VIsP
         CHli0Rt2VrEUFKDbQDYp4c2jlCp4q/jeSTlCpAncekIy7B+kt2HO9Wwvfl8/vNvu3OGU
         5tR3S8vCbwjrd2LjiBR+RBkjaFF1j9wQwntAJ9B0xAx2jnjYIkjWaH4L4aUda3DUJ953
         9l8A==
X-Gm-Message-State: AOJu0YzP+w7d4LVB9LWT1Sf+Xygb07aI9vWC9QapzSjeBRy6NTmEjBjK
	Y7GjtcSeWVMAQKPStmKfGfoFWx3r8WDpbZaA5vJATum345fHIN67KBdxmTd1rnmg/vvhlypxZFc
	Sraq74JQwSxsolvDO8BjfOf5nmK8vj6DfIwDflpM=
X-Gm-Gg: AeBDiets40jG5RllJFM+kRWJLcSlSaLmHwuadp32HVsNTq084vUrEV/XbCXI/fhnE8t
	it5CF9tn01MITUM2FesXxbVtv69mYu8K5LEpHhx6OBa7WFC5p/S3zgfyjBgrIGrE4ZQ4s5K7UT3
	QN4gUVaqo2JJeLQV5oBG3LJ+cxBpJzPXwHhZyZu4qEUS8K5KIsGLAQ6CJ/2QH1UcMfvXS7gKPsT
	ZMCK7juTIS9enBGopXQ/AkmvTd5BHTwyDcf/X5KeWbXqdMejNODNoc1Zq1ilQtFf6LN3gIvRX9i
	w4/woOS/76RbrJcsurw=
X-Received: by 2002:a05:7022:502:b0:127:3f2a:af21 with SMTP id
 a92af1059eb24-12c73f7344bmr1040546c88.15.1776423824077; Fri, 17 Apr 2026
 04:03:44 -0700 (PDT)
MIME-Version: 1.0
References: <20260416125512.3275056-1-eagle.alexander923@gmail.com> <aeHzAfUsNYQL3S4h@pengutronix.de>
In-Reply-To: <aeHzAfUsNYQL3S4h@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri, 17 Apr 2026 14:03:32 +0300
X-Gm-Features: AQROBzCVkZpaQ6VMvSod-Jo-Au9Eu7xZlVHJvl1Yjv8MMjYRlQLX9ntKbbHSvT4
Message-ID: <CAP1tNvSqVnPuP=wXMXWzsC7dV6uyAhn=dzwoiD_i6zOV-jfOhw@mail.gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260417_040345_094742_8C5100D9 
X-CRM114-Status: GOOD (  19.11  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_GMAIL_RCVD,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] bootm: filter out "<NULL>" rootopts to avoid kernel
 cmdline noise
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello, Sasha.

This does not work as expected.

barebox@Diasom DS-RK3568-SOM-EVB:/ global.boot.default=3Dmmc1.2
barebox@Diasom DS-RK3568-SOM-EVB:/ boot
ext4 ext40: EXT2 rev 1, inode_size 256, descriptor size 64
Booting entry 'extlinux: linux'
extlinux: Booting extlinux label 'linux'
Adding "root=3D/dev/mmcblk1p3 <NULL>" to Kernel commandline

Loading ARM aarch64 Linux/EFI image '/mnt/mmc1.2/boot/extlinux/../vmlinuz'
Loaded initrd from GZIP compressed
/mnt/mmc1.2/boot/extlinux/../initrd.img to
0x000000000d390000-0x000000000fb48ca6
Camera IMX662 detected.
commandline: mem=3D0xef600000 root=3D/dev/mmcblk1p3 <NULL>
console=3DttyS2,1500000n8 ro systemd.unit=3Dsetup.target quiet splash
systemd.machine_id=3D181af2816b4c6b0aef77068e0ccc69ad
Loaded kernel to 0x0a400000, devicetree at 0x000000000fb49000
nv variables modified, saving them

=D0=BF=D1=82, 17 =D0=B0=D0=BF=D1=80. 2026=E2=80=AF=D0=B3. =D0=B2 11:44, Sas=
cha Hauer <s.hauer@pengutronix.de>:
>
> Hi Alexander,
>
> On Thu, Apr 16, 2026 at 03:55:12PM +0300, Alexander Shiyan wrote:
> > When rootopts is set to the literal string "<NULL>" (e.g., due to a
> > missing or invalid value in cdev_get_linux_root_and_opts), the resultin=
g
> > kernel command line contains "root=3D/dev/... <NULL>", which is invalid
> > and may cause boot failures or confusion.
> >
> > This patch checks for the "<NULL>" string in rootopts and replaces it
> > with NULL before calling format_root_bootarg(), effectively omitting
> > the erroneous token from the command line.
>
> I would rather avoid setting it to "<NULL>" in the first place.
>
> Does the patch I just sent help or is there another place where this
> happens?
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


