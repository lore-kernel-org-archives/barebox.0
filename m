Delivery-date: Wed, 16 Oct 2024 09:10:32 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0yAy-004yEB-0R
	for lore@lore.pengutronix.de;
	Wed, 16 Oct 2024 09:10:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0yAx-000758-JU
	for lore@pengutronix.de; Wed, 16 Oct 2024 09:10:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=L1OOwh/MD41PZDfPPZoKQXys8nYZcCEAMMGs5/DvJi0=; b=kLkrT+nvutzwZDohEUBVAjrWrp
	Yz5W8WE9Fmb5Xu1+PUMfaLXQGLLKOqZW3CXZVVBsYAEhBxhhwcI2W1NoQ8EW3iDa+GHvkOnPbw8+k
	KqvM4wpfHEkSGJwdGH2VjoemS7wfOpmDDUblBJ92Ixxz/HyyxbWxtIh6G2l75/AAUmdyhQX0IEV2u
	xpTwP3h9Etxi51wJUL+mnTulJy0GW9BNFe1VpUoC3iSBtieU6CJcFpuQX/FimOUIeT/HlFcOOB7vy
	1p/MWF/TXXovYB+Tc/We5r8nhuOTFWOu8yk7F5TJ/fbYa7TUMy6eUkPkn/i7b7/UBtZy3swLR1O+B
	u3Zqt4OQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0yA9-0000000AnDo-3j0e;
	Wed, 16 Oct 2024 07:09:41 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0y8m-0000000An8N-3Qlb
	for barebox@bombadil.infradead.org;
	Wed, 16 Oct 2024 07:08:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=L1OOwh/MD41PZDfPPZoKQXys8nYZcCEAMMGs5/DvJi0=; b=Hvyo67vZMwqpO5Rxs8FTU7hV+0
	jC+0b41fnIlEmvELVKJLJ8ntfwAr8sNkRHb3p6gM+4kM5ZsrrA6w9EMDh4HtZ8oGK2b+CylUF8FbL
	QM+p3e11XeOurc9mkdXG7rIbcVdTsEkTqpkOnRryG2Ff3GTFHmiMaoYLmcO+j8tGpXFvSxXLpbT4e
	/6nHrw0jJpXy5Z886RVNONvYLObYVkjdaOaem+t1RQ0YLvwdQDFcB+yuu1AT7cliw5PK+wbubQpn2
	Ur2Z5dMVnOpZaQz33jJp7fdAMRPSvKRhLiLQ1PwS+qv+05LjErThdBIs6kvSAXJ2pkzenXayGsIjo
	PrjqSdjw==;
Received: from mail-pj1-x1030.google.com ([2607:f8b0:4864:20::1030])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0y8j-00000006k7z-2K3J
	for barebox@lists.infradead.org;
	Wed, 16 Oct 2024 07:08:15 +0000
