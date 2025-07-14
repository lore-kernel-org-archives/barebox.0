Delivery-date: Mon, 14 Jul 2025 22:03:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ubPOk-00HVOZ-1e
	for lore@lore.pengutronix.de;
	Mon, 14 Jul 2025 22:03:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ubPOj-0004AI-Ne
	for lore@pengutronix.de; Mon, 14 Jul 2025 22:03:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6gTAVLMWxzr3o1g2fA5kYfXB0y/Mkdva4xIla+lAZD8=; b=pYaAqO9S9ml7RrPF3HryqsTilc
	5zcvqPhrLprZ4oFAAaoaOagenup/wrt+D44rMTCtAfzIF1+CV+dJDqkNf1FFNTWz43y1xtHUjeJfB
	aiISdqfFmoc+xqWz7OZWMuH/g7gNlKFkcRNr4cD+C6B1Np+gqKGT40NgW3yzV2HleKfoBNJQIxGtf
	KxBd0Tm/letk/hAoy0qpHdJtdoXFYKjAxtnaGQ4tGh9nvJTJyXj/Z09/JvxVw9JH7jsaUDS+euWAZ
	XPZlIjpeh+UhmKxOZpd31IO707NKFP83zFZgaMzV3Ju9oRq8k47SG0DLmymV8zhKBj0ciBLgG0dsp
	6wgyjq7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubPO1-00000003BLe-1urF;
	Mon, 14 Jul 2025 20:02:53 +0000
