Delivery-date: Tue, 09 Jul 2024 04:14:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sR0NW-002xJ7-2u
	for lore@lore.pengutronix.de;
	Tue, 09 Jul 2024 04:14:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sR0NW-0004Eb-9n
	for lore@pengutronix.de; Tue, 09 Jul 2024 04:14:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:Cc:To:Subject:
	Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gp/5HziOIIiaYdNJrJeZNH6+OKVyIloQEB+EuihnjQY=; b=vwXhXCYloNAurJ2h2PAHETJnbV
	nm5Gs1e8qRkn72jSSpU3NjVksSwV5XeK8jnz52lTyMxXX22HkFLjZ9khkUKiu27ftABE3bEyP/nmP
	c8p0WW7uLJ6MLj/kvbKlYkop53oL5kpr89gU2tEhydYGFq+jXi/ARqxVa/QbyQw1x/jY5HraNOtAE
	VHjNssMnekDkpXbUlNy4CJRoWf9F7aeVkO2NSgEhZZxRCGp1hCLlir6ehE12sJPYxJIdL9+zZe5Ed
	qIznKJEVt/Z5epLrOQnwKmqI+8BsNl0sVX5aZqTvxC+9Dze48PNuFJOJm0yKe8HAAegN4Tvzwvepx
	9Wn2mrDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sR0Mp-00000005cQh-3I9j;
	Tue, 09 Jul 2024 02:14:07 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sR0Mn-00000005cOo-2S2I
	for barebox@lists.infradead.org;
	Tue, 09 Jul 2024 02:14:06 +0000
Received: by mail-lj1-x22e.google.com with SMTP id 38308e7fff4ca-2eeb1ba0468so10140441fa.0
        for <barebox@lists.infradead.org>; Mon, 08 Jul 2024 19:14:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720491243; x=1721096043; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=gp/5HziOIIiaYdNJrJeZNH6+OKVyIloQEB+EuihnjQY=;
        b=MW4qT8TSSc1D2Won3CLHs79lwbNLSQsX3dtsq80q6MV4nb4RFLUMjZk7Wr8INqFAdg
         CfxRvRUKRjnFBOUADcUkGP2R9xlXw1TEpvY2VDDQY956wTmeSPa1k43cNsYS7V4UCPLr
         aGNqVWRIGyzEzK8vHIZUzZTT7byruTRX8p/FqK9HpxBsIBFDdu8OxpoDixHljyZ5Orer
         NEtC8Fy2Inc2MWpz3Fjgy1ILNbx2OvRqwT1jVd3cFsEqUtwkP1wvNqlMt3jzjLde/orL
         3yyaPPAYzVqVaQHQmg1VQv1DD1+C8wtoUZO3+mPSlOXW2M7p0eg3whUcZIfEsmJrRvlt
         Ur1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720491243; x=1721096043;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gp/5HziOIIiaYdNJrJeZNH6+OKVyIloQEB+EuihnjQY=;
        b=ASxJfw0SiL/C3q0jompG4N0//7t4OXJ5andBLgETb0fj2+t8E7SJNr+bducYzug3Aa
         GsvLVLqvFsPqCvtm8SX5yFfbap2x9KHZ87w3uFfXnV+wytDWK8KNjKk9qj9aKnWZuAm0
         ogBJm7hfWqCZtVLus60w8Be9+Piwy2H4w69GeN505G3E6T3dyrgbWcVQJhF+joDii+v0
         F9ta4383yoFvpdpAGhBNudo8aoinR6rjKUxArH5vzSE1zIGPgnJyCfLnndr9mgfKBCzy
         W+BlnDXfyIhiuq09W+dEiJUapQ4RGGYwudPHSgF2eOl/ffCZnIRDfWkOcZVMhlmp14YZ
         3P/w==
X-Gm-Message-State: AOJu0YxxgztkhTGTGO6mEuDE1TSK93XLPVHD75GsnBdVuVlQijuVMgXg
	Fa3UQne6Dq4NtVKs0m7jkRVkoD5jh3ruqaqayF9XPBfvWYNcg42UB9xy1iLpn1mL8HN1Nku15Hl
	3ASmb4MQpQfNokzf+vQ+EVRbkJSGWZ/Ba
X-Google-Smtp-Source: AGHT+IFU/m7K5oFidU1cJcuziElCxhJr4bS04UmVaYsoiylPj++/xTd7FGJ+2PvUySGHKeJLDNd95FIpiwVU4NpT7H8=
X-Received: by 2002:a2e:b1c8:0:b0:2ee:813b:cd8f with SMTP id
 38308e7fff4ca-2eeb30fd448mr6962671fa.23.1720491242859; Mon, 08 Jul 2024
 19:14:02 -0700 (PDT)
MIME-Version: 1.0
References: <CAGWymk3LSCYpVDjYXs8NvdmkQeB+Bh22BJ7Sezm+hwuhUoSjFw@mail.gmail.com>
 <09205dea-7c95-47d3-b339-e7ad2477d592@pengutronix.de>
In-Reply-To: <09205dea-7c95-47d3-b339-e7ad2477d592@pengutronix.de>
From: Wes Chow <wes.chow@gmail.com>
Date: Mon, 8 Jul 2024 22:13:51 -0400
Message-ID: <CAGWymk23wmB14DSzHcyjc0eHCVaNgxeG6ykL7WyE_fCCiTsdsw@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240708_191405_647177_6C198E2A 
X-CRM114-Status: GOOD (  17.46  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: barebox state w/ qemu
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Ahmad,

> Normally, the barebox device tree already describes the state and
> environment, but Qemu is a special case, because the device tree is
> not compiled into barebox, but supplied by the virtual machine.
>
> Thus this overlay to add some barebox specific information. As this
> should happen very early, so that the environment can take effect early
> on, the overlays aren't applied dynamically in this case, but compiled-in.

Thanks, that's very helpful. I'm starting to understand but I'm not
quite there yet...

> Because that flash is a fixed part of the virt machine, you should
> already have functional state:
>
>   barebox@ARM QEMU virt64:/ state
>   registered state instances:
>   state                (backend: raw, path: /dev/nor0.barebox-state)
>
> Is this not the case and if not, what errors did you get?

I do have the same thing. If I'm reading the docs correctly though I
should be able to modify state with the nv command, right? This
doesn't seem to persist the foo variable:

 barebox@ARM QEMU virt64:/ state
 registered state instances:
 state                (backend: raw, path: /dev/nor0.barebox-state)
 barebox@ARM QEMU virt64:/ nv foo=bar
 nv variable modified, will save nv variables on shutdown
 barebox@ARM QEMU virt64:/ nv
   allow_color: true
   autoboot_timeout: 3
   foo: bar
   user: none
 barebox@ARM QEMU virt64:/ poweroff

When I restart Qemu the "foo" variable goes away. And actually, every
time I start Qemu I get this message:

 state state.of: Fresh state detected, continuing with defaults

Do I need to specify a flash device when starting Qemu? I'm running
this (taken from the docs):

 qemu-system-aarch64 -m 2048M -cpu cortex-a57 -machine virt -display
none -serial stdio -kernel ./images/barebox-dt-2nd.img

... but I'm guessing I'm missing a pflash argument. I've been trying
various incantations but haven't been able to get Qemu to boot
successfully if I supply a `-drive if=pflash,...`.

Thanks,
Wes


