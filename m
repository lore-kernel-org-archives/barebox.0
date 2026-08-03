Delivery-date: Mon, 03 Aug 2026 14:54:45 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wqsBp-005sXE-0J
	for lore@lore.pengutronix.de;
	Mon, 03 Aug 2026 14:54:45 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 0D4352006CF
	for <lore@pengutronix.de>; Mon, 03 Aug 2026 14:54:45 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=JPCp+j0F;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Content-Transfer-Encoding:Content-Type:In-Reply-To:To:Subject:From:Reply-To:
	MIME-Version:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:List-Owner;
	bh=JtV/CqhvrYUc9UQEPz9DFHr5YTMmA/+VoJI5PxNPbDk=; b=JPCp+j0FPXtfvnVC+k71KemRYu
	zxRhcTyoZkScNjOX2B6cmepzkTW03D/pPkaOvG50A4WoDh0FNQoRDnk2a/HGqgP5mrBursxKtiFdY
	DxmJ2DnDBvWRfrVQR7kdk27gbApOj1vUaYf9OcgM717YFlB2+L14UJIZqiYYeNpHk9dgUYW6l1wzf
	DRsf5S3iYjBZ13APYmT02+89hkYPmxqf7o0NWLx7OfY5NKEhnGFfSumunzDYUW7dbFRvBuqr9xPoT
	lzcyA2FNubLRdmGRh09bb5hSQlk0OfLCiNz/3BZDQhCH9IwFi+7dc9NqzNTUexs9GT+t+jplAeBg7
	1e0iBasg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqsAL-0000000H5BE-3V8n;
	Mon, 03 Aug 2026 12:53:13 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqsAH-0000000H5AM-43xx
	for barebox@lists.infradead.org;
	Mon, 03 Aug 2026 12:53:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 342342004EF;
	Mon, 03 Aug 2026 14:53:05 +0200 (CEST)
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1wqsAD-002hVB-0M;
	Mon, 03 Aug 2026 14:53:05 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1wqsAC-00000007q3I-490Q;
	Mon, 03 Aug 2026 14:53:04 +0200