Received: from mail-pj1-x102c.google.com ([2607:f8b0:4864:20::102c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ubPLn-00000003B90-2Q5V
	for barebox@lists.infradead.org;
	Mon, 14 Jul 2025 20:00:36 +0000
Received: by mail-pj1-x102c.google.com with SMTP id 98e67ed59e1d1-315b0050bb5so3296548a91.0
        for <barebox@lists.infradead.org>; Mon, 14 Jul 2025 13:00:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1752523234; x=1753128034; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6gTAVLMWxzr3o1g2fA5kYfXB0y/Mkdva4xIla+lAZD8=;
        b=R0PTYm6ZqnlmI4YNxd3+5akLKrHqVi+sNz6rJR3waAGfdozDlpd6d3O1Rcyn98gv5g
         lm8Lb06JsH2TOnksJ3rNZf6zy6ho/v+1FiqjtxMvtStVELYtg452mCXiHp8r93EoNEHI
         dMl/8yvKCmAhDJtTW32kLJpyryXVf7wCq1ZqWXCipPclrI9gvZiyE1+RA/bsOe4qmxYX
         8CjJzFHSBfwnJFFj5x6X2P6Tb9X/l+ARRRYwuP1ewtx3pSQqJSpMWocg3l/HpvvIlPjI
         wE7P9TWeg0ZbK6lbSfWDGmRABX02AjKI/NBN1nv5RfRO78KwTGZdne/fi6i7VReOep+h
         XIJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752523234; x=1753128034;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6gTAVLMWxzr3o1g2fA5kYfXB0y/Mkdva4xIla+lAZD8=;
        b=QC6jQgntLL/A4Nb9p0AYUdDqZG1KX2rkw9KTqis632NTdQD7WJUBay38Toe3hluODO
         v9gk/kS7EM3mbvloYEKn1zitDFVUuonOV6ERaK2NBrXlGnZ1UQWLH9ap51VAwIHYXvYl
         ym1KKVXARN7Tfm/oKvYBYEh8hcn5Iq52zEVYDqniYTeTwHM1OnK/8uroUJOrTx1p4U6h
         bgGx1q7ceXqUObI9+8Hk159K+5JTNejLenLr6UDzH4hdLbL/OyvmLp3UxTwZNZFp12Tq
         zUjrY7YLFhs9Hl9mbVRrk8oxfc5S+AaZlyiED4hw2mrm27L6AKn4fdHT8+NwwayTDnbh
         T5Sg==
X-Gm-Message-State: AOJu0YwPmvuVqEAW75/t9roMNFTFiSG9/tOfkfNwX1PsPqtomMWB9SBh
	csABIMkNoTzOx0nCq2UGN0OZ5l19bOQ5fZerYzOV3KIgWzCr0TBHGpJGTFziExh6Xv9Ztu98ggv
	Feg4o75bRLkb6Siti2idIaXBiq2RKMzK6jpon
X-Gm-Gg: ASbGncshfY/f/vvQijtqUHr+ZOzuNBuDEQoQZRohbaUPOFDanJ4wsQHrGdi2Yn9Sr3c
	PFsnhjCOH2/AE9bAjIc6yhSHk2TaxyWl/2KKwxKCNIPJBf+3qJSjf69E7jFD3P9woenENF2Pwfg
	ZZ5X4knoe3Dt+d2S88xhsDAYDu7L2wRyrjqdQblMWIZOSXw1zYqs4gba3YSPMXJkZyMBMxGQ0XY
	Psh0rfC
X-Google-Smtp-Source: AGHT+IE8LjiDSTknt37PRIv9Njh0+st9sFqiu8KF8OroAmOG36/WgFvHfOIjdIT83GZHP5vpGyN3xSDpUXI9R8dZoak=
X-Received: by 2002:a17:90b:5885:b0:311:eb85:96df with SMTP id
 98e67ed59e1d1-31c91f254fdmr14453a91.17.1752523233600; Mon, 14 Jul 2025
 13:00:33 -0700 (PDT)
MIME-Version: 1.0
References: <20250624091510.28947-1-eagle.alexander923@gmail.com>
In-Reply-To: <20250624091510.28947-1-eagle.alexander923@gmail.com>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Mon, 14 Jul 2025 23:00:19 +0300
X-Gm-Features: Ac12FXzuw9P0ZB-yBNiCT8X4JbIav-6AI-CKKNe7ENTb3dbv7IyBMsg4DPJq0aY
Message-ID: <CAP1tNvTuhdM4Yn206NrWyG+nOJaP0d4PDLfNn=FRs7dW424C+A@mail.gmail.com>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250714_130035_617963_47655887 
X-CRM114-Status: GOOD (  18.36  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [RFC] ARM: at91: sama5d3: Migrate to MFD-based SMC driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Ahmad, any news on this?

=D0=B2=D1=82, 24 =D0=B8=D1=8E=D0=BD. 2025=E2=80=AF=D0=B3. =D0=B2 12:15, Ale=
xander Shiyan <eagle.alexander923@gmail.com>:
>
> This replaces the low-level SMC driver implementation with the
> MFD-based driver for SAMA5D3 platforms.
>
> Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> ---
>  arch/arm/boards/sama5d3_xplained/board.c | 46 ------------------------
>  arch/arm/mach-at91/Kconfig               |  1 -
>  arch/arm/mach-at91/sam9_smc.c            |  5 +--
>  3 files changed, 1 insertion(+), 51 deletions(-)
>
> diff --git a/arch/arm/boards/sama5d3_xplained/board.c b/arch/arm/boards/s=
ama5d3_xplained/board.c
> index 4d908e6b9f..3ee3f2166e 100644
> --- a/arch/arm/boards/sama5d3_xplained/board.c
> +++ b/arch/arm/boards/sama5d3_xplained/board.c
> @@ -3,60 +3,14 @@
>  #include <common.h>
>  #include <init.h>
>  #include <envfs.h>
> -#include <mach/at91/at91sam9_smc.h>
> -#include <mach/at91/hardware.h>
> -#include <linux/clk.h>
> -
> -static struct sam9_smc_config sama5d3_xplained_nand_smc_config =3D {
> -       .ncs_read_setup         =3D 1,
> -       .nrd_setup              =3D 2,
> -       .ncs_write_setup        =3D 1,
> -       .nwe_setup              =3D 2,
> -
> -       .ncs_read_pulse         =3D 5,
> -       .nrd_pulse              =3D 3,
> -       .ncs_write_pulse        =3D 5,
> -       .nwe_pulse              =3D 3,
> -
> -       .read_cycle             =3D 8,
> -       .write_cycle            =3D 8,
> -
> -       .mode                   =3D AT91_SMC_READMODE | AT91_SMC_WRITEMOD=
E |
> -                                 AT91_SMC_EXNWMODE_DISABLE | AT91_SMC_DB=
W_8,
> -       .tdf_cycles             =3D 3,
> -
> -       .tclr                   =3D 3,
> -       .tadl                   =3D 10,
> -       .tar                    =3D 3,
> -       .ocms                   =3D 0,
> -       .trr                    =3D 4,
> -       .twb                    =3D 5,
> -       .rbnsel                 =3D 3,
> -       .nfsel                  =3D 1
> -};
>
>  static int sama5d3_xplained_probe(struct device *dev)
>  {
> -       struct clk *clk;
> -
>         barebox_set_hostname("sama5d3_xplained");
>
>         if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC))
>                 defaultenv_append_directory(defaultenv_sama5d3_xplained);
>
> -       add_generic_device("at91sam9-smc", DEVICE_ID_SINGLE, NULL,
> -                          SAMA5D3_BASE_HSMC + 0x600, 0xa0,
> -                          IORESOURCE_MEM, NULL);
> -
> -       clk =3D clk_lookup("hsmc_clk");
> -       if (IS_ERR(clk))
> -               dev_warn(dev, "couldn't get hsmc_clk: %pe\n", clk);
> -
> -       clk_enable(clk);
> -
> -       /* configure chip-select 3 (NAND) */
> -       sama5_smc_configure(0, 3, &sama5d3_xplained_nand_smc_config);
> -
>         return 0;
>  }
>
> diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
> index db79ad2d26..22ab99d9c8 100644
> --- a/arch/arm/mach-at91/Kconfig
> +++ b/arch/arm/mach-at91/Kconfig
> @@ -107,7 +107,6 @@ config SOC_SAMA5D2
>  config SOC_SAMA5D3
>         bool
>         select SOC_SAMA5
> -       select AT91SAM9_SMC
>         select CLOCKSOURCE_ATMEL_PIT
>         select HAVE_AT91_SMD
>         select HAVE_AT91_USB_CLK
> diff --git a/arch/arm/mach-at91/sam9_smc.c b/arch/arm/mach-at91/sam9_smc.=
c
> index 6c9e169a8e..66b30694ce 100644
> --- a/arch/arm/mach-at91/sam9_smc.c
> +++ b/arch/arm/mach-at91/sam9_smc.c
> @@ -14,8 +14,7 @@
>
>  #define AT91_SAM9_SMC_CS_STRIDE                0x10
>  #define AT91_SAMA5_SMC_CS_STRIDE       0x14
> -#define AT91_SMC_CS_STRIDE     ((at91_soc_initdata.type =3D=3D AT91_SOC_=
SAMA5D3 \
> -                                || at91_soc_initdata.type =3D=3D AT91_SO=
C_SAMA5D4) \
> +#define AT91_SMC_CS_STRIDE     ((at91_soc_initdata.type =3D=3D AT91_SOC_=
SAMA5D4) \
>                                  ? AT91_SAMA5_SMC_CS_STRIDE : AT91_SAM9_S=
MC_CS_STRIDE)
>  #define AT91_SMC_CS(id, n)     (smc_base_addr[id] + ((n) * AT91_SMC_CS_S=
TRIDE))
>
> @@ -27,7 +26,6 @@ static void sam9_smc_cs_write_mode(void __iomem *base,
>         void __iomem *mode_reg;
>
>         switch (at91_soc_initdata.type) {
> -       case AT91_SOC_SAMA5D3:
>         case AT91_SOC_SAMA5D4:
>                 mode_reg =3D base + AT91_SAMA5_SMC_MODE;
>                 break;
> @@ -101,7 +99,6 @@ static void sam9_smc_cs_read_mode(void __iomem *base,
>         void __iomem *mode_reg;
>
>         switch (at91_soc_initdata.type) {
> -       case AT91_SOC_SAMA5D3:
>         case AT91_SOC_SAMA5D4:
>                 mode_reg =3D base + AT91_SAMA5_SMC_MODE;
>                 break;
> --
> 2.39.1
>


