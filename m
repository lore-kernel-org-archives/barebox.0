Delivery-date: Thu, 28 Oct 2021 09:02:07 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mfzQN-0008Rj-Mt
	for lore@lore.pengutronix.de; Thu, 28 Oct 2021 09:02:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mfzQM-0001wv-Ok
	for lore@pengutronix.de; Thu, 28 Oct 2021 09:02:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HsDswktCG0VMAvgLQOupBwbqVZPg+hrpsb08Bi7L/J4=; b=NfF59MMZyFrKB9
	evkP5GM3gtQIO3zhtDbiedLSnZGIZ+lnrc/p7K7f1CavTndsDSRzeoWhJ/H1VaDcfNsaXgrzMRRJR
	JmbB46mShQevlRyNQmvB2WCEdOVQvHFL44bWy46h84rloQJkZr6UV/dEqoPKpzlb68d0BTW8vj2v4
	2WCanNMczMezH7FUtiEr+AJNPsIYV7j9neiG8xYV7cSkbO+mtDR/HspyS4IKcBUD18vOeQQCRlkjl
	zaFjPEAYtqncDtRk4mRqKgfBDlCx8QJ+ciYWFM2ggaquVt3kOK1RZRYmu+AlMTigBuRZjQah73zqQ
	e5VVKHjXOKQGyRB2pk3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mfzOv-0073Nb-Me; Thu, 28 Oct 2021 07:00:37 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mfzOq-0073Mz-VC
 for barebox@lists.infradead.org; Thu, 28 Oct 2021 07:00:34 +0000
Received: by mail-lf1-x136.google.com with SMTP id j2so11497802lfg.3
 for <barebox@lists.infradead.org>; Thu, 28 Oct 2021 00:00:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=i8+DycN3HkQTqJrEuc/0sLKvpUzE3QDiuzfrWZKnyHk=;
 b=BbGeotR9w21E18CbAznvz7vb3utZ0ByPgiSw6WuSwXesPAdbz0JgGWtrLDifaE2QD1
 LCXwa+qtiK3p0TLsIly2mQkmFwfhisobcB3MaYwej9NiL+FvJW1iJJpG7KMx8ONmW2Zs
 W3VzOfcnLa1KeZuW9Kl3w33V+31jl2a9DQi3NaMhNKxtbG+E9er/D89/1NDAVxz6KUaq
 3XwM/alvWfgrsZsB8aOXW7HTP2C4DG6RR8JIyBLu76zRcEeE0gmh0540B9JzOdBLREh1
 3EXph8lGB94GhzfgL9S2AdgeWFBzV2+wtD2O8DPJIxOAl+onHQu9wKKq6eHsgSsxPSta
 d4lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=i8+DycN3HkQTqJrEuc/0sLKvpUzE3QDiuzfrWZKnyHk=;
 b=2nkPZ1/buK2AkYEvfMJXEAvzVVFpQ8dl/2Rnc5ubPeY/fMaN5B3f3VsH6PN6L3+T10
 xbIUwB5arImqnzrmgN0gMkZjmCr+FDj8B1Kc2+8HFXURyMR7bXznCLJD6x6IpB+Al6Zh
 rwz+m0uCbzshFH7HG8LP8PxpCFwR3xKlUL+j0ZnZD9MbQclhr2q3qQctDEpXEgzIOclG
 BjpeJaxtMiY+asmwirDgW6KBjj2lr1sEsl6CCwKNIgGXXCnpnx438qtJOe+fsRysxUv4
 E3LReFylWgW0x948CDm1MT8gueUNzePyOtC2fU5NT1AftHYn0WukQfPSXh/WXgyfNMDe
 v36A==
X-Gm-Message-State: AOAM531YRaSELwH+/UiJx2Wx5DBpPPcjw1Uos49sQaRE63PW5wWlN8wE
 6oVDSWi2xvf4TtP+uoOTbHs=
X-Google-Smtp-Source: ABdhPJy9hgKW54rATzGLECQTQr8/c73JZiUD8+bCH1WHYJccAI+lE9TpjGkDv/6Qu7dcjXZLWKFPlw==
X-Received: by 2002:a05:6512:1102:: with SMTP id
 l2mr2483117lfg.181.1635404431578; 
 Thu, 28 Oct 2021 00:00:31 -0700 (PDT)
