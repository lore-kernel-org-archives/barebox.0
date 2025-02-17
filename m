Delivery-date: Mon, 17 Feb 2025 10:41:36 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tjxdB-003Qf4-0U
	for lore@lore.pengutronix.de;
	Mon, 17 Feb 2025 10:41:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tjxd9-0003hi-Bi
	for lore@pengutronix.de; Mon, 17 Feb 2025 10:41:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HqpDr8Af14TwvWdxmCv4mwS4j20MBcSaFK1iuO0Bnco=; b=P6VRjuqIY4dfwjzkjqI2oXZOR3
	/iRX2psle/H2DzCafcLNVUx342NPiGtcex3fWW2w5F5g5Y7pa6cXJhyB9LxStWbDoITfX2/fxSuLW
	3miO43iDvqa39ZP5MeNV3u/ecZ+d6q7aKL6jsfQKr3pa4LsbX1EImI6/o3yJX8mgXl3Ev5DZa6sY6
	wzBU0G+tWPpsXHt0MFmYSwnjvqcNz1ksYDSaqc6soTCyPyBk78dE549g8CT/KyyZPQFQTVDXk6F8T
	zPWTSuwC+Wb76yjxS2163LuZ8BLgH0RM31T4IZrvk1foQV4tclgwPI5p6n/j/+PgykiaUB/kO2ZwG
	LGUCmhWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tjxcY-00000003xtZ-2Gd5;
	Mon, 17 Feb 2025 09:40:58 +0000
Received: from mail-pj1-x102f.google.com ([2607:f8b0:4864:20::102f])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tjxMc-00000003v48-37gb
	for barebox@lists.infradead.org;
	Mon, 17 Feb 2025 09:24:31 +0000
Received: by mail-pj1-x102f.google.com with SMTP id 98e67ed59e1d1-2fbffe0254fso7698652a91.3
        for <barebox@lists.infradead.org>; Mon, 17 Feb 2025 01:24:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739784269; x=1740389069; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HqpDr8Af14TwvWdxmCv4mwS4j20MBcSaFK1iuO0Bnco=;
        b=UK875aIeKcMdZmMYNcsgh37WSfNmYvA/FeVpRq9ugKxK15GcjpVAI5791OV1qPD+PO
         5g6Cmd808BpwKUOwKdlCdID7TEVu75unXbqHIB6pbnTNTt3npRDLwE8uR8AeMZgOnKEt
         aPzPwgMDZf62nhUVJJOCuOfl4XlMHBR0+qwpKYeN2mVMpQj/o+qEJ7FMGg0RcprneXYf
         aIFT9gpJfr8D8bbxf1jz4GtXZuU4TVdWeC569q7UlApXcH0a5+HdccsK4vbHyIKdbDAn
         kHtt/+Cm3beCTvooehj2Ij9nhiV9Zm41rkg3X35vLrulRe9XRZuV8VDhG/qyBSkMjetq
         hv+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739784269; x=1740389069;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HqpDr8Af14TwvWdxmCv4mwS4j20MBcSaFK1iuO0Bnco=;
        b=gLn+qcNeVgRWPrHBAXV98sq4G+vokRi3M3DiPkzYGdVHp1E6Mq/c8gjdLktn0C0G1d
         qW6ZMdN7OVg2ktUbwULp7Ocqu1+G4RoRGbdakK5hkRXG4/yEYPQ0YA8A42SUF9JC+hC1
         xJDoGDC06q9yvhl4d3UH0Z0iIyvDcELIl/ePtyP6frt3i8LU5V6PSWqhJEM6UiP5q7g8
         mFad81TK/BoPTmtxDEIDbaOgnFRyBLtspHGq1YDjLBZG/ydOJznz7qlFQa5wQDSGwtcg
         vkeiziiXWOFlK0+09tbF7x3fW2Tu80ZimakwwSFZ6DduHb4S8YUQJRdLoLHVolbm1Nbe
         0bfw==
X-Gm-Message-State: AOJu0YzprGWVyldjqnz9OeBbIsSKAwJ894PK0P/+NhQQDd+29K/QZU7l
	8bB4d6Fx/kix7MSIdJggUiKGuZOPOCQJmIl9Zbp98uCyQfPwmdaVY8GmT/9jrknmahwO1jNi4RZ
	9VU0vs/xZ8Rn8KvluZnSTDa0HC9ZHkM5D
