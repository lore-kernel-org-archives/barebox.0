Delivery-date: Thu, 03 Aug 2023 12:48:14 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRVsN-004wDV-4f
	for lore@lore.pengutronix.de; Thu, 03 Aug 2023 12:48:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRVsK-0000fV-3q
	for lore@pengutronix.de; Thu, 03 Aug 2023 12:48:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HxNmO4ROm9hnES+LmvoMsHpjv2Nl2bRFy2zq2PvRhQw=; b=mcHxClxsZEyrieeDqyu/GUlJu2
	eTbcah3GhfGUCJh7Pe0k2AHTlxNLS6n7PNs9smM6A7Lukgd3ZqTC8h5TRBYCEy+cc22goa+oV++iQ
	eIQWt1yWu3sLQTWXJlZE0yLGwzYVwnwn1RhSWWZm5pnxGxiDWRcF7aPZDGrqtriJwqkLEw92XLkdH
	hTkbMqUQjagulSNoqUKDLlJenYMb9pEdcq+QXp5NFHn9eSW9z5WG4IiRVIc1S5vpE1nbG0omIEsJM
	YeLFDhLUmfCaeq8uBmS3hREsw1WPNITWd0GAXgkES0qOnR2R7uWPrwSIl/LRypU+ELb1fh8a1n4QK
	01OdE8rg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qRVr1-007THU-2S;
	Thu, 03 Aug 2023 10:46:51 +0000