From: "Sascha Hauer" <s.hauer@pengutronix.de>
Subject: Re: [PATCH v3 01/15] ARM: mvebu: add Netgear RN102 support
To: "Luca Lauro via B4 Relay" <devnull+famlauro93l.gmail.com@kernel.org>
In-Reply-To: <20260802-rn102-rn104-series-v3-1-f7685a279fb5@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 03 Aug 2026 12:53:04 +0000
Message-Id: <E1wqsAC-00000007q3I-490Q@pty.whiteo.stw.pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260803_055310_164476_6F1CB8B0 
X-CRM114-Status: GOOD (  31.39  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 2026-08-02 15:16, Luca Lauro via B4 Relay wrote: > From:
    Luca Lauro <famlauro93l@gmail.com> > > This adds full support for the Netgear
    ReadyNAS 102, including: > > - board driver matching on "netge [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
Cc: =?utf-8?b?b3BlbiBsaXN0OkJB?= =?utf-8?b?UkVCT1g=?= <barebox@lists.infradead.org>, Luca Lauro <famlauro93l@gmail.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Spamd-Result: default: False [-3.01 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MISSING_MIME_VERSION(2.00)[];
	CC_EXCESS_BASE64(1.50)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:devnull+famlauro93l.gmail.com@kernel.org,m:barebox@lists.infradead.org,m:famlauro93l@gmail.com,m:devnull@kernel.org,s:lore@pengutronix.de];
	DMARC_NA(0.00)[pengutronix.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FREEMAIL_CC(0.00)[lists.infradead.org,gmail.com];
	TAGGED_RCPT(0.00)[famlauro93l.gmail.com];
	DBL_PROHIBIT(0.00)[0.0.0.0:email];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCPT_COUNT_THREE(0.00)[3];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 0D4352006CF
X-Stat-Signature: hqwzqftrkrgd8d6y9xrtuk6au3hoq7z1

On 2026-08-02 15:16, Luca Lauro via B4 Relay wrote:
> From: Luca Lauro <famlauro93l@gmail.com>
>=20
> This adds full support for the Netgear ReadyNAS 102, including:
>=20
>  - board driver matching on "netgear,rn102"
>  - lowlevel initialization
>  - barebox overlay with environment, state backend and
> 	NAND partition layout
>  - Kconfig entry
>  - image support
>=20
> Signed-off-by: Luca Lauro <famlauro93l@gmail.com>
> ---
>  arch/arm/boards/Makefile                 |   1 +
>  arch/arm/boards/netgear-rn102/Makefile   |   4 +
>  arch/arm/boards/netgear-rn102/board.c    | 243 +++++++++++++++++++++++++=
++++++
>  arch/arm/boards/netgear-rn102/lowlevel.c |  58 ++++++++
>  arch/arm/dts/Makefile                    |   1 +
>  arch/arm/dts/armada-370-rn102-bb.dts     |  82 +++++++++++
>  arch/arm/mach-mvebu/Kconfig              |   4 +
>  images/Makefile.mvebu                    |  10 ++
>  8 files changed, 403 insertions(+)
>=20
> diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
> index dd2f2c324e..aca1b45a81 100644
> --- a/arch/arm/boards/Makefile
> +++ b/arch/arm/boards/Makefile
> @@ -64,6 +64,7 @@ obj-$(CONFIG_MACH_MARVELL_ARMADA_XP_DB)		+=3D marvell-a=
rmada-xp-db/
>  obj-$(CONFIG_MACH_MX23EVK)			+=3D freescale-mx23-evk/
>  obj-$(CONFIG_MACH_MX28EVK)			+=3D freescale-mx28-evk/
>  obj-$(CONFIG_MACH_MYIRTECH_X335X)		+=3D myirtech-x335x/
> +obj-$(CONFIG_MACH_NETGEAR_RN102)		+=3D netgear-rn102/
>  obj-$(CONFIG_MACH_NETGEAR_RN104)		+=3D netgear-rn104/
>  obj-$(CONFIG_MACH_NETGEAR_RN2120)		+=3D netgear-rn2120/
>  obj-$(CONFIG_MACH_NVIDIA_BEAVER)		+=3D nvidia-beaver/
> diff --git a/arch/arm/boards/netgear-rn102/Makefile b/arch/arm/boards/net=
gear-rn102/Makefile
> new file mode 100644
> index 0000000000..da63d2625f
> --- /dev/null
> +++ b/arch/arm/boards/netgear-rn102/Makefile
> @@ -0,0 +1,4 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +
> +obj-y +=3D board.o
> +lwl-y +=3D lowlevel.o
> diff --git a/arch/arm/boards/netgear-rn102/board.c b/arch/arm/boards/netg=
ear-rn102/board.c
> new file mode 100644
> index 0000000000..dba3d11518
> --- /dev/null
> +++ b/arch/arm/boards/netgear-rn102/board.c
> @@ -0,0 +1,243 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +
> +#include <common.h>
> +#include <init.h>
> +#include <gpio.h>
> +#include <driver.h>
> +#include <of.h>
> +#include <linux/device.h>
> +#include <linux/mbus.h>
> +#include <mach/mvebu/armada-370-xp-regs.h>
> +#include <bbu.h>
> +
> +/*
> + *  Early GPIO0 MMIO
> + *
> + * GPIO driver arrives too late for the disks to be
> + * ready in time for AHCI driver probe.

barebox supports deep probe which means the devices are made available
once needed or requested. Provided your dts carries the
barebox,deep-probe property you can do this:

of_device_ensure_probed_by_alias("gpio0");
of_device_ensure_probed_by_alias("gpio1");
of_device_ensure_probed_by_alias("gpio2");

>From that on the GPIO driver should be probed and you can use it.

It shouldn't be necessary to duplicate the GPIO driver here.

> +/*
> + * RN102 board driver
> + *
> + * Preferred pattern: board-specific code as a platform driver
> + * matching on the root DT node ("netgear,rn102").
> + */
> +static int rn102_probe(struct device *dev)
> +{
> +	/* CFU configuration */
> +	writel(0xC6, 0xf1020228);
> +
> +	setup_usb0();
> +	setup_bays();
> +	init_disks();
> +
> +	/* Barebox Update handlers */
> +	bbu_register_std_file_update("bootloader", 0,
> +					 "/dev/nand0.bootloader",
> +					 filetype_kwbimage_v1);
> +
> +	bbu_register_std_file_update("kernel", 0,
> +					 "/dev/nand0.kernel",
> +					 filetype_arm_zimage);
> +
> +	bbu_register_std_file_update("minirootfs", 0,
> +					 "/dev/nand0.minirootfs",
> +					 filetype_gzip);

That is a creative use of barebox update handlers. They are designed for
updating barebox itself, not arbitrary other components.

I must think about this.

> +
> +	return 0;
> +}
> +
> +static const struct of_device_id rn102_of_match[] =3D {
> +	{ .compatible =3D "netgear,rn102" },
> +	{ }
> +};
> +MODULE_DEVICE_TABLE(of, rn102_of_match);
> +
> +static struct driver rn102_driver =3D {
> +	.name =3D "rn102",
> +	.probe =3D rn102_probe,
> +	.of_match_table =3D rn102_of_match,
> +};
> +
> +device_platform_driver(rn102_driver);
> diff --git a/arch/arm/boards/netgear-rn102/lowlevel.c b/arch/arm/boards/n=
etgear-rn102/lowlevel.c
> new file mode 100644
> index 0000000000..c1680cee82
> --- /dev/null
> +++ b/arch/arm/boards/netgear-rn102/lowlevel.c
> @@ -0,0 +1,58 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +
> +#include <common.h>
> +#include <asm/barebox-arm.h>
> +#include <mach/mvebu/lowlevel.h>
> +#include <mach/mvebu/barebox-arm-head.h>
> +#include <mach/mvebu/armada-370-xp-regs.h>
> +
> +extern char __dtb_armada_370_rn102_bb_start[];
> +
> +#define INTERNAL_REG_BASE_ADDR	0x20080
> +
> +static __always_inline void mvebu_remap_registers(void)
> +{
> +	void __iomem *base =3D mvebu_get_initial_int_reg_base();
> +
> +	writel(MVEBU_REMAP_INT_REG_BASE, base + INTERNAL_REG_BASE_ADDR);
> +}
> +
> +/*
> + * NOTE:
> + * armada_370_xp_barebox_entry() cannot be used here because the
> + * upstream SDRAM size detection for Armada 370-XP misinterprets
> + * the DDR_SIZE_CSn registers on this board and reports an incorrect
> + * memory size (256MB instead of 512MB on RN102).
> + *
> + * Until the generic detection code is fixed, we compute the SDRAM
> + * size manually using the DDR_SIZE_CSn values.
> + */
> +static unsigned long armada_370_xp_memory_find(void)
> +{
> +	unsigned long mem_size =3D 0;
> +
> +	for (int cs =3D 0; cs < 4; cs++) {
> +		u32 ctrl =3D readl(ARMADA_370_XP_SDRAM_BASE + DDR_SIZE_CSn(cs));
> +
> +		/* Skip non-enabled CS */
> +		if ((ctrl & DDR_SIZE_ENABLED) !=3D DDR_SIZE_ENABLED)
> +			continue;
> +
> +		mem_size +=3D (ctrl | ~DDR_SIZE_MASK) + 1;
> +	}
> +
> +	return mem_size;
> +}
> +
> +ENTRY_FUNCTION_MVEBU(start_netgear_rn102, r0, r1, r2)
> +{
> +	void *fdt;
> +
> +	arm_cpu_lowlevel_init();
> +
> +	fdt =3D __dtb_armada_370_rn102_bb_start +
> +		get_runtime_offset();
> +
> +	mvebu_remap_registers();
> +	barebox_arm_entry(0, armada_370_xp_memory_find(), fdt);
> +}
> diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
> index a84e09e388..5d1b21b615 100644
> --- a/arch/arm/dts/Makefile
> +++ b/arch/arm/dts/Makefile
> @@ -51,6 +51,7 @@ lwl-$(CONFIG_MACH_MARVELL_ARMADA_XP_GP) +=3D armada-xp-=
gp-bb.dtb.o
>  lwl-$(CONFIG_MACH_MARVELL_ARMADA_XP_DB) +=3D armada-xp-db-bb.dtb.o
>  lwl-$(CONFIG_MACH_MX28EVK) +=3D imx28-evk.dtb.o
>  lwl-$(CONFIG_MACH_MYIRTECH_X335X) +=3D am335x-myirtech-myd.dtb.o am335x-=
myirtech-myd-mlo.dtb.o
> +lwl-$(CONFIG_MACH_NETGEAR_RN102) +=3D armada-370-rn102-bb.dtb.o
>  lwl-$(CONFIG_MACH_NETGEAR_RN104) +=3D armada-370-rn104-bb.dtb.o
>  lwl-$(CONFIG_MACH_NETGEAR_RN2120) +=3D armada-xp-rn2120-bb.dtb.o
>  lwl-$(CONFIG_MACH_NITROGEN6) +=3D imx6q-nitrogen6x.dtb.o imx6dl-nitrogen=
6x.dtb.o imx6qp-nitrogen6_max.dtb.o
> diff --git a/arch/arm/dts/armada-370-rn102-bb.dts b/arch/arm/dts/armada-3=
70-rn102-bb.dts
> new file mode 100644
> index 0000000000..47064cb11a
> --- /dev/null
> +++ b/arch/arm/dts/armada-370-rn102-bb.dts
> @@ -0,0 +1,82 @@
> +/*
> + * Barebox specific DT overlay for Netgear ReadyNAS 102
> + */
> +
> +#include "arm/marvell/armada-370-netgear-rn102.dts"
> +
> +/ {
> +	chosen {
> +		stdout-path =3D &uart0;
> +	};
> +
> +	aliases {
> +		state =3D &state_nand;
> +	};
> +
> +	/* configure nand partition to store barebox environment */
> +	environment {
> +		compatible =3D "barebox,environment";
> +		device-path =3D &nand_controller, "partname:environment";
> +	};
> +
> +	/* configure nand partition to store barebox-state backend */
> +	state_nand: nand_state_memory {
> +		#address-cells =3D <1>;
> +		#size-cells =3D <1>;
> +		compatible =3D "barebox,state";
> +		magic =3D <0xab67421f>;
> +		backend-type =3D "raw";
> +		backend =3D <&backend_state_nand>;
> +		backend-storage-type =3D "circular";
> +		backend-stridesize =3D <32>;
> +
> +		variable@0 {
> +			reg =3D <0x0 0x1>;
> +			type =3D "uint8";
> +			default =3D <0x1>;
> +		};
> +	};
> +};
> +
> +&nand_controller {
> +	compatible =3D "marvell,armada370-nand", "marvell,pxa3xx-nand";
> +	status =3D "okay";
> +
> +	nand-rb =3D <0>;
> +	marvell,nand-keep-config;
> +	nand-on-flash-bbt;
> +
> +	nand-ecc-strength =3D <4>;
> +	nand-ecc-step-size =3D <512>;

Please drop all the properties that are already in the upstram dts.

Sascha

--
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


