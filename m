Delivery-date: Fri, 07 Jun 2024 02:40:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sFNeC-001t31-2X
	for lore@lore.pengutronix.de;
	Fri, 07 Jun 2024 02:40:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sFNeC-0000U8-4r
	for lore@pengutronix.de; Fri, 07 Jun 2024 02:40:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Mime-Version:References:In-Reply-To:Message-Id:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=t9Sh2HsoH/m2jMbDQ9L8D02knU8E1fnt2uewLbwPpRw=; b=XLYan90FQ2tB+BhK7jTU9vVfmR
	hK8aM453bPRxT3nMJSYO9+iaWWDZ7jeZalR8JETXYvtyymrhASrkpyoiqel2yhP7hiokFYuA1T1OW
	WQg+z88LLLFn4xl5ninfJmnGV3e/t0F3rOtdsn3CX2F+u+nH/9COH0g/xKLGyrckeIgqbm1bkI0EL
	dfTNNl387qBC2a2ftNU9+wONT5CSj/eu/24w3cgxH5gbeOgYpVEN6ALtWYYK7BSFj1LwnaclsNjQ8
	x9ffpiPtnTLzt1u+KdaoorMVDBwV0AJGo+inCZZZTcpoNI1rgr1YkljxVeG5LmPgkGcjYF7a2TJyl
	JHVXQbHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFNdi-0000000Br8A-3xEV;
	Fri, 07 Jun 2024 00:39:30 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFNdf-0000000Br7l-47Sb
	for barebox@lists.infradead.org;
	Fri, 07 Jun 2024 00:39:29 +0000
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-2ea903cd11bso20606141fa.1
        for <barebox@lists.infradead.org>; Thu, 06 Jun 2024 17:39:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717720765; x=1718325565; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:from:to:cc:subject:date
         :message-id:reply-to;
        bh=t9Sh2HsoH/m2jMbDQ9L8D02knU8E1fnt2uewLbwPpRw=;
        b=nsvROhysRW+SZKYHvkoCh3po/X7oNZqbDkbG6HvX1riJCB3FphdGBPatMsuIRDcpBF
         Kv3uwwTyBPFHAcc8To5WbKVkB0klcS821UsnNRaNjcFuQnP6/DeCkfEl6emFtFIbycr8
         KX6roB/YLm7xYR54J6SsAicmBZHt+dPZz8DPlnLrNw2KQiBlA2HdxPrGFhHY6zAfe68b
         TbFZOlGfA/D9JZS8aOWE8Dx0PecgxoHzbgU9WzuupHRtXPZdOnN4Im4ccEpg4I4jRDaX
         ic0EaV8mZQduJaECjAxFUYAwsS2kNx9+YnDL8Cc7dPrSo6vETsGn1KTP5fiygLpPIkUE
         AKdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717720765; x=1718325565;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=t9Sh2HsoH/m2jMbDQ9L8D02knU8E1fnt2uewLbwPpRw=;
        b=OU3ShlGkSB4DX4TWnVzxex/GJavtVIieoAeZwdbZ4uAXQvEavxjYECvMDGz0U8wki2
         B96fSfvlyZ2NUrbrDKTtAMVswhKyptT7EhZ6ex8NOUNRugn19xnrBTCih3jmUHvpqyaT
         jv+8CshAmQWjco7JUZ1qe4VTW2hLQ+eWrFcWN6IChDI/gCpl7ZRG0tROyo4DpVXbIJYt
         jZ29L4X0vQAKTsoGi7QPZYLW8y+RMCVaXVBCCNcVt05pPvJFroSBFB9DSV/ExY4Mvdk4
         G+1mpIOnUM7JA6VwM4MDb+hnh+y+RP4Wb/tL5SYK4rDDnc9yfytBTPnpwbzIJ7rsUlqZ
         RjhQ==
X-Gm-Message-State: AOJu0YzSyoZzDABei1+lYnjvBaOe4PodxDf7BUp9G9z/fXTLDAGiNdYG
	y+gB2Vo+ds9CEGcfgg8CG4A5VXQ0omnQj8O/DSxnjbuWJT6dIxJXbn/+FA==
X-Google-Smtp-Source: AGHT+IH2qMD+ANo4KKzXajJaGncTX2PpCPe8VODFsuCbpo2PjgijZJ690MqQ7AzBbppiIOe6rPRZtQ==
X-Received: by 2002:a2e:984a:0:b0:2e5:67a8:10f2 with SMTP id 38308e7fff4ca-2eadce9a1femr7557671fa.44.1717720765359;
        Thu, 06 Jun 2024 17:39:25 -0700 (PDT)
Received: from flare ([146.185.218.236])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ead41b077fsm3556431fa.84.2024.06.06.17.39.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Jun 2024 17:39:24 -0700 (PDT)
Date: Fri, 7 Jun 2024 03:47:17 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-Id: <20240607034717.a55d06b83aecfe8088077d88@gmail.com>
In-Reply-To: <Zl341MMAYanIfGAt@pengutronix.de>
References: <Zl341MMAYanIfGAt@pengutronix.de>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.33; i686-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240606_173928_119763_BB9ABECC 
X-CRM114-Status: GOOD (  18.40  )
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
X-Spam-Status: No, score=-6.9 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,NICE_REPLY_A,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: barebox + picotcp
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, 3 Jun 2024 19:09:40 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

Hi Sascha!

> Hi Antony,
>=20
> I am currently playing with your barebox picotcp integration in order to
> get it into mainline. I am currently on your picotcp v2.1 branch and
> noticed you had to disable TCP support. I wonder if v2.1 is the way
> forward or if it's the v1.7 based branch instead. The v2.1 branch is
> newer, but also hasn't seen any activity for multiple years now. One of
> the main features of the v2.1 branch is that it introduces
> PICO_SUPPORT_TICKLESS, from which I don't exactly know if we want/need
> it, but what I do see is that the stack won't compile when this option
> is enabled.
>=20
> Do you have any thoughts what could be the way forward?

I suppose that most beneficial picotcp feature is TCP support.
Working with picotcp v1.7 I have used tcp examples from
https://github.com/tass-belgium/picotcp-modules

It looks like that the tcp code does not work "as-is" after switching from
v1.7 to v2.1 so I have disabled it.

At the moment I have no good idea on picotcp integration next step.

This year I have faced with iPXE (https://ipxe.org/) as a user.
iPXE just works. It supports TCP and IPv6. It uses GPLv2.
May be iPXE would be a better choice?
However, I have not looked at the iPXE code yet.=20

--=20
Best regards,
=A0 Antony Pavlov


