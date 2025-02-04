Delivery-date: Tue, 04 Feb 2025 16:37:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tfKze-008R78-2W
	for lore@lore.pengutronix.de;
	Tue, 04 Feb 2025 16:37:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tfKze-00083X-TU
	for lore@pengutronix.de; Tue, 04 Feb 2025 16:37:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iSmKjjKlRnKie/h/1LzNmKMzSyR+XPmMRIW8o79qFag=; b=n8g92mNHcAvy8SCDQnU1NsOqnE
	54rtV3oHfNysSuWRKprAYA4zXg9+7COY8+KY1SbFm80eet+xiU6ytk5lX18BlbhByZJpNNWt9ZHXA
	J/1Opp3pHX9XtXEiURPdXJ9WqEhlvZ/ELJnY5syVypvxhAV9gffXoS69GUQR5i5/h9TJQn/bXheSI
	Z81Ze9HcJT0s0CMHJ9uct74WDfCvM/YOOyyd5TD7gOKRfhvdBfdUL9KDplK/M4vo5yTiOH1LtLE8W
	B07/OHtN3/o6D/Pw/0M0bkkYMcFBjDtGGyaha+c7AOdXOtK/XExxztgmd0iRvbxeZKu/Bgue65n7z
	JTxgwE5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tfKz2-00000000qJm-3e8P;
	Tue, 04 Feb 2025 15:37:04 +0000
Received: from mail-pj1-x102e.google.com ([2607:f8b0:4864:20::102e])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tfKtO-00000000p3T-2io2
	for barebox@lists.infradead.org;
	Tue, 04 Feb 2025 15:31:16 +0000
Received: by mail-pj1-x102e.google.com with SMTP id 98e67ed59e1d1-2f13acbe29bso10422015a91.1
        for <barebox@lists.infradead.org>; Tue, 04 Feb 2025 07:31:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1738683073; x=1739287873; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iSmKjjKlRnKie/h/1LzNmKMzSyR+XPmMRIW8o79qFag=;
        b=SncqGTB3Ik1Qbi3Xb2X+DyBWEtFvAgV2/oA2ZzSCsHAZ5a3Gm4/TKNQWqrqHN6ZxMX
         pjmIdGwFIvZAAdagPEo9Kt9KCKcocdL8S9wjuOcjOB22KvxWQXKPoVd43SZJoFXmb46r
         wGV1C8e3NeO2m/HWJQs28ZeE6DExanfyU51UhltyisuzF1I7+2feaRTGJtfUTau1llLz
         m9gWtYwfrYA6c9nP1ZNfDbJ3KOGlg6FTycjUltWQmmH2zdwLnevgfNJ8N7kJo+QTgskL
         stdfMrCmqIBHnoGo5drXXuCGHgCkjFNnecRrO1WYIByGc92zquEsccbZdm/jMni/C/Hk
         CkPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738683073; x=1739287873;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=iSmKjjKlRnKie/h/1LzNmKMzSyR+XPmMRIW8o79qFag=;
        b=XMiyRZvRa5XiwmcnudWVaRm/t9lzK0KjwbatGWzIKHxxwpM2yRrZOGg4NYdvHZPZ8P
         dntnt1rNhkqovM2jGd97T+yiEok4SrDCTcUWS53WO9n8r9Yd5TtvRAw4BD2TMZuMz7iE
         VNWi6C5bqtlsLngW6HAwVM/OBlbCE53DYgZ4PLvKdWbFfdpfwQZCjU8hNObgoB+AK1VY
         ZpI7yC3cjJrGQopTWWJZ6TlbWvpvxoFdLjvct3cHrBKgDhQTCEd/tAL2HOKeKiZ8yDp0
         tjNmGJBSaaP52l5X5CII/Oz+bL9ZbMs2VcnR6WNFb60nLu5G682NYhzIuMDOHU2m3WXh
         MDlA==
X-Gm-Message-State: AOJu0YxsQWOoZTn0MgFlfPuMxVvkAkGz8/ZIGtwU9w7Rt6EQSmheqwoH
	BG/vqIEjYr2HItHpfdATWR9OnBwrSP2AFObDARWOS2Sjy2Q1478ZJ07tUgJIBSTw+RA3pOXihSH
	cRutxCYnxTdiyz5CwVTVYUAM9VO3z/rwuKiM=
X-Gm-Gg: ASbGncuNlSThpBRz3RxEjIsCJBzsKWz6ExrQkxm1vrcw3qFpmlkm+FR10kcM5htuLq8
	og8mnVJJlcyk4SakIJtBWXY6/K1awfKhzyGjCEDPbBmqH1ZU0+voFILXH/z4+KqMKqI4nWzzQ4A
	==
X-Google-Smtp-Source: AGHT+IEj7/sx/glQoC/28Iyp8GEGyg4uuhHnrMdDWuffoJqFpJTvAHmMxxjQHIiNRqGs14qOnRJVKz2Y0hHTQs1zlbI=
X-Received: by 2002:a17:90b:2884:b0:2f9:9c3a:ed3 with SMTP id
 98e67ed59e1d1-2f9ba73e992mr5609467a91.16.1738683073421; Tue, 04 Feb 2025
 07:31:13 -0800 (PST)
MIME-Version: 1.0
References: <CAP1tNvRa-1XPm087pzti1XmqvRDqchKOWZgvgYmcAQh+uOayBg@mail.gmail.com>
 <Z5uBCoIy69dB3QH_@pengutronix.de> <CAP1tNvR3SwMo2b1kUMzdL6BQM85yVYaK2YwxnHSKm53vg0aZow@mail.gmail.com>
 <Z5zNy19vd_13rRsY@pengutronix.de>
In-Reply-To: <Z5zNy19vd_13rRsY@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Tue, 4 Feb 2025 18:31:00 +0300
X-Gm-Features: AWEUYZnf9s3XIenmCTnWBG3c-H2ocA7OeKSrqLIlS9FhP2JGSMQ2XdDWFMQGifI
Message-ID: <CAP1tNvSnOaCbW9qFt34JX_L5Ljiz2cxd1A4cgtOiiHmHjzd2ag@mail.gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250204_073114_686763_C594482B 
X-CRM114-Status: GOOD (  19.40  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: Devicetree add-on
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello All!

Eventually I switched to using overlays.
Of course, there are some unsolved problems, such as already occupied alias=
es
if they are specified in the overlay, or, for example, using
"assigned-clocks" in
overlays for already probed devices. I will give two examples from my
current projects,
criticize them if it is not difficult, maybe an idea will arise on how
to do it better.
The first link with two overlays [1], the third with three [2]:)

[1] https://github.com/MacroGroup/barebox/blob/macro/arch/arm/boards/diasom=
-rk3568/board.c
[2] https://github.com/shcgit/barebox-github/blob/milas/arch/arm/boards/mm-=
sm-sama5d2/board.c

Thanks!

=D0=BF=D1=82, 31 =D1=8F=D0=BD=D0=B2. 2025=E2=80=AF=D0=B3. =D0=B2 16:19, Sas=
cha Hauer <s.hauer@pengutronix.de>:
>
> On Thu, Jan 30, 2025 at 04:45:48PM +0300, Alexander Shiyan wrote:
> > Hello.
> >
> > Yes, I understand that.
> > But maybe we can make another entry point to start from scratch,
> > but with another tree, roughly the same way we do with pbl?
>
> It's not universally possible to jump into the currently running image.
> Static variables in the data section might be modified already.
>
> Of course you can load the barebox image from the boot device again
> manually and jump into it, with a device tree passed in a pointer this
> time.
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


