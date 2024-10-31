Delivery-date: Thu, 31 Oct 2024 07:06:59 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t6OKf-002zOh-25
	for lore@lore.pengutronix.de;
	Thu, 31 Oct 2024 07:06:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t6OKg-0002hz-7M
	for lore@pengutronix.de; Thu, 31 Oct 2024 07:06:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5k9aeoreQnVkWXDft6WfdB70Ja2uK+OY6r0CgCrm8u4=; b=O2NJ/PL7NS76H1zmqM2+GRgGrF
	qDR0lM9JEM14PQiUz+HFyuDyhnzg6OsklCHLmGcFaxdQ4sahSwCji0xCLIOUIZGlwkHZVATme2XEF
	kXTQqYktsDD0cMj737ndWRbieaswOru94aZ4DXw7R+6Gm8pU5waNcONSoh7y5BGiReZMgmGZRPPjO
	rm8wZ4DAeXkrIkVaOk8fDC6h9ilIAl6Vhl9lwUz+W8ka8BBd7bfLoX6/3K/3/56g4Krl5Z8E4eVZz
	QsaDUE9qpr4jm7xCSVTE3iJ44lTNTDvsHu9LKKMs2ZnaukduQUdDm8SYC5anH31+Ts6FHi9wPDZpS
	QNcGp8Pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t6OK0-00000002e7A-1jnP;
	Thu, 31 Oct 2024 06:06:16 +0000
Received: from mail-pf1-x429.google.com ([2607:f8b0:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t6OJw-00000002e5x-3LJ1
	for barebox@lists.infradead.org;
	Thu, 31 Oct 2024 06:06:13 +0000
Received: by mail-pf1-x429.google.com with SMTP id d2e1a72fcca58-720be2b27acso217504b3a.0
        for <barebox@lists.infradead.org>; Wed, 30 Oct 2024 23:06:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730354772; x=1730959572; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5k9aeoreQnVkWXDft6WfdB70Ja2uK+OY6r0CgCrm8u4=;
        b=OvJP5Zx3kO7gH1Nzr0vyRkZQqlZrMXg3C94AHUXp+jFeLkViDGxuQSn195hIGgsj3D
         SljPW7IdYFV7OTRuPtwhXRRQSwu1fbXDYZERay+QKD7mqA1hazjHhs0AMxPqdjkNQTAn
         PbvpxAf02EisozwjBuhjblhEpdRr3TARnl4mDMuqRnWNxR3nf0C6UXfPWfXesqEh5lr7
         C5YvnmjZu4LJvAoWr/L7PW7C6iSjSjZyDC2fQ3+pl2cnvj0Ct5PDKcOf+JcrxZvrh0TG
         mFERgwsYWlXDOEefXP1mZYMzS4vJAVrGaJUjsU4xRsXidDcLnUvuK/trq46P1LBUrDaL
         mLJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730354772; x=1730959572;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5k9aeoreQnVkWXDft6WfdB70Ja2uK+OY6r0CgCrm8u4=;
        b=IIfNBGjy2v03ayPz4xkrdZ+JiDmXxprjH4O2m1ubYvxYNlAuExwyFC9PXxHMM4aMll
         hGwdAAxcGFsoojuYgAqg+TwVlHMdlNsnJIKfuneh7sgaWxTPZGN0BFeES0GmuTuNh8hI
         hZWBGfv7mNFm0d10P2Ii5DvzJOeRwii8/PMX8S+/Vshes85CEa4s9qDkVkhypj62d7Gg
         Ltj0CzplGJVNQrQ++qZQp5x0cTTubRRzYfAc9bf9+ccnm9OgZE0uCb6dP6SuUu3VKT4/
         Xlggh7XL8CPj3YoUllrboobUO0a1boLdpCcF20TqlQrQ+CWXXqhow+Bk95lCjw+xpAVS
         xNMQ==
X-Gm-Message-State: AOJu0YxhSRNTy1L5zEyRiMU7dZlfvzZbgOpZgIDqAM7+9tHhx/zDAj15
	jR4bdWZ94B48BROOYcSZABbCBGz+x3ygXAYfOrrmz/0MwhZ9Sh+sjntLUgQ0uaBOMfBKyWXBD6A
	y+d/zqUkq0Ls5PZRKcbSCjPdxA1vHx9xV
X-Google-Smtp-Source: AGHT+IFHq/Sqr78HYOv95cILso9gMhdvFjvX7OZKRc5h4nMIp+Wg90n1J6dJ1MLZcUaKAOfkXTAW1G65dJEe+8dlEf8=
X-Received: by 2002:a05:6a21:920b:b0:1d9:6ea3:9741 with SMTP id
 adf61e73a8af0-1db91d440eemr2540118637.4.1730354771539; Wed, 30 Oct 2024
 23:06:11 -0700 (PDT)
MIME-Version: 1.0
References: <20241015-rockchip-spi-rk808-v1-0-e276b4b59603@pengutronix.de> <20241015-rockchip-spi-rk808-v1-1-e276b4b59603@pengutronix.de>
In-Reply-To: <20241015-rockchip-spi-rk808-v1-1-e276b4b59603@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu, 31 Oct 2024 09:05:59 +0300
Message-ID: <CAP1tNvQ=o3UnO8dHxuOn8MmEfvf9q3jUU6kFGWM_R-BEFQq4hw@mail.gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "open list:BAREBOX" <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241030_230612_854036_ECA57D6E 
X-CRM114-Status: GOOD (  10.39  )
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
Subject: Re: [PATCH 1/7] spi: add rockchip spi controller support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello.

=D0=B2=D1=82, 15 =D0=BE=D0=BA=D1=82. 2024=E2=80=AF=D0=B3. =D0=B2 14:21, Sas=
cha Hauer <s.hauer@pengutronix.de>:
>
> This adds support for the SPI controller found on many Rockchip SoCs.
> The driver is based on the corresponding Linux driver as of
> Linux-6.12-rc1.
...
> diff --git a/drivers/spi/Makefile b/drivers/spi/Makefile
> index 68a8c4e675..f9aefdfe45 100644
> --- a/drivers/spi/Makefile
> +++ b/drivers/spi/Makefile
> @@ -17,3 +17,4 @@ obj-$(CONFIG_SPI_ZYNQ_QSPI) +=3D zynq_qspi.o
>  obj-$(CONFIG_SPI_NXP_FLEXSPI) +=3D spi-nxp-fspi.o
>  obj-$(CONFIG_DRIVER_SPI_STM32) +=3D stm32_spi.o
>  obj-$(CONFIG_SPI_SIFIVE) +=3D spi-sifive.o
> +obj-y +=3D spi-rockchip.o

Why do you enable the driver without conditions?
Maybe you need a KConfig symbol here?


