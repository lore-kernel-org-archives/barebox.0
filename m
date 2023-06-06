Delivery-date: Tue, 06 Jun 2023 10:23:07 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6Ry8-00CoZ5-FQ
	for lore@lore.pengutronix.de; Tue, 06 Jun 2023 10:23:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6Ry5-0003as-NV
	for lore@pengutronix.de; Tue, 06 Jun 2023 10:23:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=z2Fcnl8N1MB2ekiiiwH/0Qz8wn1Zvi2YJSj1wu4Y2lQ=; b=FzB5wwOCPMD8jht44vCZcV3xj0
	bn99bDH9LnkzrBayjNFtSLGrFYTNajc7lzctq/F+ooltMD75vB53hOxQre6xpiQhI2QSQGmAS+JKZ
	dyILT5NOyCxCzUazx+Hx/KXnbqUikePYVWOVDLJvCzY9xC0Jq147UPCUxGAA+wkm8ZJACL9tZBc53
	g+nMZiBvj/jZIsnwJExfkJKV8I8DU1YsmlKu9sJng8PNKjAeD7dkUhaEBgOQrCTogUw7hcrXkPKaB
	sMVUKU7Z9qrhIpZt3KlPZEbzfjylHfwqC1btS3AL0XE+yXXVF8cF59REXQeEZML1QoijNOCshpcLP
	PJdRw5ew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6Rx0-000mMy-3C;
	Tue, 06 Jun 2023 08:21:58 +0000
Received: from mail-qt1-x834.google.com ([2607:f8b0:4864:20::834])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6Rwx-000mJR-0m
	for barebox@lists.infradead.org;
	Tue, 06 Jun 2023 08:21:56 +0000
Received: by mail-qt1-x834.google.com with SMTP id d75a77b69052e-3f80cd74c63so64380291cf.3
        for <barebox@lists.infradead.org>; Tue, 06 Jun 2023 01:21:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20221208; t=1686039710; x=1688631710;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=z2Fcnl8N1MB2ekiiiwH/0Qz8wn1Zvi2YJSj1wu4Y2lQ=;
        b=RddicUCXQ4rSq5Vw3sSdSw0eqJ44EZ8bgfVGyGPrS6FSY2i53XrUT1gXwKw4Yyvfx+
         aoV/WJFcg/Bil9ZGHIzNr4y29voprUXfaACnJ+reJBl7uWJlBTCEYmEF/ZvmQK/YvG6v
         6b8eripN2Y5MmuTBd2vdebYgRFaN3zMpxBi3NZmO5LqkeONyvssR93ekz/aGH1Y40iEH
         EsoEDkCt/aTRdR0aAq3hRF6wBwayb+k9UL13riU2SVs0psu1MJvWLSHCA1ZVJaKNr5m/
         DQMSacCNa2fVyzGrTO/dzxNp3RiF2e/5hnBiRuXdDkpbStT7xI/yYo0Hgrei3yYSUAdx
         fpyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686039710; x=1688631710;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=z2Fcnl8N1MB2ekiiiwH/0Qz8wn1Zvi2YJSj1wu4Y2lQ=;
        b=DgPtnDZ9fZpwAESkbxm8xOBXJikHnz8OENYC+qbELgVwdi2eWBAx9Snbsi7nabvetd
         uj8BKYYlFmdWv7k8J3WV+OvJPssmcwmdQlhVbh0/TcZ/pYybmX76mqZIH0GpUNtiYEj3
         t6ZpNYdAVvRjdBYhbhdcgnL/XQvUVH4DfJ1wQje160GZVsQqxC+gnH88t2XSZHGV86z9
         UrNqf5UZTIdwVNsLMBTvctJSIC1X7DFGw1QuJD/AjJbBrFx3DT0rzcXrwLDaAsSOHzvl
         04RwM8xtcvorKA5mbdOcn1t4L6X+QWy5wkqgUHBkr3HgWo74nHnD6bJbAs57xx22NERG
         +2vw==
X-Gm-Message-State: AC+VfDwCyR28GuAJeNe9Sg7ZpA4tkcD+EzlLOng8NWgEH9qusDYCJxhh
	Rl0f57RK2R254M3kXVaaPa7KmLRoePlN+soY/KqpWdHuXjA=
X-Google-Smtp-Source: ACHHUZ4tUAQ9Kdj3cd0hokv2ctSh4nuiW/T2yu70W/H0BexHEu2oSz9s6vuRKb59uF7hlQlZa50FU/SOtPjt8wAIERA=
X-Received: by 2002:ac8:5a8e:0:b0:3f4:cfed:96b5 with SMTP id
 c14-20020ac85a8e000000b003f4cfed96b5mr1085324qtc.59.1686039710389; Tue, 06
 Jun 2023 01:21:50 -0700 (PDT)
