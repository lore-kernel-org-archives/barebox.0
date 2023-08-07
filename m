Delivery-date: Mon, 07 Aug 2023 10:32:28 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qSvfA-00AoWr-Jx
	for lore@lore.pengutronix.de; Mon, 07 Aug 2023 10:32:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qSvf7-0001OH-7v
	for lore@pengutronix.de; Mon, 07 Aug 2023 10:32:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+QaLF833M4SyW0hcQ6NDPaX4vVZscTdZFPU+FzzGRy4=; b=EtcOZieFnXLEf5UNxBmaaE4Gjt
	fmQ7Mo/1VQvYBUQRy3sCHjSk1VgcOKC67gkn7XTaaI7rdjPQG2n55IlWPA3C3wfydeOp4r7cHFkbS
	CB+EpR8OQx9jaViTya9oxOBu2ggt7LOWberBDIS7arqwo5RPLSGGy/kuIhX+rH5VfhZRBN8+ImEFH
	Gael8NbboJxZTaAPuGwFuk+csU6I0g+n0rfoMR14TCaiMd5bZXiBiZehGkI/z0biEWOEJwlxRnAvd
	NG4G1leDfoZsrG79CnxHdB+ysIJnn1w9bhVhHXVfY3zTJEsS5S3+W9Es/0mGaqc+uYoeOVN2d/E4I
	pTcPaUzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qSvda-00GSB8-2A;
	Mon, 07 Aug 2023 08:30:50 +0000
