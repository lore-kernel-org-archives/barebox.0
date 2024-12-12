Delivery-date: Thu, 12 Dec 2024 10:42:39 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tLfiR-0078al-0r
	for lore@lore.pengutronix.de;
	Thu, 12 Dec 2024 10:42:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tLfiR-0006b3-5n
	for lore@pengutronix.de; Thu, 12 Dec 2024 10:42:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=o47QIJdVU2I1Xb+MfEEnb4YVPTfPu48TnLfjiVUnAAs=; b=nw1fUVa5CSmCnYwJN5s7FB+wDw
	r3+NYHQUbEgeZ1sdf70Nn+xywJSZDda0/1CvTccCIhiGWJ33KnOSrYFDfIjcQSi68r68fDvZlJlFg
	bmorLKDMVAikw4MLumlludtrngdoWC1ij/8bkEoKolOoipi4Bgg7ZkC1Vqa1oy4Di91a4Fbj8KgxH
	kVhsF8WsJgl61LZQ3gkEdja0S6quyg9vSlUvNS2kAFXXtXKhmyEJ2n2CMBOFIgrf5Q2o83fZmRnsp
	KLfmi2+w0hhj6la+L4bnsPmWUEzr1crGxR0IlkO3wKofJQe5mvHZTNxmOYUaNNQYKJaUP7LICZIVo
	tQiJcLCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLfhz-0000000HXMZ-11Ut;
	Thu, 12 Dec 2024 09:42:11 +0000
Received: from mail-pj1-x1034.google.com ([2607:f8b0:4864:20::1034])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLfWh-0000000HVHW-0aWj
	for barebox@lists.infradead.org;
	Thu, 12 Dec 2024 09:30:32 +0000
Received: by mail-pj1-x1034.google.com with SMTP id 98e67ed59e1d1-2ee6dd1dd5eso287594a91.3
        for <barebox@lists.infradead.org>; Thu, 12 Dec 2024 01:30:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733995830; x=1734600630; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=o47QIJdVU2I1Xb+MfEEnb4YVPTfPu48TnLfjiVUnAAs=;
        b=chCSnkELN4QvhIhaP5RLO5dd0ZynjTLXG9hqSasrnmg4b2ay+XIi6GLnaY7LR4mBBD
         wNSFfcuxs5DfFIqMaX84QjaWA8nnWLRgki82uwb/YhaX/a00LJKi3EPTuQL6GroYgY/A
         tIVvqlgzThZPPF0vFLf5m6xZ/OXAXl9L4DQNsEuDMP9eVG3j3QqBHNbfJcIbGok/XTN5
         wT2NHUJxPiwKtRDMfdtOKbNUehpPbspdyW1rhNkM8JgHx3Lu1NOElaWCUtb3WVUO8Jy2
         hIHdeSetQwotPZSlezVXRBfbmmAWZcjWDrf7ntQkGyXfHV+PemYvsboIpOnb79wF46HK
         77KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733995830; x=1734600630;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=o47QIJdVU2I1Xb+MfEEnb4YVPTfPu48TnLfjiVUnAAs=;
        b=ptcHeO9TuqrwcY9Qw8cU5ByvetFew729dYt4VM0UdP/d31G8snWwzxTpQNVyo240nj
         EoJ2wZWYwdbcJcQRZ3kQaRFg6YO5gxFYvmgqz6ZQCy/uQb65UVd2FbzszkHvjpK5Mx35
         VNdXr/b5iU5GBOxBsj2hd9kxAcGe1QJs23wO363wV0wwK+Mumw15MLRzUw8Qncg7+Z4H
         3xsoXnPTXaBcrmraRxXxc+KmEHKkRUEsBWocuOYnhpNinLAlVlGd6aOqh+jDn6tNVAns
         zujaWvucYKILc/oKWmDed+taxXjeCqdsMKEtG6dcu6dl9DTHxN7QzfY0o59VkbgWs4+F
         IHvg==
X-Gm-Message-State: AOJu0YxcP/qyTdssUxt1n8OjMHf2bRO8ZDvP5g++ENwRpvnSK34euTYG
	yIKczHV7BMGqpVxPlKWAg3lhFi6zBFZI4ZlzfZxl1p7uwLg91jB7nNPmWqYh1zbQ+5grwjI94Cw
	pmBRI4nd3vY8iG0MR9Aptw/SIoaQfeXrt
X-Gm-Gg: ASbGncsyrJQkD+16acmXIeCn1Jd71IzYF298NVTSo6YbuMfkYp5CT9l0gP3TmtyUxm3
	YyDB6aBXBWwllE/qR0ibqEuEPHhpRTS7fy79CQw==
X-Google-Smtp-Source: AGHT+IFOKWPHk8PyB5PBIwGe3B85lN6upFafH5vVuPEIQdVq1upG/kaPhCLljGdm6vd9Bvd0INR2Y6oBk+hlrGP7m8s=
X-Received: by 2002:a17:90b:3b49:b0:2ee:889b:b11e with SMTP id
 98e67ed59e1d1-2f12802a553mr9419548a91.30.1733995829973; Thu, 12 Dec 2024
 01:30:29 -0800 (PST)
MIME-Version: 1.0
References: <CAP1tNvQoUsjRNKMr-CZ_Q67-PKGfj_ZsoePeT3pgOe_DefriMg@mail.gmail.com>
 <Z1qm8cXe6SmEGxvM@pengutronix.de>
In-Reply-To: <Z1qm8cXe6SmEGxvM@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu, 12 Dec 2024 12:30:18 +0300
Message-ID: <CAP1tNvRmBaoHOgvti4_cPexSir7isbuDuo+RMCoT35Avm+d21Q@mail.gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241212_013031_180898_79399233 
X-CRM114-Status: GOOD (  18.67  )
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
Subject: Re: Possible regression 2024.12.0 in parsing "aliases"
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello.

There seems to be a bug in getting the ID in i2c_add_numbered_adapter()
It uses dev.parent instead of dev, for example:
of_alias_get_id(adapter->dev.of_node, "i2c");

And with this everything works as expected.

=D1=87=D1=82, 12 =D0=B4=D0=B5=D0=BA. 2024=E2=80=AF=D0=B3. =D0=B2 12:03, Sas=
cha Hauer <s.hauer@pengutronix.de>:
>
> Hi Alexander,
>
> On Wed, Dec 11, 2024 at 09:14:32AM +0300, Alexander Shiyan wrote:
> > Hello.
> >
> > After updating barebox to version 2024.12.0, an error message appeared
> > when loading
> > the RK3568 board. Accordingly, the I2C1 interface does not work.
> > In the previous version (2024.10.0), everything worked as it should. I =
did not
> > understand what the problem is, but I suspect that aliases are now
> > parsed incorrectly.
> > The system has an alias i2c1 (this is the basic SOC i2c1 interface)
> > and an alias i2c10 for the GPIO expander. Perhaps the problem is somewh=
ere here?
> >
> > ERROR: rk3x-i2c fe5a0000.i2c@fe5a0000.of: probe failed: Device or resou=
rce busy
>
> The culprit is likely somewhere in these commits:
>
> 79357f8b96 i2c: start dynamic I2C bus numbers at 32
> b474672545 i2c: get adapter.nr from device tree
> 5b167ad520 i2c: set adapter.nr explicitly to -1
>
> We now use of_alias_get_id() to get the i2c adapter nr. Which adapter
> number does fe5a0000.i2c@fe5a0000.of get and which i2c bus device has
> already occupied that number?
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


