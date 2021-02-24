Delivery-date: Wed, 24 Feb 2021 08:08:30 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lEoHe-0004BW-OM
	for lore@lore.pengutronix.de; Wed, 24 Feb 2021 08:08:30 +0100
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lEoHa-0005YZ-Aa
	for lore@pengutronix.de; Wed, 24 Feb 2021 08:08:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe
	:List-Id:Mime-Version:References:In-Reply-To:Message-Id:Subject:To:From:Date:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=S+jSg2jAy+zIPbswTVZ01DJitWs/HPCnF9WV2W4/XI4=; b=19zEJkwNeI3r4M3vDsl9g2Ybb1
	CZ6sNPlHf2lOHKtjipUpWL5kRAfZcloN0thS8is+F2a7hrspNBFoEY6xqHDeQkCvra0xErG7UC5SI
	Q8/XqwXciqUQS28yYKGQOxHsBIyoknwjmbrWnzuwVI61hHAuJVi4IAkD5KaeKFUglHe9pnim83dNy
	Mz3zbxSNcSQAnwIg4DMAgVQL7OJLG5uykbxbD4OEvmvTMk5gHoCAOoZ8T/23UBcEdJ8uJLW/eVJ1r
	zKQv0f3B5x0jDtOpV8dFfC0TIExDmwo3Od/T3FuTf1LGvXM7zNQI4vLYHQ32MnJGTxG8ShNtSc81b
	W48/PmsA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lEoG5-0006Kh-No; Wed, 24 Feb 2021 07:06:53 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lEoG3-0006KK-3V
 for barebox@lists.infradead.org; Wed, 24 Feb 2021 07:06:52 +0000
Received: by mail-lj1-x231.google.com with SMTP id e8so1210628ljj.5
 for <barebox@lists.infradead.org>; Tue, 23 Feb 2021 23:06:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=fasczmgufvVOVyNG9+02uo7+1Fes3e2HzmZO960d/o4=;
 b=JRfjdLEEXRBxYSChH0DS+S/zTxZOXKExB7wDnncXyZmxhKw4RhJ1v0z072Tg6fQf4L
 krKMgIoUvpPwTaDJeDc/by+8rTqHc65/iR6Gpf1NPtSfL8KJ3B16fVYFC9vi3SmHoaEW
 /GsnPnYzy7kiDqoludIBRx63KBvVD5h7yJppIweErayR2Ifte2SOMKfVCQ91vKsz4FPy
 6lhloMqcaspb8D1bApJD2UYOVFUn+tpk9iitV4xNE5PETIzSNrRpjHreU+vRUJHFkRH1
 AB5Wpbz4WK3N4zitsFizp5LnpwW00zWuQhvoKYurHzVqhwbriMbicGXNw6edoWpc/XCT
 cZ9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=fasczmgufvVOVyNG9+02uo7+1Fes3e2HzmZO960d/o4=;
 b=acTTAZiOd1ZREa3Tbwx31S2zkUCGrjht905rh3ZO32TcllSUOEjGMlvr4yqdmBgmtg
 Uzog8mPgv1XrkW5KFgqFBlMNf6FDWu4kLUdmq2I0heeZYXIOm0Nig3/0skkoGqZbamo4
 iZ8BUjn3ZEP4fxXfS5XUcLufk7w5Qtr2JyLfrs+cF5pFp0Y4ivqiES3ODkFhGdcn11aK
 Yvqtm10ITiWwdH5jlDKsyp47JqibtWCLASt/briZxLJ8tUe1BUs9yHZTj2jAZII3895J
 s+Y89c25Hw8LOzJAg65n8THsBH7ci4CtVGtdh1kcTBwyQrxiPvXIioH3xapRrIfybO5g
 zVng==
X-Gm-Message-State: AOAM5327mD/2Sp6MrfWyPWLGCBm6R8zCsbpFWjGvoOf222b1KU856Xln
 5e/OCLcMhsz1pSsEsv4IEIQ=
X-Google-Smtp-Source: ABdhPJwvA7sRjMg7GzVtERbvpL0Op4Xb1XdLkSyR4n7L+fsWmxXl228tXE3TCI7cjgcDYQKnoQEegw==
X-Received: by 2002:a05:651c:2113:: with SMTP id
 a19mr18848230ljq.147.1614150408295; 
 Tue, 23 Feb 2021 23:06:48 -0800 (PST)
Received: from flare (t35.niisi.ras.ru. [193.232.173.35])
 by smtp.gmail.com with ESMTPSA id t29sm256176ljo.45.2021.02.23.23.06.47
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 23 Feb 2021 23:06:47 -0800 (PST)
Date: Wed, 24 Feb 2021 10:06:46 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: Franck Jullien <franck.jullien@gmail.com>, Sascha Hauer
 <sha@pengutronix.de>, Barebox List <barebox@lists.infradead.org>
Message-Id: <20210224100646.41d718b1801959a0b47e3f75@gmail.com>
In-Reply-To: <CAJfOKBx9dhJ2usck1NBv=VViTFHjSLzGjqiQoaSptp1oTPAW9g@mail.gmail.com>
References: <20210223095902.GD5549@pengutronix.de>
 <CAJfOKBx9dhJ2usck1NBv=VViTFHjSLzGjqiQoaSptp1oTPAW9g@mail.gmail.com>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; i686-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210224_020651_205935_24709FA1 
X-CRM114-Status: GOOD (  17.74  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1231::1
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: nios2 and openrisc in barebox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, 23 Feb 2021 14:13:44 +0100
Franck Jullien <franck.jullien@gmail.com> wrote:

> Le mar. 23 f=E9vr. 2021 =E0 10:59, Sascha Hauer <sha@pengutronix.de> a =
=E9crit :
> >
> > Hi Franck, Antony
> >
> > Are you still interested in barebox support for NIOS2 and openrisc? If
> > not I would consider removing it. Background is that we are planning to
> > introduce green threads and implement pollers with them which makes
> > green threads rather mandatory. Green threads need a setjmp/longjmp
> > implementation that would have to be added for these architectures.
> >
> > Keeping the architectures is no big deal normally, but I don't want to
> > add untested new functionality, also I don't want to implement things
> > that nobody uses, so if you are still interested it would be great if
> > you volunteer to implement setjmp/longjmp.
> >
> > Thanks
> >   Sascha
> >
> =

> Hi,
> =

> Thanks for asking.
> =

> I don't think anyone is using (has ever used ?) Barebox on these architec=
tures.
> =

> I do have a product which uses Barebox and a NIOS2 in the field.
> It's working for 10+ years already but will never be updated.
> =

> I think you can drop support for them. I won't work on this myself.
> Let's wait for Antony's view on this.

Hi!

I experimented with openrisc before widespread use of RISC-V.
I have never used nios2.

IMHO we can drop openrisc and nios2.

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