Received: from mail-pg1-x52a.google.com ([2607:f8b0:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qRVqu-007TEG-1u
	for barebox@lists.infradead.org;
	Thu, 03 Aug 2023 10:46:49 +0000
Received: by mail-pg1-x52a.google.com with SMTP id 41be03b00d2f7-55b0e7efb1cso405304a12.1
        for <barebox@lists.infradead.org>; Thu, 03 Aug 2023 03:46:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691059603; x=1691664403;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HxNmO4ROm9hnES+LmvoMsHpjv2Nl2bRFy2zq2PvRhQw=;
        b=UwudPBcwkTUpVniOCDpJlEsUrLKHuE9fejdeZwHq0YNpEN5EGzFPIfWqzoSKVzzfwt
         Py8S75o4fjs/qb9C6Nx5WnDYIylDed6wBdYfYTchT+flOO21OYiNv538vyMbhV0fwiwx
         uPWatf91/WQwEsBuOb5KbBVwRHDgzefaHm87pqkiz2bo7m4I0TGTFDDk6AyEgx1rTCAd
         A8Kg2I6/BcieVAwMu6AB/YEhBTEO0Qg1Q8weYZgu1Hx88G+Jxt0i3Z4Redw2A+QTCSwT
         Y2UvMjld9mI+IvqKtgcSWpQEqZKiFyVCWvTFpaJa8hQQOsMS+J8g1++gWy4pKosRDrV7
         vuEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691059603; x=1691664403;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HxNmO4ROm9hnES+LmvoMsHpjv2Nl2bRFy2zq2PvRhQw=;
        b=h7aTad/us1kxx7GDPYS9RBs9thkgi3v7oW3RwC7E9MfUv7AJpBf9uYdD3+75PuNRY5
         dBrSonq3/qA6ElKuOI4UVp5izqnq99WGRB2IcaxLLenKhGEfIxZEB+SszK4X2dqZ6GU/
         zWS71jrd8QkVB3uePJOfCqpCi/EjzA383q5sUm01L5xMAr4tvxOuRdxERX74fVrAyFHB
         DPnDEZnotevWl040glZdiNToebktLICBRIqKi7pYJo2KRFl2MauISjN6+HHlA1X7XreX
         mqWcfaQZJWPxN6+iOUE+aGqN83iTfbJqdgXakQXIJKHszQvYPqxxq3spLM49v7l6hs8t
         5WbA==
X-Gm-Message-State: ABy/qLa6oCbNXEXmIIsbr40g0ZbCof3ZfuieGuqqHhjL3Soa+02MVRsi
	uxzs8enE0RvYrTAlMAlr9cBXKwQ5IzCxSO7OvI+9z67EjbTgYw==
X-Google-Smtp-Source: APBJJlGG7WXVBXbh+hS6eVPGAY4D9G7Ozlk9C20HgibzRvRFqZPqiSNWAQtSvda+157aUr+aFxfQ7h/BJPPWYXPXqGo=
X-Received: by 2002:a17:90b:4a8b:b0:260:e256:27c7 with SMTP id
 lp11-20020a17090b4a8b00b00260e25627c7mr15891446pjb.15.1691059602347; Thu, 03
 Aug 2023 03:46:42 -0700 (PDT)
MIME-Version: 1.0
References: <20230728102332.40088-1-eagle.alexander923@gmail.com> <a8456e48-fa53-a118-0fb4-08de1cafbcde@pengutronix.de>
In-Reply-To: <a8456e48-fa53-a118-0fb4-08de1cafbcde@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu, 3 Aug 2023 13:46:31 +0300
Message-ID: <CAP1tNvS7KqMUHNuvYm7YeJka_7iTNnrGHjec17sj-FZtqURigg@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230803_034644_643137_424B8578 
X-CRM114-Status: GOOD (  33.17  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] i2c: stm32: Update driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

No, I'm using stm32mp15x.
It's just a compatibility string that might help someone else to get
stm32mp13x running.

=D1=87=D1=82, 3 =D0=B0=D0=B2=D0=B3. 2023=E2=80=AF=D0=B3. =D0=B2 13:39, Ahma=
d Fatoum <a.fatoum@pengutronix.de>:
>
> Hello Alexander,
>
> On 28.07.23 12:23, Alexander Shiyan wrote:
> > This patch updates the stm32 i2c driver. The original source is taken f=
rom
> > the STMicroelectronics/u-boot repository [1].
> > As a bonus from the update, the i2c_probe command now works properly,
> > added support for stm32mp13x CPUs and a parser for some stm32-specific
> > i2c devicetree properties.
>
> Are you using this on STM32MP13x? I am asking because support for the new=
 SoC
> is still rudimentary and if you are going to add support for it, we might=
 have
> some patches internally that could make it easier (OP-TEE integration).
>
> Cheers,
> Ahmad
>
> >
> > [1] https://github.com/STMicroelectronics/u-boot/blob/v2022.10-stm32mp/=
drivers/i2c/stm32f7_i2c.c
> >
> > Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> > ---
> >  drivers/i2c/busses/i2c-stm32.c | 442 +++++++++++++++++++++------------
> >  1 file changed, 277 insertions(+), 165 deletions(-)
> >
> > diff --git a/drivers/i2c/busses/i2c-stm32.c b/drivers/i2c/busses/i2c-st=
m32.c
> > index 39e345e2cc..ba0d4a51b5 100644
> > --- a/drivers/i2c/busses/i2c-stm32.c
> > +++ b/drivers/i2c/busses/i2c-stm32.c
> > @@ -9,9 +9,11 @@
> >  #include <common.h>
> >  #include <i2c/i2c.h>
> >  #include <init.h>
> > +#include <regmap.h>
> >  #include <linux/clk.h>
> >  #include <linux/iopoll.h>
> >  #include <linux/reset.h>
> > +#include <mfd/syscon.h>
> >
> >  /* STM32 I2C registers */
> >  struct __packed stm32_i2c_regs {
> > @@ -38,6 +40,8 @@ struct __packed stm32_i2c_regs {
> >
> >  /* STM32 I2C control 1 */
> >  #define STM32_I2C_CR1_ANFOFF                 BIT(12)
> > +#define STM32_I2C_CR1_DNF_MASK                       GENMASK(11, 8)
> > +#define STM32_I2C_CR1_DNF(n)                 (((n) & 0xf) << 8)
> >  #define STM32_I2C_CR1_ERRIE                  BIT(7)
> >  #define STM32_I2C_CR1_TCIE                   BIT(6)
> >  #define STM32_I2C_CR1_STOPIE                 BIT(5)
> > @@ -48,7 +52,6 @@ struct __packed stm32_i2c_regs {
> >  #define STM32_I2C_CR1_PE                     BIT(0)
> >
> >  /* STM32 I2C control 2 */
> > -#define STM32_I2C_CR2_AUTOEND                        BIT(25)
> >  #define STM32_I2C_CR2_RELOAD                 BIT(24)
> >  #define STM32_I2C_CR2_NBYTES_MASK            GENMASK(23, 16)
> >  #define STM32_I2C_CR2_NBYTES(n)                      ((n & 0xff) << 16=
)
> > @@ -98,10 +101,8 @@ struct __packed stm32_i2c_regs {
> >
> >  #define STM32_I2C_MAX_LEN                    0xff
> >
> > -#define STM32_I2C_DNF_DEFAULT                        0
> > -#define STM32_I2C_DNF_MAX                    16
> > +#define STM32_I2C_DNF_MAX                    15
> >
> > -#define STM32_I2C_ANALOG_FILTER_ENABLE       1
> >  #define STM32_I2C_ANALOG_FILTER_DELAY_MIN    50      /* ns */
> >  #define STM32_I2C_ANALOG_FILTER_DELAY_MAX    260     /* ns */
> >
> > @@ -119,10 +120,9 @@ struct __packed stm32_i2c_regs {
> >  #define FAST_PLUS_RATE                               1000000
> >
> >  enum stm32_i2c_speed {
> > -     STM32_I2C_SPEED_STANDARD, /* 100 kHz */
> > -     STM32_I2C_SPEED_FAST, /* 400 kHz */
> > -     STM32_I2C_SPEED_FAST_PLUS, /* 1 MHz */
> > -     STM32_I2C_SPEED_END,
> > +     IC_SPEED_MODE_STANDARD,
> > +     IC_SPEED_MODE_FAST,
> > +     IC_SPEED_MODE_FAST_PLUS,
> >  };
> >
> >  /**
> > @@ -154,20 +154,23 @@ struct stm32_i2c_spec {
> >
> >  /**
> >   * struct stm32_i2c_setup - private I2C timing setup parameters
> > - * @speed: I2C speed mode (standard, Fast Plus)
> > - * @speed_freq: actual I2C speed frequency  (Hz)
> >   * @clock_src: I2C clock source frequency (Hz)
> > - * @dnf: Digital filter coefficient (0-16)
> > + * @timings: I2C timing information
> >   * @analog_filter: Analog filter delay (On/Off)
> > - * @timings: I2C timings parameters
> >   */
> >  struct stm32_i2c_setup {
> > -     enum stm32_i2c_speed speed;
> > -     u32 speed_freq;
> >       u32 clock_src;
> > +     struct i2c_timings timings;
> >       u8 dnf;
> >       bool analog_filter;
> > -     struct i2c_timings timings;
> > +};
> > +
> > +/**
> > + * struct stm32_i2c_data - driver data for I2C configuration by compat=
ible
> > + * @fmp_clr_offset: Fast Mode Plus clear register offset from set regi=
ster
> > + */
> > +struct stm32_i2c_data {
> > +     u32 fmp_clr_offset;
> >  };
> >
> >  /**
> > @@ -187,8 +190,32 @@ struct stm32_i2c_timings {
> >       u8 scll;
> >  };
> >
> > +/**
> > + * struct stm32_i2c_priv - private data of the controller
> > + * @regs: I2C registers address
> > + * @clk: hw i2c clock
> > + * @setup: I2C timing setup parameters
> > + * @speed: I2C clock frequency of the controller. Standard, Fast or Fa=
st+
> > + * @regmap: holds SYSCFG phandle for Fast Mode Plus bit
> > + * @regmap_sreg: register address for setting Fast Mode Plus bits
> > + * @regmap_creg: register address for clearing Fast Mode Plus bits
> > + * @regmap_mask: mask for Fast Mode Plus bits
> > + */
> > +struct stm32_i2c_priv {
> > +     struct stm32_i2c_regs __iomem *regs;
> > +     struct clk *clk;
> > +     struct i2c_adapter adapter;
> > +     struct stm32_i2c_setup setup;
> > +     u32 speed;
> > +     struct regmap *regmap;
> > +     u32 regmap_sreg;
> > +     u32 regmap_creg;
> > +     u32 regmap_mask;
> > +};
> > +
> >  static const struct stm32_i2c_spec i2c_specs[] =3D {
> > -     [STM32_I2C_SPEED_STANDARD] =3D {
> > +     /* Standard speed - 100 KHz */
> > +     [IC_SPEED_MODE_STANDARD] =3D {
> >               .rate =3D STANDARD_RATE,
> >               .rate_min =3D 8000,
> >               .rate_max =3D 120000,
> > @@ -200,7 +227,8 @@ static const struct stm32_i2c_spec i2c_specs[] =3D =
{
> >               .l_min =3D 4700,
> >               .h_min =3D 4000,
> >       },
> > -     [STM32_I2C_SPEED_FAST] =3D {
> > +     /* Fast speed - 400 KHz */
> > +     [IC_SPEED_MODE_FAST] =3D {
> >               .rate =3D FAST_RATE,
> >               .rate_min =3D 320000,
> >               .rate_max =3D 480000,
> > @@ -212,7 +240,8 @@ static const struct stm32_i2c_spec i2c_specs[] =3D =
{
> >               .l_min =3D 1300,
> >               .h_min =3D 600,
> >       },
> > -     [STM32_I2C_SPEED_FAST_PLUS] =3D {
> > +     /* Fast Plus Speed - 1 MHz */
> > +     [IC_SPEED_MODE_FAST_PLUS] =3D {
> >               .rate =3D FAST_PLUS_RATE,
> >               .rate_min =3D 800000,
> >               .rate_max =3D 1200000,
> > @@ -226,22 +255,30 @@ static const struct stm32_i2c_spec i2c_specs[] =
=3D {
> >       },
> >  };
> >
> > -struct stm32_i2c {
> > -     struct stm32_i2c_regs __iomem *regs;
> > -     struct clk *clk;
> > -     struct i2c_adapter adapter;
> > -     struct stm32_i2c_setup setup;
> > +static const struct stm32_i2c_data stm32f7_data =3D {
> > +     .fmp_clr_offset =3D 0x00,
> > +};
> > +
> > +static const struct stm32_i2c_data stm32mp15_data =3D {
> > +     .fmp_clr_offset =3D 0x40,
> > +};
> > +
> > +static const struct stm32_i2c_data stm32mp13_data =3D {
> > +     .fmp_clr_offset =3D 0x4,
> >  };
> > -#define to_stm32_i2c(a)      container_of(a, struct stm32_i2c, adapter=
)
> >
> > -static inline int stm32_i2c_check_device_busy(struct stm32_i2c *priv)
> > +static inline int stm32_i2c_check_device_busy(struct stm32_i2c_priv *p=
riv)
> >  {
> >       u32 status =3D readl(&priv->regs->isr);
> > -     return status & STM32_I2C_ISR_BUSY;
> > +
> > +     if (status & STM32_I2C_ISR_BUSY)
> > +             return -EBUSY;
> > +
> > +     return 0;
> >  }
> >
> > -static void stm32_i2c_message_start(struct stm32_i2c *i2c_priv,
> > -                                 struct i2c_msg *msg, bool stop)
> > +static void stm32_i2c_message_start(struct stm32_i2c_priv *i2c_priv,
> > +                                 struct i2c_msg *msg)
> >  {
> >       struct stm32_i2c_regs *regs =3D i2c_priv->regs;
> >       u32 cr2 =3D readl(&regs->cr2);
> > @@ -262,9 +299,8 @@ static void stm32_i2c_message_start(struct stm32_i2=
c *i2c_priv,
> >               cr2 |=3D STM32_I2C_CR2_SADD7(msg->addr);
> >       }
> >
> > -     /* Set nb bytes to transfer and reload or autoend bits */
> > -     cr2 &=3D ~(STM32_I2C_CR2_NBYTES_MASK | STM32_I2C_CR2_RELOAD |
> > -              STM32_I2C_CR2_AUTOEND);
> > +     /* Set nb bytes to transfer and reload (if needed) */
> > +     cr2 &=3D ~(STM32_I2C_CR2_NBYTES_MASK | STM32_I2C_CR2_RELOAD);
> >       if (msg->len > STM32_I2C_MAX_LEN) {
> >               cr2 |=3D STM32_I2C_CR2_NBYTES(STM32_I2C_MAX_LEN);
> >               cr2 |=3D STM32_I2C_CR2_RELOAD;
> > @@ -284,8 +320,8 @@ static void stm32_i2c_message_start(struct stm32_i2=
c *i2c_priv,
> >   * sent is greater than MAX_LEN
> >   */
> >
> > -static void stm32_i2c_handle_reload(struct stm32_i2c *i2c_priv,
> > -                                 struct i2c_msg *msg, bool stop)
> > +static void stm32_i2c_handle_reload(struct stm32_i2c_priv *i2c_priv,
> > +                                 struct i2c_msg *msg)
> >  {
> >       struct stm32_i2c_regs *regs =3D i2c_priv->regs;
> >       u32 cr2 =3D readl(&regs->cr2);
> > @@ -302,7 +338,7 @@ static void stm32_i2c_handle_reload(struct stm32_i2=
c *i2c_priv,
> >       writel(cr2, &regs->cr2);
> >  }
> >
> > -static int stm32_i2c_wait_flags(struct stm32_i2c *i2c_priv,
> > +static int stm32_i2c_wait_flags(struct stm32_i2c_priv *i2c_priv,
> >                               u32 flags, u32 *status)
> >  {
> >       struct stm32_i2c_regs *regs =3D i2c_priv->regs;
> > @@ -311,7 +347,7 @@ static int stm32_i2c_wait_flags(struct stm32_i2c *i=
2c_priv,
> >                                 *status & flags, USEC_PER_SEC);
> >  }
> >
> > -static int stm32_i2c_check_end_of_message(struct stm32_i2c *i2c_priv)
> > +static int stm32_i2c_check_end_of_message(struct stm32_i2c_priv *i2c_p=
riv)
> >  {
> >       struct stm32_i2c_regs *regs =3D i2c_priv->regs;
> >       u32 mask =3D STM32_I2C_ISR_ERRORS | STM32_I2C_ISR_NACKF |
> > @@ -362,30 +398,29 @@ static int stm32_i2c_check_end_of_message(struct =
stm32_i2c *i2c_priv)
> >               setbits_le32(&regs->icr, STM32_I2C_ICR_STOPCF);
> >
> >               /* Clear control register 2 */
> > -             setbits_le32(&regs->cr2, STM32_I2C_CR2_RESET_MASK);
> > +             clrbits_le32(&regs->cr2, STM32_I2C_CR2_RESET_MASK);
> >       }
> >
> >       return ret;
> >  }
> >
> > -static int stm32_i2c_message_xfer(struct stm32_i2c *i2c_priv,
> > +static int stm32_i2c_message_xfer(struct stm32_i2c_priv *i2c_priv,
> >                                 struct i2c_msg *msg, bool stop)
> >  {
> >       struct stm32_i2c_regs *regs =3D i2c_priv->regs;
> > -     int len =3D msg->len;
> > -     u8 *buf =3D msg->buf;
> >       u32 status;
> >       u32 mask =3D msg->flags & I2C_M_RD ? STM32_I2C_ISR_RXNE :
> >                  STM32_I2C_ISR_TXIS | STM32_I2C_ISR_NACKF;
> > -     int bytes_to_rw =3D min(len, STM32_I2C_MAX_LEN);
> > +     int bytes_to_rw =3D msg->len > STM32_I2C_MAX_LEN ?
> > +                       STM32_I2C_MAX_LEN : msg->len;
> >       int ret =3D 0;
> >
> >       /* Add errors */
> >       mask |=3D STM32_I2C_ISR_ERRORS;
> >
> > -     stm32_i2c_message_start(i2c_priv, msg, stop);
> > +     stm32_i2c_message_start(i2c_priv, msg);
> >
> > -     while (len) {
> > +     while (msg->len) {
> >               /*
> >                * Wait until TXIS/NACKF/BERR/ARLO flags or
> >                * RXNE/BERR/ARLO flags are set
> > @@ -398,29 +433,30 @@ static int stm32_i2c_message_xfer(struct stm32_i2=
c *i2c_priv,
> >                       break;
> >
> >               if (status & STM32_I2C_ISR_RXNE) {
> > -                     *buf++ =3D readb(&regs->rxdr);
> > -                     len--;
> > +                     *msg->buf++ =3D readb(&regs->rxdr);
> > +                     msg->len--;
> >                       bytes_to_rw--;
> >               }
> >
> >               if (status & STM32_I2C_ISR_TXIS) {
> > -                     writeb(*buf++, &regs->txdr);
> > -                     len--;
> > +                     writeb(*msg->buf++, &regs->txdr);
> > +                     msg->len--;
> >                       bytes_to_rw--;
> >               }
> >
> > -             if (!bytes_to_rw && len) {
> > +             if (!bytes_to_rw && msg->len) {
> >                       /* Wait until TCR flag is set */
> >                       mask =3D STM32_I2C_ISR_TCR;
> >                       ret =3D stm32_i2c_wait_flags(i2c_priv, mask, &sta=
tus);
> >                       if (ret)
> >                               break;
> >
> > -                     bytes_to_rw =3D min(len, STM32_I2C_MAX_LEN);
> > +                     bytes_to_rw =3D msg->len > STM32_I2C_MAX_LEN ?
> > +                                   STM32_I2C_MAX_LEN : msg->len;
> >                       mask =3D msg->flags & I2C_M_RD ? STM32_I2C_ISR_RX=
NE :
> >                              STM32_I2C_ISR_TXIS | STM32_I2C_ISR_NACKF;
> >
> > -                     stm32_i2c_handle_reload(i2c_priv, msg, stop);
> > +                     stm32_i2c_handle_reload(i2c_priv, msg);
> >               } else if (!bytes_to_rw) {
> >                       /* Wait until TC flag is set */
> >                       mask =3D STM32_I2C_ISR_TC;
> > @@ -434,9 +470,9 @@ static int stm32_i2c_message_xfer(struct stm32_i2c =
*i2c_priv,
> >               }
> >       }
> >
> > -     /* End of transfer, send stop condition */
> > -     mask =3D STM32_I2C_CR2_STOP;
> > -     setbits_le32(&regs->cr2, mask);
> > +     /* End of transfer, send stop condition if appropriate */
> > +     if (!ret && !(status & (STM32_I2C_ISR_NACKF | STM32_I2C_ISR_ERROR=
S)))
> > +             setbits_le32(&regs->cr2, STM32_I2C_CR2_STOP);
> >
> >       return stm32_i2c_check_end_of_message(i2c_priv);
> >  }
> > @@ -444,16 +480,16 @@ static int stm32_i2c_message_xfer(struct stm32_i2=
c *i2c_priv,
> >  static int stm32_i2c_xfer(struct i2c_adapter *adapter,
> >                         struct i2c_msg *msg, int nmsgs)
> >  {
> > -     struct stm32_i2c *i2c_priv =3D to_stm32_i2c(adapter);
> > -     int ret;
> > -     int i;
> > +     struct stm32_i2c_priv *i2c_priv =3D
> > +             container_of(adapter, struct stm32_i2c_priv, adapter);
> > +     int i, ret;
> >
> >       ret =3D stm32_i2c_check_device_busy(i2c_priv);
> >       if (ret)
> > -             return -EBUSY;
> > +             return ret;
> >
> > -     for (i =3D 0; i < nmsgs; i++) {
> > -             ret =3D stm32_i2c_message_xfer(i2c_priv, &msg[i], i =3D=
=3D nmsgs - 1);
> > +     for (i =3D nmsgs; i > 0; i--, msg++) {
> > +             ret =3D stm32_i2c_message_xfer(i2c_priv, msg, i =3D=3D 1)=
;
> >               if (ret)
> >                       return ret;
> >       }
> > @@ -461,30 +497,30 @@ static int stm32_i2c_xfer(struct i2c_adapter *ada=
pter,
> >       return nmsgs;
> >  }
> >
> > -
> > -static int stm32_i2c_compute_solutions(struct stm32_i2c_setup *setup,
> > +static int stm32_i2c_compute_solutions(u32 i2cclk,
> > +                                    struct stm32_i2c_setup *setup,
> > +                                    const struct stm32_i2c_spec *specs=
,
> >                                      struct list_head *solutions)
> >  {
> >       struct stm32_i2c_timings *v;
> >       u32 p_prev =3D STM32_PRESC_MAX;
> > -     u32 i2cclk =3D DIV_ROUND_CLOSEST(NSEC_PER_SEC, setup->clock_src);
> > -     u32 af_delay_min =3D 0, af_delay_max =3D 0;
> > +     u32 af_delay_min, af_delay_max;
> >       u16 p, l, a;
> >       int sdadel_min, sdadel_max, scldel_min;
> >       int ret =3D 0;
> >
> > -     if (setup->analog_filter) {
> > -             af_delay_min =3D STM32_I2C_ANALOG_FILTER_DELAY_MIN;
> > -             af_delay_max =3D STM32_I2C_ANALOG_FILTER_DELAY_MAX;
> > -     }
> > +     af_delay_min =3D setup->analog_filter ?
> > +                    STM32_I2C_ANALOG_FILTER_DELAY_MIN : 0;
> > +     af_delay_max =3D setup->analog_filter ?
> > +                    STM32_I2C_ANALOG_FILTER_DELAY_MAX : 0;
> >
> > -     sdadel_min =3D i2c_specs[setup->speed].hddat_min + setup->timings=
.scl_fall_ns -
> > +     sdadel_min =3D specs->hddat_min + setup->timings.scl_fall_ns -
> >                    af_delay_min - (setup->dnf + 3) * i2cclk;
> >
> > -     sdadel_max =3D i2c_specs[setup->speed].vddat_max - setup->timings=
.scl_rise_ns -
> > +     sdadel_max =3D specs->vddat_max - setup->timings.scl_rise_ns -
> >                    af_delay_max - (setup->dnf + 4) * i2cclk;
> >
> > -     scldel_min =3D setup->timings.scl_rise_ns + i2c_specs[setup->spee=
d].sudat_min;
> > +     scldel_min =3D setup->timings.scl_rise_ns + specs->sudat_min;
> >
> >       if (sdadel_min < 0)
> >               sdadel_min =3D 0;
> > @@ -497,13 +533,13 @@ static int stm32_i2c_compute_solutions(struct stm=
32_i2c_setup *setup,
> >       /* Compute possible values for PRESC, SCLDEL and SDADEL */
> >       for (p =3D 0; p < STM32_PRESC_MAX; p++) {
> >               for (l =3D 0; l < STM32_SCLDEL_MAX; l++) {
> > -                     u32 scldel =3D (l + 1) * (p + 1) * i2cclk;
> > +                     int scldel =3D (l + 1) * (p + 1) * i2cclk;
> >
> >                       if (scldel < scldel_min)
> >                               continue;
> >
> >                       for (a =3D 0; a < STM32_SDADEL_MAX; a++) {
> > -                             u32 sdadel =3D (a * (p + 1) + 1) * i2cclk=
;
> > +                             int sdadel =3D (a * (p + 1) + 1) * i2cclk=
;
> >
> >                               if (((sdadel >=3D sdadel_min) &&
> >                                    (sdadel <=3D sdadel_max)) &&
> > @@ -527,36 +563,40 @@ static int stm32_i2c_compute_solutions(struct stm=
32_i2c_setup *setup,
> >               }
> >       }
> >
> > -     if (list_empty(solutions))
> > +     if (list_empty(solutions)) {
> > +             pr_err("no Prescaler solution\n");
> >               ret =3D -EPERM;
> > +     }
> >
> >       return ret;
> >  }
> >
> > -static int stm32_i2c_choose_solution(struct stm32_i2c_setup *setup,
> > +static int stm32_i2c_choose_solution(u32 i2cclk,
> > +                                  struct stm32_i2c_setup *setup,
> > +                                  const struct stm32_i2c_spec *specs,
> >                                    struct list_head *solutions,
> >                                    struct stm32_i2c_timings *s)
> >  {
> >       struct stm32_i2c_timings *v;
> > -     u32 i2cbus =3D DIV_ROUND_CLOSEST(NSEC_PER_SEC, setup->speed_freq)=
;
> > +     u32 i2cbus =3D DIV_ROUND_CLOSEST(NSEC_PER_SEC,
> > +                                    setup->timings.bus_freq_hz);
> >       u32 clk_error_prev =3D i2cbus;
> > -     u32 i2cclk =3D DIV_ROUND_CLOSEST(NSEC_PER_SEC, setup->clock_src);
> >       u32 clk_min, clk_max;
> > -     u32 af_delay_min =3D 0;
> > +     u32 af_delay_min;
> >       u32 dnf_delay;
> >       u32 tsync;
> >       u16 l, h;
> >       bool sol_found =3D false;
> >       int ret =3D 0;
> >
> > -     if (setup->analog_filter)
> > -             af_delay_min =3D STM32_I2C_ANALOG_FILTER_DELAY_MIN;
> > +     af_delay_min =3D setup->analog_filter ?
> > +                    STM32_I2C_ANALOG_FILTER_DELAY_MIN : 0;
> >
> >       dnf_delay =3D setup->dnf * i2cclk;
> >
> >       tsync =3D af_delay_min + dnf_delay + (2 * i2cclk);
> > -     clk_max =3D NSEC_PER_SEC / i2c_specs[setup->speed].rate_min;
> > -     clk_min =3D NSEC_PER_SEC / i2c_specs[setup->speed].rate_max;
> > +     clk_max =3D NSEC_PER_SEC / specs->rate_min;
> > +     clk_min =3D NSEC_PER_SEC / specs->rate_max;
> >
> >       /*
> >        * Among Prescaler possibilities discovered above figures out SCL=
 Low
> > @@ -574,7 +614,7 @@ static int stm32_i2c_choose_solution(struct stm32_i=
2c_setup *setup,
> >               for (l =3D 0; l < STM32_SCLL_MAX; l++) {
> >                       u32 tscl_l =3D (l + 1) * prescaler + tsync;
> >
> > -                     if ((tscl_l < i2c_specs[setup->speed].l_min) ||
> > +                     if (tscl_l < specs->l_min ||
> >                           (i2cclk >=3D
> >                            ((tscl_l - af_delay_min - dnf_delay) / 4))) =
{
> >                               continue;
> > @@ -583,16 +623,17 @@ static int stm32_i2c_choose_solution(struct stm32=
_i2c_setup *setup,
> >                       for (h =3D 0; h < STM32_SCLH_MAX; h++) {
> >                               u32 tscl_h =3D (h + 1) * prescaler + tsyn=
c;
> >                               u32 tscl =3D tscl_l + tscl_h +
> > -                                        setup->timings.scl_rise_ns +
> > -                                        setup->timings.scl_fall_ns;
> > +                                        setup->timings.scl_rise_ns + s=
etup->timings.scl_fall_ns;
> >
> >                               if ((tscl >=3D clk_min) && (tscl <=3D clk=
_max) &&
> > -                                 (tscl_h >=3D i2c_specs[setup->speed].=
h_min) &&
> > +                                 (tscl_h >=3D specs->h_min) &&
> >                                   (i2cclk < tscl_h)) {
> > -                                     int clk_error =3D tscl - i2cbus;
> > +                                     u32 clk_error;
> >
> > -                                     if (clk_error < 0)
> > -                                             clk_error =3D -clk_error;
> > +                                     if (tscl > i2cbus)
> > +                                             clk_error =3D tscl - i2cb=
us;
> > +                                     else
> > +                                             clk_error =3D i2cbus - ts=
cl;
> >
> >                                       if (clk_error < clk_error_prev) {
> >                                               clk_error_prev =3D clk_er=
ror;
> > @@ -606,61 +647,68 @@ static int stm32_i2c_choose_solution(struct stm32=
_i2c_setup *setup,
> >               }
> >       }
> >
> > -     if (!sol_found)
> > +     if (!sol_found) {
> > +             pr_err("no solution at all\n");
> >               ret =3D -EPERM;
> > +     }
> >
> >       return ret;
> >  }
> >
> > -static int stm32_i2c_compute_timing(struct stm32_i2c *i2c_priv,
> > -                                 struct stm32_i2c_setup *setup,
> > +static const struct stm32_i2c_spec *get_specs(u32 rate)
> > +{
> > +     unsigned int i;
> > +
> > +     for (i =3D 0; i < ARRAY_SIZE(i2c_specs); i++)
> > +             if (rate <=3D i2c_specs[i].rate)
> > +                     return &i2c_specs[i];
> > +
> > +     /* NOT REACHED */
> > +     return ERR_PTR(-EINVAL);
> > +}
> > +
> > +static int stm32_i2c_compute_timing(struct stm32_i2c_priv *i2c_priv,
> >                                   struct stm32_i2c_timings *output)
> >  {
> >       struct device *dev =3D &i2c_priv->adapter.dev;
> > +     struct stm32_i2c_setup *setup =3D &i2c_priv->setup;
> > +     const struct stm32_i2c_spec *specs;
> >       struct stm32_i2c_timings *v, *_v;
> >       struct list_head solutions;
> > +     u32 i2cclk =3D DIV_ROUND_CLOSEST(NSEC_PER_SEC, setup->clock_src);
> >       int ret;
> >
> > -     if (setup->speed >=3D STM32_I2C_SPEED_END) {
> > -             dev_err(dev, "speed out of bound {%d/%d}\n",
> > -                    setup->speed, STM32_I2C_SPEED_END - 1);
> > +     specs =3D get_specs(setup->timings.bus_freq_hz);
> > +     if (specs =3D=3D ERR_PTR(-EINVAL)) {
> > +             dev_err(dev, "speed out of bound {%d}\n",
> > +                     setup->timings.bus_freq_hz);
> >               return -EINVAL;
> >       }
> >
> > -     if ((setup->timings.scl_rise_ns > i2c_specs[setup->speed].rise_ma=
x) ||
> > -         (setup->timings.scl_fall_ns > i2c_specs[setup->speed].fall_ma=
x)) {
> > +     if (setup->timings.scl_rise_ns > specs->rise_max ||
> > +         setup->timings.scl_fall_ns > specs->fall_max) {
> >               dev_err(dev, "timings out of bound Rise{%d>%d}/Fall{%d>%d=
}\n",
> > -                    setup->timings.scl_rise_ns, i2c_specs[setup->speed=
].rise_max,
> > -                    setup->timings.scl_fall_ns, i2c_specs[setup->speed=
].fall_max);
> > +                     setup->timings.scl_rise_ns, specs->rise_max,
> > +                     setup->timings.scl_fall_ns, specs->fall_max);
> >               return -EINVAL;
> >       }
> >
> > +     /*  Analog and Digital Filters */
> > +     setup->dnf =3D DIV_ROUND_CLOSEST(i2c_priv->setup.timings.digital_=
filter_width_ns, i2cclk);
> >       if (setup->dnf > STM32_I2C_DNF_MAX) {
> >               dev_err(dev, "DNF out of bound %d/%d\n",
> > -                    setup->dnf, STM32_I2C_DNF_MAX);
> > -             return -EINVAL;
> > -     }
> > -
> > -     if (setup->speed_freq > i2c_specs[setup->speed].rate) {
> > -             dev_err(dev, "Freq {%d/%d}\n",
> > -                    setup->speed_freq, i2c_specs[setup->speed].rate);
> > +                     setup->dnf, STM32_I2C_DNF_MAX);
> >               return -EINVAL;
> >       }
> >
> >       INIT_LIST_HEAD(&solutions);
> > -     ret =3D stm32_i2c_compute_solutions(setup, &solutions);
> > -     if (ret) {
> > -             if (ret =3D=3D -EPERM)
> > -                     dev_err(dev, "No prescaler solution\n");
> > +     ret =3D stm32_i2c_compute_solutions(i2cclk, setup, specs, &soluti=
ons);
> > +     if (ret)
> >               goto exit;
> > -     }
> >
> > -     ret =3D stm32_i2c_choose_solution(setup, &solutions, output);
> > -     if (ret) {
> > -             if (ret =3D=3D -EPERM)
> > -                     dev_err(dev, "no solution at all\n");
> > +     ret =3D stm32_i2c_choose_solution(i2cclk, setup, specs, &solution=
s, output);
> > +     if (ret)
> >               goto exit;
> > -     }
> >
> >       dev_dbg(dev, "Presc: %i, scldel: %i, sdadel: %i, scll: %i, sclh: =
%i\n",
> >               output->presc,
> > @@ -677,16 +725,25 @@ static int stm32_i2c_compute_timing(struct stm32_=
i2c *i2c_priv,
> >       return ret;
> >  }
> >
> > -static int stm32_i2c_setup_timing(struct stm32_i2c *i2c_priv,
> > -                               enum stm32_i2c_speed speed,
> > +static u32 get_lower_rate(u32 rate)
> > +{
> > +     int i;
> > +
> > +     for (i =3D ARRAY_SIZE(i2c_specs) - 1; i >=3D 0; i--)
> > +             if (rate > i2c_specs[i].rate)
> > +                     return i2c_specs[i].rate;
> > +
> > +     return i2c_specs[0].rate;
> > +}
> > +
> > +static int stm32_i2c_setup_timing(struct stm32_i2c_priv *i2c_priv,
> >                                 struct stm32_i2c_timings *timing)
> >  {
> >       struct device *dev =3D &i2c_priv->adapter.dev;
> >       struct stm32_i2c_setup *setup =3D &i2c_priv->setup;
> >       int ret =3D 0;
> >
> > -     setup->speed =3D speed;
> > -     setup->speed_freq =3D i2c_specs[setup->speed].rate;
> > +     setup->timings.bus_freq_hz =3D i2c_priv->speed;
> >       setup->clock_src =3D clk_get_rate(i2c_priv->clk);
> >
> >       if (!setup->clock_src) {
> > @@ -695,15 +752,14 @@ static int stm32_i2c_setup_timing(struct stm32_i2=
c *i2c_priv,
> >       }
> >
> >       do {
> > -             ret =3D stm32_i2c_compute_timing(i2c_priv, setup, timing)=
;
> > +             ret =3D stm32_i2c_compute_timing(i2c_priv, timing);
> >               if (ret) {
> >                       dev_dbg(dev, "failed to compute I2C timings.\n");
> > -                     if (speed > STM32_I2C_SPEED_STANDARD) {
> > -                             speed--;
> > -                             setup->speed =3D speed;
> > -                             setup->speed_freq =3D i2c_specs[setup->sp=
eed].rate;
> > +                     if (setup->timings.bus_freq_hz > STANDARD_RATE) {
> > +                             setup->timings.bus_freq_hz =3D
> > +                                     get_lower_rate(setup->timings.bus=
_freq_hz);
> >                               dev_dbg(dev, "downgrade I2C Speed Freq to=
 (%i)\n",
> > -                                     i2c_specs[setup->speed].rate);
> > +                                     setup->timings.bus_freq_hz);
> >                       } else {
> >                               break;
> >                       }
> > @@ -715,31 +771,60 @@ static int stm32_i2c_setup_timing(struct stm32_i2=
c *i2c_priv,
> >               return ret;
> >       }
> >
> > -     dev_dbg(dev, "I2C Speed(%i), Freq(%i), Clk Source(%i)\n",
> > -             setup->speed, setup->speed_freq, setup->clock_src);
> > +     dev_dbg(dev, "I2C Freq(%i), Clk Source(%i)\n",
> > +             setup->timings.bus_freq_hz, setup->clock_src);
> >       dev_dbg(dev, "I2C Rise(%i) and Fall(%i) Time\n",
> > -              setup->timings.scl_rise_ns, setup->timings.scl_fall_ns);
> > +             setup->timings.scl_rise_ns, setup->timings.scl_fall_ns);
> >       dev_dbg(dev, "I2C Analog Filter(%s), DNF(%i)\n",
> > -              setup->analog_filter ? "On" : "Off", setup->dnf);
> > +             setup->analog_filter ? "On" : "Off", setup->dnf);
> > +
> > +     i2c_priv->speed =3D setup->timings.bus_freq_hz;
> >
> >       return 0;
> >  }
> >
> > -static int stm32_i2c_hw_config(struct stm32_i2c *i2c_priv,
> > -                            enum stm32_i2c_speed speed)
> > +static int stm32_i2c_write_fm_plus_bits(struct stm32_i2c_priv *i2c_pri=
v)
> > +{
> > +     int ret;
> > +     bool enable =3D i2c_priv->speed > FAST_RATE;
> > +
> > +     /* Optional */
> > +     if (IS_ERR_OR_NULL(i2c_priv->regmap))
> > +             return 0;
> > +
> > +     if (i2c_priv->regmap_sreg =3D=3D i2c_priv->regmap_creg)
> > +             ret =3D regmap_update_bits(i2c_priv->regmap,
> > +                                      i2c_priv->regmap_sreg,
> > +                                      i2c_priv->regmap_mask,
> > +                                      enable ? i2c_priv->regmap_mask :=
 0);
> > +     else
> > +             ret =3D regmap_write(i2c_priv->regmap,
> > +                                enable ? i2c_priv->regmap_sreg :
> > +                                         i2c_priv->regmap_creg,
> > +                                i2c_priv->regmap_mask);
> > +
> > +     return ret;
> > +}
> > +
> > +static int stm32_i2c_hw_config(struct stm32_i2c_priv *i2c_priv)
> >  {
> >       struct stm32_i2c_regs *regs =3D i2c_priv->regs;
> >       struct stm32_i2c_timings t;
> >       int ret;
> >       u32 timing =3D 0;
> >
> > -     ret =3D stm32_i2c_setup_timing(i2c_priv, speed, &t);
> > +     ret =3D stm32_i2c_setup_timing(i2c_priv, &t);
> >       if (ret)
> >               return ret;
> >
> >       /* Disable I2C */
> >       clrbits_le32(&regs->cr1, STM32_I2C_CR1_PE);
> >
> > +     /* Setup Fast mode plus if necessary */
> > +     ret =3D stm32_i2c_write_fm_plus_bits(i2c_priv);
> > +     if (ret)
> > +             return ret;
> > +
> >       /* Timing settings */
> >       timing |=3D STM32_I2C_TIMINGR_PRESC(t.presc);
> >       timing |=3D STM32_I2C_TIMINGR_SCLDEL(t.scldel);
> > @@ -753,44 +838,74 @@ static int stm32_i2c_hw_config(struct stm32_i2c *=
i2c_priv,
> >               clrbits_le32(&regs->cr1, STM32_I2C_CR1_ANFOFF);
> >       else
> >               setbits_le32(&regs->cr1, STM32_I2C_CR1_ANFOFF);
> > +
> > +     /* Program the Digital Filter */
> > +     clrsetbits_le32(&regs->cr1, STM32_I2C_CR1_DNF_MASK,
> > +                     STM32_I2C_CR1_DNF(i2c_priv->setup.dnf));
> > +
> >       setbits_le32(&regs->cr1, STM32_I2C_CR1_PE);
> >
> >       return 0;
> >  }
> >
> > -static int stm32_i2c_set_bus_speed(struct stm32_i2c *i2c_priv, unsigne=
d speed)
> > +static int stm32_i2c_set_bus_speed(struct stm32_i2c_priv *i2c_priv, un=
signed int speed)
> >  {
> > -     struct device *parent_dev =3D i2c_priv->adapter.dev.parent;
> > -     enum stm32_i2c_speed stm32_speed;
> > -     switch (speed) {
> > -     case STANDARD_RATE:
> > -             stm32_speed =3D STM32_I2C_SPEED_STANDARD;
> > -             break;
> > -     case FAST_RATE:
> > -             stm32_speed =3D STM32_I2C_SPEED_FAST;
> > -             break;
> > -     case FAST_PLUS_RATE:
> > -             stm32_speed =3D STM32_I2C_SPEED_FAST_PLUS;
> > -             break;
> > -     default:
> > -             dev_warn(parent_dev, "Speed %d not supported\n", speed);
> > +     struct device *dev =3D &i2c_priv->adapter.dev;
> > +
> > +     if (speed > FAST_PLUS_RATE) {
> > +             dev_dbg(dev, "Speed %d not supported\n", speed);
> >               return -EINVAL;
> >       }
> >
> > -     return stm32_i2c_hw_config(i2c_priv, stm32_speed);
> > +     i2c_priv->speed =3D speed;
> > +
> > +     return stm32_i2c_hw_config(i2c_priv);
> > +}
> > +
> > +static int stm32_of_to_plat(struct device *dev, struct stm32_i2c_priv =
*i2c_priv)
> > +{
> > +     const struct stm32_i2c_data *data;
> > +     int ret;
> > +
> > +     ret =3D dev_get_drvdata(dev, (const void **)&data);
> > +     if (ret)
> > +             return ret;
> > +
> > +     if (of_property_read_u32(dev->of_node, "i2c-digital-filter-width-=
ns",
> > +                              &i2c_priv->setup.timings.digital_filter_=
width_ns))
> > +             i2c_priv->setup.timings.digital_filter_width_ns =3D 0;
> > +     if (!of_property_read_bool(dev->of_node, "i2c-digital-filter"))
> > +             i2c_priv->setup.timings.digital_filter_width_ns =3D 0;
> > +
> > +     i2c_priv->setup.analog_filter =3D
> > +             of_property_read_bool(dev->of_node, "i2c-analog-filter");
> > +
> > +     /* Optional */
> > +     i2c_priv->regmap =3D syscon_regmap_lookup_by_phandle(dev->of_node=
,
> > +                                                        "st,syscfg-fmp=
");
> > +     if (!IS_ERR(i2c_priv->regmap)) {
> > +             u32 fmp[3];
> > +
> > +             ret =3D of_property_read_u32_array(dev->of_node, "st,sysc=
fg-fmp", fmp, 3);
> > +             if (ret)
> > +                     return ret;
> > +
> > +             i2c_priv->regmap_sreg =3D fmp[1];
> > +             i2c_priv->regmap_creg =3D fmp[1] + data->fmp_clr_offset;
> > +             i2c_priv->regmap_mask =3D fmp[2];
> > +     }
> > +
> > +     return 0;
> >  }
> >
> >  static int __init stm32_i2c_probe(struct device *dev)
> >  {
> >       struct resource *iores;
> > -     struct stm32_i2c *stm32_i2c;
> > +     struct stm32_i2c_priv *stm32_i2c;
> >       struct i2c_platform_data *pdata;
> > -     const struct stm32_i2c_setup *setup;
> >       struct i2c_timings *timings;
> >       int ret;
> >
> > -     pdata =3D dev->platform_data;
> > -
> >       stm32_i2c =3D xzalloc(sizeof(*stm32_i2c));
> >
> >       stm32_i2c->clk =3D clk_get(dev, NULL);
> > @@ -798,15 +913,20 @@ static int __init stm32_i2c_probe(struct device *=
dev)
> >               return PTR_ERR(stm32_i2c->clk);
> >       clk_enable(stm32_i2c->clk);
> >
> > +     iores =3D dev_request_mem_resource(dev, 0);
> > +     if (IS_ERR(iores))
> > +             return PTR_ERR(iores);
> > +
> > +     stm32_i2c->regs =3D IOMEM(iores->start);
> > +
> >       ret =3D device_reset_us(dev, 2);
> >       if (ret)
> >               return ret;
> >
> > -     ret =3D dev_get_drvdata(dev, (const void **)&setup);
> > +     ret =3D stm32_of_to_plat(dev, stm32_i2c);
> >       if (ret)
> >               return ret;
> >
> > -     stm32_i2c->setup =3D *setup;
> >       timings =3D &stm32_i2c->setup.timings;
> >
> >       /* We've our own defaults, so don't use the i2c_parse_fw_timings =
ones */
> > @@ -824,12 +944,8 @@ static int __init stm32_i2c_probe(struct device *d=
ev)
> >       stm32_i2c->adapter.nr =3D dev->id;
> >       stm32_i2c->adapter.dev.parent =3D dev;
> >       stm32_i2c->adapter.dev.of_node =3D dev->of_node;
> > -     iores =3D dev_request_mem_resource(dev, 0);
> > -     if (IS_ERR(iores))
> > -             return PTR_ERR(iores);
> > -
> > -     stm32_i2c->regs =3D IOMEM(iores->start);
> >
> > +     pdata =3D dev->platform_data;
> >       if (pdata && pdata->bitrate)
> >               timings->bus_freq_hz =3D pdata->bitrate;
> >
> > @@ -840,14 +956,10 @@ static int __init stm32_i2c_probe(struct device *=
dev)
> >       return i2c_add_numbered_adapter(&stm32_i2c->adapter);
> >  }
> >
> > -static const struct stm32_i2c_setup stm32f7_setup =3D {
> > -     .dnf =3D STM32_I2C_DNF_DEFAULT,
> > -     .analog_filter =3D STM32_I2C_ANALOG_FILTER_ENABLE,
> > -};
> > -
> >  static __maybe_unused struct of_device_id stm32_i2c_dt_ids[] =3D {
> > -     { .compatible =3D "st,stm32f7-i2c", .data =3D &stm32f7_setup, },
> > -     { .compatible =3D "st,stm32mp15-i2c", .data =3D &stm32f7_setup},
> > +     { .compatible =3D "st,stm32f7-i2c", .data =3D &stm32f7_data },
> > +     { .compatible =3D "st,stm32mp15-i2c", .data =3D &stm32mp15_data }=
,
> > +     { .compatible =3D "st,stm32mp13-i2c", .data =3D &stm32mp13_data }=
,
> >       { /* sentinel */ }
> >  };
> >  MODULE_DEVICE_TABLE(of, stm32_i2c_dt_ids);
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
>


