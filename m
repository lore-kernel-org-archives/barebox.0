Delivery-date: Sat, 22 Jun 2024 10:54:42 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sKwWA-00AHOe-1x
	for lore@lore.pengutronix.de;
	Sat, 22 Jun 2024 10:54:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sKwW9-00087J-F9
	for lore@pengutronix.de; Sat, 22 Jun 2024 10:54:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7vchbqicO+MlGsui7xsjdMSxGV6K05WqLUdMXHZzf1Y=; b=tqTrLcXCW49//T2ef89TA+UmUD
	kPgX1kSFrRrKo9C3TJpeFgRKKQ3TerJofP0uGbl+HgI+IRuFu95cTgCNIW6m4cNFOBsEbyb2OR0SJ
	Dg1IrznLe5kaK2EKTsRAoe9iJtM8KgSlNcwhY5bYJzQP9PN4muuK2HXYmjRb2VnchC8A+Dbg4UtlU
	fc7NIb0TlBhxY49PcvBwYsRDvqnaaPU+wBv6kqSS5Qr/J0xrWI6+Y2ao2pHLzB86/cXYJYv7xyfyU
	EJ3F4eLCDP8UkCI8AujJMi33GbCx8dDNBFxQhMBFq8vz+4/SM5cqbcRqzu997amlz/BEGZDFZHgXl
	2B2U9eRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKwVO-0000000Bk1V-33Tc;
	Sat, 22 Jun 2024 08:53:54 +0000
