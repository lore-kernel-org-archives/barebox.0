Delivery-date: Wed, 05 May 2021 12:37:48 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leEua-0007hR-1a
	for lore@lore.pengutronix.de; Wed, 05 May 2021 12:37:48 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leEuZ-0001o6-30
	for lore@pengutronix.de; Wed, 05 May 2021 12:37:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:Message-Id:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=JUgpwhnHmlrylq7BN5Zu1GJN/IbTy/tBBKIhLH3Q6Kg=; b=m/DT0uz5+TLgfX+x2DASmPuor
	2JYzxZB6Cvvr9a21B7gNuV/55GV+RuQ1uv5IG79UWyQpHeLPyZQjOI4Dy1ZdvexA5P93AaEIjtmY7
	w/AICHfFyrgha6scAaX7hYVV5PKnIud64gin5aXOesUIw3C26QTPP5OXI+jhGMhmSjNoa0SD53zJR
	+cSVgiHY3f7XqcIsdhZNNh2xTI/5mt8RvSTMccB9Js9cKwcBwTwPe/VIYuqY8ujR4BIcX5gLEBZ4d
	1hmO3IIqAnJQ2J6tr5cSvlwUkcYpvI5D35aguuKfb+OGpybIC2kp23Ci42S+KNItMfyjN+Drrkcrc
	GhNe9ZbNQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1leEtc-000zAO-Vt; Wed, 05 May 2021 10:36:49 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leEtU-000z9k-TA
 for barebox@desiato.infradead.org; Wed, 05 May 2021 10:36:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:Mime-Version:References:In-Reply-To:Message-Id:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-ID:Content-Description;
 bh=4et3aRL6XlLlzESa90god7hczraWoToMBcBppxJfjzA=; b=bvYOdMS0qYp5tLJRLPW6OS7lQn
 9XQcbCxfSlrFuJKSaVfybyvPRysUE03Mi7gVCz07G7HSNyYAr9lXcQboZZd4ze4kG2M9CJ5+FN1r5
 K2G6nqRVL789yodY3gCnhnJctoAmz/PrEfzESwHhj6MbOS2P12oVNNfs4bvjmB9L5f/2yVdNDmhTC
 AnlV/5j2HK4aNjJvo0jLMGwWiwSfjndVtfBpY47KJ0L4X/vrfHP8dg7dfGADCU9aBqfnedCTk37pr
 +irYR+T0z15IMcERyLAbByfArI3KI4/tU7xG9SdTGWgMP5oBn9cft4K1gyRNrTbQXvpgT9Y9QfNa4
 ayHyOE6A==;
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leEtS-004gDN-DF
 for barebox@lists.infradead.org; Wed, 05 May 2021 10:36:39 +0000
Received: by mail-lj1-x234.google.com with SMTP id v6so1800558ljj.5
 for <barebox@lists.infradead.org>; Wed, 05 May 2021 03:36:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4et3aRL6XlLlzESa90god7hczraWoToMBcBppxJfjzA=;
 b=MHZaZJZnBYdKFyZf7W2vh8eYmz2F/+xXFXb3mpXSClQHowUlVHkg5LiCJX8b0CNT7T
 MYbLxanHXuonC5FOf+HjTZavZvYqy8ZGD5O/5fW3x0XXOpfVXUaNBnB9g10qpvTqVV/Z
 NSKY3BteP3hr38zavVN/C2r6Htc20b8RKq0IvbKd7WFLg5K0aHKnABgKUtj2OmPzIThX
 64xuN4LaEjQPPj+enmYkdFcuEADxcAOvXf1lzGOuqVJzvnMPnGW1AnvD63UIzdOaTRi6
 mScnBupRRzq197QC5UCN6FN7GqK8eLLKiqLNMmfOz/T7XvwKavKAKcv/hxsFCvm+7fsQ
 SuFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4et3aRL6XlLlzESa90god7hczraWoToMBcBppxJfjzA=;
 b=cUfNKKgD2SxhcSDtn7rHBLrJIccfZAy9u8BPpAgVmUuu1F3SmwVAyU/PNF7EZy0K4w
 oxdDCFsEwcA7KNSbnfSHm20cTQ4Wtz6Z0jX9crYFUvHmQ0tYK/yKsiO0OiO1spUnN/DM
 T3Ikx+aPk5iGwDHZCJPC+Z7/F7vHTtWkVg0I7vX8z6qaa29YEdRWgbRqc2q7j6uCaoBM
 2hcv4bjUvgp/Aqa/BElh6Gyga2yOOVxTVtZYh9jSmTHPdrLA+gp4IMTBv8WEuI8h2vvu
 JHX4J+b6lNKwkM/KUf1fjkCJ6OGTIa+LX3Zrq5Bx27k67PIH9issEURq65S1gFkHLS4m
 ERkQ==
