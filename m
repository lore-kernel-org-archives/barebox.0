Delivery-date: Wed, 02 Apr 2025 09:52:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzstH-007JtV-2j
	for lore@lore.pengutronix.de;
	Wed, 02 Apr 2025 09:52:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tzstH-0005nG-8i
	for lore@pengutronix.de; Wed, 02 Apr 2025 09:52:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vW/SNShomyHN262CoTtWTIRAv9ugvPEhxj5Ii5KUnSs=; b=nwO0K+gKMhAqeM
	QQssC/w7lHcoLNrxwXcqaeljPshxMBfLCe3BqfooEooNNRtRleob1mC6YqigziLa3Yd4oQTfu10dB
	Az+mN8AQyxiIVcKLIVbwTHdPq1+DrFi/kfdURmSUquZFz5u7qaPIE59zw52RhXBh8cXiV9Lg0PLI4
	kEaoj63UcfpGkSfD6rQO7Cl5+rHyrYNNawnrCfY4kAf5/MMV36sQ4Qbe/Q8HowpB/Ns89lD0NcJlN
	E/GWFiZtgKjq7SDUC85l0tx6nPowRi5fI9xz6Vab+Vb8oD+SGYJqLwJbuC6SVgVLAqSK94dfHNXd4
	eGOCZfe3lE+2mqeSQnCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzssc-00000005REW-2aAG;
	Wed, 02 Apr 2025 07:51:22 +0000
Received: from mail-pj1-x1029.google.com ([2607:f8b0:4864:20::1029])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tzsof-00000005Qbh-0EF6
	for barebox@lists.infradead.org;
	Wed, 02 Apr 2025 07:47:18 +0000
Received: by mail-pj1-x1029.google.com with SMTP id 98e67ed59e1d1-3032aa1b764so8252695a91.1
        for <barebox@lists.infradead.org>; Wed, 02 Apr 2025 00:47:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743580036; x=1744184836; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vW/SNShomyHN262CoTtWTIRAv9ugvPEhxj5Ii5KUnSs=;
        b=Li1qWOhpyMI+jY6pD5Ei+Q6xRpD6hpKOTm5lSsABn3qtTaPrgMreu1akckkauXgbqB
         /WJBb5gFWkYg8OZXOfQNVcQaQhku/OIQ04+rTvCK2Z5AtqDtX6pKgfT8YxodNBcRytcL
         cr8ufQVFqaQxYfD5w378UTaeUpmz17wuzXdwl/9mKoC5jEkP+2NtwtcTSZblWQjQ/A8S
         sTJoc4i/uX3GWLny5inq7x/ByZWiXDYJNiAoYC9YrF4WBTszJ8rpaLYo6B4Z7uPtfHPb
         gxd15zSUcI2SFxgA1POyCWWKx+LS7PXN1VY7YCXZIVwsVWnXdrTdtqLxHFqlKlo/T2nU
         GPVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743580036; x=1744184836;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vW/SNShomyHN262CoTtWTIRAv9ugvPEhxj5Ii5KUnSs=;
        b=KCorqSr9VK3x21q9rNs7muSwnPY9kESUp2CaT8dbGdNWxC57lsswZrU47EnLn1vpwe
         HMS+tDwVB4RQ1kIEaDtRxyQjOGawwH0bCN5AiXZaVnlVvMgVyoAF1j50HgpK1zC4EmpT
         744KGaif9UQSx9I1M8abrz16UW5Z7zmWAdWfSVla80o5VUCOsHH4Q6nHvMJVzucjNu42
         +kaY6zCzpct6SlofoM356QLdaqFnZOQj9c9v1gDhaH/TaOHjzAymVoDNSwTmDYjs7E3O
         msTpE/XTo7bljrDxgv0w2e5Ok/9qlbqBc7YlqvQ4auUh3SNFcmHqG3HqihWTKfgCYcZZ
         1zPw==
X-Forwarded-Encrypted: i=1; AJvYcCXNA8WCVIOMz0JYOrmTOCGPBGrf2NNJ0zwWf/umc/+c0Rc66BBIsdu2JrVyAa/qDgCg7HkKDnvb@lists.infradead.org
X-Gm-Message-State: AOJu0YwVN0j2CthuVD1vMKwSmDydZy5/aMq6NRcOEVaTwnBm0zZMBMHz
	y6z0XKCrxoFw6MzIScIj2i2eeLUVQ3w3gKe7iifIESgeyTlvJeL6w0kvDsobySYTKMQQiu23/hp
	7Jpzdw4hNXy2HoYJTfO8jZjAKVIhzfpVuq8c=
