Delivery-date: Tue, 15 Apr 2025 10:09:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4bM4-000yhh-0t
	for lore@lore.pengutronix.de;
	Tue, 15 Apr 2025 10:09:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4bM3-00007m-5f
	for lore@pengutronix.de; Tue, 15 Apr 2025 10:09:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vVTJkPcHsyfp9zkz2VlLOlgb5pQusWhvseDH1hsZsZ0=; b=20+5BLlScGeUvkdkNvmTx2SgKm
	FNBQFdTo1ilvejHWhH98LkTq6CJmB7ni/NIV4JDha6DPdD7lvYeOMS45DY9Mh/vJ1tDVyfTZgqAuG
	90iORhCxCAEDkxmm/WBFmr5wepJLom30483nFQaWaEtUwY2hdLapZINWILslNhlsSskrd1Q2JgB1j
	tf0GcRX7HaNBFuHespPC45UpbgwWpaMfrCK1C1s0Fn4qR6M+OqNs1AQO/llglcPhqaPCxU+pnDL6B
	qkwMyC9UShVLltuImCScE/agIZ3bF3iSnoV0t8qcFp0fn89Fjw0HvqXqIk5Sk6tbGSc35BjDZPoEW
	JNT170zA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4bLX-00000004w0K-2RAH;
	Tue, 15 Apr 2025 08:08:43 +0000
Received: from mail-pl1-x629.google.com ([2607:f8b0:4864:20::629])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4b9p-00000004teQ-0Gu4
	for barebox@lists.infradead.org;
	Tue, 15 Apr 2025 07:56:38 +0000
Received: by mail-pl1-x629.google.com with SMTP id d9443c01a7336-2255003f4c6so53608565ad.0
        for <barebox@lists.infradead.org>; Tue, 15 Apr 2025 00:56:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744703796; x=1745308596; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vVTJkPcHsyfp9zkz2VlLOlgb5pQusWhvseDH1hsZsZ0=;
        b=h0vDcll9wsmBzBAJnjXtxkQAcdRgXtLs8w6h0rpcC3217VNCpLMQjM0Lr2sdzp816d
         MRZaKMy6DuIK0/w209MTF7lGQRv5Vmz7UUT+sbH7WkrzxtTUJXuferlU5rbdB7baMlAc
         XxuK4QBJSJDS/xIxyifwyqF0WNHOi+cGyeV6sFsctV6EcsSyFx/Lt0opcwkeU9kVBlpo
         bNbLy3fHw1ilpbvTJ0VJ7/X9eOvgYxu+dgz0P2ckB1z/9Fi/BMfy8C4UGFgTVzPDrKCx
         CJrk31+IGVX7qwKSUgPyncz4GgZUZkHOegaOFfnecwhiDHLbeV7/tSJtI8aEuyvJVYYs
         QlKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744703796; x=1745308596;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vVTJkPcHsyfp9zkz2VlLOlgb5pQusWhvseDH1hsZsZ0=;
        b=ghZDtU//EnFVypBpeX5ovSqJ5MIT475NCeaur7/1luiNHRzC9Hc6wrS2giGMadiH5D
         Q8A5+f0DnVQkEDslQzJ7RqVOAByKjkgzAZSZMjOqocFmBH9WPyxddxPq+Ad3/KZpCf/W
         /mQC/KCePNHDi3TjSqNbd+yE5Me/wMG71IcoM6fn+9aTmyCx23tzIAk5WzCBY0ex8kDe
         LphDYMkY5R/zBxNZVDcv0Te+/YqCq5C5HVOtgc7AjBBHuaKMiJp6ScE2DfUERkjGtT7j
         3Kc3FsQ086Xl2MPLd5Px5+PQmLZekgsElSXxbCRy7WE/wHt10UToSy7sX3Xfi0TVMIeY
         J3gg==
X-Gm-Message-State: AOJu0YwLO2Tprz4fwAheLRHIHIkLODMef2/61lF4wu86MEiGtAk8wpoG
	hCw2TzuDWFjC6FjKtrZbMmtFXBzPC/BxEjb0d11XQ/i3G73+XmqWTIg94Ebvyjk5PtSQMv9B8ZF
	3zUB2ve38ldImjD1xprvZhGbfiSkEAuub