Received: from mail-pj1-x102a.google.com ([2607:f8b0:4864:20::102a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qSvdQ-00GS90-1k
	for barebox@lists.infradead.org;
	Mon, 07 Aug 2023 08:30:48 +0000
Received: by mail-pj1-x102a.google.com with SMTP id 98e67ed59e1d1-267fcd6985cso3008402a91.2
        for <barebox@lists.infradead.org>; Mon, 07 Aug 2023 01:30:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691397037; x=1692001837;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+QaLF833M4SyW0hcQ6NDPaX4vVZscTdZFPU+FzzGRy4=;
        b=DbFh476IEkpMUsKvgj/tD2VOaFgnvhhTKwqPFYnkmGbajVetO2NEbOaZcNfroYb7Dk
         Ppa6xkRLW9TdQEcq1/aeWaRJ4NIbkZt++NW/pl/gouV98Y4c+yMkWn0WdCP6jBLndQUT
         s8OwdfGpe/hpn2A+/QsjQHdclROC/J3DcxmhkjRl7Wr4QQhA0adY7q44AAlFeyptIoNt
         25PuAcuFvapM2ClehOk+pTU6FC5fjTp+aBpALAQXqcs/i6O7gYlabqPAinFGx5vxiL8V
         zgR7tjzrm5Hw780DbSg4+QhUflsPrXZ4vMiclpyMsBAb5J74v6rCAowwDQKxV47BfHgk
         3rGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691397037; x=1692001837;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+QaLF833M4SyW0hcQ6NDPaX4vVZscTdZFPU+FzzGRy4=;
        b=jpEN+iEEQIDW3feLSGXtq9Kky3l0i5zjJ4x25Zfw7caq9NdIxwfve4pJGBInBNSEuj
         jwbLMQ4CwEAFsKAzzS35pPHsJtjPREfkRLXXOSy61q5cpO0DV8TolUnCHMWTwcRuZumi
         RZyZecfr9qGQPoNukSFPea1DbqJXj1omn7q9P+jfBjJL6W+My+Snq0+cz0wXN1/v/cZV
         haqd69wqCkOEv1umZsDiYD/CYgU/5jFSEaiMHEMtfSFxdMM/jmi64K02GFU8gA3btEZh
         cdU2ZQ63ZTreamykYRoLHt2QqMTOrEjxJiz7bzNM1gabOR2+WNFwIxn0+g0sEAi4V/ND
         oJ3Q==
X-Gm-Message-State: AOJu0YwyyPAX+fGcALLPySpTUyB9fwZWcA/xopy1rbntAhsQmTFK/NTG
	FPClFWh9JMtxCWBrcUraKpdXvTz3MUwfuLj4qklYjthF8EI=
X-Google-Smtp-Source: AGHT+IE1d1GvANiWKDyHTxYG6t48LL1Rj4JWHM1uYd4fmCeZOcMOUb2KxyjPhg3QK8GwgmnTGawYaTmw0HZ5GDiJSxQ=
X-Received: by 2002:a17:90b:1483:b0:268:3a6a:7df4 with SMTP id
 js3-20020a17090b148300b002683a6a7df4mr8498644pjb.10.1691397037121; Mon, 07
 Aug 2023 01:30:37 -0700 (PDT)
MIME-Version: 1.0
References: <20230803103238.51706-1-eagle.alexander923@gmail.com> <20230807065945.GJ26314@pengutronix.de>
In-Reply-To: <20230807065945.GJ26314@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Mon, 7 Aug 2023 11:30:25 +0300
Message-ID: <CAP1tNvSY9v1s3oy9vNj0m1E14Pvxi_2a_Q9E6rE_GaTXj6+53g@mail.gmail.com>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230807_013040_606222_E3CCFBD0 
X-CRM114-Status: GOOD (  34.71  )
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
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/2] memory: Add driver for FMC2 External Bus Interface on
 STM32MP SoCs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello.

Please do not apply the second part of the patch to git. NAND chip
detected, but read/write operations are not performed correctly. I'll
deal with it.

=D0=BF=D0=BD, 7 =D0=B0=D0=B2=D0=B3. 2023=E2=80=AF=D0=B3. =D0=B2 09:59, Sasc=
ha Hauer <sha@pengutronix.de>:
>
> On Thu, Aug 03, 2023 at 01:32:37PM +0300, Alexander Shiyan wrote:
> > This adds support for FMC2 External Bus Interface on STM32MP SoCs.
> > The original source is taken from the STMicroelectronics/u-boot reposit=
ory [1].
> >
> > [1] https://github.com/STMicroelectronics/u-boot/blob/v2022.10-stm32mp/=
drivers/memory/stm32-fmc2-ebi.c
> >
> > Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> > ---
> >  drivers/memory/Kconfig          |    9 +
> >  drivers/memory/Makefile         |    1 +
> >  drivers/memory/stm32-fmc2-ebi.c | 1063 +++++++++++++++++++++++++++++++
> >  3 files changed, 1073 insertions(+)
> >  create mode 100644 drivers/memory/stm32-fmc2-ebi.c
>
> Applied, thanks
>
> Sascha
>
> >
> > diff --git a/drivers/memory/Kconfig b/drivers/memory/Kconfig
> > index e18b452009..b0d99c3a54 100644
> > --- a/drivers/memory/Kconfig
> > +++ b/drivers/memory/Kconfig
> > @@ -23,4 +23,13 @@ config MC_TEGRA124
> >         the Tegra124 SoC. This driver performs the necessary initializa=
tion
> >         to provide a function GPU when the OS is running.
> >
> > +config STM32_FMC2_EBI
> > +     bool "Support for FMC2 External Bus Interface on STM32MP SoCs"
> > +     depends on ARCH_STM32MP || COMPILE_TEST
> > +     help
> > +       Select this option to enable the STM32 FMC2 External Bus Interf=
ace
> > +       controller. This driver configures the transactions with extern=
al
> > +       devices (like SRAM, ethernet adapters, FPGAs, LCD displays, ...=
) on
> > +       SOCs containing the FMC2 External Bus Interface.
> > +
> >  endmenu
> > diff --git a/drivers/memory/Makefile b/drivers/memory/Makefile
> > index bdf8db66e8..67d3c47621 100644
> > --- a/drivers/memory/Makefile
> > +++ b/drivers/memory/Makefile
> > @@ -1,3 +1,4 @@
> >  # SPDX-License-Identifier: GPL-2.0-only
> >  obj-$(CONFIG_ATMEL_EBI)              +=3D atmel-ebi.o
> >  obj-$(CONFIG_MC_TEGRA124)    +=3D mc-tegra124.o
> > +obj-$(CONFIG_STM32_FMC2_EBI) +=3D stm32-fmc2-ebi.o
> > diff --git a/drivers/memory/stm32-fmc2-ebi.c b/drivers/memory/stm32-fmc=
2-ebi.c
> > new file mode 100644
> > index 0000000000..ac2ea1b0e0
> > --- /dev/null
> > +++ b/drivers/memory/stm32-fmc2-ebi.c
> > @@ -0,0 +1,1063 @@
> > +// SPDX-License-Identifier: GPL-2.0+ OR BSD-3-Clause
> > +/*
> > + * Copyright (C) STMicroelectronics 2020
> > + */
> > +
> > +#define pr_fmt(fmt) "stm32-fmc2-ebi: " fmt
> > +
> > +#include <common.h>
> > +#include <init.h>
> > +#include <of_address.h>
> > +#include <linux/bitfield.h>
> > +#include <linux/clk.h>
> > +#include <linux/reset.h>
> > +
> > +/* FMC2 Controller Registers */
> > +#define FMC2_BCR1                    0x0
> > +#define FMC2_BTR1                    0x4
> > +#define FMC2_BCR(x)                  ((x) * 0x8 + FMC2_BCR1)
> > +#define FMC2_BTR(x)                  ((x) * 0x8 + FMC2_BTR1)
> > +#define FMC2_PCSCNTR                 0x20
> > +#define FMC2_BWTR1                   0x104
> > +#define FMC2_BWTR(x)                 ((x) * 0x8 + FMC2_BWTR1)
> > +
> > +/* Register: FMC2_BCR1 */
> > +#define FMC2_BCR1_CCLKEN             BIT(20)
> > +#define FMC2_BCR1_FMC2EN             BIT(31)
> > +
> > +/* Register: FMC2_BCRx */
> > +#define FMC2_BCR_MBKEN                       BIT(0)
> > +#define FMC2_BCR_MUXEN                       BIT(1)
> > +#define FMC2_BCR_MTYP                        GENMASK(3, 2)
> > +#define FMC2_BCR_MWID                        GENMASK(5, 4)
> > +#define FMC2_BCR_FACCEN                      BIT(6)
> > +#define FMC2_BCR_BURSTEN             BIT(8)
> > +#define FMC2_BCR_WAITPOL             BIT(9)
> > +#define FMC2_BCR_WAITCFG             BIT(11)
> > +#define FMC2_BCR_WREN                        BIT(12)
> > +#define FMC2_BCR_WAITEN                      BIT(13)
> > +#define FMC2_BCR_EXTMOD                      BIT(14)
> > +#define FMC2_BCR_ASYNCWAIT           BIT(15)
> > +#define FMC2_BCR_CPSIZE                      GENMASK(18, 16)
> > +#define FMC2_BCR_CBURSTRW            BIT(19)
> > +#define FMC2_BCR_NBLSET                      GENMASK(23, 22)
> > +
> > +/* Register: FMC2_BTRx/FMC2_BWTRx */
> > +#define FMC2_BXTR_ADDSET             GENMASK(3, 0)
> > +#define FMC2_BXTR_ADDHLD             GENMASK(7, 4)
> > +#define FMC2_BXTR_DATAST             GENMASK(15, 8)
> > +#define FMC2_BXTR_BUSTURN            GENMASK(19, 16)
> > +#define FMC2_BTR_CLKDIV                      GENMASK(23, 20)
> > +#define FMC2_BTR_DATLAT                      GENMASK(27, 24)
> > +#define FMC2_BXTR_ACCMOD             GENMASK(29, 28)
> > +#define FMC2_BXTR_DATAHLD            GENMASK(31, 30)
> > +
> > +/* Register: FMC2_PCSCNTR */
> > +#define FMC2_PCSCNTR_CSCOUNT         GENMASK(15, 0)
> > +#define FMC2_PCSCNTR_CNTBEN(x)               BIT((x) + 16)
> > +
> > +#define FMC2_MAX_EBI_CE                      4
> > +#define FMC2_MAX_BANKS                       5
> > +
> > +#define FMC2_BCR_CPSIZE_0            0x0
> > +#define FMC2_BCR_CPSIZE_128          0x1
> > +#define FMC2_BCR_CPSIZE_256          0x2
> > +#define FMC2_BCR_CPSIZE_512          0x3
> > +#define FMC2_BCR_CPSIZE_1024         0x4
> > +
> > +#define FMC2_BCR_MWID_8                      0x0
> > +#define FMC2_BCR_MWID_16             0x1
> > +
> > +#define FMC2_BCR_MTYP_SRAM           0x0
> > +#define FMC2_BCR_MTYP_PSRAM          0x1
> > +#define FMC2_BCR_MTYP_NOR            0x2
> > +
> > +#define FMC2_BXTR_EXTMOD_A           0x0
> > +#define FMC2_BXTR_EXTMOD_B           0x1
> > +#define FMC2_BXTR_EXTMOD_C           0x2
> > +#define FMC2_BXTR_EXTMOD_D           0x3
> > +
> > +#define FMC2_BCR_NBLSET_MAX          0x3
> > +#define FMC2_BXTR_ADDSET_MAX         0xf
> > +#define FMC2_BXTR_ADDHLD_MAX         0xf
> > +#define FMC2_BXTR_DATAST_MAX         0xff
> > +#define FMC2_BXTR_BUSTURN_MAX                0xf
> > +#define FMC2_BXTR_DATAHLD_MAX                0x3
> > +#define FMC2_BTR_CLKDIV_MAX          0xf
> > +#define FMC2_BTR_DATLAT_MAX          0xf
> > +#define FMC2_PCSCNTR_CSCOUNT_MAX     0xff
> > +
> > +enum stm32_fmc2_ebi_bank {
> > +     FMC2_EBI1 =3D 0,
> > +     FMC2_EBI2,
> > +     FMC2_EBI3,
> > +     FMC2_EBI4,
> > +     FMC2_NAND
> > +};
> > +
> > +enum stm32_fmc2_ebi_register_type {
> > +     FMC2_REG_BCR =3D 1,
> > +     FMC2_REG_BTR,
> > +     FMC2_REG_BWTR,
> > +     FMC2_REG_PCSCNTR
> > +};
> > +
> > +enum stm32_fmc2_ebi_transaction_type {
> > +     FMC2_ASYNC_MODE_1_SRAM =3D 0,
> > +     FMC2_ASYNC_MODE_1_PSRAM,
> > +     FMC2_ASYNC_MODE_A_SRAM,
> > +     FMC2_ASYNC_MODE_A_PSRAM,
> > +     FMC2_ASYNC_MODE_2_NOR,
> > +     FMC2_ASYNC_MODE_B_NOR,
> > +     FMC2_ASYNC_MODE_C_NOR,
> > +     FMC2_ASYNC_MODE_D_NOR,
> > +     FMC2_SYNC_READ_SYNC_WRITE_PSRAM,
> > +     FMC2_SYNC_READ_ASYNC_WRITE_PSRAM,
> > +     FMC2_SYNC_READ_SYNC_WRITE_NOR,
> > +     FMC2_SYNC_READ_ASYNC_WRITE_NOR
> > +};
> > +
> > +enum stm32_fmc2_ebi_buswidth {
> > +     FMC2_BUSWIDTH_8 =3D 8,
> > +     FMC2_BUSWIDTH_16 =3D 16
> > +};
> > +
> > +enum stm32_fmc2_ebi_cpsize {
> > +     FMC2_CPSIZE_0 =3D 0,
> > +     FMC2_CPSIZE_128 =3D 128,
> > +     FMC2_CPSIZE_256 =3D 256,
> > +     FMC2_CPSIZE_512 =3D 512,
> > +     FMC2_CPSIZE_1024 =3D 1024
> > +};
> > +
> > +struct stm32_fmc2_ebi {
> > +     struct clk *clk;
> > +     void __iomem *io_base;
> > +     u8 bank_assigned;
> > +};
> > +
> > +/*
> > + * struct stm32_fmc2_prop - STM32 FMC2 EBI property
> > + * @name: the device tree binding name of the property
> > + * @bprop: indicate that it is a boolean property
> > + * @mprop: indicate that it is a mandatory property
> > + * @reg_type: the register that have to be modified
> > + * @reg_mask: the bit that have to be modified in the selected registe=
r
> > + *            in case of it is a boolean property
> > + * @reset_val: the default value that have to be set in case the prope=
rty
> > + *             has not been defined in the device tree
> > + * @check: this callback ckecks that the property is compliant with th=
e
> > + *         transaction type selected
> > + * @calculate: this callback is called to calculate for exemple a timi=
ng
> > + *             set in nanoseconds in the device tree in clock cycles o=
r in
> > + *             clock period
> > + * @set: this callback applies the values in the registers
> > + */
> > +struct stm32_fmc2_prop {
> > +     const char *name;
> > +     bool bprop;
> > +     bool mprop;
> > +     int reg_type;
> > +     u32 reg_mask;
> > +     u32 reset_val;
> > +     int (*check)(struct stm32_fmc2_ebi *ebi,
> > +                  const struct stm32_fmc2_prop *prop, int cs);
> > +     u32 (*calculate)(struct stm32_fmc2_ebi *ebi, int cs, u32 setup);
> > +     int (*set)(struct stm32_fmc2_ebi *ebi,
> > +                const struct stm32_fmc2_prop *prop,
> > +                int cs, u32 setup);
> > +};
> > +
> > +static int stm32_fmc2_ebi_check_mux(struct stm32_fmc2_ebi *ebi,
> > +                                 const struct stm32_fmc2_prop *prop,
> > +                                 int cs)
> > +{
> > +     u32 bcr =3D readl(ebi->io_base + FMC2_BCR(cs));
> > +
> > +     if (bcr & FMC2_BCR_MTYP)
> > +             return 0;
> > +
> > +     return -EINVAL;
> > +}
> > +
> > +static int stm32_fmc2_ebi_check_waitcfg(struct stm32_fmc2_ebi *ebi,
> > +                                     const struct stm32_fmc2_prop *pro=
p,
> > +                                     int cs)
> > +{
> > +     u32 bcr =3D readl(ebi->io_base + FMC2_BCR(cs));
> > +     u32 val =3D FIELD_PREP(FMC2_BCR_MTYP, FMC2_BCR_MTYP_NOR);
> > +
> > +     if ((bcr & FMC2_BCR_MTYP) =3D=3D val && bcr & FMC2_BCR_BURSTEN)
> > +             return 0;
> > +
> > +     return -EINVAL;
> > +}
> > +
> > +static int stm32_fmc2_ebi_check_sync_trans(struct stm32_fmc2_ebi *ebi,
> > +                                        const struct stm32_fmc2_prop *=
prop,
> > +                                        int cs)
> > +{
> > +     u32 bcr =3D readl(ebi->io_base + FMC2_BCR(cs));
> > +
> > +     if (bcr & FMC2_BCR_BURSTEN)
> > +             return 0;
> > +
> > +     return -EINVAL;
> > +}
> > +
> > +static int stm32_fmc2_ebi_check_async_trans(struct stm32_fmc2_ebi *ebi=
,
> > +                                         const struct stm32_fmc2_prop =
*prop,
> > +                                         int cs)
> > +{
> > +     u32 bcr =3D readl(ebi->io_base + FMC2_BCR(cs));
> > +
> > +     if (!(bcr & FMC2_BCR_BURSTEN) || !(bcr & FMC2_BCR_CBURSTRW))
> > +             return 0;
> > +
> > +     return -EINVAL;
> > +}
> > +
> > +static int stm32_fmc2_ebi_check_cpsize(struct stm32_fmc2_ebi *ebi,
> > +                                    const struct stm32_fmc2_prop *prop=
,
> > +                                    int cs)
> > +{
> > +     u32 bcr =3D readl(ebi->io_base + FMC2_BCR(cs));
> > +     u32 val =3D FIELD_PREP(FMC2_BCR_MTYP, FMC2_BCR_MTYP_PSRAM);
> > +
> > +     if ((bcr & FMC2_BCR_MTYP) =3D=3D val && bcr & FMC2_BCR_BURSTEN)
> > +             return 0;
> > +
> > +     return -EINVAL;
> > +}
> > +
> > +static int stm32_fmc2_ebi_check_address_hold(struct stm32_fmc2_ebi *eb=
i,
> > +                                          const struct stm32_fmc2_prop=
 *prop,
> > +                                          int cs)
> > +{
> > +     u32 bcr =3D readl(ebi->io_base + FMC2_BCR(cs));
> > +     u32 bxtr =3D prop->reg_type =3D=3D FMC2_REG_BWTR ?
> > +                readl(ebi->io_base + FMC2_BWTR(cs)) :
> > +                readl(ebi->io_base + FMC2_BTR(cs));
> > +     u32 val =3D FIELD_PREP(FMC2_BXTR_ACCMOD, FMC2_BXTR_EXTMOD_D);
> > +
> > +     if ((!(bcr & FMC2_BCR_BURSTEN) || !(bcr & FMC2_BCR_CBURSTRW)) &&
> > +         ((bxtr & FMC2_BXTR_ACCMOD) =3D=3D val || bcr & FMC2_BCR_MUXEN=
))
> > +             return 0;
> > +
> > +     return -EINVAL;
> > +}
> > +
> > +static int stm32_fmc2_ebi_check_clk_period(struct stm32_fmc2_ebi *ebi,
> > +                                        const struct stm32_fmc2_prop *=
prop,
> > +                                        int cs)
> > +{
> > +     u32 bcr =3D readl(ebi->io_base + FMC2_BCR(cs));
> > +     u32 bcr1 =3D cs ? readl(ebi->io_base + FMC2_BCR1) : bcr;
> > +
> > +     if (bcr & FMC2_BCR_BURSTEN && (!cs || !(bcr1 & FMC2_BCR1_CCLKEN))=
)
> > +             return 0;
> > +
> > +     return -EINVAL;
> > +}
> > +
> > +static int stm32_fmc2_ebi_check_cclk(struct stm32_fmc2_ebi *ebi,
> > +                                  const struct stm32_fmc2_prop *prop,
> > +                                  int cs)
> > +{
> > +     if (cs)
> > +             return -EINVAL;
> > +
> > +     return stm32_fmc2_ebi_check_sync_trans(ebi, prop, cs);
> > +}
> > +
> > +static u32 stm32_fmc2_ebi_ns_to_clock_cycles(struct stm32_fmc2_ebi *eb=
i,
> > +                                          int cs, u32 setup)
> > +{
> > +     unsigned long hclk =3D clk_get_rate(ebi->clk);
> > +     unsigned long hclkp =3D NSEC_PER_SEC / (hclk / 1000);
> > +
> > +     return DIV_ROUND_UP(setup * 1000, hclkp);
> > +}
> > +
> > +static u32 stm32_fmc2_ebi_ns_to_clk_period(struct stm32_fmc2_ebi *ebi,
> > +                                        int cs, u32 setup)
> > +{
> > +     u32 nb_clk_cycles =3D stm32_fmc2_ebi_ns_to_clock_cycles(ebi, cs, =
setup);
> > +     u32 bcr =3D readl(ebi->io_base + FMC2_BCR1);
> > +     u32 btr =3D bcr & FMC2_BCR1_CCLKEN || !cs ?
> > +               readl(ebi->io_base + FMC2_BTR1) :
> > +               readl(ebi->io_base + FMC2_BTR(cs));
> > +     u32 clk_period =3D FIELD_GET(FMC2_BTR_CLKDIV, btr) + 1;
> > +
> > +     return DIV_ROUND_UP(nb_clk_cycles, clk_period);
> > +}
> > +
> > +static int stm32_fmc2_ebi_get_reg(int reg_type, int cs, u32 *reg)
> > +{
> > +     switch (reg_type) {
> > +     case FMC2_REG_BCR:
> > +             *reg =3D FMC2_BCR(cs);
> > +             break;
> > +     case FMC2_REG_BTR:
> > +             *reg =3D FMC2_BTR(cs);
> > +             break;
> > +     case FMC2_REG_BWTR:
> > +             *reg =3D FMC2_BWTR(cs);
> > +             break;
> > +     case FMC2_REG_PCSCNTR:
> > +             *reg =3D FMC2_PCSCNTR;
> > +             break;
> > +     default:
> > +             return -EINVAL;
> > +     }
> > +
> > +     return 0;
> > +}
> > +
> > +static int stm32_fmc2_ebi_set_bit_field(struct stm32_fmc2_ebi *ebi,
> > +                                     const struct stm32_fmc2_prop *pro=
p,
> > +                                     int cs, u32 setup)
> > +{
> > +     u32 reg;
> > +     int ret;
> > +
> > +     ret =3D stm32_fmc2_ebi_get_reg(prop->reg_type, cs, &reg);
> > +     if (ret)
> > +             return ret;
> > +
> > +     clrsetbits_le32(ebi->io_base + reg, prop->reg_mask,
> > +                     setup ? prop->reg_mask : 0);
> > +
> > +     return 0;
> > +}
> > +
> > +static int stm32_fmc2_ebi_set_trans_type(struct stm32_fmc2_ebi *ebi,
> > +                                      const struct stm32_fmc2_prop *pr=
op,
> > +                                      int cs, u32 setup)
> > +{
> > +     u32 bcr_mask, bcr =3D FMC2_BCR_WREN;
> > +     u32 btr_mask, btr =3D 0;
> > +     u32 bwtr_mask, bwtr =3D 0;
> > +
> > +     bwtr_mask =3D FMC2_BXTR_ACCMOD;
> > +     btr_mask =3D FMC2_BXTR_ACCMOD;
> > +     bcr_mask =3D FMC2_BCR_MUXEN | FMC2_BCR_MTYP | FMC2_BCR_FACCEN |
> > +                FMC2_BCR_WREN | FMC2_BCR_WAITEN | FMC2_BCR_BURSTEN |
> > +                FMC2_BCR_EXTMOD | FMC2_BCR_CBURSTRW;
> > +
> > +     switch (setup) {
> > +     case FMC2_ASYNC_MODE_1_SRAM:
> > +             bcr |=3D FIELD_PREP(FMC2_BCR_MTYP, FMC2_BCR_MTYP_SRAM);
> > +             /*
> > +              * MUXEN =3D 0, MTYP =3D 0, FACCEN =3D 0, BURSTEN =3D 0, =
WAITEN =3D 0,
> > +              * WREN =3D 1, EXTMOD =3D 0, CBURSTRW =3D 0, ACCMOD =3D 0
> > +              */
> > +             break;
> > +     case FMC2_ASYNC_MODE_1_PSRAM:
> > +             /*
> > +              * MUXEN =3D 0, MTYP =3D 1, FACCEN =3D 0, BURSTEN =3D 0, =
WAITEN =3D 0,
> > +              * WREN =3D 1, EXTMOD =3D 0, CBURSTRW =3D 0, ACCMOD =3D 0
> > +              */
> > +             bcr |=3D FIELD_PREP(FMC2_BCR_MTYP, FMC2_BCR_MTYP_PSRAM);
> > +             break;
> > +     case FMC2_ASYNC_MODE_A_SRAM:
> > +             /*
> > +              * MUXEN =3D 0, MTYP =3D 0, FACCEN =3D 0, BURSTEN =3D 0, =
WAITEN =3D 0,
> > +              * WREN =3D 1, EXTMOD =3D 1, CBURSTRW =3D 0, ACCMOD =3D 0
> > +              */
> > +             bcr |=3D FIELD_PREP(FMC2_BCR_MTYP, FMC2_BCR_MTYP_SRAM);
> > +             bcr |=3D FMC2_BCR_EXTMOD;
> > +             btr |=3D FIELD_PREP(FMC2_BXTR_ACCMOD, FMC2_BXTR_EXTMOD_A)=
;
> > +             bwtr |=3D FIELD_PREP(FMC2_BXTR_ACCMOD, FMC2_BXTR_EXTMOD_A=
);
> > +             break;
> > +     case FMC2_ASYNC_MODE_A_PSRAM:
> > +             /*
> > +              * MUXEN =3D 0, MTYP =3D 1, FACCEN =3D 0, BURSTEN =3D 0, =
WAITEN =3D 0,
> > +              * WREN =3D 1, EXTMOD =3D 1, CBURSTRW =3D 0, ACCMOD =3D 0
> > +              */
> > +             bcr |=3D FIELD_PREP(FMC2_BCR_MTYP, FMC2_BCR_MTYP_PSRAM);
> > +             bcr |=3D FMC2_BCR_EXTMOD;
> > +             btr |=3D FIELD_PREP(FMC2_BXTR_ACCMOD, FMC2_BXTR_EXTMOD_A)=
;
> > +             bwtr |=3D FIELD_PREP(FMC2_BXTR_ACCMOD, FMC2_BXTR_EXTMOD_A=
);
> > +             break;
> > +     case FMC2_ASYNC_MODE_2_NOR:
> > +             /*
> > +              * MUXEN =3D 0, MTYP =3D 2, FACCEN =3D 1, BURSTEN =3D 0, =
WAITEN =3D 0,
> > +              * WREN =3D 1, EXTMOD =3D 0, CBURSTRW =3D 0, ACCMOD =3D 0
> > +              */
> > +             bcr |=3D FIELD_PREP(FMC2_BCR_MTYP, FMC2_BCR_MTYP_NOR);
> > +             bcr |=3D FMC2_BCR_FACCEN;
> > +             break;
> > +     case FMC2_ASYNC_MODE_B_NOR:
> > +             /*
> > +              * MUXEN =3D 0, MTYP =3D 2, FACCEN =3D 1, BURSTEN =3D 0, =
WAITEN =3D 0,
> > +              * WREN =3D 1, EXTMOD =3D 1, CBURSTRW =3D 0, ACCMOD =3D 1
> > +              */
> > +             bcr |=3D FIELD_PREP(FMC2_BCR_MTYP, FMC2_BCR_MTYP_NOR);
> > +             bcr |=3D FMC2_BCR_FACCEN | FMC2_BCR_EXTMOD;
> > +             btr |=3D FIELD_PREP(FMC2_BXTR_ACCMOD, FMC2_BXTR_EXTMOD_B)=
;
> > +             bwtr |=3D FIELD_PREP(FMC2_BXTR_ACCMOD, FMC2_BXTR_EXTMOD_B=
);
> > +             break;
> > +     case FMC2_ASYNC_MODE_C_NOR:
> > +             /*
> > +              * MUXEN =3D 0, MTYP =3D 2, FACCEN =3D 1, BURSTEN =3D 0, =
WAITEN =3D 0,
> > +              * WREN =3D 1, EXTMOD =3D 1, CBURSTRW =3D 0, ACCMOD =3D 2
> > +              */
> > +             bcr |=3D FIELD_PREP(FMC2_BCR_MTYP, FMC2_BCR_MTYP_NOR);
> > +             bcr |=3D FMC2_BCR_FACCEN | FMC2_BCR_EXTMOD;
> > +             btr |=3D FIELD_PREP(FMC2_BXTR_ACCMOD, FMC2_BXTR_EXTMOD_C)=
;
> > +             bwtr |=3D FIELD_PREP(FMC2_BXTR_ACCMOD, FMC2_BXTR_EXTMOD_C=
);
> > +             break;
> > +     case FMC2_ASYNC_MODE_D_NOR:
> > +             /*
> > +              * MUXEN =3D 0, MTYP =3D 2, FACCEN =3D 1, BURSTEN =3D 0, =
WAITEN =3D 0,
> > +              * WREN =3D 1, EXTMOD =3D 1, CBURSTRW =3D 0, ACCMOD =3D 3
> > +              */
> > +             bcr |=3D FIELD_PREP(FMC2_BCR_MTYP, FMC2_BCR_MTYP_NOR);
> > +             bcr |=3D FMC2_BCR_FACCEN | FMC2_BCR_EXTMOD;
> > +             btr |=3D FIELD_PREP(FMC2_BXTR_ACCMOD, FMC2_BXTR_EXTMOD_D)=
;
> > +             bwtr |=3D FIELD_PREP(FMC2_BXTR_ACCMOD, FMC2_BXTR_EXTMOD_D=
);
> > +             break;
> > +     case FMC2_SYNC_READ_SYNC_WRITE_PSRAM:
> > +             /*
> > +              * MUXEN =3D 0, MTYP =3D 1, FACCEN =3D 0, BURSTEN =3D 1, =
WAITEN =3D 0,
> > +              * WREN =3D 1, EXTMOD =3D 0, CBURSTRW =3D 1, ACCMOD =3D 0
> > +              */
> > +             bcr |=3D FIELD_PREP(FMC2_BCR_MTYP, FMC2_BCR_MTYP_PSRAM);
> > +             bcr |=3D FMC2_BCR_BURSTEN | FMC2_BCR_CBURSTRW;
> > +             break;
> > +     case FMC2_SYNC_READ_ASYNC_WRITE_PSRAM:
> > +             /*
> > +              * MUXEN =3D 0, MTYP =3D 1, FACCEN =3D 0, BURSTEN =3D 1, =
WAITEN =3D 0,
> > +              * WREN =3D 1, EXTMOD =3D 0, CBURSTRW =3D 0, ACCMOD =3D 0
> > +              */
> > +             bcr |=3D FIELD_PREP(FMC2_BCR_MTYP, FMC2_BCR_MTYP_PSRAM);
> > +             bcr |=3D FMC2_BCR_BURSTEN;
> > +             break;
> > +     case FMC2_SYNC_READ_SYNC_WRITE_NOR:
> > +             /*
> > +              * MUXEN =3D 0, MTYP =3D 2, FACCEN =3D 1, BURSTEN =3D 1, =
WAITEN =3D 0,
> > +              * WREN =3D 1, EXTMOD =3D 0, CBURSTRW =3D 1, ACCMOD =3D 0
> > +              */
> > +             bcr |=3D FIELD_PREP(FMC2_BCR_MTYP, FMC2_BCR_MTYP_NOR);
> > +             bcr |=3D FMC2_BCR_FACCEN | FMC2_BCR_BURSTEN | FMC2_BCR_CB=
URSTRW;
> > +             break;
> > +     case FMC2_SYNC_READ_ASYNC_WRITE_NOR:
> > +             /*
> > +              * MUXEN =3D 0, MTYP =3D 2, FACCEN =3D 1, BURSTEN =3D 1, =
WAITEN =3D 0,
> > +              * WREN =3D 1, EXTMOD =3D 0, CBURSTRW =3D 0, ACCMOD =3D 0
> > +              */
> > +             bcr |=3D FIELD_PREP(FMC2_BCR_MTYP, FMC2_BCR_MTYP_NOR);
> > +             bcr |=3D FMC2_BCR_FACCEN | FMC2_BCR_BURSTEN;
> > +             break;
> > +     default:
> > +             /* Type of transaction not supported */
> > +             return -EINVAL;
> > +     }
> > +
> > +     if (bcr & FMC2_BCR_EXTMOD)
> > +             clrsetbits_le32(ebi->io_base + FMC2_BWTR(cs),
> > +                             bwtr_mask, bwtr);
> > +     clrsetbits_le32(ebi->io_base + FMC2_BTR(cs), btr_mask, btr);
> > +     clrsetbits_le32(ebi->io_base + FMC2_BCR(cs), bcr_mask, bcr);
> > +
> > +     return 0;
> > +}
> > +
> > +static int stm32_fmc2_ebi_set_buswidth(struct stm32_fmc2_ebi *ebi,
> > +                                    const struct stm32_fmc2_prop *prop=
,
> > +                                    int cs, u32 setup)
> > +{
> > +     u32 val;
> > +
> > +     switch (setup) {
> > +     case FMC2_BUSWIDTH_8:
> > +             val =3D FIELD_PREP(FMC2_BCR_MWID, FMC2_BCR_MWID_8);
> > +             break;
> > +     case FMC2_BUSWIDTH_16:
> > +             val =3D FIELD_PREP(FMC2_BCR_MWID, FMC2_BCR_MWID_16);
> > +             break;
> > +     default:
> > +             /* Buswidth not supported */
> > +             return -EINVAL;
> > +     }
> > +
> > +     clrsetbits_le32(ebi->io_base + FMC2_BCR(cs), FMC2_BCR_MWID, val);
> > +
> > +     return 0;
> > +}
> > +
> > +static int stm32_fmc2_ebi_set_cpsize(struct stm32_fmc2_ebi *ebi,
> > +                                  const struct stm32_fmc2_prop *prop,
> > +                                  int cs, u32 setup)
> > +{
> > +     u32 val;
> > +
> > +     switch (setup) {
> > +     case FMC2_CPSIZE_0:
> > +             val =3D FIELD_PREP(FMC2_BCR_CPSIZE, FMC2_BCR_CPSIZE_0);
> > +             break;
> > +     case FMC2_CPSIZE_128:
> > +             val =3D FIELD_PREP(FMC2_BCR_CPSIZE, FMC2_BCR_CPSIZE_128);
> > +             break;
> > +     case FMC2_CPSIZE_256:
> > +             val =3D FIELD_PREP(FMC2_BCR_CPSIZE, FMC2_BCR_CPSIZE_256);
> > +             break;
> > +     case FMC2_CPSIZE_512:
> > +             val =3D FIELD_PREP(FMC2_BCR_CPSIZE, FMC2_BCR_CPSIZE_512);
> > +             break;
> > +     case FMC2_CPSIZE_1024:
> > +             val =3D FIELD_PREP(FMC2_BCR_CPSIZE, FMC2_BCR_CPSIZE_1024)=
;
> > +             break;
> > +     default:
> > +             /* Cpsize not supported */
> > +             return -EINVAL;
> > +     }
> > +
> > +     clrsetbits_le32(ebi->io_base + FMC2_BCR(cs), FMC2_BCR_CPSIZE, val=
);
> > +
> > +     return 0;
> > +}
> > +
> > +static int stm32_fmc2_ebi_set_bl_setup(struct stm32_fmc2_ebi *ebi,
> > +                                    const struct stm32_fmc2_prop *prop=
,
> > +                                    int cs, u32 setup)
> > +{
> > +     u32 val;
> > +
> > +     val =3D min_t(u32, setup, FMC2_BCR_NBLSET_MAX);
> > +     val =3D FIELD_PREP(FMC2_BCR_NBLSET, val);
> > +     clrsetbits_le32(ebi->io_base + FMC2_BCR(cs), FMC2_BCR_NBLSET, val=
);
> > +
> > +     return 0;
> > +}
> > +
> > +static int stm32_fmc2_ebi_set_address_setup(struct stm32_fmc2_ebi *ebi=
,
> > +                                         const struct stm32_fmc2_prop =
*prop,
> > +                                         int cs, u32 setup)
> > +{
> > +     u32 bcr =3D readl(ebi->io_base + FMC2_BCR(cs));
> > +     u32 bxtr =3D prop->reg_type =3D=3D FMC2_REG_BWTR ?
> > +                readl(ebi->io_base + FMC2_BWTR(cs)) :
> > +                readl(ebi->io_base + FMC2_BTR(cs));
> > +     u32 reg, val =3D FIELD_PREP(FMC2_BXTR_ACCMOD, FMC2_BXTR_EXTMOD_D)=
;
> > +     int ret;
> > +
> > +     ret =3D stm32_fmc2_ebi_get_reg(prop->reg_type, cs, &reg);
> > +     if (ret)
> > +             return ret;
> > +
> > +     if ((bxtr & FMC2_BXTR_ACCMOD) =3D=3D val || bcr & FMC2_BCR_MUXEN)
> > +             val =3D clamp_val(setup, 1, FMC2_BXTR_ADDSET_MAX);
> > +     else
> > +             val =3D min_t(u32, setup, FMC2_BXTR_ADDSET_MAX);
> > +     val =3D FIELD_PREP(FMC2_BXTR_ADDSET, val);
> > +     clrsetbits_le32(ebi->io_base + reg, FMC2_BXTR_ADDSET, val);
> > +
> > +     return 0;
> > +}
> > +
> > +static int stm32_fmc2_ebi_set_address_hold(struct stm32_fmc2_ebi *ebi,
> > +                                        const struct stm32_fmc2_prop *=
prop,
> > +                                        int cs, u32 setup)
> > +{
> > +     u32 val, reg;
> > +     int ret;
> > +
> > +     ret =3D stm32_fmc2_ebi_get_reg(prop->reg_type, cs, &reg);
> > +     if (ret)
> > +             return ret;
> > +
> > +     val =3D clamp_val(setup, 1, FMC2_BXTR_ADDHLD_MAX);
> > +     val =3D FIELD_PREP(FMC2_BXTR_ADDHLD, val);
> > +     clrsetbits_le32(ebi->io_base + reg, FMC2_BXTR_ADDHLD, val);
> > +
> > +     return 0;
> > +}
> > +
> > +static int stm32_fmc2_ebi_set_data_setup(struct stm32_fmc2_ebi *ebi,
> > +                                      const struct stm32_fmc2_prop *pr=
op,
> > +                                      int cs, u32 setup)
> > +{
> > +     u32 val, reg;
> > +     int ret;
> > +
> > +     ret =3D stm32_fmc2_ebi_get_reg(prop->reg_type, cs, &reg);
> > +     if (ret)
> > +             return ret;
> > +
> > +     val =3D clamp_val(setup, 1, FMC2_BXTR_DATAST_MAX);
> > +     val =3D FIELD_PREP(FMC2_BXTR_DATAST, val);
> > +     clrsetbits_le32(ebi->io_base + reg, FMC2_BXTR_DATAST, val);
> > +
> > +     return 0;
> > +}
> > +
> > +static int stm32_fmc2_ebi_set_bus_turnaround(struct stm32_fmc2_ebi *eb=
i,
> > +                                          const struct stm32_fmc2_prop=
 *prop,
> > +                                          int cs, u32 setup)
> > +{
> > +     u32 val, reg;
> > +     int ret;
> > +
> > +     ret =3D stm32_fmc2_ebi_get_reg(prop->reg_type, cs, &reg);
> > +     if (ret)
> > +             return ret;
> > +
> > +     val =3D setup ? min_t(u32, setup - 1, FMC2_BXTR_BUSTURN_MAX) : 0;
> > +     val =3D FIELD_PREP(FMC2_BXTR_BUSTURN, val);
> > +     clrsetbits_le32(ebi->io_base + reg, FMC2_BXTR_BUSTURN, val);
> > +
> > +     return 0;
> > +}
> > +
> > +static int stm32_fmc2_ebi_set_data_hold(struct stm32_fmc2_ebi *ebi,
> > +                                     const struct stm32_fmc2_prop *pro=
p,
> > +                                     int cs, u32 setup)
> > +{
> > +     u32 val, reg;
> > +     int ret;
> > +
> > +     ret =3D stm32_fmc2_ebi_get_reg(prop->reg_type, cs, &reg);
> > +     if (ret)
> > +             return ret;
> > +
> > +     if (prop->reg_type =3D=3D FMC2_REG_BWTR)
> > +             val =3D setup ? min_t(u32, setup - 1, FMC2_BXTR_DATAHLD_M=
AX) : 0;
> > +     else
> > +             val =3D min_t(u32, setup, FMC2_BXTR_DATAHLD_MAX);
> > +     val =3D FIELD_PREP(FMC2_BXTR_DATAHLD, val);
> > +     clrsetbits_le32(ebi->io_base + reg, FMC2_BXTR_DATAHLD, val);
> > +
> > +     return 0;
> > +}
> > +
> > +static int stm32_fmc2_ebi_set_clk_period(struct stm32_fmc2_ebi *ebi,
> > +                                      const struct stm32_fmc2_prop *pr=
op,
> > +                                      int cs, u32 setup)
> > +{
> > +     u32 val;
> > +
> > +     val =3D setup ? clamp_val(setup - 1, 1, FMC2_BTR_CLKDIV_MAX) : 1;
> > +     val =3D FIELD_PREP(FMC2_BTR_CLKDIV, val);
> > +     clrsetbits_le32(ebi->io_base + FMC2_BTR(cs), FMC2_BTR_CLKDIV, val=
);
> > +
> > +     return 0;
> > +}
> > +
> > +static int stm32_fmc2_ebi_set_data_latency(struct stm32_fmc2_ebi *ebi,
> > +                                        const struct stm32_fmc2_prop *=
prop,
> > +                                        int cs, u32 setup)
> > +{
> > +     u32 val;
> > +
> > +     val =3D setup > 1 ? min_t(u32, setup - 2, FMC2_BTR_DATLAT_MAX) : =
0;
> > +     val =3D FIELD_PREP(FMC2_BTR_DATLAT, val);
> > +     clrsetbits_le32(ebi->io_base + FMC2_BTR(cs), FMC2_BTR_DATLAT, val=
);
> > +
> > +     return 0;
> > +}
> > +
> > +static int stm32_fmc2_ebi_set_max_low_pulse(struct stm32_fmc2_ebi *ebi=
,
> > +                                         const struct stm32_fmc2_prop =
*prop,
> > +                                         int cs, u32 setup)
> > +{
> > +     u32 old_val, new_val, pcscntr;
> > +
> > +     if (setup < 1)
> > +             return 0;
> > +
> > +     pcscntr =3D readl(ebi->io_base + FMC2_PCSCNTR);
> > +
> > +     /* Enable counter for the bank */
> > +     setbits_le32(ebi->io_base + FMC2_PCSCNTR, FMC2_PCSCNTR_CNTBEN(cs)=
);
> > +
> > +     new_val =3D min_t(u32, setup - 1, FMC2_PCSCNTR_CSCOUNT_MAX);
> > +     old_val =3D FIELD_GET(FMC2_PCSCNTR_CSCOUNT, pcscntr);
> > +     if (old_val && new_val > old_val)
> > +             /* Keep current counter value */
> > +             return 0;
> > +
> > +     new_val =3D FIELD_PREP(FMC2_PCSCNTR_CSCOUNT, new_val);
> > +     clrsetbits_le32(ebi->io_base + FMC2_PCSCNTR,
> > +                     FMC2_PCSCNTR_CSCOUNT, new_val);
> > +
> > +     return 0;
> > +}
> > +
> > +static const struct stm32_fmc2_prop stm32_fmc2_child_props[] =3D {
> > +     /* st,fmc2-ebi-cs-trans-type must be the first property */
> > +     {
> > +             .name =3D "st,fmc2-ebi-cs-transaction-type",
> > +             .mprop =3D true,
> > +             .set =3D stm32_fmc2_ebi_set_trans_type,
> > +     },
> > +     {
> > +             .name =3D "st,fmc2-ebi-cs-cclk-enable",
> > +             .bprop =3D true,
> > +             .reg_type =3D FMC2_REG_BCR,
> > +             .reg_mask =3D FMC2_BCR1_CCLKEN,
> > +             .check =3D stm32_fmc2_ebi_check_cclk,
> > +             .set =3D stm32_fmc2_ebi_set_bit_field,
> > +     },
> > +     {
> > +             .name =3D "st,fmc2-ebi-cs-mux-enable",
> > +             .bprop =3D true,
> > +             .reg_type =3D FMC2_REG_BCR,
> > +             .reg_mask =3D FMC2_BCR_MUXEN,
> > +             .check =3D stm32_fmc2_ebi_check_mux,
> > +             .set =3D stm32_fmc2_ebi_set_bit_field,
> > +     },
> > +     {
> > +             .name =3D "st,fmc2-ebi-cs-buswidth",
> > +             .reset_val =3D FMC2_BUSWIDTH_16,
> > +             .set =3D stm32_fmc2_ebi_set_buswidth,
> > +     },
> > +     {
> > +             .name =3D "st,fmc2-ebi-cs-waitpol-high",
> > +             .bprop =3D true,
> > +             .reg_type =3D FMC2_REG_BCR,
> > +             .reg_mask =3D FMC2_BCR_WAITPOL,
> > +             .set =3D stm32_fmc2_ebi_set_bit_field,
> > +     },
> > +     {
> > +             .name =3D "st,fmc2-ebi-cs-waitcfg-enable",
> > +             .bprop =3D true,
> > +             .reg_type =3D FMC2_REG_BCR,
> > +             .reg_mask =3D FMC2_BCR_WAITCFG,
> > +             .check =3D stm32_fmc2_ebi_check_waitcfg,
> > +             .set =3D stm32_fmc2_ebi_set_bit_field,
> > +     },
> > +     {
> > +             .name =3D "st,fmc2-ebi-cs-wait-enable",
> > +             .bprop =3D true,
> > +             .reg_type =3D FMC2_REG_BCR,
> > +             .reg_mask =3D FMC2_BCR_WAITEN,
> > +             .check =3D stm32_fmc2_ebi_check_sync_trans,
> > +             .set =3D stm32_fmc2_ebi_set_bit_field,
> > +     },
> > +     {
> > +             .name =3D "st,fmc2-ebi-cs-asyncwait-enable",
> > +             .bprop =3D true,
> > +             .reg_type =3D FMC2_REG_BCR,
> > +             .reg_mask =3D FMC2_BCR_ASYNCWAIT,
> > +             .check =3D stm32_fmc2_ebi_check_async_trans,
> > +             .set =3D stm32_fmc2_ebi_set_bit_field,
> > +     },
> > +     {
> > +             .name =3D "st,fmc2-ebi-cs-cpsize",
> > +             .check =3D stm32_fmc2_ebi_check_cpsize,
> > +             .set =3D stm32_fmc2_ebi_set_cpsize,
> > +     },
> > +     {
> > +             .name =3D "st,fmc2-ebi-cs-byte-lane-setup-ns",
> > +             .calculate =3D stm32_fmc2_ebi_ns_to_clock_cycles,
> > +             .set =3D stm32_fmc2_ebi_set_bl_setup,
> > +     },
> > +     {
> > +             .name =3D "st,fmc2-ebi-cs-address-setup-ns",
> > +             .reg_type =3D FMC2_REG_BTR,
> > +             .reset_val =3D FMC2_BXTR_ADDSET_MAX,
> > +             .check =3D stm32_fmc2_ebi_check_async_trans,
> > +             .calculate =3D stm32_fmc2_ebi_ns_to_clock_cycles,
> > +             .set =3D stm32_fmc2_ebi_set_address_setup,
> > +     },
> > +     {
> > +             .name =3D "st,fmc2-ebi-cs-address-hold-ns",
> > +             .reg_type =3D FMC2_REG_BTR,
> > +             .reset_val =3D FMC2_BXTR_ADDHLD_MAX,
> > +             .check =3D stm32_fmc2_ebi_check_address_hold,
> > +             .calculate =3D stm32_fmc2_ebi_ns_to_clock_cycles,
> > +             .set =3D stm32_fmc2_ebi_set_address_hold,
> > +     },
> > +     {
> > +             .name =3D "st,fmc2-ebi-cs-data-setup-ns",
> > +             .reg_type =3D FMC2_REG_BTR,
> > +             .reset_val =3D FMC2_BXTR_DATAST_MAX,
> > +             .check =3D stm32_fmc2_ebi_check_async_trans,
> > +             .calculate =3D stm32_fmc2_ebi_ns_to_clock_cycles,
> > +             .set =3D stm32_fmc2_ebi_set_data_setup,
> > +     },
> > +     {
> > +             .name =3D "st,fmc2-ebi-cs-bus-turnaround-ns",
> > +             .reg_type =3D FMC2_REG_BTR,
> > +             .reset_val =3D FMC2_BXTR_BUSTURN_MAX + 1,
> > +             .calculate =3D stm32_fmc2_ebi_ns_to_clock_cycles,
> > +             .set =3D stm32_fmc2_ebi_set_bus_turnaround,
> > +     },
> > +     {
> > +             .name =3D "st,fmc2-ebi-cs-data-hold-ns",
> > +             .reg_type =3D FMC2_REG_BTR,
> > +             .check =3D stm32_fmc2_ebi_check_async_trans,
> > +             .calculate =3D stm32_fmc2_ebi_ns_to_clock_cycles,
> > +             .set =3D stm32_fmc2_ebi_set_data_hold,
> > +     },
> > +     {
> > +             .name =3D "st,fmc2-ebi-cs-clk-period-ns",
> > +             .reset_val =3D FMC2_BTR_CLKDIV_MAX + 1,
> > +             .check =3D stm32_fmc2_ebi_check_clk_period,
> > +             .calculate =3D stm32_fmc2_ebi_ns_to_clock_cycles,
> > +             .set =3D stm32_fmc2_ebi_set_clk_period,
> > +     },
> > +     {
> > +             .name =3D "st,fmc2-ebi-cs-data-latency-ns",
> > +             .check =3D stm32_fmc2_ebi_check_sync_trans,
> > +             .calculate =3D stm32_fmc2_ebi_ns_to_clk_period,
> > +             .set =3D stm32_fmc2_ebi_set_data_latency,
> > +     },
> > +     {
> > +             .name =3D "st,fmc2-ebi-cs-write-address-setup-ns",
> > +             .reg_type =3D FMC2_REG_BWTR,
> > +             .reset_val =3D FMC2_BXTR_ADDSET_MAX,
> > +             .check =3D stm32_fmc2_ebi_check_async_trans,
> > +             .calculate =3D stm32_fmc2_ebi_ns_to_clock_cycles,
> > +             .set =3D stm32_fmc2_ebi_set_address_setup,
> > +     },
> > +     {
> > +             .name =3D "st,fmc2-ebi-cs-write-address-hold-ns",
> > +             .reg_type =3D FMC2_REG_BWTR,
> > +             .reset_val =3D FMC2_BXTR_ADDHLD_MAX,
> > +             .check =3D stm32_fmc2_ebi_check_address_hold,
> > +             .calculate =3D stm32_fmc2_ebi_ns_to_clock_cycles,
> > +             .set =3D stm32_fmc2_ebi_set_address_hold,
> > +     },
> > +     {
> > +             .name =3D "st,fmc2-ebi-cs-write-data-setup-ns",
> > +             .reg_type =3D FMC2_REG_BWTR,
> > +             .reset_val =3D FMC2_BXTR_DATAST_MAX,
> > +             .check =3D stm32_fmc2_ebi_check_async_trans,
> > +             .calculate =3D stm32_fmc2_ebi_ns_to_clock_cycles,
> > +             .set =3D stm32_fmc2_ebi_set_data_setup,
> > +     },
> > +     {
> > +             .name =3D "st,fmc2-ebi-cs-write-bus-turnaround-ns",
> > +             .reg_type =3D FMC2_REG_BWTR,
> > +             .reset_val =3D FMC2_BXTR_BUSTURN_MAX + 1,
> > +             .calculate =3D stm32_fmc2_ebi_ns_to_clock_cycles,
> > +             .set =3D stm32_fmc2_ebi_set_bus_turnaround,
> > +     },
> > +     {
> > +             .name =3D "st,fmc2-ebi-cs-write-data-hold-ns",
> > +             .reg_type =3D FMC2_REG_BWTR,
> > +             .check =3D stm32_fmc2_ebi_check_async_trans,
> > +             .calculate =3D stm32_fmc2_ebi_ns_to_clock_cycles,
> > +             .set =3D stm32_fmc2_ebi_set_data_hold,
> > +     },
> > +     {
> > +             .name =3D "st,fmc2-ebi-cs-max-low-pulse-ns",
> > +             .calculate =3D stm32_fmc2_ebi_ns_to_clock_cycles,
> > +             .set =3D stm32_fmc2_ebi_set_max_low_pulse,
> > +     },
> > +};
> > +
> > +static int stm32_fmc2_ebi_parse_prop(struct stm32_fmc2_ebi *ebi,
> > +                                  struct device_node *node,
> > +                                  const struct stm32_fmc2_prop *prop,
> > +                                  int cs)
> > +{
> > +     u32 setup =3D 0;
> > +
> > +     if (!prop->set) {
> > +             pr_err("property %s is not well defined\n", prop->name);
> > +             return -EINVAL;
> > +     }
> > +
> > +     if (prop->check && prop->check(ebi, prop, cs))
> > +             /* Skip this property */
> > +             return 0;
> > +
> > +     if (prop->bprop) {
> > +             bool bprop;
> > +
> > +             bprop =3D of_property_read_bool(node, prop->name);
> > +             if (prop->mprop && !bprop) {
> > +                     pr_err("mandatory property %s not defined in the =
device tree\n",
> > +                            prop->name);
> > +                     return -EINVAL;
> > +             }
> > +
> > +             if (bprop)
> > +                     setup =3D 1;
> > +     } else {
> > +             u32 val;
> > +             int ret;
> > +
> > +             ret =3D of_property_read_u32(node, prop->name, &val);
> > +             if (prop->mprop && ret) {
> > +                     pr_err("mandatory property %s not defined in the =
device tree\n",
> > +                            prop->name);
> > +                     return ret;
> > +             }
> > +
> > +             if (ret)
> > +                     setup =3D prop->reset_val;
> > +             else if (prop->calculate)
> > +                     setup =3D prop->calculate(ebi, cs, val);
> > +             else
> > +                     setup =3D val;
> > +     }
> > +
> > +     return prop->set(ebi, prop, cs, setup);
> > +}
> > +
> > +static void stm32_fmc2_ebi_enable_bank(struct stm32_fmc2_ebi *ebi, int=
 cs)
> > +{
> > +     setbits_le32(ebi->io_base + FMC2_BCR(cs), FMC2_BCR_MBKEN);
> > +}
> > +
> > +static void stm32_fmc2_ebi_disable_bank(struct stm32_fmc2_ebi *ebi, in=
t cs)
> > +{
> > +     clrbits_le32(ebi->io_base + FMC2_BCR(cs), FMC2_BCR_MBKEN);
> > +}
> > +
> > +/* NWAIT signal can not be connected to EBI controller and NAND contro=
ller */
> > +static bool stm32_fmc2_ebi_nwait_used_by_ctrls(struct stm32_fmc2_ebi *=
ebi)
> > +{
> > +     unsigned int cs;
> > +     u32 bcr;
> > +
> > +     for (cs =3D 0; cs < FMC2_MAX_EBI_CE; cs++) {
> > +             if (!(ebi->bank_assigned & BIT(cs)))
> > +                     continue;
> > +
> > +             bcr =3D readl(ebi->io_base + FMC2_BCR(cs));
> > +             if ((bcr & FMC2_BCR_WAITEN || bcr & FMC2_BCR_ASYNCWAIT) &=
&
> > +                 ebi->bank_assigned & BIT(FMC2_NAND))
> > +                     return true;
> > +     }
> > +
> > +     return false;
> > +}
> > +
> > +static void stm32_fmc2_ebi_enable(struct stm32_fmc2_ebi *ebi)
> > +{
> > +     setbits_le32(ebi->io_base + FMC2_BCR1, FMC2_BCR1_FMC2EN);
> > +}
> > +
> > +static int stm32_fmc2_ebi_setup_cs(struct stm32_fmc2_ebi *ebi,
> > +                                struct device_node *node, u32 cs)
> > +{
> > +     unsigned int i;
> > +     int ret;
> > +
> > +     stm32_fmc2_ebi_disable_bank(ebi, cs);
> > +
> > +     for (i =3D 0; i < ARRAY_SIZE(stm32_fmc2_child_props); i++) {
> > +             const struct stm32_fmc2_prop *p =3D &stm32_fmc2_child_pro=
ps[i];
> > +
> > +             ret =3D stm32_fmc2_ebi_parse_prop(ebi, node, p, cs);
> > +             if (ret) {
> > +                     pr_err("property %s could not be set: %d\n", p->n=
ame, ret);
> > +                     return ret;
> > +             }
> > +     }
> > +
> > +     stm32_fmc2_ebi_enable_bank(ebi, cs);
> > +
> > +     return 0;
> > +}
> > +
> > +static int stm32_fmc2_ebi_parse_dt(struct device *dev,
> > +                                struct stm32_fmc2_ebi *ebi)
> > +{
> > +     struct device_node *child;
> > +     bool child_found =3D false;
> > +     u32 bank;
> > +     int ret;
> > +
> > +     for_each_available_child_of_node(dev->of_node, child) {
> > +             ret =3D of_property_read_u32(child, "reg", &bank);
> > +             if (ret) {
> > +                     dev_err(dev, "could not retrieve reg property: %d=
\n", ret);
> > +                     return ret;
> > +             }
> > +
> > +             if (bank >=3D FMC2_MAX_BANKS) {
> > +                     dev_err(dev, "invalid reg value: %d\n", bank);
> > +                     return -EINVAL;
> > +             }
> > +
> > +             if (ebi->bank_assigned & BIT(bank)) {
> > +                     dev_err(dev, "bank already assigned: %d\n", bank)=
;
> > +                     return -EINVAL;
> > +             }
> > +
> > +             if (bank < FMC2_MAX_EBI_CE) {
> > +                     ret =3D stm32_fmc2_ebi_setup_cs(ebi, child, bank)=
;
> > +                     if (ret) {
> > +                             dev_err(dev, "setup chip select %d failed=
: %d\n", bank, ret);
> > +                             return ret;
> > +                     }
> > +             }
> > +
> > +             ebi->bank_assigned |=3D BIT(bank);
> > +             child_found =3D true;
> > +     }
> > +
> > +     if (!child_found) {
> > +             dev_warn(dev, "no subnodes found.\n");
> > +             return -ENODEV;
> > +     }
> > +
> > +     if (stm32_fmc2_ebi_nwait_used_by_ctrls(ebi)) {
> > +             dev_err(dev, "NWAIT signal connected to EBI and NAND cont=
rollers\n");
> > +             return -EINVAL;
> > +     }
> > +
> > +     stm32_fmc2_ebi_enable(ebi);
> > +
> > +     return 0;
> > +}
> > +
> > +static int __init stm32_fmc2_ebi_probe(struct device *dev)
> > +{
> > +     struct stm32_fmc2_ebi *ebi;
> > +     int ret;
> > +
> > +     ebi =3D xzalloc(sizeof(*ebi));
> > +
> > +     ebi->clk =3D clk_get(dev, NULL);
> > +     if (IS_ERR(ebi->clk)) {
> > +             ret =3D PTR_ERR(ebi->clk);
> > +             goto out_kfree;
> > +     }
> > +
> > +     clk_enable(ebi->clk);
> > +
> > +     ebi->io_base =3D of_iomap(dev->of_node, 0);
> > +     if (!ebi->io_base) {
> > +             ret =3D -ENOMEM;
> > +             goto out_clk;
> > +     }
> > +
> > +     ret =3D device_reset_us(dev, 2);
> > +     if (ret)
> > +             goto out_clk;
> > +
> > +     ret =3D stm32_fmc2_ebi_parse_dt(dev, ebi);
> > +     if (ret)
> > +             goto out_clk;
> > +
> > +     return of_platform_populate(dev->of_node, NULL, dev);
> > +
> > +out_clk:
> > +     clk_disable(ebi->clk);
> > +
> > +out_kfree:
> > +     kfree(ebi);
> > +
> > +     return ret;
> > +}
> > +
> > +static __maybe_unused struct of_device_id stm32_fmc2_ebi_dt_ids[] =3D =
{
> > +     { .compatible =3D "st,stm32mp1-fmc2-ebi", },
> > +     { /* sentinel */ }
> > +};
> > +MODULE_DEVICE_TABLE(of, stm32_fmc2_ebi_dt_ids);
> > +
> > +static struct driver stm32_fmc2_ebi_driver =3D {
> > +     .name           =3D "stm32_fmc2_ebi",
> > +     .probe          =3D stm32_fmc2_ebi_probe,
> > +     .of_compatible  =3D DRV_OF_COMPAT(stm32_fmc2_ebi_dt_ids),
> > +};
> > +coredevice_platform_driver(stm32_fmc2_ebi_driver);
> > --
> > 2.39.1
> >
> >
> >
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


