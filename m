Delivery-date: Tue, 30 Mar 2021 14:07:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lRD9M-0003CI-Mj
	for lore@lore.pengutronix.de; Tue, 30 Mar 2021 14:07:12 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lRD9K-0001l8-L3
	for lore@pengutronix.de; Tue, 30 Mar 2021 14:07:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:Message-ID:Date:
	Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OVSFpf/NvtNAXll0DRaytAo0TeOzmrgNJbqRaGlQmgc=; b=c+rGzx39RpE7dfLAwBcKU+uKn
	k7yp+o3BNIbAIOS4cSV2Yjh8d8Vukkdvk2mW2kGMfcN2ke5rbgakos3tOh0YT91P2K/ZC62asf9fZ
	mRDud6+w3tECBd4MQc5yZbY+A5G/Gdy2ehzcneFWSuUfWTUPk2Zjh/dbVmVDN09YlofUePPWgQP/S
	uAL0s3RpxIJN4stzofZhSKKX0V6uRivj90+5nfEV8hWAP1o8VLDMUu4aakE0ywRRbOoSQaFX+i1Xo
	XOJFKchyDukSrbq3476vAhUXYGwdTNInokbJkrjEhqPEcslOze8Rd6PcBUnMYBmBT6IXAEAIFv5tI
	eF0lQIpkg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lRD7u-003e3H-UE; Tue, 30 Mar 2021 12:05:43 +0000
