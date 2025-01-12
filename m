Delivery-date: Sun, 12 Jan 2025 17:37:59 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tX0yM-000G9K-32
	for lore@lore.pengutronix.de;
	Sun, 12 Jan 2025 17:37:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tX0yM-00036O-AO
	for lore@pengutronix.de; Sun, 12 Jan 2025 17:37:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xxtWt4Q1Tfgj4j05Ro0s4YVLRR1zd42WJ37i4FxWKaQ=; b=v8vlX98leur3zwFu3mt1WGMkn+
	no1feq+TpjnarqTCzA2QEGK37DYhuWY+5Fd4YD5Ck5LSwLDMuHXQm2KCK4iAByOpPXJdLQtJn0ZzZ
	TEX2M+m8NsUhhy54Zp0IS2Jx1bR/6bnylxcsW50TO428NRGnMJy9/1Sty95zH+CM/fiAkc7Tc4IU7
	Ukkiy7cKUeHzV2agDUBxPMCUHLuLkPUcCeBhlcAJB+kN8iMH3BCjbPsvaQb7r2cKwkDYtmKanKXCV
	LHepzgmVkwgcFOM3QEcOv+gkamd74a6cLWNdbZ/J+VbYwF6h3f5sTmZQc/prWIy++4kRpxhKwTwMD
	jE8SJN0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tX0xc-000000034cP-1Klk;
	Sun, 12 Jan 2025 16:37:12 +0000