MIME-Version: 1.0
References: <20230606081718.2246807-1-yegorslists@googlemail.com>
In-Reply-To: <20230606081718.2246807-1-yegorslists@googlemail.com>
From: Yegor Yefremov <yegorslists@googlemail.com>
Date: Tue, 6 Jun 2023 10:21:39 +0200
Message-ID: <CAGm1_ks5-ODLSi_xyXrFsWB+98y724Ky2UtV823BxPnvmjLM-w@mail.gmail.com>
To: barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230606_012155_281397_42D0B897 
X-CRM114-Status: GOOD (  24.80  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] net: phy: add driver for MotorComm PHY
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Sascha,


On Tue, Jun 6, 2023 at 10:17=E2=80=AFAM <yegorslists@googlemail.com> wrote:
>
> From: Yegor Yefremov <yegorslists@googlemail.com>
>
> The driver corresponds to the kernel 6.1.27.
>
> Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
> ---
> Changes:
>         v1 -> v2: add the related kernel version
>
>  drivers/net/phy/Kconfig     |   5 ++
>  drivers/net/phy/Makefile    |   1 +
>  drivers/net/phy/motorcomm.c | 128 ++++++++++++++++++++++++++++++++++++
>  3 files changed, 134 insertions(+)
>  create mode 100644 drivers/net/phy/motorcomm.c
>
> diff --git a/drivers/net/phy/Kconfig b/drivers/net/phy/Kconfig
> index cd20e1de27..e95e2a3228 100644
> --- a/drivers/net/phy/Kconfig
> +++ b/drivers/net/phy/Kconfig
> @@ -50,6 +50,11 @@ config MICREL_PHY
>         help
>           Supports the KSZ9021, VSC8201, KS8001 PHYs.
>
> +config MOTORCOMM_PHY
> +       bool "Driver for Motorcomm PHYs"
> +       help
> +         Currently supports the YT8511 PHY.
> +
>  config NATIONAL_PHY
>         bool "Driver for National Semiconductor PHYs"
>         help
> diff --git a/drivers/net/phy/Makefile b/drivers/net/phy/Makefile
> index 83f46f11d3..26e4ad884d 100644
> --- a/drivers/net/phy/Makefile
> +++ b/drivers/net/phy/Makefile
> @@ -6,6 +6,7 @@ obj-$(CONFIG_DAVICOM_PHY)       +=3D davicom.o
>  obj-$(CONFIG_LXT_PHY)          +=3D lxt.o
>  obj-$(CONFIG_MARVELL_PHY)      +=3D marvell.o
>  obj-$(CONFIG_MICREL_PHY)       +=3D micrel.o
> +obj-$(CONFIG_MOTORCOMM_PHY)    +=3D motorcomm.o
>  obj-$(CONFIG_NATIONAL_PHY)     +=3D national.o
>  obj-$(CONFIG_REALTEK_PHY)      +=3D realtek.o
>  obj-$(CONFIG_SMSC_PHY)         +=3D smsc.o
> diff --git a/drivers/net/phy/motorcomm.c b/drivers/net/phy/motorcomm.c
> new file mode 100644
> index 0000000000..4bcd84342c
> --- /dev/null
> +++ b/drivers/net/phy/motorcomm.c
> @@ -0,0 +1,128 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +/*
> + * drivers/net/phy/motorcomm.c
> + *
> + * Driver for Motorcomm PHYs
> + *
> + * Author: Peter Geis <pgwipeout@gmail.com>
> + */
> +
> +#include <common.h>
> +#include <init.h>
> +#include <linux/phy.h>
> +#include <linux/mdio.h>
> +
> +#define PHY_ID_YT8511          0x0000010a
> +
> +#define YT8511_PAGE_SELECT     0x1e
> +#define YT8511_PAGE            0x1f
> +#define YT8511_EXT_CLK_GATE    0x0c
> +#define YT8511_EXT_DELAY_DRIVE 0x0d
> +#define YT8511_EXT_SLEEP_CTRL  0x27
> +
> +/* 2b00 25m from pll
> + * 2b01 25m from xtl *default*
> + * 2b10 62.m from pll
> + * 2b11 125m from pll
> + */
> +#define YT8511_CLK_125M                (BIT(2) | BIT(1))
> +#define YT8511_PLLON_SLP       BIT(14)
> +
> +/* RX Delay enabled =3D 1.8ns 1000T, 8ns 10/100T */
> +#define YT8511_DELAY_RX                BIT(0)
> +
> +/* TX Gig-E Delay is bits 7:4, default 0x5
> + * TX Fast-E Delay is bits 15:12, default 0xf
> + * Delay =3D 150ps * N - 250ps
> + * On =3D 2000ps, off =3D 50ps
> + */
> +#define YT8511_DELAY_GE_TX_EN  (0xf << 4)
> +#define YT8511_DELAY_GE_TX_DIS (0x2 << 4)
> +#define YT8511_DELAY_FE_TX_EN  (0xf << 12)
> +#define YT8511_DELAY_FE_TX_DIS (0x2 << 12)
> +
> +static int yt8511_read_page(struct phy_device *phydev)
> +{
> +       return phy_read(phydev, YT8511_PAGE_SELECT);
> +};
> +
> +static int yt8511_write_page(struct phy_device *phydev, int page)
> +{
> +       return phy_write(phydev, YT8511_PAGE_SELECT, page);
> +};
> +
> +static int yt8511_config_init(struct phy_device *phydev)
> +{
> +       int oldpage, ret =3D 0;
> +       unsigned int ge, fe;
> +
> +       oldpage =3D phy_select_page(phydev, YT8511_EXT_CLK_GATE);
> +       if (oldpage < 0)
> +               goto err_restore_page;
> +
> +       /* set rgmii delay mode */
> +       switch (phydev->interface) {
> +       case PHY_INTERFACE_MODE_RGMII:
> +               ge =3D YT8511_DELAY_GE_TX_DIS;
> +               fe =3D YT8511_DELAY_FE_TX_DIS;
> +               break;
> +       case PHY_INTERFACE_MODE_RGMII_RXID:
> +               ge =3D YT8511_DELAY_RX | YT8511_DELAY_GE_TX_DIS;
> +               fe =3D YT8511_DELAY_FE_TX_DIS;
> +               break;
> +       case PHY_INTERFACE_MODE_RGMII_TXID:
> +               ge =3D YT8511_DELAY_GE_TX_EN;
> +               fe =3D YT8511_DELAY_FE_TX_EN;
> +               break;
> +       case PHY_INTERFACE_MODE_RGMII_ID:
> +               ge =3D YT8511_DELAY_RX | YT8511_DELAY_GE_TX_EN;
> +               fe =3D YT8511_DELAY_FE_TX_EN;
> +               break;
> +       default: /* do not support other modes */
> +               ret =3D -EOPNOTSUPP;
> +               goto err_restore_page;
> +       }
> +
> +       ret =3D phy_modify(phydev, YT8511_PAGE, (YT8511_DELAY_RX | YT8511=
_DELAY_GE_TX_EN), ge);
> +       if (ret < 0)
> +               goto err_restore_page;
> +
> +       /* set clock mode to 125mhz */
> +       ret =3D phy_modify(phydev, YT8511_PAGE, 0, YT8511_CLK_125M);
> +       if (ret < 0)
> +               goto err_restore_page;
> +
> +       /* fast ethernet delay is in a separate page */
> +       ret =3D phy_write(phydev, YT8511_PAGE_SELECT, YT8511_EXT_DELAY_DR=
IVE);
> +       if (ret < 0)
> +               goto err_restore_page;
> +
> +       ret =3D phy_modify(phydev, YT8511_PAGE, YT8511_DELAY_FE_TX_EN, fe=
);
> +       if (ret < 0)
> +               goto err_restore_page;
> +
> +       /* leave pll enabled in sleep */
> +       ret =3D phy_write(phydev, YT8511_PAGE_SELECT, YT8511_EXT_SLEEP_CT=
RL);
> +       if (ret < 0)
> +               goto err_restore_page;
> +
> +       ret =3D phy_modify(phydev, YT8511_PAGE, 0, YT8511_PLLON_SLP);
> +       if (ret < 0)
> +               goto err_restore_page;
> +
> +err_restore_page:
> +       return phy_restore_page(phydev, oldpage, ret);

As for this approach, it is also used by some other drivers in the Linux ke=
rnel:

drivers/net/phy/realtek.c
drivers/net/phy/icplus.c

Regards,
Yegor

> +}
> +
> +static struct phy_driver motorcomm_phy_drvs[] =3D {
> +       {
> +               .phy_id         =3D PHY_ID_YT8511,
> +               .drv.name       =3D "YT8511 Gigabit Ethernet",
> +               .config_init    =3D yt8511_config_init,
> +               .features       =3D PHY_GBIT_FEATURES,
> +               .read_page      =3D yt8511_read_page,
> +               .write_page     =3D yt8511_write_page,
> +       },
> +};
> +
> +device_phy_drivers(motorcomm_phy_drvs);
> --
> 2.34.1
>