Received: from mout.gmx.net ([212.227.17.20])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKwVK-0000000Bk0A-2Qpa
	for barebox@lists.infradead.org;
	Sat, 22 Jun 2024 08:53:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=rempel-privat.de;
	s=s31663417; t=1719046425; x=1719651225; i=linux@rempel-privat.de;
	bh=7vchbqicO+MlGsui7xsjdMSxGV6K05WqLUdMXHZzf1Y=;
	h=X-UI-Sender-Class:Message-ID:Date:MIME-Version:Subject:To:
	 References:From:In-Reply-To:Content-Type:
	 Content-Transfer-Encoding:cc:content-transfer-encoding:
	 content-type:date:from:message-id:mime-version:reply-to:subject:
	 to;
	b=A19YYMFTbB5WivAAMyDeu/ZycPvLHqdlUkcr+5FfVue3YVKkVOMU5EepRNS0Xakz
	 aDZ3lbztW2EBtFM9M55e8OqQowGL+yjkPY1R3jkb4B6Qkh4Ca1mniBPNDDqzxyoNO
	 yKsJc3egx8QMOGc2ay/nqcVMAL6DGnoqhZ8oQav8nLiEr9Jmxfvw9Lcstakh5xUba
	 TUF1BMsyRW7x148DFE3P8VD09VeD5JflEP0RaO3qAl1n/KeqKLBFzYSyPfbU5DKeF
	 qKpFw4ejIemXbAF2p3Qe133CkrwYScOPex2YB9N9WqTl+acaMUKcjH/vQzQ/PG8lX
	 6TjcA7NnASJXf3XBHQ==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from [192.168.86.38] ([77.25.42.239]) by mail.gmx.net (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1N1Obb-1sVdw22T2B-00zdfE for
 <barebox@lists.infradead.org>; Sat, 22 Jun 2024 10:53:45 +0200
Message-ID: <979556a3-f225-4134-8f0c-c16edae3ba74@rempel-privat.de>
Date: Sat, 22 Jun 2024 10:53:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: barebox@lists.infradead.org
References: <20240621122534.1281524-1-o.rempel@pengutronix.de>
Content-Language: en-US
From: linux@rempel-privat.de
In-Reply-To: <20240621122534.1281524-1-o.rempel@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:CYGL1OUhAuXwVgP9M4zp66KHC1UQE3i89KuiheTBeCZ4hs9y1qw
 SWr3YdWPKUoZ+dfEYdKT1dtIKHt09j08RT2K0ptmXWmyOYIxC39j85Cl4NXlh2qGeGUsj2Y
 /gERLOzKTsBU/cCbewPBl5VSyo8ka4iKG5hs1Gtv8IrQxOUtDVWexojsyYYnowAEGkAfxuA
 YT5jp4Dsth/KRtrdQv4gw==
UI-OutboundReport: notjunk:1;M01:P0:w2Y+cDgWyGI=;pTpt4o4EbgxCT53nZI6V77ttb+4
 USbi74jTVUJAorpoayqIYLjeABe/24BQBDowaBb+7VjYHWdibU7QgunIhho1rvKeQRyPqW/4R
 aBduO52gnx1ZebLVSd7cZUl2/hACX1fI2T2PR+CPOovy3rPcYgF4/ioMFfi3wB0IHwdd6JHBt
 LMtSliGQVxRIWI6WJSFiWWMWUIDRQE3EoOGwu8Lf1QRinCW1JSEsVW0SnWGzie2yptVUc0ro3
 ZasDM56tchm/+iAt0onqTA05LERZ9rVWBvYzK1Ky5XIqyL4Y+IAKfLr9M2FyLMWMZemxdoc2P
 PgIQkoa8/Ls5ZkbV8ui6R1tC+SrV3p0MQfP7QK8oHBi0LIyCAmUFD3X94Nq7LWDksS+ef7FGW
 cRXHVwRUVXPNrqEdKzWWqt29+/Dl7khe9RrPi2TcmhU3KQAqqasU344LS2/6D0N1hwT+0/hb7
 CzAA8uC/BWN9QuKB0MsartCiiJjBEcL/A3cmnh1Wnvjeg2b0YEN0benumEXnFnGo77dmnncZy
 RqEErAGuaAV5v52yP6IxO1UutYZblGWXReN0sF+VnRXjyeyBjnQtGSAEV5ytm1BLoPymS5Kls
 uYfcY4ziMkVKuBFaWMuG1eK4yZu5pAVJkmBgmaeBREFFp1hebK7KSfkF0f6VFohlTsdYIs7Yy
 WkcWnjT2ffslskvBhURNI1A+IkYGrf0YZB7xI/+LNX/vSVw2yBHt0gZN4SHgijUu28TErnSHv
 zReGUKFL0CenGrNmx0K81OOfkG3zhkgWpQmlQsQ8hXjW4lP4EFr+mX4GoOB+QB1mAfa4YUfQq
 7VmR8c/RpW6AylWVaHAX3gWBWY4k4cq8qO3FSiZwqEJ4g=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240622_015351_131996_3C55FE15 
X-CRM114-Status: GOOD (  27.50  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1] ARM: at91: microchip-sama5d3-eds: implement MDIO
 extension board detection
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Please ingore it, i'll send new version with SPI and MDIO detection.

Am 21.06.24 um 14:25 schrieb Oleksij Rempel:
> Detect extension boards managed over MDIO bus. For now following
> extension boards are supported:
> - EVB-VSC8541-EDS
> - EVB-LAN8841
>
> If supported board is detected, the board code will apply devicetree
> overlay on the barebox and fixup kernel DT too.
>
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>   .../arm/boards/microchip-sama5d3-eds/Makefile |   1 +
>   arch/arm/boards/microchip-sama5d3-eds/board.c | 183 ++++++++++++++++++
>   arch/arm/dts/Makefile                         |   2 +
>   arch/arm/dts/at91-microchip-sama5d3-eds.dts   |  27 +++
>   arch/arm/dts/sama5d3_eds_rgmii_phy.dtso       |  52 +++++
>   arch/arm/mach-at91/Kconfig                    |   1 +
>   6 files changed, 266 insertions(+)
>   create mode 100644 arch/arm/boards/microchip-sama5d3-eds/board.c
>   create mode 100644 arch/arm/dts/sama5d3_eds_rgmii_phy.dtso
>
> diff --git a/arch/arm/boards/microchip-sama5d3-eds/Makefile b/arch/arm/b=
oards/microchip-sama5d3-eds/Makefile
> index 458f520900..da63d2625f 100644
> --- a/arch/arm/boards/microchip-sama5d3-eds/Makefile
> +++ b/arch/arm/boards/microchip-sama5d3-eds/Makefile
> @@ -1,3 +1,4 @@
>   # SPDX-License-Identifier: GPL-2.0-only
>
> +obj-y +=3D board.o
>   lwl-y +=3D lowlevel.o
> diff --git a/arch/arm/boards/microchip-sama5d3-eds/board.c b/arch/arm/bo=
ards/microchip-sama5d3-eds/board.c
> new file mode 100644
> index 0000000000..460b5c376d
> --- /dev/null
> +++ b/arch/arm/boards/microchip-sama5d3-eds/board.c
> @@ -0,0 +1,183 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later
> +// SPDX-FileCopyrightText: 2024 Oleksij Rempel <o.rempel@pengutronix.de=
>
> +
> +#include <common.h>
> +#include <environment.h>
> +#include <envfs.h>
> +#include <gpio.h>
> +#include <init.h>
> +#include <deep-probe.h>
> +#include <linux/phy.h>
> +
> +extern char __dtbo_sama5d3_eds_rgmii_phy_start[];
> +
> +struct microchip_sama5d3_eds_ext_board {
> +	int mdio_bus_idx;
> +	int phy_addr;
> +	int phy_id1;
> +	int phy_id2;
> +	char board_name[32];
> +	const void *overlay;
> +};
> +
> +static const struct
> +microchip_sama5d3_eds_ext_board microchip_sama5d3_eds_ext_boards[] =3D =
{
> +	{
> +		.mdio_bus_idx =3D 0,
> +		.phy_addr =3D 3,
> +		.phy_id1 =3D 0x0007,
> +		.phy_id2 =3D 0x0772,
> +		.board_name =3D "EVB-VSC8541-EDS",
> +		.overlay =3D __dtbo_sama5d3_eds_rgmii_phy_start,
> +	},
> +	{
> +		.mdio_bus_idx =3D 0,
> +		.phy_addr =3D 3,
> +		.phy_id1 =3D 0x0022,
> +		.phy_id2 =3D 0x1652,
> +		.board_name =3D "EVB-LAN8841",
> +		.overlay =3D __dtbo_sama5d3_eds_rgmii_phy_start,
> +	},
> +};
> +
> +static void microchip_sama5d3_eds_apply_overly(struct device *dev,
> +			const struct microchip_sama5d3_eds_ext_board *board)
> +{
> +	struct device_node *overlay;
> +	int ret;
> +
> +	overlay =3D of_unflatten_dtb(board->overlay, INT_MAX);
> +	ret =3D of_overlay_apply_tree(dev->of_node, overlay);
> +	if (ret)
> +		dev_warn(dev, "Failed to apply overlay: %pe\n", ERR_PTR(ret));
> +
> +	ret =3D of_register_overlay(overlay);
> +	if (ret)
> +		dev_warn(dev, "Failed to register overlay: %pe\n",
> +			 ERR_PTR(ret));
> +
> +}
> +
> +static int scan_phy_bus(struct mii_bus *bus, int *phy_addr, int *phy_id=
1,
> +			int *phy_id2)
> +{
> +	int i, reg2, reg3;
> +
> +	for (i =3D 0; i < PHY_MAX_ADDR; i++) {
> +		reg2 =3D mdiobus_read(bus, i, MII_PHYSID1);
> +		if (reg2 < 0)
> +			return reg2;
> +
> +		if (reg2 =3D=3D 0xffff || reg2 =3D=3D 0x0)
> +			continue;
> +
> +		reg3 =3D mdiobus_read(bus, i, MII_PHYSID2);
> +		if (reg3 < 0)
> +			return reg3;
> +
> +		*phy_addr =3D i;
> +		*phy_id1 =3D reg2;
> +		*phy_id2 =3D reg3;
> +
> +		return 1;
> +	}
> +
> +	return 0;
> +}
> +
> +static int microchip_sama5d3_eds_scan_mdio_bus(struct device *dev,
> +					       int mdio_bus_idx)
> +{
> +	struct device_node *eth_node, *mdio_node;
> +	char eth_alias[] =3D "ethernetX";
> +	char mdio_alias[] =3D "mdioX";
> +	struct mii_bus *mdio_bus;
> +	int phy_addr, phy_id1, phy_id2;
> +	int ret;
> +
> +	snprintf(eth_alias, sizeof(eth_alias), "ethernet%d", mdio_bus_idx);
> +	snprintf(mdio_alias, sizeof(mdio_alias), "mdio%d", mdio_bus_idx);
> +
> +	eth_node =3D of_find_node_by_alias(NULL, eth_alias);
> +	if (!eth_node)
> +		return -ENODEV;
> +
> +	of_device_ensure_probed(eth_node);
> +
> +	mdio_node =3D of_find_node_by_alias(NULL, mdio_alias);
> +	if (!mdio_node)
> +		return -ENODEV;
> +
> +	of_device_ensure_probed(mdio_node);
> +
> +	mdio_bus =3D of_mdio_find_bus(mdio_node);
> +	if (!mdio_bus)
> +		return -ENODEV;
> +
> +	ret =3D scan_phy_bus(mdio_bus, &phy_addr, &phy_id1, &phy_id2);
> +	if (ret < 0) {
> +		dev_warn(dev, "Failed to scan mdio%d bus: %d\n", mdio_bus_idx,
> +			 ret);
> +		return ret;
> +	} else if (!ret) {
> +		/* No PHY found */
> +		return 0;
> +	}
> +
> +	dev_info(dev, "Found PHY at bus %d, address %d: %04x:%04x\n",
> +		 mdio_bus_idx, phy_addr, phy_id1, phy_id2);
> +
> +	for (int i =3D 0; i < ARRAY_SIZE(microchip_sama5d3_eds_ext_boards); i+=
+) {
> +		const struct microchip_sama5d3_eds_ext_board *board =3D
> +			&microchip_sama5d3_eds_ext_boards[i];
> +
> +		if (board->mdio_bus_idx !=3D mdio_bus_idx)
> +			continue;
> +
> +		if (board->phy_addr =3D=3D phy_addr &&
> +		    board->phy_id1 =3D=3D phy_id1 &&
> +		    board->phy_id2 =3D=3D phy_id2) {
> +			char base_board_name[100] =3D "Microchip SAMA5D3 EDS";
> +
> +			dev_info(dev, "Found extension board: %s\n",
> +				 board->board_name);
> +
> +			snprintf(base_board_name, sizeof(base_board_name),
> +				 "%s with %s",
> +				 base_board_name, board->board_name);
> +			barebox_set_model(base_board_name);
> +
> +			if (board->overlay)
> +				microchip_sama5d3_eds_apply_overly(dev, board);
> +			break;
> +		}
> +	}
> +
> +	return 0;
> +}
> +
> +static int microchip_sama5d3_eds_probe(struct device *dev)
> +{
> +	int ret, i;
> +
> +	for (i =3D 0; i < 2; i++) {
> +		ret =3D microchip_sama5d3_eds_scan_mdio_bus(dev, i);
> +		if (ret)
> +			dev_warn(dev, "Failed to scan mdio%d bus\n", i);
> +	}
> +
> +	return 0;
> +}
> +
> +static const struct of_device_id microchip_sama5d3_eds_of_match[] =3D {
> +	{ .compatible =3D "microchip,sama5d3-eds"},
> +	{ /* sentinel */ },
> +};
> +BAREBOX_DEEP_PROBE_ENABLE(microchip_sama5d3_eds_of_match);
> +
> +static struct driver microchip_sama5d3_eds_board_driver =3D {
> +	.name =3D "board-microchip-sama5d3-eds",
> +	.probe =3D microchip_sama5d3_eds_probe,
> +	.of_compatible =3D DRV_OF_COMPAT(microchip_sama5d3_eds_of_match),
> +};
> +device_platform_driver(microchip_sama5d3_eds_board_driver);
> diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
> index 68585e1e4b..627f6e7afb 100644
> --- a/arch/arm/dts/Makefile
> +++ b/arch/arm/dts/Makefile
> @@ -230,6 +230,8 @@ lwl-$(CONFIG_MACH_VARISCITE_DT8MCUSTOMBOARD_IMX8MP) =
+=3D imx8mp-var-dart-dt8mcusto
>   lwl-$(CONFIG_MACH_TQMA93XX) +=3D imx93-tqma9352-mba93xxca.dtb.o \
>   			       imx93-tqma9352-mba93xxla.dtb.o
>
> +obj-$(CONFIG_MACH_MICROCHIP_SAMA5D3_EDS) +=3D sama5d3_eds_rgmii_phy.dtb=
o.o
> +
>   obj-$(CONFIG_MACH_WOLFVISION_PF5) +=3D rk3568-wolfvision-pf5-io-expand=
er.dtbo.o
>
>   clean-files :=3D *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtb.z
> diff --git a/arch/arm/dts/at91-microchip-sama5d3-eds.dts b/arch/arm/dts/=
at91-microchip-sama5d3-eds.dts
> index d35c8c3c6e..30f86b144d 100644
> --- a/arch/arm/dts/at91-microchip-sama5d3-eds.dts
> +++ b/arch/arm/dts/at91-microchip-sama5d3-eds.dts
> @@ -11,4 +11,31 @@ environment {
>   			file-path =3D "barebox.env";
>   		};
>   	};
> +
> +	aliases {
> +		ethernet0 =3D &macb0;
> +		ethernet1 =3D &macb1;
> +		mdio0 =3D &mdio0;
> +		mdio1 =3D &mdio1;
> +	};
> +};
> +
> +&macb0 {
> +	phy-mode =3D "rgmii-id";
> +	status =3D "okay";
> +
> +	mdio0: mdio {
> +		#address-cells =3D <1>;
> +		#size-cells =3D <0>;
> +	};
> +};
> +
> +&macb1 {
> +	phy-mode =3D "rmii";
> +	status =3D "okay";
> +
> +	mdio1: mdio {
> +		#address-cells =3D <1>;
> +		#size-cells =3D <0>;
> +	};
>   };
> diff --git a/arch/arm/dts/sama5d3_eds_rgmii_phy.dtso b/arch/arm/dts/sama=
5d3_eds_rgmii_phy.dtso
> new file mode 100644
> index 0000000000..5d7e1ee54c
> --- /dev/null
> +++ b/arch/arm/dts/sama5d3_eds_rgmii_phy.dtso
> @@ -0,0 +1,52 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +/*
> + * Device Tree file for SAMA5D3 EDS board
> + *
> + * Copyright (C) 2023 Microchip Technology Inc. and its subsidiaries
> + *
> + * Author: Jerry Ray <jerry.ray@microchip.com>
> + *
> + * Supported extension boards:
> + * - EVB-LAN8841 - https://www.microchip.com/en-us/development-tool/EV1=
9G28A
> + *   Note: Depopulate R43 (remove RXER signal) to allow this board to
> + *         function properly with the SAMA5D3-EDS.
> + * - EVB-VSC8541-EDS - https://www.microchip.com/en-us/development-tool=
/EV35M06A
> + */
> +/dts-v1/;
> +/plugin/;
> +
> +#include "dt-bindings/gpio/gpio.h"
> +#include "dt-bindings/interrupt-controller/irq.h"
> +#include "dt-bindings/pinctrl/at91.h"
> +
> +&macb0 {
> +	phy-mode =3D "rgmii-id";
> +	phy-handle =3D <&rgmii_phy>;
> +	status =3D "okay";
> +
> +	mdio {
> +		#address-cells =3D <1>;
> +		#size-cells =3D <0>;
> +
> +		rgmii_phy: ethernet-phy@3 {
> +			reg =3D <0x3>;
> +			pinctrl-0 =3D <&pinctrl_rgmii_rstn>;
> +			pinctrl-1 =3D <&pinctrl_spi_irqn>;
> +			interrupt-parent =3D <&pioB>;
> +			interrupts =3D <28 IRQ_TYPE_EDGE_FALLING>;
> +			resetb-gpios =3D <&pioD 18 GPIO_ACTIVE_LOW>;
> +			/* LAN8841 - 1us */
> +			/* VSC8541 - 100ns */
> +			/* take one 1ms to be safe */
> +			reset-assert-us =3D <1000>;
> +			/* LAN8841 - 10ms? */
> +			/* VSC8541- 15ms */
> +			reset-deassert-us =3D <15000>;
> +			status =3D "okay";
> +		};
> +	};
> +};
> +
> +&usart0 {
> +	status =3D "disabled";    /* Conflicts with using pioD 18 as GPIO */
> +};
> diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
> index afcea257c3..3cf40463be 100644
> --- a/arch/arm/mach-at91/Kconfig
> +++ b/arch/arm/mach-at91/Kconfig
> @@ -612,6 +612,7 @@ config MACH_MICROCHIP_SAMA5D3_EDS
>   	select OFDEVICE
>   	select MCI_ATMEL_PBL
>   	select COMMON_CLK_OF_PROVIDER
> +	select OF_OVERLAY
>   	help
>   	  Select this if you are using Microchip's SAMA5D3 Ethernet Developme=
nt
>   	  System.


