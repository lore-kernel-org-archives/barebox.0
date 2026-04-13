Delivery-date: Mon, 13 Apr 2026 21:16:22 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCMli-00Bovq-1T
	for lore@lore.pengutronix.de;
	Mon, 13 Apr 2026 21:16:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCMlh-0004AB-St
	for lore@pengutronix.de; Mon, 13 Apr 2026 21:16:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0tJy2sgo/51MgymmRljyyLrkAsV3oAgvbO6JRv+CQ54=; b=nqua45+cjWsohIObSLbHJrNldI
	Oa1y6tXQNEgPDXb9YsJHyOfewlm08YzcujxZ04zg7dB2wWrBS1SHpUPfBmngMbfkpQvTdu3S+9ASq
	1OnUGEYZCtzKCBpZqhKi9nOcmFkQ+AGzX5lkvTSDAMb5gAp57oaeYE7WFM1TEQvhWl+BpFW5Yopbk
	z6J3zdfA4jUnDORIaMFxcBLryR37PjTI56ucsYyaICrOiJC1kpUbANVcpF1bhomvlJIInUd5nZsFJ
	MeDVZko8gu9h3K3h/6N3UPceSrvSTXmAqCaXZDU1+21K2q8vNYY49u12CdJF5K8p4SmPVAIqqAuKu
	575RRMTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCMlC-0000000GHok-0iWr;
	Mon, 13 Apr 2026 19:15:50 +0000
Received: from mail-dl1-x1230.google.com ([2607:f8b0:4864:20::1230])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCMlA-0000000GHnx-1OTG
	for barebox@lists.infradead.org;
	Mon, 13 Apr 2026 19:15:49 +0000
Received: by mail-dl1-x1230.google.com with SMTP id a92af1059eb24-1273349c56bso6371425c88.0
        for <barebox@lists.infradead.org>; Mon, 13 Apr 2026 12:15:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1776107747; cv=none;
        d=google.com; s=arc-20240605;
        b=MTH+rb+aCLS4MXMGw2r7ztZ/3LA3wmXhWoC3PrLZQrpYg8edCR16KHW6OXyzLqIM1t
         UGSgiZp4TTsl7QVIiwftgPGuuJF/64EpyyTSkzqwfwg3qfQjmnLS0p4XdiWwdEYTUETc
         Oa5G3gkov3zWZAxib6FyUrA58YGJhD3LyOIbjmEqTS4JmGieVbPqXD3Mj41XpNmHc7MV
         ReAirQCjIjfBNx82r3zBdHBQYjC3AEML4ue/CUe+ZQ7dUbysFDJtsVqeiUoexGhVlSrc
         6M9URuvOEqsFRF24aANCUp0Yp1gy4bsKV5NyygXivvTJYgcXVN2fX/oAm16zjnpOaGwl
         u28A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=0tJy2sgo/51MgymmRljyyLrkAsV3oAgvbO6JRv+CQ54=;
        fh=dpSMu0vzGWXDEagAbPffcU1LZCN1+Z6NIFb9P+UScNE=;
        b=BwpwMh9PnIUkk90e85pqlQeCZA/FlO6scHclFdmq6m+i1s8ZaBRcPhrbkafEbrxEPV
         mdhp6rJDYFhlk+5E7JZxHC2odrg2JgqYfZlYxXGSQ9Vswf5Tqx0XV6ndVCgvWVShPyzB
         2Dsydo9c5O1nOPkUtMNPO5cSpUG8mAkI+5NqkgNFpClQuZgJK9Tj7NTVeUh5PGKQeCYj
         EJ9Bfsj0QCndbipmrxOMLDwBFhCo9n8xGZry26j0rWLwNvMSaTVvYHcFZJ3MbaB+HWhV
         YFTnbSPFSX1RI3NEiSB6SRcFfVje9Gs+jNodMK+1TvisjOgFZVi3XnTOXV918EUSbIQm
         imkA==;
        darn=lists.infradead.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776107747; x=1776712547; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0tJy2sgo/51MgymmRljyyLrkAsV3oAgvbO6JRv+CQ54=;
        b=bz5hSEsz28cM9TNZE910jBmNMqhqZ3FY+k4xsnFyz1Kao8uM3xn7OLWXxrwPE5NXsu
         9gogX3wm6UxxP40n68D6/BQ78JIPQJtaszlR5UxwEbHMAo6XbseDUyxykZFl15JxDtNZ
         DDn74mwONQgRbi52nkEnYKbgRmX+MFtpdcX6JmRWWJV4jU+OnDk/rBp2XIr4onOOyPYN
         oWrUut+HQl8sNFadWWLdoPydwqQoZogCugQEJf6E1Jcv5vR1GjWWKGTDqBvda38gQ1kN
         wR2Yppd6dtn95WA69qGt84AiraIgwtewOWijx/soBHvzNVhdMU98YpxU/LE/8P6LDLp6
         F/qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776107747; x=1776712547;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=0tJy2sgo/51MgymmRljyyLrkAsV3oAgvbO6JRv+CQ54=;
        b=MCmribBqNtLJmy/m/Yo/zv2ZIXhch8PeC0YmGJ053k+nJpoVEsrHO4lCKSDXlL4aPL
         ga006rmslfs669WuwOiwoaSOkuB4ukE2lWeuxGR5WxmuNr2JZsKCp6lYAQz09yFjT2q4
         LBedeYLD5BV4P9MM5JleApWHtR4jI55XV3IYl7NXy895XLGestWSY34wyKMCuDvsYbh8
         /vhUApmdvH8AK22stiDan2rBxE5M9xnT+Q4j5hfy1KaH2y7YE18RVYxSWxVMcDD1GLvv
         tgf9K7DQO8ESdQrMVYWVYRB56us8ANLL/2LWPYmJYJo4XJ4qh2w16fiM8DuT5rRnZ9ko
         D8XA==