X-Gm-Gg: ASbGncuL7S92gBUGXnId5CTNsmtB0RZSkzwuIcIz0O2Z7PAurmjRtpev/FGBzArjQsc
	UABA6yYtRkL9PP6z+Y7GGq4QZiKurrKbXCZ9UwuGJ0chOy9v4DmFOmW0bLweTLtc9YFILIZ4Z5L
	xYAG6rpvvSuTFhkPePcvJ4iN02HCaZkz3V
X-Google-Smtp-Source: AGHT+IE71GA1VOqe12b4Ti4xyaW/lws9mbERlkBYaQ3dPxmWWbukBnTBQDBRpJRAu6FVVwZjYGvUUMxRjR+o5lprdeg=
X-Received: by 2002:a17:902:d503:b0:224:1c41:a4c0 with SMTP id
 d9443c01a7336-22bea495319mr201155305ad.9.1744703795756; Tue, 15 Apr 2025
 00:56:35 -0700 (PDT)
MIME-Version: 1.0
References: <20250410120745.3696310-1-eagle.alexander923@gmail.com> <Z_4PZ5v08lbKngr-@pengutronix.de>
In-Reply-To: <Z_4PZ5v08lbKngr-@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Tue, 15 Apr 2025 10:56:23 +0300
X-Gm-Features: ATxdqUGJriLJaZaedGzdI2BhDVf0L41QXU-qvflOSlrBGb4XPt9FANXfh--GFeY
Message-ID: <CAP1tNvSqjptXUM4mDn=0CWBkPB5xycbM=cG+cmBvcnxd5FCW_w@mail.gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250415_005637_114553_7D3F7B01 
X-CRM114-Status: GOOD (  39.30  )
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
Subject: Re: [PATCH 1/3] clk: rockchip: Add new clock-type for the ddrclk
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello.

Good catch, I thought it was used even in RK3588 because
there are mentions of DDRPLL in the datasheet.
Perhaps the right solution in this case would be to remove this unit.

