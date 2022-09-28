Delivery-date: Wed, 28 Sep 2022 12:20:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1odUBK-00HG1c-TX
	for lore@lore.pengutronix.de; Wed, 28 Sep 2022 12:20:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1odUBJ-00030P-30
	for lore@pengutronix.de; Wed, 28 Sep 2022 12:20:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oOHHe62FD33dPW51gyW4uNaWR+hDUbgBCyjHigCBKQw=; b=gF1zABU0dzbr6GokeI4R+mM7NT
	rCEU2gqMuyWCLacgKGRIXMG4ypICBY/VCgXLLohHiGT/3IXzsfZ+DrWSqdaUWLYut2pDLuTdBodUa
	jTBdGsRPYwYeCZU0lG9svRT8IaXNL0xlr/1buCG0+/gVDFm/6jYDylgsXN9GOHOs1a25d+Is/7p9h
	9i6/10AiRDpyN/jB2/Fb2neWGwD0uSJW+DYQ0sfMNb5CdBIRrEuDO/edFuPblbeUCaxo2QVb/vagX
	DpD3ttcvCRwq48Gmt2ouPy8EoJ3l3HcQBStpii/Ogd48wtAJ3EV5pDQg0s6CSCBxxgPOx4FMQPZFq
	0DbPwmGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odU9m-00FYKh-Lj; Wed, 28 Sep 2022 10:19:11 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1odU9d-00FYFG-Kj
	for barebox@lists.infradead.org; Wed, 28 Sep 2022 10:19:04 +0000
Received: by mail-ed1-x533.google.com with SMTP id u24so1926021edb.11
        for <barebox@lists.infradead.org>; Wed, 28 Sep 2022 03:18:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=skymem-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date;
        bh=oOHHe62FD33dPW51gyW4uNaWR+hDUbgBCyjHigCBKQw=;
        b=YJLwUW1ldvcLhNtejtW+6qJ20RGYMwt8an9jRNeUBEwMkwsxM+W2KuN1ecVagt0t/b
         4XoTSBcNBXt9uDojkwDnm3w45I7T3LzibP7h93BHl6Ar1HPeKTpUZYlWsxJJnCi3QQhn
         /3ZxSQce5+TZYOWVewOnY6qClRBxlhKSvca956tGQg/FTTKZwTkmzCS2YiJL9U1z5b9E
         1lI7pMkrw/9iFJ+NWckg645E71gGK5XVdVCuxE7CV9yoKrRY8mu86FQR31EoBOuaSUDD
         COkw98Y/gMu3h0rV2JKfCznzYkzTok3dbJqC6WW60X5LhnTTz3Pzd0Q4wcX5vDoGcibz
         xY7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date;
        bh=oOHHe62FD33dPW51gyW4uNaWR+hDUbgBCyjHigCBKQw=;
        b=TVzp6lk/A9gEDshfSjiO0YbH2NPeuE+4t18Fx6ALXXdwz1Z27ZrUbvwd5uWmwWxohI
         a37HoTpaZTXL5bM/cC1Xm1NiwVMN+4z5iefnpvvM9x67tXsaCQE/xLFkI2731b4zv+pC
         uPph6ZzFFsMEtxDygqAkEbtcWCQzvLnW8m7UcIpXG5Tl/qrgc7xn357hsOx0ECf6JIZn
         G5yn+tGl4MMo9oE4DIdnfmwvNasTFjwLDMuNK2iAEh9jEJDrEdqxSYpnSOOkLTS2zLpc
         YyRdKA1TPUKEV6FAZx0zWtKyxUk2+hc30UMitDH+OrvASVL0qzGiUDQzEEN/qa1goZlJ
         Okgw==
X-Gm-Message-State: ACrzQf1YgEt9Orx9rKJOnzMi7hloZjvYj3Mhi3NotPMmpt5lUm1RGNJK
	liibP2PIzAN/PAwpTd1h3Lbw5Lvj4ZzpLhqPbb6bvQ==