X-Gm-Message-State: AOJu0YxNhe7p/K/d2ibUnGZrD4myVrjFUMe4WMmi1GvyMcAHswA9TI/7
	nLSwXYOBcNGwCvpMi4CJoCqeKMmxJWKPs10xLv10g1fr1aYWeg1DFflftcjp8jnZRbNnDhbscst
	K0pBY/lrROhn+JfCD46Igtjpq509fR/LKspsHJ5wx4g==
X-Gm-Gg: AeBDieue3ZoaI9vZVO5qCcfn0bWp/ytOX2RWbpkJH2d4vFrFBKS+SUvX0qVB9tTYlAC
	DR7/KRdMKofW3YHOD9EyrA66m6CHD93casX0QKJagQm8bsU5DRfHas41H9Fv5Hw9DMTnC4wBFU1
	ek0Qx4FVFdpgK8Dq6wVdEwOK1nisGPpD7GaRBdU37Z7eZOutMNLXN9C06dYZpl10MCfxq3RDRkQ
	9ytE4IapOZOB+D40DMPiL7ngvhlety7KdR0u15CAmk2iGmoc6S8tYUqu/GDuGB9zvARybmdeDAa
	Y8qclQ/c1BtSMIrmJ0U=
X-Received: by 2002:a05:7022:ec07:b0:128:d4db:4478 with SMTP id
 a92af1059eb24-12c34efaa0emr7956214c88.24.1776107747027; Mon, 13 Apr 2026
 12:15:47 -0700 (PDT)
MIME-Version: 1.0
References: <CAP1tNvRbUpQdGCx6CeyAB6Q6N991oBr5V6mw2+5UHwW1NtYJLA@mail.gmail.com>
 <e2ccd6aa-d0dc-40c0-b947-8f63142dc12c@pengutronix.de>
In-Reply-To: <e2ccd6aa-d0dc-40c0-b947-8f63142dc12c@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Mon, 13 Apr 2026 22:15:35 +0300
X-Gm-Features: AQROBzAvRi-bJ0MjQejCTWkMilh49qPJBUxzkvQsdz68qTe28P4sfVPELFAE41U
Message-ID: <CAP1tNvS6Hb4rufVCMogNEjYtZ+O=w55fcpeFZVp+PAqtMsOcJg@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260413_121548_378831_AB5F019D 
X-CRM114-Status: GOOD (  18.41  )
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
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: Re: blspec
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Ahmad.

Is it possible to implement a similar provider that parses extlinux.conf
(i.e. finds DEFAULT, reads the corresponding LABEL section, extracts
KERNEL, INITRD, APPEND) and creates boot records based on it?

Thanks!

=D0=BF=D0=BD, 13 =D0=B0=D0=BF=D1=80. 2026=E2=80=AF=D0=B3. =D0=B2 17:01, Ahm=
ad Fatoum <a.fatoum@pengutronix.de>:
>
> Hello Alexander,
>
> On 4/10/26 4:02 PM, Alexander Shiyan wrote:
> > Hello All.
> >
> > Can anyone explain how to use the built-in blspec support?
> > I would like to try setting up booting via exlinux.conf...
>
> exlinux.conf and bootloader spec are different formats.
>
> Here's a bootloader spec example:
>
>   $ cat /loader/entries/imx8mp-evk.conf
>   title           PTXdist - Pengutronix-DistroKit imx8mp-evk
>   version         6.18
>   options         rootwait
>   linux           /boot/Image
>   devicetree      /boot/imx8mp-evk.dtb
>   linux-appendroot        true
>
>
> You can have multiple files under /loader/entries and barebox will
> iterate over them, extract the compatible of the referenced devicetree,
> compare it against its own and then decide what to boot.
>
> The linux-appendroot key is barebox-specific and means barebox should
> fixup root=3D according to the device it found the bootloader spec file
> on. This is useful for the case where the bootloader spec files are
> directly in the rootfs and not in a separate partition.
>
> Cheers,
> Ahmad
>
>
>
> >
> > Thanks!
> >
> >
>
> --
> Pengutronix e.K.                  |                             |
> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
>