Received: by mail-pj1-x1030.google.com with SMTP id 98e67ed59e1d1-2e2e2d09decso435208a91.1
        for <barebox@lists.infradead.org>; Wed, 16 Oct 2024 00:08:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729062490; x=1729667290; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=L1OOwh/MD41PZDfPPZoKQXys8nYZcCEAMMGs5/DvJi0=;
        b=c+4PToAbJfcL4MSTz3CwYxPeQ367MkyhNe/JZX9yUiFSrX5eJoLrjJ73PCK4U7w37c
         earG97PPhkoaUwjU6ZFbMUuC5FULms5XjWtfaXmEQXx7NaDCojnFhCk/9ldlaB5Tx75W
         rW0Vz3SV0iqso39VhT0Mf5ldSnCKlFiaFrqh5xGp5ieSMDRcDn39DTSWs48yC9LbZ/qy
         1YiM1nmaDKi6DeFRQ5xLoGLugDwJEfVXoUeSniKfzRd13pqqT1RCURZJaZEUleLouTZU
         n+OR8IijZm6EcT6KRAT3+S5ZHiIZRUQ+GPbtHh7T1rjq2cH5Mzdtk4pUa3Ti5err9ZSH
         v9zQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729062490; x=1729667290;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=L1OOwh/MD41PZDfPPZoKQXys8nYZcCEAMMGs5/DvJi0=;
        b=Ch7QK3hOb6uj1+3Tz/1atPxfrfuPV9aH9EV2R08HuyOWPPwaGZNCoiWJpM1Pjg9gTb
         5/PAtEcXyKOgEI+5ubug+vUQN3D0u0J0Q1iACebNPP/cm1OuV7AWCzy8j+VVw//uRmUi
         uTHa0rb/BrdHKG3DRogXTv5HXlfa8YOFfcdV7SkFKw039Op9vhXR+vDjPTFkFHJkisGu
         wt1RNVwHfP73+42Xua542RDgFLBI0jIrjiOJr/9zfbCWGRiBSeL8AhiLBSNXPfft8CtS
         iMbsrlgBwGo/FgZenieWE3CyhDdSVVpDrs6XsY5PZevW1KTUsXeD7PbIUP5ujVy5LSSe
         u8aw==
X-Gm-Message-State: AOJu0YwX2cAusa7Hv5JUoi5wvHo0rGlAfUeQhNpHqLPLf58miQEoOdfo
	flzr2MgebP+0jPTwZyAXkjv4G3wiMJBu4B9m4aFQocLD40Dz0t1fTE71J6UGUjyPALI8B5JcWQ8
	Pvv/0t9sKQSh2C59uRbE5LAEJP5q8G2VeWZjUtg==
X-Google-Smtp-Source: AGHT+IH5kDHBkLTU7TCo7LXd0xL3pqp+bD1iovRq1jr4u2zGjDiM3W3kyDCBVJyuN6K7Qg0U85cI42dkrkib/eWsP3Q=
X-Received: by 2002:a17:90a:8d01:b0:2c9:6abd:ca64 with SMTP id
 98e67ed59e1d1-2e2f0ae762fmr26704128a91.9.1729062489954; Wed, 16 Oct 2024
 00:08:09 -0700 (PDT)
MIME-Version: 1.0
References: <20241015-rockchip-spi-rk808-v1-0-e276b4b59603@pengutronix.de>
 <20241015-rockchip-spi-rk808-v1-5-e276b4b59603@pengutronix.de> <CAP1tNvQZ+-DXG862KJ1PMBJb5Z_pmngMqcCr7CrMDFs+MQOZ1g@mail.gmail.com>
In-Reply-To: <CAP1tNvQZ+-DXG862KJ1PMBJb5Z_pmngMqcCr7CrMDFs+MQOZ1g@mail.gmail.com>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Wed, 16 Oct 2024 10:07:57 +0300
Message-ID: <CAP1tNvT6P9v9n74K=fdvnQoOx1FuEKhWT_W7c7f98riRFg0W5Q@mail.gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "open list:BAREBOX" <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241016_080813_783988_29CD63C1 
X-CRM114-Status: UNSURE (   9.78  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 5/7] mfd: rk808: add support for RK806
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Oh, I see that in [4/7]. Sorry for the noise.

=D0=B2=D1=82, 15 =D0=BE=D0=BA=D1=82. 2024=E2=80=AF=D0=B3. =D0=B2 17:46, Ale=
xander Shiyan <eagle.alexander923@gmail.com>:
>
> =D0=B2=D1=82, 15 =D0=BE=D0=BA=D1=82. 2024=E2=80=AF=D0=B3. =D0=B2 14:21, S=
ascha Hauer <s.hauer@pengutronix.de>:
> >
> > This adds support for the RK806 to the rk808 driver. Additionally to
> > I2C this variant comes with SPI support, so add SPI probe support to th=
e
> > driver.
> >
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
>
> Hello Sascha.
>
> RK806 can also work via I2C. Can you add this compatibility together?
>
> Thanks!