X-Gm-Gg: ASbGncsj5W5xQeN6dufcp43PzRLB1hCQEhPizzvlPHUycQ2wpiFAlPkCe7xFCNEcI8w
	q9nhnIjRulMvMa4CmxyZfOlKrsfBoU0Q/QgGsshTVJcsM9813X/CXifM6ffmCcsXCrp2RbC6NhA
	It+PMU3J6dBabRSpUUIytanQ60YA==
X-Google-Smtp-Source: AGHT+IG/toyIMQbxtN+3toKy/KxAP1Ay+h13YhihmNyLvy1j2FIQFW1DYvhd4U61Cuw4s6a43QQlxgSN3nWMaQm4/t8=
X-Received: by 2002:a17:90b:4ed0:b0:2ef:31a9:95c6 with SMTP id
 98e67ed59e1d1-30531fa5f57mr28626526a91.14.1743580036127; Wed, 02 Apr 2025
 00:47:16 -0700 (PDT)
MIME-Version: 1.0
References: <CAP1tNvQiAqipRwBp9MBcOrPEQnbtqxr5GVZQ0vWhOnzhn3Wijw@mail.gmail.com>
 <Z-uZfXkw7pCkeD_4@pengutronix.de> <CAP1tNvQ3qtYdsBE5W2Ep3Wz1em0GqGJamW0zQapu73bywFCigA@mail.gmail.com>
 <a9bad484-6301-4acf-838d-0d75ec11e756@pengutronix.de>
In-Reply-To: <a9bad484-6301-4acf-838d-0d75ec11e756@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Wed, 2 Apr 2025 10:47:04 +0300
X-Gm-Features: AQ5f1JoQWay8_7ZnITSHHbl4NwzU6V4NBFy0-x2BVIzinjcO1q-ZHD_NL5EBMUA
Message-ID: <CAP1tNvT-Fr81sSwgz=GXxpSetwZWi=u6=+7Gq75osaDTiQETRw@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250402_004717_107268_D5513E9B 
X-CRM114-Status: GOOD (  24.40  )
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
Cc: Barebox List <barebox@lists.infradead.org>, Oleksij Rempel <o.rempel@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: NOR damage problem
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello.

Oh, the spi-mem driver update also includes a major spi core update.
I'll try to make minimal changes just for the atmel-quadspi driver.

Thanks!

=D0=B2=D1=82, 1 =D0=B0=D0=BF=D1=80. 2025=E2=80=AF=D0=B3. =D0=B2 15:05, Ahma=
d Fatoum <a.fatoum@pengutronix.de>:
>
> Hello Alexander,
>
> On 4/1/25 13:56, Alexander Shiyan wrote:
> > Hello.
> >
> >>> Found NOR partition damage after use ubiformat.
> >>> There is a NOR memory (256M) connected via atmel-qspi.
> > ...
> >> The messages above say that 64bytes were written which matches the
> >> number of bytes that are corrupted here. Maybe this can be a starting
> >> point where to look at. Also the 64 bytes were written without the blo=
ck
> >> being erased. You could erase the block manually before calling
> >> ubiformat, then you could see what the code really tried to write here=
.
> >>
> >> Just an idea: Is the size of your Flash correctly detected? When writi=
ng
> >> past the device then the write operations could roll over to the first
> >> block.
> >
> > The problem is more complex than I thought...
> > ATMEL QSPI only works in the mapping range up to 128 MB,
> > larger chips will not work correctly.
> > To solve this, we will have to update the spi-mem and atmel-quadspi
> > drivers and add spi_transfer() support to the driver (and in the kernel=
 too).
>
> The spi-mem core is also limited to 1 bit currently. Just saying in case
> you want to fix that as well. I haven't been successful to talk Oleksij
> into it. :D
>
> Cheers,
> Ahmad
>
> >
> > Thanks!
> >
> >
>
> --
> Pengutronix e.K.                  |                             |
> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
>