Received: from mail-pl1-x62d.google.com ([2607:f8b0:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tX0xZ-000000034bN-0h11
	for barebox@lists.infradead.org;
	Sun, 12 Jan 2025 16:37:10 +0000
Received: by mail-pl1-x62d.google.com with SMTP id d9443c01a7336-2163bd70069so62560985ad.0
        for <barebox@lists.infradead.org>; Sun, 12 Jan 2025 08:37:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736699827; x=1737304627; darn=lists.infradead.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xxtWt4Q1Tfgj4j05Ro0s4YVLRR1zd42WJ37i4FxWKaQ=;
        b=Rw0bky52d0Lf25JkwO5QltDIImXzqEcz1hmc88utJeql/Lr/CJg5z88MpNZnWYRVZA
         GnUbbYh8mQXmkAW17osxCLLKGHBmX5wcDO3YVbGL0WEZtNwmcDSYJRe+golpKkdmHAPC
         KzkWn26DsGubizqzuJMK3dCUTv7pFw+iqtvKK8HS1om+HoVLlMzawR1VNSlExB3ROtXj
         vs79IsEHCQvsD6sS6s7mLOjOqJ4vFTvdiidRGZaGhPf0FmEkR8B+rerqQy7DdIL3vThs
         uc2VZbg8DjRdDr/M0zYNjA7HPN5u+imPqmVuC2mO8Bwp1lnzY7SFKbA9b8VLymx9wsmz
         //Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736699827; x=1737304627;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xxtWt4Q1Tfgj4j05Ro0s4YVLRR1zd42WJ37i4FxWKaQ=;
        b=nXO4L/iKJd+lxWIfTbpaB//MCk7QOwgcztIWKJ83CL09Swnyun9WPlcxpr82SZZEYv
         /vAkBfMGclren+Kj1o9q9aD4W9LFqzXjqWYUgHIBTKFYbDaRuN1F48CmpCaX5eEgydUS
         XGdEHa+bdU6M87zSK5TgDc5Z1kyil/EjLJSgPWgyQyxEFgqjIT7EwH5K2H04HMxkeytL
         pZ6W/EwEpIiykrU+DDQXxXtCp7Oy+kaUFiPXK3ffVglq6HKuvUpJFdILQ1simKryB3lm
         jnXVTWFMNbukWBvcT+J3ahqjHmHWRm0Z9MWDhPFM8XRBh1PPDjeGqdv5MJ/ji9gErwuW
         18sw==
X-Gm-Message-State: AOJu0YxrCf7FJQ0F3Fv2iOBkGYQP2KyHfCGMkv8WyxwrmP1c8PbWAJKJ
	Ox5W/s4nosjSw083tOYVu9dzA+z23ZUNpfWoFlHO1UzJK5bXfAPMOgsz3Epbim21+1JYKJ/ox5f
	3DNMR8VdeXMve8EzxUgMEMt4ujTV0/N+1
X-Gm-Gg: ASbGncs6mie03m2bY1fGIGQHRlKE1dwWjGuUvNkc9Pbh1R0+ioj4ZZ9ie2YpE9kvrx2
	6jXys67prVX/Fq0JFSR+qM9Z453cX80u+39wUpPw=
X-Google-Smtp-Source: AGHT+IFtoFbuMthmAKwh6nyemKxfWQdw10+7tI6QCNqPjvZrckpi6szKoxqrFZwNrG7dTIRoahVPFINB0ai8FZfsL/Q=
X-Received: by 2002:a17:902:ce88:b0:215:a3fd:61f5 with SMTP id
 d9443c01a7336-21a83f46a1dmr276763915ad.5.1736699827263; Sun, 12 Jan 2025
 08:37:07 -0800 (PST)
MIME-Version: 1.0
References: <20250110102840.53331-1-eagle.alexander923@gmail.com>
In-Reply-To: <20250110102840.53331-1-eagle.alexander923@gmail.com>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Sun, 12 Jan 2025 19:36:54 +0300
X-Gm-Features: AbW1kvafMpz8ZaHON4JLgEwk3rApYy95spmxP2O5Ng9eN7Fyj3DD-ZbGxLQV9AI
Message-ID: <CAP1tNvQCgE+8+EkAFxChRyKke3EntxXn0Zx1oUAngdYxcMbV8w@mail.gmail.com>
To: barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250112_083709_201907_92824FCB 
X-CRM114-Status: GOOD (  19.07  )
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
Subject: Re: [PATCH] i2c: at91: Fix driver for SAMA5D2 SoC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello.

Please discard this patch aside for a while. I'll check it again.

Thanks!

=D0=BF=D1=82, 10 =D1=8F=D0=BD=D0=B2. 2025=E2=80=AF=D0=B3. =D0=B2 13:28, Ale=
xander Shiyan <eagle.alexander923@gmail.com>:
>
> The current driver version does not work for me on SAMA5D2 SOC.
> I2C bus devices probing always returns good state, and as a result all
> addresses 0x01-0x7f are always present.
> After a some digging into the driver, I found that the NACK bit is not
> handled correctly. I also found another SAMA5D2-related patch in the kern=
el
> tree (1).
> The result is a complex patch for correct I2C bus operation on SAMA5D2 SO=
C.
>
> [1] https://squing.com/lander/squing.com/?l=3Dlinux-i2c&m=3D1563821731063=
14&w=3D3&_=3D%2F%23wXPKnebvZEv31W5L%2FkOlGQ%3D%3D
>
> Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> ---
>  drivers/i2c/busses/i2c-at91.c | 14 +++++++++-----
>  1 file changed, 9 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/i2c/busses/i2c-at91.c b/drivers/i2c/busses/i2c-at91.=
c
> index dbc5aa4ddf..fb0a922a62 100644
> --- a/drivers/i2c/busses/i2c-at91.c
> +++ b/drivers/i2c/busses/i2c-at91.c
> @@ -113,7 +113,8 @@ static void at91_twi_write(struct at91_twi_dev *dev, =
unsigned reg, unsigned val)
>  static void at91_disable_twi_interrupts(struct at91_twi_dev *dev)
>  {
>         at91_twi_write(dev, AT91_TWI_IDR,
> -                      AT91_TWI_TXCOMP | AT91_TWI_RXRDY | AT91_TWI_TXRDY)=
;
> +                      AT91_TWI_TXCOMP | AT91_TWI_RXRDY |
> +                      AT91_TWI_TXRDY | AT91_TWI_NACK);
>  }
>
>  static void at91_init_twi_bus(struct at91_twi_dev *dev)
> @@ -223,8 +224,10 @@ static void at91_twi_write_next_byte(struct at91_twi=
_dev *dev)
>         at91_twi_write(dev, AT91_TWI_THR, *dev->buf);
>
>         /* send stop when last byte has been written */
> -       if (--dev->buf_len =3D=3D 0)
> +       if (--dev->buf_len =3D=3D 0) {
>                 at91_twi_write(dev, AT91_TWI_CR, AT91_TWI_STOP);
> +               at91_twi_write(dev, AT91_TWI_IDR, AT91_TWI_TXRDY);
> +       }
>
>         dev_dbg(dev->dev, "wrote 0x%x, to go %d\n", *dev->buf, dev->buf_l=
en);
>
> @@ -276,7 +279,7 @@ static int at91_twi_wait_completion(struct at91_twi_d=
ev *dev)
>
>                 dev->transfer_status |=3D status;
>
> -       } while (!(at91_twi_read(dev, AT91_TWI_SR) & AT91_TWI_TXCOMP));
> +       } while (!(status & AT91_TWI_TXCOMP));
>
>         at91_disable_twi_interrupts(dev);
>
> @@ -311,11 +314,12 @@ static int at91_do_twi_transfer(struct at91_twi_dev=
 *dev)
>                 at91_twi_write(dev, AT91_TWI_CR, start_flags);
>
>                 at91_twi_write(dev, AT91_TWI_IER,
> -                           AT91_TWI_TXCOMP | AT91_TWI_RXRDY);
> +                           AT91_TWI_TXCOMP | AT91_TWI_NACK | AT91_TWI_RX=
RDY);
>         } else {
>                 at91_twi_write_next_byte(dev);
>                 at91_twi_write(dev, AT91_TWI_IER,
> -                           AT91_TWI_TXCOMP | AT91_TWI_TXRDY);
> +                              AT91_TWI_TXCOMP | AT91_TWI_NACK |
> +                              (dev->buf_len ? AT91_TWI_TXRDY : 0));
>         }
>
>         ret =3D at91_twi_wait_completion(dev);
> --
> 2.39.1
>