X-Gm-Gg: ASbGncs4ffCxoi/SBaIlq6uSeB/VdKnIacAWnpqpwica75GnytqWgkAiq5H00tiB7hP
	16a/Ug6CrbYQ7tN9x7fHS9DeGZt81pmQ+NUASftmxmCaVSNPRtIwkan6g/G4WwOwJCR2Kgntt
X-Google-Smtp-Source: AGHT+IFAdF9aPelb/jg20sUoPkq8B5/4QeSOgFOSIG07rWUfNgw1d1AXkrUkJDtosN4gRRSlRdgCBCk9kvwdkMzlkuI=
X-Received: by 2002:a17:90a:ec8d:b0:2fa:137f:5c61 with SMTP id
 98e67ed59e1d1-2fc40f0f4f8mr16702183a91.12.1739784269427; Mon, 17 Feb 2025
 01:24:29 -0800 (PST)
MIME-Version: 1.0
References: <20241108-network-k3-v1-0-ee71bff15eb7@pengutronix.de> <20241108-network-k3-v1-1-ee71bff15eb7@pengutronix.de>
In-Reply-To: <20241108-network-k3-v1-1-ee71bff15eb7@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Mon, 17 Feb 2025 12:24:18 +0300
X-Gm-Features: AWEUYZnJMH32FLm21D9jIocWQVPWNFNn8o_jIb1c9vNKAEjXP7Srgob5fqEkjf0
Message-ID: <CAP1tNvRqjVvAiGj-=G5B4PsY21EAeQ3RsOA1T04MrS8mr+TXcg@mail.gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "open list:BAREBOX" <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250217_012430_798334_E9620E28 
X-CRM114-Status: GOOD (  30.84  )
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
Subject: Re: [PATCH 1/7] net: davinci_mdio: separate driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello.

This patch caused a build conflict with ARCH_AM33XX.
Probably ARCH_OMAP3 should be replaced with ARCH_OMAP.

PATH=3D$PATH:/usr/local/usr5/bin CROSS_COMPILE=3Darm-buildroot-linux-gnueab=
ihf- make
ARCH=3Darm mm_am335x_defconfig

WARNING: unmet direct dependencies detected for DRIVER_NET_TI_DAVINCI_MDIO
 Depends on [n]: NET [=3Dy] && (ARCH_OMAP3 [=3Dn] || ARCH_K3 [=3Dn] || COMP=
ILE_TEST [
=3Dn])
 Selected by [y]:
 - DRIVER_NET_CPSW [=3Dy] && NET [=3Dy] && ARCH_OMAP [=3Dy]

WARNING: unmet direct dependencies detected for DRIVER_NET_TI_DAVINCI_MDIO
 Depends on [n]: NET [=3Dy] && (ARCH_OMAP3 [=3Dn] || ARCH_K3 [=3Dn] || COMP=
ILE_TEST [
=3Dn])
 Selected by [y]:
 - DRIVER_NET_CPSW [=3Dy] && NET [=3Dy] && ARCH_OMAP [=3Dy]

