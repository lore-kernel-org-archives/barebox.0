Delivery-date: Tue, 13 Sep 2022 11:56:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oY2eL-003VPT-16
	for lore@lore.pengutronix.de; Tue, 13 Sep 2022 11:56:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oY2eI-0006yh-6Q
	for lore@pengutronix.de; Tue, 13 Sep 2022 11:56:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Mime-Version:References:In-Reply-To:Message-Id:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+g5E3BxLUg2R5rSsBzbTDWo/kFDgcd5DanqLzTarTY8=; b=v4U8GD5rXVs6vTEUjfV+uWInW4
	BMkIlXs9h/gspOLLUO3EKNxROOuyAkQOHjmcJR1TMrSn5U0Pc6N4QX5lONAy+jAW+4kBsFLe2S7cT
	v3Z35gBzQCseVTqpdqZfqLYExmoQkmaHXtH5wb5Obq9KtoY1BQFUZXSvK/Kuo35vXH3mC8wvZWJrU
	MCj5Tl+s+ht2TMThyVHXL/z8NzaVvey6cQHqcU8dQ52TP3uWzCvK+bJ84iBkZzabi+lXMB8sydG6t
	CdeyRzw/i8OSR6ux7waYIYLEAnGGyhUTzzEhspKyqobJO4Zrz9j3MF6+Ql6RJ78Q0H10sMFZt2cP5
	oEfpy8dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY2cY-005hjD-B6; Tue, 13 Sep 2022 09:54:23 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY2ZG-005fLa-QS
	for barebox@lists.infradead.org; Tue, 13 Sep 2022 09:51:00 +0000
Received: by mail-lj1-x22e.google.com with SMTP id h3so5278584lja.1
        for <barebox@lists.infradead.org>; Tue, 13 Sep 2022 02:50:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date;
        bh=+g5E3BxLUg2R5rSsBzbTDWo/kFDgcd5DanqLzTarTY8=;
        b=nwi3OEUNE4AyVPOFi2z6Xb1519o/3sr026ZjdokCVKAY8sfMGPXCV+iyXmDSx4n94i
         1noIggaDmIyui49MlDnucRdw5CiDmE0tqlQMzgk+YTH0OIFIgeIVMKVedi9esq5ipF0g
         xEd3gghQyXq3Wv2opsfLbfg+9EpcF877/8ng3/d/4onPm6NwQmCh7agiNl7KtBlr19tk
         i/AhyKJmgbN//5N9zkxRoRMSczUHsZnzgH//TeM+id1NW5FtqjaFNaizvCSvlq56zccV
         D4tfsrCQpCez9iScO8w3RmNWCVofbUXVYIExcd6M4z75bH94gbVIm+2LyPFK916QdnuI
         CD9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date;
        bh=+g5E3BxLUg2R5rSsBzbTDWo/kFDgcd5DanqLzTarTY8=;
        b=eBo8aJ79i3XYsGPLu59zelRQXv5b1cw6jGNMUMFi6lQxF/FWQQmauAk73rhli3mE+G
         KBfTLz5X5bS960uzgY4HvqoLXCVm0yGEdk3HjgOKDenpbfkx8wAW+EBYAmbXtV0C66lg
         EzBDkUy8Y1W2i+wM8WGZ+GTzKEGmYHL4D68GvqISHF6p5rUvUnYvtNmVteaIaK9DTmqu
         5oPW0KaeuMUZDukhP1ATncfEQMnFTMhuBsW6R71GX9YM1q1XdE56Ef3GAGUbt/MTUM5a
         zL6ycfqL3H5m/EOsoZdlbrRs51ikPu5vwdaFPUz8UzAVacyLcVkR4xsiZoeZqipIJni1
         +5Yg==
X-Gm-Message-State: ACgBeo0UheFRMHZKm52UmR4Bf/P8cWFnuG+2Q12+vruCrHaB+e/W2E6B
	MH8S5/d601LnRFlg+pf/Txk=
X-Google-Smtp-Source: AA6agR7//TDhbFn/X/jxhJwbKk+zquEKEkR/bLkKD8R4+trp9fb78fnVD8YwIxMp8Top95nzjb8FHQ==
X-Received: by 2002:a05:651c:198f:b0:263:89c9:923e with SMTP id bx15-20020a05651c198f00b0026389c9923emr9410329ljb.51.1663062655187;
        Tue, 13 Sep 2022 02:50:55 -0700 (PDT)
Received: from flare (t35.niisi.ras.ru. [193.232.173.35])
        by smtp.gmail.com with ESMTPSA id g5-20020a19ac05000000b0049a6a5d8ec4sm1188293lfc.188.2022.09.13.02.50.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Sep 2022 02:50:54 -0700 (PDT)
Date: Tue, 13 Sep 2022 12:54:11 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Enrico Scholz
 <enrico.scholz@sigma-chemnitz.de>
Message-Id: <20220913125411.c326e05d739ffa6a21202eed@gmail.com>
In-Reply-To: <20220913080837.GG6477@pengutronix.de>
References: <20220912085047.84819-1-antonynpavlov@gmail.com>
	<20220913080837.GG6477@pengutronix.de>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.33; i686-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220913_025058_911466_49D1BEBC 
X-CRM114-Status: GOOD (  22.30  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,NICE_REPLY_A,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH next] Documentation: filesystems: tftp: fix code blocks
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, 13 Sep 2022 10:08:37 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

Hi Sascha!

> On Mon, Sep 12, 2022 at 11:50:47AM +0300, Antony Pavlov wrote:
> > The patch fixes these sphinx errors:
> >=20
> >   Documentation/filesystems/tftp.rst:44: ERROR: Error in "code-block" d=
irective:
> >     maximum 1 argument(s) allowed, 3 supplied.
> >   Documentation/filesystems/tftp.rst:53: ERROR: Error in "code-block" d=
irective:
> >     maximum 1 argument(s) allowed, 4 supplied.
> >=20
> > Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> > ---
> >  Documentation/filesystems/tftp.rst | 2 ++
> >  1 file changed, 2 insertions(+)
>=20
> Applied, thanks

I thought that this patch is for ammend. My bad! I shell add "for ammend" o=
r "fixup" tag to the message subject next time.

> >=20
> > diff --git a/Documentation/filesystems/tftp.rst b/Documentation/filesys=
tems/tftp.rst
> > index 8929213d3c4..e88ad3dd4c8 100644
> > --- a/Documentation/filesystems/tftp.rst
> > +++ b/Documentation/filesystems/tftp.rst
> > @@ -42,6 +42,7 @@ the opposite effect.  Performance depends on:
> >     100 Mb/s) it had to be reduced to
> > =20
> >     .. code-block:: console
> > +
> >       global tftp.windowsize=3D26
> > =20
> >     for example.
> > @@ -51,6 +52,7 @@ the opposite effect.  Performance depends on:
> >     example, the `fec-imx` driver reserves place for
> > =20
> >     .. code-block:: c
> > +
> >       #define FEC_RBD_NUM		64
> > =20
> >     packets before they are dropped
> > --=20
> > 2.37.2
> >=20
> >=20
>=20
> --=20
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


--=20
Best regards,
=A0 Antony Pavlov