Received: from flare (t35.niisi.ras.ru. [193.232.173.35])
 by smtp.gmail.com with ESMTPSA id x12sm219511lfa.243.2021.10.28.00.00.30
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 28 Oct 2021 00:00:31 -0700 (PDT)
Date: Thu, 28 Oct 2021 10:00:30 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-Id: <20211028100030.d357ad0a7647ac7afa786424@gmail.com>
In-Reply-To: <b5e0ee1b-3bee-af9b-b1de-20ed44acc35b@pengutronix.de>
References: <20211028012816.929611-1-antonynpavlov@gmail.com>
 <20211028012816.929611-5-antonynpavlov@gmail.com>
 <b5e0ee1b-3bee-af9b-b1de-20ed44acc35b@pengutronix.de>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; i686-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211028_000033_048764_9ABDAB3E 
X-CRM114-Status: GOOD (  26.29  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 4/4] bareboximd: make the '-c' option work again
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, 28 Oct 2021 08:45:19 +0200
Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:


Hi Ahmad!

> On 28.10.21 03:28, Antony Pavlov wrote:
> > bareboximd with the '-c' option craches while
> > trying to alter an image file, e.g.:
> > =

> >     barebox$ git describe
> >     v2021.10.0-125-gd136ec5ac6
> >     barebox$ make ARCH=3Darm CROSS_COMPILE=3Daarch64-linux-gnu- imx_v8_=
defconfig
> >     ...
> >     barebox$ make ARCH=3Darm CROSS_COMPILE=3Daarch64-linux-gnu-
> >     ...
> >     images built:
> >     barebox-nxp-imx8mm-evk.img
> >     barebox-prt-prt8mm.img
> >     barebox-nxp-imx8mn-evk.img
> >     barebox-nxp-imx8mp-evk.img
> >     barebox-nxp-imx8mq-evk.img
> >     barebox-zii-imx8mq-dev.img
> >     barebox-phytec-phycore-imx8mq.img
> >     barebox$ ./scripts/bareboximd images/barebox-phytec-phycore-imx8mq.=
img
> >     build: #1 Thu Oct 28 01:11:07 UTC 2021
> >     buildsystem version:
> >     crc32: 0x00000000
> >     release: 2021.10.0-00125-gd136ec5ac6
> >     barebox$ ./scripts/bareboximd -c images/barebox-phytec-phycore-imx8=
mq.img
> >     Segmentation fault (core dumped)
> > =

> > The problem is that the bareboximd uses mmap() on an image file
> > in read-only mode.
> > =

> > Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> > ---
> >  scripts/bareboximd.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > =

> > diff --git a/scripts/bareboximd.c b/scripts/bareboximd.c
> > index c3dcb4dcf0..fe0d274380 100644
> > --- a/scripts/bareboximd.c
> > +++ b/scripts/bareboximd.c
> > @@ -97,7 +97,7 @@ static int read_file_2(const char *filename, size_t *=
size, void **outbuf, size_t
> >  		goto close;
> >  	}
> >  =

> > -	buf =3D mmap(NULL, max_size, PROT_READ, MAP_SHARED, fd, 0);
> > +	buf =3D mmap(NULL, max_size, PROT_READ | PROT_WRITE, MAP_SHARED, fd, =
0);
> =

> I think this here only works incidentally, by failing and then doing a ma=
lloc. See mmap(2):
> =

> Errors: EACCES    MAP_SHARED was requested and PROT_WRITE is set, but fd =
is  not  open =

>                   in  read/write  (O_RDWR)  mode.
> =

> Correct would be MAP_PRIVATE. I sent a patch to that effect yesterday:
> https://lore.barebox.org/barebox/20211027060150.28184-1-a.fatoum@pengutro=
nix.de/T/#u

Aghh! I have not seen your patch :(

> =

> >  	if (buf =3D=3D MAP_FAILED ) {
> >  		buf =3D malloc(max_size);
> >  		if (!buf) {
> > =

> =

> =

> -- =

> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