=D0=BF=D1=82, 8 =D0=BD=D0=BE=D1=8F=D0=B1. 2024=E2=80=AF=D0=B3. =D0=B2 16:15=
, Sascha Hauer <s.hauer@pengutronix.de>:
>
> The davinci MDIO driver can be reused for the CPSW found on TI K3 SoCs
> which needs a new ethernet driver. Separate the MDIO driver from the
> CPSW driver to make it usable with other ethernet drivers.
>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/net/Kconfig        |   5 ++
>  drivers/net/Makefile       |   1 +
>  drivers/net/cpsw.c         | 178 ---------------------------------------=
---
>  drivers/net/davinci_mdio.c | 188 +++++++++++++++++++++++++++++++++++++++=
++++++
>  4 files changed, 194 insertions(+), 178 deletions(-)
>
> diff --git a/drivers/net/Kconfig b/drivers/net/Kconfig
> index 13e9ff6924..7f0d277548 100644
> --- a/drivers/net/Kconfig
> +++ b/drivers/net/Kconfig
> @@ -53,8 +53,13 @@ config DRIVER_NET_CS8900
>  config DRIVER_NET_CPSW
>         bool "CPSW ethernet driver"
>         depends on ARCH_OMAP
> +       select DRIVER_NET_TI_DAVINCI_MDIO
>         select PHYLIB
>
> +config DRIVER_NET_TI_DAVINCI_MDIO
> +       bool "TI Davinci MDIO driver"
> +       depends on ARCH_OMAP3 || COMPILE_TEST
> +
>  config DRIVER_NET_DAVINCI_EMAC
>         bool "TI Davinci/OMAP EMAC ethernet driver"
>         depends on ARCH_OMAP3
> diff --git a/drivers/net/Makefile b/drivers/net/Makefile
> index 207345cfa3..b451813f7c 100644
> --- a/drivers/net/Makefile
> +++ b/drivers/net/Makefile
> @@ -10,6 +10,7 @@ obj-$(CONFIG_DRIVER_NET_BCMGENET)     +=3D bcmgenet.o
>  obj-$(CONFIG_DRIVER_NET_CS8900)                +=3D cs8900.o
>  obj-$(CONFIG_DRIVER_NET_CPSW)          +=3D cpsw.o
>  obj-$(CONFIG_DRIVER_NET_DAVINCI_EMAC)  +=3D davinci_emac.o
> +obj-$(CONFIG_DRIVER_NET_TI_DAVINCI_MDIO) +=3D davinci_mdio.o
>  obj-$(CONFIG_DRIVER_NET_DESIGNWARE)    +=3D designware.o
>  obj-$(CONFIG_DRIVER_NET_DESIGNWARE_GENERIC) +=3D designware_generic.o
>  obj-$(CONFIG_DRIVER_NET_DESIGNWARE_SOCFPGA) +=3D designware_socfpga.o
> diff --git a/drivers/net/cpsw.c b/drivers/net/cpsw.c
> index 3e4f6502f9..b11930fdd0 100644
> --- a/drivers/net/cpsw.c
> +++ b/drivers/net/cpsw.c
> @@ -28,8 +28,6 @@
>  #define CPSW_VERSION_2         0x19010c
>
>  #define BITMASK(bits)          ((1 << (bits)) - 1)
> -#define PHY_REG_MASK           0x1f
> -#define PHY_ID_MASK            0x1f
>  #define NUM_DESCS              (PKTBUFSRX * 2)
>  #define PKT_MIN                        60
>  #define PKT_MAX                        (1500 + 14 + 4 + 4)
> @@ -60,34 +58,6 @@
>
>  #define SLIVER_SIZE            0x40
>
> -struct cpsw_mdio_regs {
> -       u32     version;
> -       u32     control;
> -#define CONTROL_IDLE           (1 << 31)
> -#define CONTROL_ENABLE         (1 << 30)
> -
> -       u32     alive;
> -       u32     link;
> -       u32     linkintraw;
> -       u32     linkintmasked;
> -       u32     __reserved_0[2];
> -       u32     userintraw;
> -       u32     userintmasked;
> -       u32     userintmaskset;
> -       u32     userintmaskclr;
> -       u32     __reserved_1[20];
> -
> -       struct {
> -               u32 access;
> -               u32 physel;
> -#define USERACCESS_GO          (1 << 31)
> -#define USERACCESS_WRITE       (1 << 30)
> -#define USERACCESS_ACK         (1 << 29)
> -#define USERACCESS_READ                (0)
> -#define USERACCESS_DATA                (0xffff)
> -       } user[0];
> -};
> -
>  struct cpsw_regs {
>         u32     id_ver;
>         u32     control;
> @@ -226,12 +196,6 @@ struct cpsw_priv {
>         struct cpsw_slave               *slaves;
>  };
>
> -struct cpsw_mdio_priv {
> -       struct device                   *dev;
> -       struct mii_bus                  miibus;
> -       struct cpsw_mdio_regs           *mdio_regs;
> -};
> -
>  static int cpsw_ale_get_field(u32 *ale_entry, u32 start, u32 bits)
>  {
>         int idx;
> @@ -524,148 +488,6 @@ static inline void cpsw_ale_port_state(struct cpsw_=
priv *priv, int port,
>         writel(tmp, priv->ale_regs + offset);
>  }
>
> -/* wait until hardware is ready for another user access */
> -static u32 wait_for_user_access(struct cpsw_mdio_priv *priv)
> -{
> -       struct cpsw_mdio_regs *mdio_regs =3D priv->mdio_regs;
> -       u32 tmp;
> -       uint64_t start =3D get_time_ns();
> -
> -       do {
> -               tmp =3D readl(&mdio_regs->user[0].access);
> -
> -               if (!(tmp & USERACCESS_GO))
> -                       break;
> -
> -               if (is_timeout(start, 100 * MSECOND)) {
> -                       dev_err(priv->dev, "timeout waiting for user acce=
ss\n");
> -                       break;
> -               }
> -       } while (1);
> -
> -       return tmp;
> -}
> -
> -static int cpsw_mdio_read(struct mii_bus *bus, int phy_id, int phy_reg)
> -{
> -       struct cpsw_mdio_priv *priv =3D bus->priv;
> -       struct cpsw_mdio_regs *mdio_regs =3D priv->mdio_regs;
> -
> -       u32 tmp;
> -
> -       if (phy_reg & ~PHY_REG_MASK || phy_id & ~PHY_ID_MASK)
> -               return -EINVAL;
> -
> -       wait_for_user_access(priv);
> -
> -       tmp =3D (USERACCESS_GO | USERACCESS_READ | (phy_reg << 21) |
> -              (phy_id << 16));
> -       writel(tmp, &mdio_regs->user[0].access);
> -
> -       tmp =3D wait_for_user_access(priv);
> -
> -       return (tmp & USERACCESS_ACK) ? (tmp & USERACCESS_DATA) : -1;
> -}
> -
> -static int cpsw_mdio_write(struct mii_bus *bus, int phy_id, int phy_reg,=
 u16 value)
> -{
> -       struct cpsw_mdio_priv *priv =3D bus->priv;
> -       struct cpsw_mdio_regs *mdio_regs =3D priv->mdio_regs;
> -       u32 tmp;
> -
> -       if (phy_reg & ~PHY_REG_MASK || phy_id & ~PHY_ID_MASK)
> -               return -EINVAL;
> -
> -       wait_for_user_access(priv);
> -       tmp =3D (USERACCESS_GO | USERACCESS_WRITE | (phy_reg << 21) |
> -                  (phy_id << 16) | (value & USERACCESS_DATA));
> -       writel(tmp, &mdio_regs->user[0].access);
> -       wait_for_user_access(priv);
> -
> -       return 0;
> -}
> -
> -static int cpsw_mdio_probe(struct device *dev)
> -{
> -       struct resource *iores;
> -       struct cpsw_mdio_priv *priv;
> -       uint64_t start;
> -       uint32_t phy_mask;
> -       int ret;
> -
> -       priv =3D xzalloc(sizeof(*priv));
> -
> -       /* If we can't request I/O memory region, we'll assume parent did
> -        * it for us
> -        */
> -       iores =3D dev_request_mem_resource(dev, 0);
> -       if (IS_ERR(iores) && PTR_ERR(iores) =3D=3D -EBUSY)
> -               iores =3D dev_get_resource(dev, IORESOURCE_MEM, 0);
> -       if (IS_ERR(iores))
> -               return PTR_ERR(iores);
> -       priv->mdio_regs =3D IOMEM(iores->start);
> -       priv->miibus.read =3D cpsw_mdio_read;
> -       priv->miibus.write =3D cpsw_mdio_write;
> -       priv->miibus.priv =3D priv;
> -       priv->miibus.parent =3D dev;
> -
> -       /*
> -        * set enable and clock divider
> -        *
> -        * FIXME: Use a clock to calculate the divider
> -        */
> -       writel(0xff | CONTROL_ENABLE, &priv->mdio_regs->control);
> -
> -       /*
> -        * wait for scan logic to settle:
> -        * the scan time consists of (a) a large fixed component, and (b)=
 a
> -        * small component that varies with the mii bus frequency.  These
> -        * were estimated using measurements at 1.1 and 2.2 MHz on tnetv1=
07x
> -        * silicon.  Since the effect of (b) was found to be largely
> -        * negligible, we keep things simple here.
> -        */
> -       udelay(2000);
> -
> -       start =3D get_time_ns();
> -       while (1) {
> -               phy_mask =3D readl(&priv->mdio_regs->alive);
> -               if (phy_mask) {
> -                       dev_info(dev, "detected phy mask 0x%x\n", phy_mas=
k);
> -                       phy_mask =3D ~phy_mask;
> -                       break;
> -               }
> -               if (is_timeout(start, 256 * MSECOND)) {
> -                       dev_err(dev, "no live phy, scanning all\n");
> -                       phy_mask =3D 0;
> -                       break;
> -               }
> -       }
> -
> -       priv->miibus.phy_mask =3D phy_mask;
> -
> -       ret =3D mdiobus_register(&priv->miibus);
> -       if (ret)
> -               return ret;
> -
> -       return 0;
> -}
> -
> -static __maybe_unused struct of_device_id cpsw_mdio_dt_ids[] =3D {
> -       {
> -               .compatible =3D "ti,cpsw-mdio",
> -       }, {
> -               /* sentinel */
> -       }
> -};
> -MODULE_DEVICE_TABLE(of, cpsw_mdio_dt_ids);
> -
> -static struct driver cpsw_mdio_driver =3D {
> -       .name   =3D "cpsw-mdio",
> -       .probe  =3D cpsw_mdio_probe,
> -       .of_compatible =3D DRV_OF_COMPAT(cpsw_mdio_dt_ids),
> -};
> -coredevice_platform_driver(cpsw_mdio_driver);
> -
>  static inline void soft_reset(struct cpsw_priv *priv, void *reg)
>  {
>         int ret;
> diff --git a/drivers/net/davinci_mdio.c b/drivers/net/davinci_mdio.c
> new file mode 100644
> index 0000000000..c5cd28fba4
> --- /dev/null
> +++ b/drivers/net/davinci_mdio.c
> @@ -0,0 +1,188 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/*
> + * DaVinci MDIO Module driver
> + */
> +#include <driver.h>
> +#include <linux/phy.h>
> +#include <clock.h>
> +#include <xfuncs.h>
> +#include <io.h>
> +
> +#define PHY_REG_MASK           0x1f
> +#define PHY_ID_MASK            0x1f
> +
> +struct cpsw_mdio_regs {
> +       u32     version;
> +       u32     control;
> +#define CONTROL_IDLE           (1 << 31)
> +#define CONTROL_ENABLE         (1 << 30)
> +
> +       u32     alive;
> +       u32     link;
> +       u32     linkintraw;
> +       u32     linkintmasked;
> +       u32     __reserved_0[2];
> +       u32     userintraw;
> +       u32     userintmasked;
> +       u32     userintmaskset;
> +       u32     userintmaskclr;
> +       u32     __reserved_1[20];
> +
> +       struct {
> +               u32 access;
> +               u32 physel;
> +#define USERACCESS_GO          (1 << 31)
> +#define USERACCESS_WRITE       (1 << 30)
> +#define USERACCESS_ACK         (1 << 29)
> +#define USERACCESS_READ                (0)
> +#define USERACCESS_DATA                (0xffff)
> +       } user[0];
> +};
> +
> +struct cpsw_mdio_priv {
> +       struct device                   *dev;
> +       struct mii_bus                  miibus;
> +       struct cpsw_mdio_regs           *mdio_regs;
> +};
> +
> +/* wait until hardware is ready for another user access */
> +static u32 wait_for_user_access(struct cpsw_mdio_priv *priv)
> +{
> +       struct cpsw_mdio_regs *mdio_regs =3D priv->mdio_regs;
> +       u32 tmp;
> +       uint64_t start =3D get_time_ns();
> +
> +       do {
> +               tmp =3D readl(&mdio_regs->user[0].access);
> +
> +               if (!(tmp & USERACCESS_GO))
> +                       break;
> +
> +               if (is_timeout(start, 100 * MSECOND)) {
> +                       dev_err(priv->dev, "timeout waiting for user acce=
ss\n");
> +                       break;
> +               }
> +       } while (1);
> +
> +       return tmp;
> +}
> +
> +static int cpsw_mdio_read(struct mii_bus *bus, int phy_id, int phy_reg)
> +{
> +       struct cpsw_mdio_priv *priv =3D bus->priv;
> +       struct cpsw_mdio_regs *mdio_regs =3D priv->mdio_regs;
> +
> +       u32 tmp;
> +
> +       if (phy_reg & ~PHY_REG_MASK || phy_id & ~PHY_ID_MASK)
> +               return -EINVAL;
> +
> +       wait_for_user_access(priv);
> +
> +       tmp =3D (USERACCESS_GO | USERACCESS_READ | (phy_reg << 21) |
> +              (phy_id << 16));
> +       writel(tmp, &mdio_regs->user[0].access);
> +
> +       tmp =3D wait_for_user_access(priv);
> +
> +       return (tmp & USERACCESS_ACK) ? (tmp & USERACCESS_DATA) : -1;
> +}
> +
> +static int cpsw_mdio_write(struct mii_bus *bus, int phy_id, int phy_reg,=
 u16 value)
> +{
> +       struct cpsw_mdio_priv *priv =3D bus->priv;
> +       struct cpsw_mdio_regs *mdio_regs =3D priv->mdio_regs;
> +       u32 tmp;
> +
> +       if (phy_reg & ~PHY_REG_MASK || phy_id & ~PHY_ID_MASK)
> +               return -EINVAL;
> +
> +       wait_for_user_access(priv);
> +       tmp =3D (USERACCESS_GO | USERACCESS_WRITE | (phy_reg << 21) |
> +                  (phy_id << 16) | (value & USERACCESS_DATA));
> +       writel(tmp, &mdio_regs->user[0].access);
> +       wait_for_user_access(priv);
> +
> +       return 0;
> +}
> +
> +static int cpsw_mdio_probe(struct device *dev)
> +{
> +       struct resource *iores;
> +       struct cpsw_mdio_priv *priv;
> +       uint64_t start;
> +       uint32_t phy_mask;
> +       int ret;
> +
> +       priv =3D xzalloc(sizeof(*priv));
> +
> +       /* If we can't request I/O memory region, we'll assume parent did
> +        * it for us
> +        */
> +       iores =3D dev_request_mem_resource(dev, 0);
> +       if (IS_ERR(iores) && PTR_ERR(iores) =3D=3D -EBUSY)
> +               iores =3D dev_get_resource(dev, IORESOURCE_MEM, 0);
> +       if (IS_ERR(iores))
> +               return PTR_ERR(iores);
> +       priv->mdio_regs =3D IOMEM(iores->start);
> +       priv->miibus.read =3D cpsw_mdio_read;
> +       priv->miibus.write =3D cpsw_mdio_write;
> +       priv->miibus.priv =3D priv;
> +       priv->miibus.parent =3D dev;
> +
> +       /*
> +        * set enable and clock divider
> +        *
> +        * FIXME: Use a clock to calculate the divider
> +        */
> +       writel(0xff | CONTROL_ENABLE, &priv->mdio_regs->control);
> +
> +       /*
> +        * wait for scan logic to settle:
> +        * the scan time consists of (a) a large fixed component, and (b)=
 a
> +        * small component that varies with the mii bus frequency.  These
> +        * were estimated using measurements at 1.1 and 2.2 MHz on tnetv1=
07x
> +        * silicon.  Since the effect of (b) was found to be largely
> +        * negligible, we keep things simple here.
> +        */
> +       udelay(2000);
> +
> +       start =3D get_time_ns();
> +       while (1) {
> +               phy_mask =3D readl(&priv->mdio_regs->alive);
> +               if (phy_mask) {
> +                       dev_info(dev, "detected phy mask 0x%x\n", phy_mas=
k);
> +                       phy_mask =3D ~phy_mask;
> +                       break;
> +               }
> +               if (is_timeout(start, 256 * MSECOND)) {
> +                       dev_err(dev, "no live phy, scanning all\n");
> +                       phy_mask =3D 0;
> +                       break;
> +               }
> +       }
> +
> +       priv->miibus.phy_mask =3D phy_mask;
> +
> +       ret =3D mdiobus_register(&priv->miibus);
> +       if (ret)
> +               return ret;
> +
> +       return 0;
> +}
> +
> +static __maybe_unused struct of_device_id cpsw_mdio_dt_ids[] =3D {
> +       {
> +               .compatible =3D "ti,cpsw-mdio",
> +       }, {
> +               /* sentinel */
> +       }
> +};
> +MODULE_DEVICE_TABLE(of, cpsw_mdio_dt_ids);
> +
> +static struct driver cpsw_mdio_driver =3D {
> +       .name   =3D "cpsw-mdio",
> +       .probe  =3D cpsw_mdio_probe,
> +       .of_compatible =3D DRV_OF_COMPAT(cpsw_mdio_dt_ids),
> +};
> +coredevice_platform_driver(cpsw_mdio_driver);
>
> --
> 2.39.5
>
>