Received: from mail-oln040092073098.outbound.protection.outlook.com
 ([40.92.73.98] helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lRD7l-003e2F-Nt
 for barebox@lists.infradead.org; Tue, 30 Mar 2021 12:05:36 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JZ/4yyt/CFlbPiKqxTvQ0dC0pIAAQsnHq5kE9JqAS5lIl2ZKiO2xH0aaV3/GJh+rNbj9X+35M6vZVqDs8+EnWhEEH1y1ruNPQoPVr4EJFTaJwEInOX1ClaudDveTxLWPQqndWuBY9GHsSCOHoARYXIPa5sY4x+1f77mjUJv/2uVxUGBKLyWRsHFfhwBaUXYvtTtdR4tkd4W8d2bLbYTuAEqgbOALIH8DFsGlCaXqmRq0HfbWNo2iKFt5/w9O9PSdup/ycWABtJDWBsysI7yzS8vo/seKi78DQgY2eqnLCMyJrLb79XVHsgXNyPz9dpFPaOH5OE1CIC9cnnQYqLC8lg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=89vJ+FYZ6mAnLvbpBe/hZfUkL70ryCJH9mVKlic/TlA=;
 b=CxNEnbor3xSTNogBaTcYFtepjTlkzCCXGOTfdKjnXDLG0zOPTwfKIGppOX1HD2wOfuAElpRIU+XlzryZu/Q6wvtBdPafqkoKWRsbHdobDNRzaW2knF8g3H4oeNgg77lGiKB8y6HJlpJdi7b36AP3idMzdVknt7NyLoUUFhKj+hc6vxr8tiSfiQa4UPffsw9gv9xcWIDL+i4O2xUSK8cM5TbKUGTi28U95b4xCMb/0U8h2lcZdHE6cJKYG4RZTjG0USFerB9PKkZ55D9IkV1ylEMqTP7N0S98F6L/96xCw0UDdGMuELt0pRxNuylXcGlqmYmpofXRPQIlO9YDdV6ujg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=89vJ+FYZ6mAnLvbpBe/hZfUkL70ryCJH9mVKlic/TlA=;
 b=YGNHk9DFhGtQUPLPIe4xYHcacgAnpyxN+151UsQaKxHSruOgK2jpKbuh8Akq+F02wU3DEJ1uYZVHLjtLx5FFjlVQH7IQDChvwppPMVS2YZqJn3uGYjPbfqRv2vgmLMbXrKzH70gic8lbc0jysuzfcw1qbZ8QG8Uq0TS1F8tpct9JNwpZmFle64iNHSujEbJx3d4U90uG13QCbhyCz3vw3qf0AJcO8MWMshXBGsSNb3pDkBFmvOcnVMne3Iu2VA5GsZ2wQwc/l4jHj0KdWLNUbXs9z4/DLfudAacB2Do90TAzM+pknjX7gIEbUot2I5lGEEuGudZvJIHMcHLXin3dow==
Received: from DB3EUR04FT056.eop-eur04.prod.protection.outlook.com
 (2a01:111:e400:7e0c::4f) by
 DB3EUR04HT018.eop-eur04.prod.protection.outlook.com (2a01:111:e400:7e0c::451)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3977.25; Tue, 30 Mar
 2021 12:05:31 +0000
Received: from AM9P192MB0870.EURP192.PROD.OUTLOOK.COM (2a01:111:e400:7e0c::4b)
 by DB3EUR04FT056.mail.protection.outlook.com
 (2a01:111:e400:7e0c::69) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3977.25 via Frontend
 Transport; Tue, 30 Mar 2021 12:05:31 +0000
Received: from AM9P192MB0870.EURP192.PROD.OUTLOOK.COM
 ([fe80::7890:490d:69ae:8127]) by AM9P192MB0870.EURP192.PROD.OUTLOOK.COM
 ([fe80::7890:490d:69ae:8127%4]) with mapi id 15.20.3977.033; Tue, 30 Mar 2021
 12:05:31 +0000
From: Michael Graichen <michael.graichen@hotmail.com>
To: Michael Tretter <m.tretter@pengutronix.de>, Ahmad Fatoum
 <a.fatoum@pengutronix.de>
CC: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
Thread-Topic: [PATCH 1/1] added support for zynq7000-fpga-manager
Thread-Index: AQHXIUiW/dq4+Seq2EihfUO4fc+eWqqUYyGAgAgLAcw=
Date: Tue, 30 Mar 2021 12:05:31 +0000
Message-ID: <AM9P192MB08704EEEF035BA67815E5991AB7D9@AM9P192MB0870.EURP192.PROD.OUTLOOK.COM>
References: <AM9P192MB0870C727E2A97796E63AC256AB629@AM9P192MB0870.EURP192.PROD.OUTLOOK.COM>,
 <20210325084255.GA11014@pengutronix.de>
In-Reply-To: <20210325084255.GA11014@pengutronix.de>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:50506E401D9D8336D191ACC31F39C7C5C6E6F4E37CA8D9ADAA71760D18961149;
 UpperCasedChecksum:527AA17C5B00FB96CF4F4001B63F93719FCB9ADEAA915A21A0CBEADB4C2E4735;
 SizeAsReceived:7015; Count:45
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [hmbfoACsNa51NaRxgFRCOdvt1awbcxsG]
x-ms-publictraffictype: Email
x-incomingheadercount: 45
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 49e8aff0-ba56-4257-8c33-08d8f3741dc0
x-ms-traffictypediagnostic: DB3EUR04HT018:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: V3ZcRNCFiWBkdIEJ21OlgDdGaER2tfWh2GjXDV8wlPUx1k5nT2YMZq1ijqYGJ+eL/y/Y1KdTRCZsm2Qm1GfSS4QsCxrUmFR9e9iKBbVAXNZlSJPmOpJVFDnEMZI81hmpKXtvZ+NEUoEfPtOfPIy4yIpbFXSCfcnbWTjL1K5bhfmn+Dr48V7wrdRHZNmkCGEIAPgrfuu0wv94F9xXJm2Il+LoF471BMiQnyJ6IQcmXHWsg6SBjmdDquqk8CyD+AJl+qXmNlrU/hq5ZOa65t6P88BMV9Cvooehd6qg9HI12IvSF8HfBLvXN/JytoSncylwgV6f4a876JHicEYNK6ZEKvT6+OZgVpRFGHU7FR4UOwOMnQv03Jrk5ooYwdRCS8Uuf9Hg3U69sXidQu23TWIDIo4uwyZP+TnWKj9QqadVnDs=
x-ms-exchange-antispam-messagedata: oxLYX7Cp08uNaVigyu2vfZe5g5G9zFErrw2KC32jkCRjNIYBFoVinrodJR2+Fq00ZkKp4I7KBjP9oqR3+orswQfaOPwbkGTuJicj/IRbXiixszRHiwxnSIVg1IPoduoJL1KBqjr4A6uC6P0b46s6cQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: DB3EUR04FT056.eop-eur04.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 49e8aff0-ba56-4257-8c33-08d8f3741dc0
X-MS-Exchange-CrossTenant-originalarrivaltime: 30 Mar 2021 12:05:31.2445 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3EUR04HT018
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210330_130533_976194_EA34BBA2 
X-CRM114-Status: GOOD (  35.68  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,FORGED_HOTMAIL_RCVD2,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.2
Subject: AW: [PATCH 1/1] added support for zynq7000-fpga-manager
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hey, =


Ahmad, thanks for your reply. I'll will work your points out for the next p=
atch. =


> I think, it would be fine to use only "zynq" instead of zynqmp for the
> firmware loader/fpga manager. (I didn't compare the Zynq7000 and ZynqMP l=
ow
> level interfaces for programming the FPGA, yet, but I guess that programm=
ing
> the FPGA on the ZynqMP in EL3 instead of EL2/EL1 is actually the same as =
on
> Zynq7000.) I am also ok with treating ZynqMP as a second class citizen in=
 the
> driver. =


As I compared https://www.xilinx.com/support/documentation/user_guides/ug58=
5-Zynq-7000-TRM.pdf page 211ff and https://www.xilinx.com/support/documenta=
tion/user_guides/ug1085-zynq-ultrascale-trm.pdf page 261ff the programming =
of the PCAP seem to be similar, but PCAP is embedded in CSU/PMU on ZynqMP, =
which looks much more complex then DEVC on Zynq7000. But I don't know how m=
uch of CSUs functionality is acctually needed to programm the FPGA.

Is the CSU within ZynqMP used for something other than programming the firm=
ware in barebox?

Best regard,
Michael =


________________________________________
Von: Michael Tretter <m.tretter@pengutronix.de>
Gesendet: Donnerstag, 25. M=E4rz 2021 09:42
An: Michael Graichen
Cc: barebox@lists.infradead.org
Betreff: Re: [PATCH 1/1] added support for zynq7000-fpga-manager

On Thu, 25 Mar 2021 07:53:33 +0000, Michael Graichen wrote:
> i have reworked the ZynqMP FPGA manager to program the FPGA within the Zy=
nq7000.

Great, thanks.

>
> Michael Tretter, would you be so kind an test this on your ZynqMP board?
> Since I have no access to a ZynqMP chip I have only tested compiling.

I will test the patch and I already have a few comments down below.

>
> The name "ZynqMP" may now be missleading for the firmwareload tool, becau=
se
> I intended to use it on both, ZynqMP and Zynq7000.  I would be happy to g=
et
> read your feedback.

I think, it would be fine to use only "zynq" instead of zynqmp for the
firmware loader/fpga manager. (I didn't compare the Zynq7000 and ZynqMP low
level interfaces for programming the FPGA, yet, but I guess that programming
the FPGA on the ZynqMP in EL3 instead of EL2/EL1 is actually the same as on
Zynq7000.) I am also ok with treating ZynqMP as a second class citizen in t=
he
driver.

>
> Best Regards
> Michael
>
>
> Signed-off-by: Michael Graichen <michael.graichen@hotmail.com>
> ---
>  arch/arm/configs/zynq_defconfig               |   2 +
>  arch/arm/mach-zynq/Makefile                   |   2 +-
>  arch/arm/mach-zynq/firmware-zynq.c            | 124 ++++++++++++++++++
>  .../mach-zynq/include/mach/firmware-zynq.h    |  85 ++++++++++++
>  .../include/mach/firmware-zynqmp.h            |  46 +++++++
>  drivers/firmware/Kconfig                      |   7 +
>  drivers/firmware/Makefile                     |   1 +
>  drivers/firmware/zynqmp-fpga.c                | 115 ++++++++--------
>  8 files changed, 324 insertions(+), 58 deletions(-)
>  create mode 100644 arch/arm/mach-zynq/firmware-zynq.c
>  create mode 100644 arch/arm/mach-zynq/include/mach/firmware-zynq.h
>
> diff --git a/arch/arm/configs/zynq_defconfig b/arch/arm/configs/zynq_defc=
onfig
> index a16c57d5c..82ea899e2 100644
> --- a/arch/arm/configs/zynq_defconfig
> +++ b/arch/arm/configs/zynq_defconfig
> @@ -36,6 +36,7 @@ CONFIG_CMD_MENU_MANAGEMENT=3Dy
>  CONFIG_CMD_READLINE=3Dy
>  CONFIG_CMD_TIMEOUT=3Dy
>  CONFIG_CMD_CLK=3Dy
> +CONFIG_CMD_FIRMWARELOAD=3Dy
>  CONFIG_CMD_OFTREE=3Dy
>  CONFIG_CMD_TIME=3Dy
>  CONFIG_NET=3Dy
> @@ -43,5 +44,6 @@ CONFIG_DRIVER_SERIAL_CADENCE=3Dy
>  CONFIG_DRIVER_NET_MACB=3Dy
>  # CONFIG_SPI is not set
>  # CONFIG_PINCTRL is not set
> +CONFIG_FIRMWARE_ZYNQ7000_FPGA=3Dy
>  CONFIG_FS_TFTP=3Dy
>  CONFIG_DIGEST=3Dy
> diff --git a/arch/arm/mach-zynq/Makefile b/arch/arm/mach-zynq/Makefile
> index 06c2ce996..2484abe5c 100644
> --- a/arch/arm/mach-zynq/Makefile
> +++ b/arch/arm/mach-zynq/Makefile
> @@ -1,2 +1,2 @@
> -obj-y +=3D zynq.o bootm-zynqimg.o
> +obj-y +=3D bootm-zynqimg.o firmware-zynq.o zynq.o
>  lwl-y +=3D cpu_init.o
> diff --git a/arch/arm/mach-zynq/firmware-zynq.c b/arch/arm/mach-zynq/firm=
ware-zynq.c
> new file mode 100644
> index 000000000..307b22fe5
> --- /dev/null
> +++ b/arch/arm/mach-zynq/firmware-zynq.c
> @@ -0,0 +1,124 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + */
> +#include <common.h>
> +#include <init.h>
> +#include <linux/iopoll.h>
> +#include <mach/firmware-zynq.h>
> +
> +/*
> + * zynq_devc_fpga_load - Perform the fpga load
> + * @mgr:     FPGA-Manager
> + * @address: Address to write to
> + * @size:    PL bitstream size
> + * @flags:   Flags - unused
> + *
> + * This function provides access to PCAP to transfer
> + * the required bitstream into PL.
> + *
> + * Return:   Returns status, either success or error+reason
> + */
> +static int zynq_devc_fpga_load(struct fpgamgr *mgr, u64 address,
> +                             u32 size, u32 flags)
> +{
> +     unsigned long reg;
> +
> +     if (!address || !size)
> +             return -EINVAL;
> +
> +     /*
> +      * The Programming Seqenze, see ug585 (v.12.2) Juny 1, 2018 Chapter
> +      * 6.4.2 on page 211 Configure the PL via PCAP Bridge Example for
> +      * detailed information to this Sequenze
> +      */
> +
> +     /* Enable the PCAP bridge and select PCAP for reconfiguration */
> +     reg =3D readl(mgr->regs + CTRL_OFFSET);
> +     reg |=3D ( CTRL_PCAP_PR_MASK | CTRL_PCAP_MODE_MASK );
> +     writel(reg, mgr->regs + CTRL_OFFSET);
> +
> +     /* Clear the Interrupts */
> +     writel(0xffffffff, mgr->regs + INT_STS_OFFSET);
> +
> +     /* Initialize the PL */
> +     reg =3D readl(mgr->regs + CTRL_OFFSET);
> +     reg |=3D CTRL_PCFG_PROG_B_MASK;
> +     writel(reg, mgr->regs + CTRL_OFFSET);
> +
> +     reg =3D readl(mgr->regs + CTRL_OFFSET);
> +     reg &=3D ~CTRL_PCFG_PROG_B_MASK;
> +     writel(reg, mgr->regs + CTRL_OFFSET);
> +
> +     readl_poll_timeout(mgr->regs + STATUS_OFFSET, reg,
> +                     !(reg & STATUS_PCFG_INIT_MASK), 100 * USEC_PER_MSEC=
);
> +
> +     reg =3D readl(mgr->regs + CTRL_OFFSET);
> +     reg |=3D CTRL_PCFG_PROG_B_MASK;
> +     writel(reg, mgr->regs + CTRL_OFFSET);
> +
> +     /* Clear the Interrupts */
> +     writel(0xffffffff, mgr->regs + INT_STS_OFFSET);
> +
> +     /* Ensure that the PL is ready for programming */
> +     readl_poll_timeout(mgr->regs + STATUS_OFFSET, reg,
> +                     (reg & STATUS_PCFG_INIT_MASK), 100 * USEC_PER_MSEC);
> +
> +     /* Check that there is room in the Command Queue */
> +     readl_poll_timeout(mgr->regs + STATUS_OFFSET, reg,
> +                     !(reg & STATUS_DMA_CMD_Q_F_MASK), 100 * USEC_PER_MS=
EC);
> +
> +     /* Disable the PCAP loopback */
> +     reg =3D readl(mgr->regs + MCTRL_OFFSET);
> +     reg &=3D ~MCTRL_INT_PCAP_LPBK_MASK;
> +     writel(reg, mgr->regs + MCTRL_OFFSET);
> +
> +     /* Program the PCAP_2x clock divider */
> +     reg =3D readl(mgr->regs + CTRL_OFFSET);
> +     reg &=3D ~CTRL_PCAP_RATE_EN_MASK;
> +     writel(reg, mgr->regs + CTRL_OFFSET);
> +
> +     /* Source Address: Location of bitstream */
> +     writel(address, mgr->regs + DMA_SRC_ADDR_OFFSET);
> +
> +     /* Destination Address: 0xFFFF_FFFF */
> +     writel(0xffffffff, mgr->regs + DMA_DST_ADDR_OFFSET);
> +
> +     /* Source Length: Total number of 32-bit words in the bitstream */
> +     writel((size >> 2), mgr->regs + DMA_SRC_LEN_OFFSET);
> +
> +     /* Destination Length: Total number of 32-bit words in the bitstrea=
m */
> +     writel((size >> 2), mgr->regs + DMA_DEST_LEN_OFFSET);
> +
> +     /* Wait for the DMA transfer to be done */
> +     readl_poll_timeout(mgr->regs + INT_STS_OFFSET, reg,
> +                     (reg & INT_STS_D_P_DONE_MASK), 100 * USEC_PER_MSEC);
> +
> +     /* Check for errors */
> +     if(reg & INT_STS_ERROR_FLAGS_MASK) {
> +             printf("interrupt status register (0x%04lx)\n", reg);
> +             return -EIO;
> +     }
> +
> +     /* Wait for the DMA transfer to be done */
> +     readl_poll_timeout(mgr->regs + INT_STS_OFFSET, reg,
> +                     (reg & INT_STS_DONE_INT_MASK), 100 * USEC_PER_MSEC);
> +
> +     printf("FPGA config done\n");
> +
> +     return 0;
> +}
> +
> +static const struct zynq_devc_ops devc_ops =3D {
> +     .fpga_load =3D zynq_devc_fpga_load,
> +};
> +
> +/**
> + * zynq_get_devc_ops - Get devc ops functions
> + *
> + * Return: Pointer of devc_ops structure
> + */
> +const struct zynq_devc_ops *zynq_get_devc_ops(void)
> +{
> +     return &devc_ops;
> +}
> +EXPORT_SYMBOL_GPL(zynq_get_devc_ops);

Don't try to hide the loading code behind function pointers in machine
specific code. Just put the zynq_devc_fpga_load function straight into
drivers/firmware/zynqmp-fpga.c.

For the ZynqMP there is this abstraction, because the ZyqnMP has another
driver that is used to instruct another firmware (TF-A) to program the FPGA.
As this isn't the case for the Zynq7000, I don't see a reason to make things
more complicated than they are.

> diff --git a/arch/arm/mach-zynq/include/mach/firmware-zynq.h b/arch/arm/m=
ach-zynq/include/mach/firmware-zynq.h
> new file mode 100644
> index 000000000..217b1e9b2
> --- /dev/null
> +++ b/arch/arm/mach-zynq/include/mach/firmware-zynq.h
> @@ -0,0 +1,85 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * Xilinx Zynq Firmware layer
> + *
> + */
> +
> +#ifndef FIRMWARE_ZYNQ_H_
> +#define FIRMWARE_ZYNQ_H_
> +
> +#include <firmware.h>
> +
> +#define CTRL_OFFSET                          0x00
> +#define LOCK_OFFSET                          0x04
> +#define INT_STS_OFFSET                               0x0c
> +#define INT_MASK_OFFSET                      0x10
> +#define STATUS_OFFSET                                0x14
> +#define DMA_SRC_ADDR_OFFSET                  0x18
> +#define DMA_DST_ADDR_OFFSET                  0x1c
> +#define DMA_SRC_LEN_OFFSET                   0x20
> +#define DMA_DEST_LEN_OFFSET                  0x24
> +#define UNLOCK_OFFSET                                0x34
> +#define MCTRL_OFFSET                         0x80
> +
> +#define CTRL_PCFG_PROG_B_MASK                        BIT(30)
> +#define CTRL_PCAP_PR_MASK                    BIT(27)
> +#define CTRL_PCAP_MODE_MASK                  BIT(26)
> +#define CTRL_PCAP_RATE_EN_MASK               BIT(25)
> +
> +#define STATUS_DMA_CMD_Q_F_MASK              BIT(31)
> +#define STATUS_PCFG_INIT_MASK                        BIT(4)
> +
> +#define INT_STS_D_P_DONE_MASK                        BIT(12)
> +#define INT_STS_DONE_INT_MASK                        BIT(2)
> +#define INT_STS_ERROR_FLAGS_MASK             0x00f4c860
> +
> +#define MCTRL_INT_PCAP_LPBK_MASK             BIT(4)
> +
> +/*
> + * Xilinx 7-Series Bitstream Composition:
> + *
> + * Bitstream can be provided with an optinal header (`struct bs_header`).
> + * The true bitstream starts with the binary-header composed of 13 words:
> + *
> + *  0: 0xFFFFFFFF (Dummy pad word)
> + *     ...
> + *  7: 0xFFFFFFFF (Dummy pad word)
> + *  8: 0x000000BB (Bus width auto detect word 1)
> + *  9: 0x11220044 (Bus width auto detect word 2)
> + * 10: 0xFFFFFFFF (Dummy pad word)
> + * 11: 0xFFFFFFFF (Dummy pad word)
> + * 12: 0xAA995566 (Sync word)
> + *
> + * See Xilinx UG470 (v1.13.1) August 20 2018, Chapter 5 "Configuration
> + * Details - Bitstream Composition" for further details.
> + */
> +
> +#define DUMMY_WORD                           0xFFFFFFFF
> +#define BUS_WIDTH_AUTO_DETECT1_OFFSET                8
> +#define BUS_WIDTH_AUTO_DETECT1               0x000000BB
> +#define BUS_WIDTH_AUTO_DETECT2_OFFSET                9
> +#define BUS_WIDTH_AUTO_DETECT2               0x11220044
> +#define SYNC_WORD_OFFSET                     12
> +#define SYNC_WORD                            0xAA995566
> +#define BIN_HEADER_LENGTH                    13
> +
> +#define DEVC_UNLOCK_CODE                     0x757bdf0d
> +
> +struct fpgamgr {
> +     struct firmware_handler fh;
> +     struct device_d dev;
> +     void __iomem *regs;
> +     const struct zynq_devc_ops *devc_ops;
> +     int programmed;
> +     char *buf;
> +     size_t size;
> +     u32 features;
> +};
> +
> +struct zynq_devc_ops {
> +     int (*fpga_load)(struct fpgamgr *mgr, u64 address, u32 size, u32 fl=
ags);
> +};
> +
> +const struct zynq_devc_ops *zynq_get_devc_ops(void);
> +
> +#endif /* FIRMWARE_ZYNQ_H_ */
> diff --git a/arch/arm/mach-zynqmp/include/mach/firmware-zynqmp.h b/arch/a=
rm/mach-zynqmp/include/mach/firmware-zynqmp.h
> index a04482237..1764a2db3 100644
> --- a/arch/arm/mach-zynqmp/include/mach/firmware-zynqmp.h
> +++ b/arch/arm/mach-zynqmp/include/mach/firmware-zynqmp.h
> @@ -15,6 +15,8 @@
>  #ifndef FIRMWARE_ZYNQMP_H_
>  #define FIRMWARE_ZYNQMP_H_
>
> +#include <firmware.h>
> +
>  #define PAYLOAD_ARG_CNT                      4
>
>  #define ZYNQMP_PM_VERSION(MAJOR, MINOR)      ((MAJOR << 16) | MINOR)
> @@ -27,6 +29,50 @@
>
>  #define ZYNQMP_PCAP_STATUS_FPGA_DONE BIT(3)
>
> +#define ZYNQMP_PM_FEATURE_BYTE_ORDER_IRREL   BIT(0)
> +#define ZYNQMP_PM_FEATURE_SIZE_NOT_NEEDED    BIT(1)
> +
> +#define ZYNQMP_PM_VERSION_1_0_FEATURES       0
> +#define ZYNQMP_PM_VERSION_1_1_FEATURES       (ZYNQMP_PM_FEATURE_BYTE_ORD=
ER_IRREL | \
> +                                      ZYNQMP_PM_FEATURE_SIZE_NOT_NEEDED)
> +
> +/*
> + * Xilinx KU040 Bitstream Composition:
> + *
> + * Bitstream can be provided with an optinal header (`struct bs_header`).
> + * The true bitstream starts with the binary-header composed of 21 words:
> + *
> + *  0: 0xFFFFFFFF (Dummy pad word)
> + *     ...
> + * 15: 0xFFFFFFFF (Dummy pad word)
> + * 16: 0x000000BB (Bus width auto detect word 1)
> + * 17: 0x11220044 (Bus width auto detect word 2)
> + * 18: 0xFFFFFFFF (Dummy pad word)
> + * 19: 0xFFFFFFFF (Dummy pad word)
> + * 20: 0xAA995566 (Sync word)
> + *
> + * See Xilinx UG570 (v1.11) September 30 2019, Chapter 9 "Configuration
> + * Details - Bitstream Composition" for further details.
> + */
> +#define DUMMY_WORD                   0xFFFFFFFF
> +#define BUS_WIDTH_AUTO_DETECT1_OFFSET        16
> +#define BUS_WIDTH_AUTO_DETECT1               0x000000BB
> +#define BUS_WIDTH_AUTO_DETECT2_OFFSET        17
> +#define BUS_WIDTH_AUTO_DETECT2               0x11220044
> +#define SYNC_WORD_OFFSET             20
> +#define SYNC_WORD                    0xAA995566
> +#define BIN_HEADER_LENGTH            21
> +
> +struct fpgamgr {
> +     struct firmware_handler fh;
> +     struct device_d dev;
> +     const struct zynqmp_eemi_ops *eemi_ops;
> +     int programmed;
> +     char *buf;
> +     size_t size;
> +     u32 features;
> +};
> +
>  enum pm_ioctl_id {
>       IOCTL_SET_PLL_FRAC_MODE =3D 8,
>       IOCTL_GET_PLL_FRAC_MODE,
> diff --git a/drivers/firmware/Kconfig b/drivers/firmware/Kconfig
> index 90b4c0ab9..a00d682a9 100644
> --- a/drivers/firmware/Kconfig
> +++ b/drivers/firmware/Kconfig
> @@ -15,6 +15,13 @@ config FIRMWARE_ALTERA_SOCFPGA
>       depends on ARCH_SOCFPGA
>       select FIRMWARE
>
> +config FIRMWARE_ZYNQ7000_FPGA
> +     bool "Xilinx Zynq 7000 FPGA loader"
> +     depends on ARCH_ZYNQ
> +     select FIRMWARE
> +     help
> +       Load a bitstream to the PL of Zynq
> +
>  config FIRMWARE_ZYNQMP_FPGA
>       bool "Xilinx ZynqMP FPGA loader"
>       depends on ARCH_ZYNQMP
> diff --git a/drivers/firmware/Makefile b/drivers/firmware/Makefile
> index b162b08b0..a7c6344bf 100644
> --- a/drivers/firmware/Makefile
> +++ b/drivers/firmware/Makefile
> @@ -1,3 +1,4 @@
>  obj-$(CONFIG_FIRMWARE_ALTERA_SERIAL) +=3D altera_serial.o
>  obj-$(CONFIG_FIRMWARE_ALTERA_SOCFPGA) +=3D socfpga.o
> +obj-$(CONFIG_FIRMWARE_ZYNQ7000_FPGA) +=3D zynqmp-fpga.o
>  obj-$(CONFIG_FIRMWARE_ZYNQMP_FPGA) +=3D zynqmp-fpga.o
> diff --git a/drivers/firmware/zynqmp-fpga.c b/drivers/firmware/zynqmp-fpg=
a.c
> index ab70d9993..4ce835e18 100644
> --- a/drivers/firmware/zynqmp-fpga.c
> +++ b/drivers/firmware/zynqmp-fpga.c
> @@ -15,57 +15,19 @@
>  #include <common.h>
>  #include <init.h>
>  #include <dma.h>
> +#ifdef CONFIG_FIRMWARE_ZYNQMP_FPGA
>  #include <mach/firmware-zynqmp.h>
> -
> -#define ZYNQMP_PM_FEATURE_BYTE_ORDER_IRREL   BIT(0)
> -#define ZYNQMP_PM_FEATURE_SIZE_NOT_NEEDED    BIT(1)
> -
> -#define ZYNQMP_PM_VERSION_1_0_FEATURES       0
> -#define ZYNQMP_PM_VERSION_1_1_FEATURES       (ZYNQMP_PM_FEATURE_BYTE_ORD=
ER_IRREL | \
> -                                      ZYNQMP_PM_FEATURE_SIZE_NOT_NEEDED)
> -
> -/*
> - * Xilinx KU040 Bitstream Composition:
> - *
> - * Bitstream can be provided with an optinal header (`struct bs_header`).
> - * The true bitstream starts with the binary-header composed of 21 words:
> - *
> - *  0: 0xFFFFFFFF (Dummy pad word)
> - *     ...
> - * 15: 0xFFFFFFFF (Dummy pad word)
> - * 16: 0x000000BB (Bus width auto detect word 1)
> - * 17: 0x11220044 (Bus width auto detect word 2)
> - * 18: 0xFFFFFFFF (Dummy pad word)
> - * 19: 0xFFFFFFFF (Dummy pad word)
> - * 20: 0xAA995566 (Sync word)
> - *
> - * See Xilinx UG570 (v1.11) September 30 2019, Chapter 9 "Configuration
> - * Details - Bitstream Composition" for further details.
> - */
> -#define DUMMY_WORD                   0xFFFFFFFF
> -#define BUS_WIDTH_AUTO_DETECT1_OFFSET        16
> -#define BUS_WIDTH_AUTO_DETECT1               0x000000BB
> -#define BUS_WIDTH_AUTO_DETECT2_OFFSET        17
> -#define BUS_WIDTH_AUTO_DETECT2               0x11220044
> -#define SYNC_WORD_OFFSET             20
> -#define SYNC_WORD                    0xAA995566
> -#define BIN_HEADER_LENGTH            21
> +#endif
> +#ifdef CONFIG_FIRMWARE_ZYNQ7000_FPGA
> +#include <mach/firmware-zynq.h>
> +#include <mach/zynq7000-regs.h>
> +#endif

Is it possible to change the is_bin_header_valid() function to identify the
(slightly) different bitstream header formats at runtime? I would like to k=
eep
the header specification in the driver instead of moving it to header files
and making it configuration dependent.

>
>  enum xilinx_byte_order {
>       XILINX_BYTE_ORDER_BIT,
>       XILINX_BYTE_ORDER_BIN,
>  };
>
> -struct fpgamgr {
> -     struct firmware_handler fh;
> -     struct device_d dev;
> -     const struct zynqmp_eemi_ops *eemi_ops;
> -     int programmed;
> -     char *buf;
> -     size_t size;
> -     u32 features;
> -};
> -
>  struct bs_header {
>       __be16 length;
>       u8 padding[9];
> @@ -234,6 +196,13 @@ static int fpgamgr_program_finish(struct firmware_ha=
ndler *fh)
>               goto err_free;
>       }
>
> +     buf_aligned =3D dma_alloc_coherent(body_length, DMA_ADDRESS_BROKEN);
> +     if (!buf_aligned) {
> +             status =3D -ENOBUFS;
> +             goto err_free;
> +     }
> +
> +#ifdef CONFIG_FIRMWARE_ZYNQMP_FPGA

Avoid the #ifdefs in the driver. Check for the compatible or add an identif=
ier
to struct fpgamgr to decide if the driver can access the register directly =
or
needs to use the ZynqMP firmware calls.

If necessary, stub functions in the headers if some configuration is not set
and return an error.

Michael

>       if (!(mgr->features & ZYNQMP_PM_FEATURE_SIZE_NOT_NEEDED)) {
>               buf_size =3D dma_alloc_coherent(sizeof(*buf_size),
>               DMA_ADDRESS_BROKEN);
> @@ -244,12 +213,6 @@ static int fpgamgr_program_finish(struct firmware_ha=
ndler *fh)
>               *buf_size =3D body_length;
>       }
>
> -     buf_aligned =3D dma_alloc_coherent(body_length, DMA_ADDRESS_BROKEN);
> -     if (!buf_aligned) {
> -             status =3D -ENOBUFS;
> -             goto err_free;
> -     }
> -
>       if (!(mgr->features & ZYNQMP_PM_FEATURE_BYTE_ORDER_IRREL) &&
>           byte_order =3D=3D XILINX_BYTE_ORDER_BIN)
>               copy_words_swapped((u32 *)buf_aligned, body,
> @@ -271,7 +234,32 @@ static int fpgamgr_program_finish(struct firmware_ha=
ndler *fh)
>               status =3D mgr->eemi_ops->fpga_load(addr, (u32)(body_length=
),
>                                                 flags);
>       }
> +#endif
> +#ifdef CONFIG_FIRMWARE_ZYNQ7000_FPGA
> +     /* UG585 (v1.12.2) July 1, 2018 Chapter 6.4.3
> +      * In all modes, the DMA transactions must be 64-byte aligned to pr=
event
> +      * accidently crossing a 4K byte boundary.
> +      */
> +     if(byte_order =3D=3D XILINX_BYTE_ORDER_BIN)
> +             copy_words_swapped((u32 *)buf_aligned, body, body_length / =
sizeof(u32));
> +     else
> +             memcpy((u32 *)buf_aligned, body, body_length);
> +
> +     addr =3D (u32)buf_aligned;
> +
> +     writel(0x0000DF0D, ZYNQ_SLCR_UNLOCK);
> +     writel(0x0000000f, ZYNQ_SLCR_BASE + 0x240); // assert FPGA resets
> +
> +     writel(0x00000000, ZYNQ_SLCR_BASE + 0x900); // disable levelshifter
> +     writel(0x0000000a, ZYNQ_SLCR_BASE + 0x900); // enable levelshifter =
PS-PL
> +
> +     status =3D mgr->devc_ops->fpga_load(mgr, addr, (u32)(body_length), =
0);
>
> +     writel(0x0000000f, ZYNQ_SLCR_BASE + 0x900); // enable all levelshif=
ter
> +     writel(0x00000000, ZYNQ_SLCR_BASE + 0x240); // deassert FPGA resets
> +
> +     writel(0x0000767B, ZYNQ_SLCR_LOCK);
> +#endif
>       if (status < 0)
>               dev_err(&mgr->dev, "unable to load fpga\n");
>
> @@ -313,8 +301,10 @@ static int fpgamgr_program_start(struct firmware_han=
dler *fh)
>       return 0;
>  }
>
> +
>  static int programmed_get(struct param_d *p, void *priv)
>  {
> +#ifdef CONFIG_FIRMWARE_ZYNQMP_FPGA
>       struct fpgamgr *mgr =3D priv;
>       u32 status =3D 0x00;
>       int ret =3D 0;
> @@ -324,7 +314,7 @@ static int programmed_get(struct param_d *p, void *pr=
iv)
>               return ret;
>
>       mgr->programmed =3D !!(status & ZYNQMP_PCAP_STATUS_FPGA_DONE);
> -
> +#endif
>       return 0;
>  }
>
> @@ -336,6 +326,7 @@ static int zynqmp_fpga_probe(struct device_d *dev)
>       const char *model =3D NULL;
>       struct param_d *p;
>       u32 api_version;
> +     struct resource *iores;
>       int ret;
>
>       mgr =3D xzalloc(sizeof(*mgr));
> @@ -354,6 +345,7 @@ static int zynqmp_fpga_probe(struct device_d *dev)
>               fh->model =3D xstrdup(model);
>       fh->dev =3D dev;
>
> +#ifdef CONFIG_FIRMWARE_ZYNQMP_FPGA
>       mgr->eemi_ops =3D zynqmp_pm_get_eemi_ops();
>
>       ret =3D mgr->eemi_ops->get_api_version(&api_version);
> @@ -361,11 +353,21 @@ static int zynqmp_fpga_probe(struct device_d *dev)
>               dev_err(&mgr->dev, "could not get API version\n");
>               goto out;
>       }
> -
> -     mgr->features =3D 0;
> -
>       if (api_version >=3D ZYNQMP_PM_VERSION(1, 1))
>               mgr->features |=3D ZYNQMP_PM_VERSION_1_1_FEATURES;
> +#endif
> +#ifdef CONFIG_FIRMWARE_ZYNQ7000_FPGA
> +     iores =3D dev_request_mem_resource(dev, 0);
> +     if (IS_ERR(iores)) {
> +             ret =3D PTR_ERR(iores);
> +             goto out;
> +     }
> +     mgr->regs =3D IOMEM(iores->start);
> +     mgr->devc_ops =3D zynq_get_devc_ops();
> +     /* Unlock DevC in case BootROM did not do it */
> +     writel(DEVC_UNLOCK_CODE, mgr->regs + UNLOCK_OFFSET);
> +#endif
> +     mgr->features =3D 0;
>
>       dev_dbg(dev, "Registering ZynqMP FPGA programmer\n");
>       mgr->dev.id =3D DEVICE_ID_SINGLE;
> @@ -400,9 +402,8 @@ out:
>  }
>
>  static struct of_device_id zynqmpp_fpga_id_table[] =3D {
> -     {
> -             .compatible =3D "xlnx,zynqmp-pcap-fpga",
> -     },
> +     { .compatible =3D "xlnx,zynqmp-pcap-fpga" },
> +     { .compatible =3D "xlnx,zynq-devcfg-1.0" },
>       { /* sentinel */ }
>  };
>
> --
> 2.25.1
>
>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