=D0=B2=D1=82, 15 =D0=B0=D0=BF=D1=80. 2025=E2=80=AF=D0=B3. =D0=B2 10:48, Sas=
cha Hauer <s.hauer@pengutronix.de>:
>
> Hi Alexander,
>
> On Thu, Apr 10, 2025 at 03:07:43PM +0300, Alexander Shiyan wrote:
> > Changing the DDR clock frequency requires special care, this patch
> > adds the DDR clock driver code from the Linux kernel repository.
> > While we're here, let's also update drivers/clk/rockchip/Makefile
> > to make it more readable.
>
> This patch currently breaks build on ARMv7 Rockchip SoCs. It fails with
> undefined reference to __arm_smccc_smc.
>
> Looking at upstream Linux it seems that this driver is only used on
> RK3399, the SoC we just removed support for.
>
> Where do we go from here? I could fix this patch, but as it's unused I
> could equally well drop it without loosing anything.
>
> Sascha
>
> >
> > Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> > ---
> >  drivers/clk/rockchip/Makefile       |  29 ++++--
> >  drivers/clk/rockchip/clk-ddr.c      | 131 ++++++++++++++++++++++++++++
> >  drivers/clk/rockchip/clk-pll.c      |   6 +-
> >  drivers/clk/rockchip/clk.c          |   7 ++
> >  drivers/clk/rockchip/clk.h          |   1 +
> >  include/soc/rockchip/rockchip_sip.h |  23 +++++
> >  6 files changed, 188 insertions(+), 9 deletions(-)
> >  create mode 100644 drivers/clk/rockchip/clk-ddr.c
> >  create mode 100644 include/soc/rockchip/rockchip_sip.h
> >
> > diff --git a/drivers/clk/rockchip/Makefile b/drivers/clk/rockchip/Makef=
ile
> > index f01014da0c..8d752d11b9 100644
> > --- a/drivers/clk/rockchip/Makefile
> > +++ b/drivers/clk/rockchip/Makefile
> > @@ -1,8 +1,21 @@
> > -# SPDX-License-Identifier: GPL-2.0-only
> > -obj-y +=3D clk-cpu.o clk-pll.o clk.o clk-muxgrf.o clk-mmc-phase.o clk-=
inverter.o
> > -obj-$(CONFIG_RESET_CONTROLLER) +=3D softrst.o
> > -obj-$(CONFIG_ARCH_RK3188) +=3D clk-rk3188.o
> > -obj-$(CONFIG_ARCH_RK3288) +=3D clk-rk3288.o
> > -obj-$(CONFIG_ARCH_RK3399) +=3D clk-rk3399.o
> > -obj-$(CONFIG_ARCH_RK3568) +=3D clk-rk3568.o
> > -obj-$(CONFIG_ARCH_RK3588) +=3D clk-rk3588.o rst-rk3588.o
> > +# SPDX-License-Identifier: GPL-2.0
> > +#
> > +# Rockchip Clock specific Makefile
> > +#
> > +
> > +obj-y +=3D clk-rockchip.o
> > +
> > +clk-rockchip-y +=3D clk.o
> > +clk-rockchip-y +=3D clk-pll.o
> > +clk-rockchip-y +=3D clk-cpu.o
> > +clk-rockchip-y +=3D clk-inverter.o
> > +clk-rockchip-y +=3D clk-mmc-phase.o
> > +clk-rockchip-y +=3D clk-muxgrf.o
> > +clk-rockchip-y +=3D clk-ddr.o
> > +
> > +clk-rockchip-$(CONFIG_RESET_CONTROLLER) +=3D softrst.o
> > +
> > +obj-$(CONFIG_ARCH_RK3188)    +=3D clk-rk3188.o
> > +obj-$(CONFIG_ARCH_RK3288)    +=3D clk-rk3288.o
> > +obj-$(CONFIG_ARCH_RK3568)    +=3D clk-rk3568.o
> > +obj-$(CONFIG_ARCH_RK3588)    +=3D clk-rk3588.o rst-rk3588.o
> > diff --git a/drivers/clk/rockchip/clk-ddr.c b/drivers/clk/rockchip/clk-=
ddr.c
> > new file mode 100644
> > index 0000000000..7b10f1533b
> > --- /dev/null
> > +++ b/drivers/clk/rockchip/clk-ddr.c
> > @@ -0,0 +1,131 @@
> > +// SPDX-License-Identifier: GPL-2.0-or-later
> > +/*
> > + * Copyright (c) 2016 Rockchip Electronics Co. Ltd.
> > + * Author: Lin Huang <hl@rock-chips.com>
> > + */
> > +
> > +#include <common.h>
> > +#include <linux/arm-smccc.h>
> > +#include <soc/rockchip/rockchip_sip.h>
> > +
> > +#include "clk.h"
> > +
> > +struct rockchip_ddrclk {
> > +     struct clk_hw   hw;
> > +     void __iomem    *reg_base;
> > +     int             mux_offset;
> > +     int             mux_shift;
> > +     int             mux_width;
> > +     int             div_shift;
> > +     int             div_width;
> > +     int             ddr_flag;
> > +};
> > +
> > +#define to_rockchip_ddrclk_hw(hw) container_of(hw, struct rockchip_ddr=
clk, hw)
> > +
> > +static int rockchip_ddrclk_sip_set_rate(struct clk_hw *hw, unsigned lo=
ng drate,
> > +                                     unsigned long prate)
> > +{
> > +     struct arm_smccc_res res;
> > +
> > +     arm_smccc_smc(ROCKCHIP_SIP_DRAM_FREQ, drate, 0,
> > +                   ROCKCHIP_SIP_CONFIG_DRAM_SET_RATE,
> > +                   0, 0, 0, 0, &res);
> > +
> > +     return res.a0;
> > +}
> > +
> > +static unsigned long
> > +rockchip_ddrclk_sip_recalc_rate(struct clk_hw *hw,
> > +                             unsigned long parent_rate)
> > +{
> > +     struct arm_smccc_res res;
> > +
> > +     arm_smccc_smc(ROCKCHIP_SIP_DRAM_FREQ, 0, 0,
> > +                   ROCKCHIP_SIP_CONFIG_DRAM_GET_RATE,
> > +                   0, 0, 0, 0, &res);
> > +
> > +     return res.a0;
> > +}
> > +
> > +static long rockchip_ddrclk_sip_round_rate(struct clk_hw *hw,
> > +                                        unsigned long rate,
> > +                                        unsigned long *prate)
> > +{
> > +     struct arm_smccc_res res;
> > +
> > +     arm_smccc_smc(ROCKCHIP_SIP_DRAM_FREQ, rate, 0,
> > +                   ROCKCHIP_SIP_CONFIG_DRAM_ROUND_RATE,
> > +                   0, 0, 0, 0, &res);
> > +
> > +     return res.a0;
> > +}
> > +
> > +static int rockchip_ddrclk_get_parent(struct clk_hw *hw)
> > +{
> > +     struct rockchip_ddrclk *ddrclk =3D to_rockchip_ddrclk_hw(hw);
> > +     u32 val;
> > +
> > +     val =3D readl(ddrclk->reg_base +
> > +                     ddrclk->mux_offset) >> ddrclk->mux_shift;
> > +     val &=3D GENMASK(ddrclk->mux_width - 1, 0);
> > +
> > +     return val;
> > +}
> > +
> > +static const struct clk_ops rockchip_ddrclk_sip_ops =3D {
> > +     .recalc_rate =3D rockchip_ddrclk_sip_recalc_rate,
> > +     .set_rate =3D rockchip_ddrclk_sip_set_rate,
> > +     .round_rate =3D rockchip_ddrclk_sip_round_rate,
> > +     .get_parent =3D rockchip_ddrclk_get_parent,
> > +};
> > +
> > +struct clk *rockchip_clk_register_ddrclk(const char *name, int flags,
> > +                                      const char *const *parent_names,
> > +                                      u8 num_parents, int mux_offset,
> > +                                      int mux_shift, int mux_width,
> > +                                      int div_shift, int div_width,
> > +                                      int ddr_flag, void __iomem *reg_=
base,
> > +                                      spinlock_t *lock)
> > +{
> > +     struct rockchip_ddrclk *ddrclk;
> > +     struct clk_init_data init;
> > +     struct clk *clk;
> > +
> > +     ddrclk =3D kzalloc(sizeof(*ddrclk), GFP_KERNEL);
> > +     if (!ddrclk)
> > +             return ERR_PTR(-ENOMEM);
> > +
> > +     init.name =3D name;
> > +     init.parent_names =3D parent_names;
> > +     init.num_parents =3D num_parents;
> > +
> > +     init.flags =3D flags;
> > +     init.flags |=3D CLK_SET_RATE_NO_REPARENT;
> > +
> > +     switch (ddr_flag) {
> > +     case ROCKCHIP_DDRCLK_SIP:
> > +             init.ops =3D &rockchip_ddrclk_sip_ops;
> > +             break;
> > +     default:
> > +             pr_err("%s: unsupported ddrclk type %d\n", __func__, ddr_=
flag);
> > +             kfree(ddrclk);
> > +             return ERR_PTR(-EINVAL);
> > +     }
> > +
> > +     ddrclk->reg_base =3D reg_base;
> > +     ddrclk->hw.init =3D &init;
> > +     ddrclk->mux_offset =3D mux_offset;
> > +     ddrclk->mux_shift =3D mux_shift;
> > +     ddrclk->mux_width =3D mux_width;
> > +     ddrclk->div_shift =3D div_shift;
> > +     ddrclk->div_width =3D div_width;
> > +     ddrclk->ddr_flag =3D ddr_flag;
> > +
> > +     clk =3D clk_register(NULL, &ddrclk->hw);
> > +     if (IS_ERR(clk))
> > +             kfree(ddrclk);
> > +
> > +     return clk;
> > +}
> > +EXPORT_SYMBOL_GPL(rockchip_clk_register_ddrclk);
> > diff --git a/drivers/clk/rockchip/clk-pll.c b/drivers/clk/rockchip/clk-=
pll.c
> > index b4152b03b1..2931c09ad5 100644
> > --- a/drivers/clk/rockchip/clk-pll.c
> > +++ b/drivers/clk/rockchip/clk-pll.c
> > @@ -913,7 +913,10 @@ static unsigned long rockchip_rk3588_pll_recalc_ra=
te(struct clk_hw *hw, unsigned
> >       }
> >       rate64 =3D rate64 >> cur.s;
> >
> > -     return (unsigned long)rate64;
> > +     if (pll->type =3D=3D pll_rk3588_ddr)
> > +             return (unsigned long)rate64 * 2;
> > +     else
> > +             return (unsigned long)rate64;
> >  }
> >
> >  static int rockchip_rk3588_pll_set_params(struct rockchip_clk_pll *pll=
,
> > @@ -1169,6 +1172,7 @@ struct clk *rockchip_clk_register_pll(struct rock=
chip_clk_provider *ctx,
> >               break;
> >       case pll_rk3588:
> >       case pll_rk3588_core:
> > +     case pll_rk3588_ddr:
> >               if (!pll->rate_table)
> >                       init.ops =3D &rockchip_rk3588_pll_clk_norate_ops;
> >               else
> > diff --git a/drivers/clk/rockchip/clk.c b/drivers/clk/rockchip/clk.c
> > index a154495efd..127b79e2c8 100644
> > --- a/drivers/clk/rockchip/clk.c
> > +++ b/drivers/clk/rockchip/clk.c
> > @@ -497,6 +497,13 @@ void rockchip_clk_register_branches(struct rockchi=
p_clk_provider *ctx,
> >                               list->gate_flags, flags, &ctx->lock);
> >                       break;
> >               case branch_ddrclk:
> > +                     clk =3D rockchip_clk_register_ddrclk(
> > +                             list->name, list->flags,
> > +                             list->parent_names, list->num_parents,
> > +                             list->muxdiv_offset, list->mux_shift,
> > +                             list->mux_width, list->div_shift,
> > +                             list->div_width, list->div_flags,
> > +                             ctx->reg_base, &ctx->lock);
> >                       break;
> >               }
> >
> > diff --git a/drivers/clk/rockchip/clk.h b/drivers/clk/rockchip/clk.h
> > index a451229326..6665f8ac90 100644
> > --- a/drivers/clk/rockchip/clk.h
> > +++ b/drivers/clk/rockchip/clk.h
> > @@ -267,6 +267,7 @@ enum rockchip_pll_type {
> >       pll_rk3399,
> >       pll_rk3588,
> >       pll_rk3588_core,
> > +     pll_rk3588_ddr,
> >  };
> >
> >  #define RK3036_PLL_RATE(_rate, _refdiv, _fbdiv, _postdiv1,   \
> > diff --git a/include/soc/rockchip/rockchip_sip.h b/include/soc/rockchip=
/rockchip_sip.h
> > new file mode 100644
> > index 0000000000..501ad1fedb
> > --- /dev/null
> > +++ b/include/soc/rockchip/rockchip_sip.h
> > @@ -0,0 +1,23 @@
> > +/* SPDX-License-Identifier: GPL-2.0-only */
> > +/*
> > + * Copyright (c) 2016, Fuzhou Rockchip Electronics Co., Ltd
> > + * Author: Lin Huang <hl@rock-chips.com>
> > + */
> > +#ifndef __SOC_ROCKCHIP_SIP_H
> > +#define __SOC_ROCKCHIP_SIP_H
> > +
> > +#define ROCKCHIP_SIP_SUSPEND_MODE            0x82000003
> > +#define ROCKCHIP_SLEEP_PD_CONFIG             0xff
> > +
> > +#define ROCKCHIP_SIP_DRAM_FREQ                       0x82000008
> > +#define ROCKCHIP_SIP_CONFIG_DRAM_INIT                0x00
> > +#define ROCKCHIP_SIP_CONFIG_DRAM_SET_RATE    0x01
> > +#define ROCKCHIP_SIP_CONFIG_DRAM_ROUND_RATE  0x02
> > +#define ROCKCHIP_SIP_CONFIG_DRAM_SET_AT_SR   0x03
> > +#define ROCKCHIP_SIP_CONFIG_DRAM_GET_BW              0x04
> > +#define ROCKCHIP_SIP_CONFIG_DRAM_GET_RATE    0x05
> > +#define ROCKCHIP_SIP_CONFIG_DRAM_CLR_IRQ     0x06
> > +#define ROCKCHIP_SIP_CONFIG_DRAM_SET_PARAM   0x07
> > +#define ROCKCHIP_SIP_CONFIG_DRAM_SET_ODT_PD  0x08
> > +
> > +#endif
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