X-Google-Smtp-Source: AMsMyM5VhHTqfSk/LfjEeONcWRoKztIlY1r3ig7GppCGwa54HterWsK5cO3OqoHV3CWySPxZViIxppBaWMEZqcZoq3o=
X-Received: by 2002:a05:6402:1247:b0:456:eb22:1978 with SMTP id
 l7-20020a056402124700b00456eb221978mr23395347edw.374.1664360338061; Wed, 28
 Sep 2022 03:18:58 -0700 (PDT)
MIME-Version: 1.0
References: <8CA6ADB4-FD4B-4CC8-9BD2-21DA02C08C85@datarespons.no> <e0778785-7de6-f91c-d4b1-3f828f6effe1@pengutronix.de>
In-Reply-To: <e0778785-7de6-f91c-d4b1-3f828f6effe1@pengutronix.de>
From: Info Skymem <info@skymem.com>
Date: Wed, 28 Sep 2022 12:18:46 +0200
Message-ID: <CAKvd=_gaOYJAvtgy83ZNWwgT2HBO0c3WZusz55DgJrzWuF=tBA@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: =?UTF-8?Q?Hans_Christian_L=C3=B8nstad?= <hcl@datarespons.no>, 
	"barebox@lists.infradead.org" <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220928_031901_714836_016851B8 
X-CRM114-Status: GOOD (  24.09  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: Imx-usb-loader broken on IMX8MP/v2022.09.0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,
thank you for your information.

On our website you can find email addresses of companies and people.
https://www.skymem.info

In short, it=E2=80=99s like Google for emails.

Best regards,
Robert,
Skymem team

On Tue, Sep 27, 2022 at 7:45 PM Ahmad Fatoum <a.fatoum@pengutronix.de> wrot=
e:
>
> Hello Hans,
>
> On 17.09.22 13:04, Hans Christian L=C3=B8nstad wrote:
> > This is observed using straight out of the box v2022.09.0 on NXP IMX8MP=
 Eval kit:
> >
> > ---------
> >
> > $ sudo ../drimx8/scripts/imx/imx-usb-loader ../drimx8/images/barebox-nx=
p-imx8mp-evk.img
> > [sudo] password for hcl:
> > found i.MX8MP USB device [1fc9:0146]
> > 4 in err=3D-9, last_trans=3D0  00 00 00 00
> > status failed
>
> I just tested and have the same issue on i.MX8M Nano, which uses
> the same new SDPS protocol. I've just sent out a potential fix.
>
> > =E2=80=94=E2=80=94=E2=80=94=E2=80=94
> >
> > Stripping off the header gap (32K) allows the binary to load using the =
standard NXP uuu (Ubuntu 22.04) utility,.
> >
> > This further raises the question: Why have a header gap at all?
> >
> > The makes sense for SD card loading, but not for eMMC boot partitions w=
here ROM expects code to start at 0.
>
> The realization that the eMMC boot partition usually lacks an on-disk par=
tition
> table came quite late to the NXP BootROM authors. On i.MX8M Mini, we stil=
l have
> an offset for both SD-Card and eMMC boot partition.
>
> > Maybe better just use a seek to put the code at the relevant position o=
n the SD card?
>
> imx-usb-loader does the correct thing and skips to the relevant position.
> barebox_update should do the correct thing and skip over the header.
>
> > For instance, I am using the Rauc boot loader slot update mechanism exp=
ecting no gap thus  requiring me to shave of 32k
> > prior to shipping.
>
> This is unfortunate, but I don't think this is something we should addres=
s at the
> barebox side. barebox images for i.MX are always meant to be directly wri=
tten
> to an SD-Card at offset 0.
>
> For RAUC integration, you may consider having your build system shave off=
 the
> bytes transparently. See for example:
>
> https://github.com/rauc/meta-rauc/commit/8e049699f05483b694e6c5a3e260cd9e=
0fe58d2e
>
> which does the inverse operation: pad U-Boot for older i.MX, so they are =
install-able
> into an eMMC boot partition.
>
> Cheers,
> Ahmad
>
> >
> > Comments??
> >
> > Hans Christian
> >
>
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