X-Gm-Message-State: AOAM532kD4xbh+S548Iihvt21deLirsWGd9IUtMPeFrANqEilwcziY+i
 CNiZWYVN7hiBmrBDZEn0qNU=
X-Google-Smtp-Source: ABdhPJwyCaPIKRNAEDwee9hGyetmVE0i3thumsAGPUvXSIlpjMvUj9hR6twbujz5v6KjhtEngJi1Dw==
X-Received: by 2002:a2e:93cf:: with SMTP id p15mr21280252ljh.120.1620210996420; 
 Wed, 05 May 2021 03:36:36 -0700 (PDT)
Received: from flare (t35.niisi.ras.ru. [193.232.173.35])
 by smtp.gmail.com with ESMTPSA id c13sm503973lfv.267.2021.05.05.03.36.35
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 05 May 2021 03:36:36 -0700 (PDT)
Date: Wed, 5 May 2021 13:36:34 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-Id: <20210505133634.a4fe5a58c02f0c05b2a02781@gmail.com>
In-Reply-To: <de3c1a2d-5796-d2a0-4bfa-295adf9d37e9@pengutronix.de>
References: <20210505100900.88141-1-antonynpavlov@gmail.com>
 <20210505100900.88141-9-antonynpavlov@gmail.com>
 <de3c1a2d-5796-d2a0-4bfa-295adf9d37e9@pengutronix.de>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; i686-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210505_033638_483020_2F7E2B2F 
X-CRM114-Status: GOOD (  11.06  )
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
Cc: barebox@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 8/9] RISC-V: add litex-linux board support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, 5 May 2021 12:19:02 +0200
Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:

Hi Ahmad!

You are send your e-mails too fast, I can't keep up with you ;) =


I see that your latest RISC-V changes are already in pengutronix next branc=
h.

I'll try to take into account your notest and rebase my LiteX branch on top
of pengutronix next branch tomorrow.

> > --- a/images/Makefile.riscv
> > +++ b/images/Makefile.riscv
> > @@ -10,3 +10,7 @@ $(obj)/%.nmon: $(obj)/%.img FORCE
> >  pblb-$(CONFIG_BOARD_ERIZO_GENERIC) +=3D start_erizo_generic
> >  FILE_barebox-erizo-generic.img =3D start_erizo_generic.pblb
> >  image-$(CONFIG_BOARD_ERIZO_GENERIC) +=3D barebox-erizo-generic.img bar=
ebox-erizo-generic.nmon
> > +
> > +pblb-$(CONFIG_BOARD_LITEX_LINUX) +=3D start_litex_linux
> > +FILE_barebox-litex-linux.img =3D start_litex_linux.pblb
> > +image-$(CONFIG_BOARD_LITEX_LINUX) +=3D barebox-litex-linux.img
> =

> barebox-litex-linux sounds quite strange for me as someone who hasn't
> used LiteX.

There are several LiteX SoCs. Some of them are linux-targeted the others
are RTOS targeted (e.g. Zephyr RTOS), these SoCs can use different IP-block
sets and different IP-block base addresses.
So in barebox-litex-linux.img the part "litex-linux" is short name for
SoC "linux-on-litex-vexriscv".

-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

