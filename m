Delivery-date: Wed, 28 Apr 2021 10:18:00 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lbfOR-0007qF-UX
	for lore@lore.pengutronix.de; Wed, 28 Apr 2021 10:18:00 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lbfOP-0008Py-Pb
	for lore@pengutronix.de; Wed, 28 Apr 2021 10:17:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:Message-ID:Date:
	Subject:CC:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=OiReTDLz2PkfiX4xWmAvEaRPFngFBrs8m73khAJOI8I=; b=SJUzVmTGO3CvH9jzKUKYXs5Bu
	JzJi/N7JSKd51FPlhCPgMNKo5827kB0bmGsLv5Zqmq0aTTxzo4gSGfgzoUhGNDLQOjtfQuY9voWBa
	H3gGjHarheTkRercOD3tnREcBm9xFpKJVn9aAEeirujmdOdBmrUHUIvHT32wA9LPph6xhv6cGFrBC
	GuTjQXd+fONPgzvAbPUyzr3Cpp8WrxWZUqs/kgSE4ZpYz0mxAOlpoyJooFitZFENrHYNWkCju8CBP
	OmkABXE/5Wyy6Rsib/JqGSbBNSM8SWIAJHZ/o/NsN8HYmZdoHIKv8G8Kp8zbGO1gqIWB7OUQ418nf
	yzF/NIFpA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lbfN9-0036Mq-HX; Wed, 28 Apr 2021 08:16:39 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbfN2-0036Ma-Kr
 for barebox@desiato.infradead.org; Wed, 28 Apr 2021 08:16:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=MIME-Version:
 Content-Transfer-Encoding:Content-Type:In-Reply-To:References:Message-ID:Date
 :Subject:CC:To:From:Sender:Reply-To:Content-ID:Content-Description;
 bh=MatXPh+/aYLypFwwGjhNcMvB4VJFvdQ+3Wed3R0BD0E=; b=zkOqnkzZmEpO1PNDeAKUxR8OAn
 oIbvWsUspunxM3Gsz+LGjXJRVPcelgMy3g0zgqVcXrXn3vcQHaKJewCvj1OS7hmvEtwyf4Fgc6QJE
 iqkErsPPGsEkwsnyz3dxP88rnC3mCYKarnUHXCo+rfYeD70gbgmm48+/JqYTXw9PAZna/99mGrVLG
 9UyHOPp//r0NbO05SbWbii8XSM5m2vwzJVexE4XxuqWGZTB4oj4AOOnAhyUhwIgQWOhyKJOO0Gcav
 0OT6cdEUxfBUP+dpAPfFoAhmKLqulacB2TzUgBBoTAnG0m7dfxwGef6SjM2b9hPeTsMhKE8tdIlZx
 ABbi3xPg==;
Received: from mail-oln040092064033.outbound.protection.outlook.com
 ([40.92.64.33] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbfMx-00HHLL-Df
 for barebox@lists.infradead.org; Wed, 28 Apr 2021 08:16:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YMkiPufSsfNqtYY5CNeZTpYv3dWsJ46e3+NTDZhehoG5e8cI43BE/NwhoqNEFE8ICSt0UqlBwVRjgQsriN1hCMxqArrdX2N3pe+e69mQEiIyDnkN46LLQn5Pe7Z+Ipk2WhIaxZpbhQmGlzBXfc1ZcjygTDsIx1I6APrdAgtKw+PHoD98V3KaeFsyCgbsVgpl0k5tQuTxrndqs5vgwiSAKq2SivMZLVqWWaoW6rYN+AEkaWziCHwbbqSoXW18mTQU4iz10yrxWkm7leWRGX/yPfUHbze8sACGdhBtFrWCNlxHawgShADh+/4ABppugwVqArbRjkaedKOGX8ewMEAzOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MatXPh+/aYLypFwwGjhNcMvB4VJFvdQ+3Wed3R0BD0E=;
 b=FRNZ4Gu0HmE2ZMdjeEb9aSUkYPA75XXdZRllTy9nW1QU42Tnh+dn517z47Vdiyfb5WhlZhsziqo5KPEO1dmB3kcxD4AJ0/d8XOk9UIAkUNE3dzzzcWQvpfYzrz+A+VzuZciwsS6Pdynuu+VYarkFdX+BHjcO6ZLY51yYf+zLwDw56AJVKKtzkO+OGLrFcrevCCLM/t5W4dkCx0Q7hL2ZZKvY+ojDPyV8bV0mZdorSICqr2BFpU9SHZfikdVgQur80Ulzbt6DNUel5XID00IxsiQd+VCsS4Qq+wJwQvi/PJ3N96VFhFoEmIxBsS0NZW3U6A33EQ8KKuMlj/k6DIXPJg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=MatXPh+/aYLypFwwGjhNcMvB4VJFvdQ+3Wed3R0BD0E=;
 b=inH9CZD+irVhBsWQlhftACg8Wq8Wx2hLnkCdEnemVKLm6np03NzegpU0efjB9872RBIwNt4o+SdFJNKg9cz/gWTE2Oa8NwH/881XvLDX2lPKSpUidS/L7Gi1MWF1ji8Xd1miNMk2u69eknklguT5lZ8CRewmxYwxWemZ9UjINN6M+9259K/ijj/ZlvXrxIbR24mb8X+k8XopLpEWSOf5EyU9bw3M0SwiIaNNiKjuHSKUqLmiWd9CNGu0bnmJgJTgjhjR4D5nbo9h9phps49fLbAjSh3hxtWpPCMNPu9WFymNm2TyVHDJ6/I5oj+CXc8vBRvXgnV9hZDueEsmoEFhqA==
Received: from VE1EUR01FT061.eop-EUR01.prod.protection.outlook.com
 (2a01:111:e400:7e19::4d) by
 VE1EUR01HT059.eop-EUR01.prod.protection.outlook.com (2a01:111:e400:7e19::296)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4065.21; Wed, 28 Apr
 2021 08:16:22 +0000
Received: from AM9P192MB0870.EURP192.PROD.OUTLOOK.COM (2a01:111:e400:7e19::4e)
 by VE1EUR01FT061.mail.protection.outlook.com
 (2a01:111:e400:7e19::337) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4065.21 via Frontend
 Transport; Wed, 28 Apr 2021 08:16:22 +0000
Received: from AM9P192MB0870.EURP192.PROD.OUTLOOK.COM
 ([fe80::1dab:3ff6:d6f2:38d2]) by AM9P192MB0870.EURP192.PROD.OUTLOOK.COM
 ([fe80::1dab:3ff6:d6f2:38d2%3]) with mapi id 15.20.4065.027; Wed, 28 Apr 2021
 08:16:22 +0000
From: Michael Graichen <michael.graichen@hotmail.com>
To: Michael Tretter <m.tretter@pengutronix.de>
CC: Ahmad Fatoum <a.fatoum@pengutronix.de>, "barebox@lists.infradead.org"
 <barebox@lists.infradead.org>
Thread-Topic: [PATCH 1/1] added support for zynq7000-fpga-manager
Thread-Index: AQHXIUiW/dq4+Seq2EihfUO4fc+eWqqUYyGAgAgLAcyADmbdAIAe5Aa8
Date: Wed, 28 Apr 2021 08:16:22 +0000
Message-ID: <AM9P192MB08703E8CB9C6C5A0E9037CFEAB409@AM9P192MB0870.EURP192.PROD.OUTLOOK.COM>
References: <AM9P192MB0870C727E2A97796E63AC256AB629@AM9P192MB0870.EURP192.PROD.OUTLOOK.COM>
 <20210325084255.GA11014@pengutronix.de>
 <AM9P192MB08704EEEF035BA67815E5991AB7D9@AM9P192MB0870.EURP192.PROD.OUTLOOK.COM>,
 <20210408152810.GB13457@pengutronix.de>
In-Reply-To: <20210408152810.GB13457@pengutronix.de>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:A1086C9C04E7C590B9C89565903612A076768D3342C8D11C91979A893F76EAE9;
 UpperCasedChecksum:EA1BBDCF976AC907A812E34E3E445F9970F26923496E02EC9140E904DC88C44E;
 SizeAsReceived:7174; Count:45
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [fgDyPlSOwhx5iF/rHYIpW/de7fR3Rbg7]
x-ms-publictraffictype: Email
x-incomingheadercount: 45
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 67fa292f-5bd7-4eaf-89f7-08d90a1de891
x-ms-traffictypediagnostic: VE1EUR01HT059:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Nm1ik8kxrgKytRR+4jl61m7Z/qTlDolDQZCrgZwYHcR0lApqXM8cs++kYA1Zv5i8GOWqea0Q6l3xUnNhKzpQRL6HOLGEDJ9PG9hMzzXN9AesQ8WSe5suj3UgRxuhNVIPjhbiYatM7+Dk/ug2DZSFLtd+A13JESLqn++EtcO2IuZ7R8norVz+cxfDe0+ik+yeWw/huekJyAlpDIzJawh+a862WOTYOV5N/Q2y8i/31P10+LDOlg2Mr/K11DuFb2A7/SahOE5d/Hj44O0Xbyv2oLt8h/lF7qZex/gHOFlfGQ0PeOSSCNTylEIl1gQx7JX/6KK89yztYiYdp2+TPI5RgR2DhK2pD7QvxaY2izdLbiyX8846X+ACCjXUeYlNR/z6IeeOmXYwbEvW3HUwe23rrjQIzfL2xXhifGHgQn/iRug=
x-ms-exchange-antispam-messagedata: qlXb/p11DffDW/bRA/O7iVhLcdld7XrFoUJw1fOZgZbQZwHY+YZ2NhMpnuO+ZgjKaGIzOvIaHAXZHqFxmhvNjqAANRTUSJJWC3oIdFHEtUx6NxI8aV/+EeOjoZ2CwQURSVXFYAaqCAkPeu89joFjsQ==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: VE1EUR01FT061.eop-EUR01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 67fa292f-5bd7-4eaf-89f7-08d90a1de891
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Apr 2021 08:16:22.1050 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1EUR01HT059
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210428_011627_720170_21BF058F 
X-CRM114-Status: GOOD (  36.50  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.5 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,FORGED_HOTMAIL_RCVD2,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE autolearn=no autolearn_force=no version=3.4.2
Subject: AW: [PATCH 1/1] added support for zynq7000-fpga-manager
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Michael,

Thanks, for the explanation.

I have attached two patches below.
0001-added-support-for-zynq7000-fpga-manager.patch adds the fpga-manager for Zynq-7000 with some changes mentioned by Ahmed. 
0002-renamed-zynqmp_fpga_manager-to-zynq_fpga_manager.patch renames it


> On Tue, 30 Mar 2021 12:05:31 +0000, Michael Graichen wrote:
> > I think, it would be fine to use only "zynq" instead of zynqmp for the
> > firmware loader/fpga manager. (I didn't compare the Zynq7000 and ZynqMP low
> > level interfaces for programming the FPGA, yet, but I guess that programming
> > the FPGA on the ZynqMP in EL3 instead of EL2/EL1 is actually the same as on
> > Zynq7000.) I am also ok with treating ZynqMP as a second class citizen in the
> > driver.
>
> As I compared
> https://www.xilinx.com/support/documentation/user_guides/ug585-Zynq-7000-TRM.pdf
> page 211ff and
> https://www.xilinx.com/support/documentation/user_guides/ug1085-zynq-ultrascale-trm.pdf
> page 261ff the programming of the PCAP seem to be similar, but PCAP is
> embedded in CSU/PMU on ZynqMP, which looks much more complex then DEVC on
> Zynq7000. But I don't know how much of CSUs functionality is acctually
> needed to programm the FPGA.

The PCAP behave similar and have similar registers and bits, but the register
layouts are completely different. It seems that for programming the FPGA on
the ZynqMP, one would at least have to configure the internal stream switch
and use CSU DMA engine for the image transfer. For encrypted bitstreams, the
AES engine in the CSU has to be used as well.

>
> Is the CSU within ZynqMP used for something other than programming the
> firmware in barebox?

At the moment, Barebox doesn't directly use the CSU. Barebox is not even
allowed to access the CSU register. It uses SMCs via TF-A to instruct the
PMU-FW to program the FPGA. The PMU-FW then talks to the CSU for actually
programming the FPGA.

If Barebox would run as first stage bootloader, it might use the CSU to read
the PS version or might use some of the authentication/encryption features of
the CSU, but this is currently not the case.

Watch out for the overloaded term "firmware". The firmware manager in the
zynqmp-fpga driver in Barebox is able to _load_ a "firmware", in this case the
FPGA bitstream. The firmware-zynqmp driver is a driver to _talk to_ the PMU
firmware, which is a firmware that is already running on the system.

Michael

>From f97da4115d5a66adcf293ef2d1f3de51c10729d7 Mon Sep 17 00:00:00 2001
From: Michael Graichen <michael.graichen@hotmail.com>
Date: Wed, 28 Apr 2021 08:46:02 +0200
Subject: [PATCH 1/2] added support for zynq7000-fpga-manager

Signed-off-by: Michael Graichen <michael.graichen@hotmail.com>
---
 arch/arm/configs/zynq_defconfig               |   2 +
 arch/arm/mach-zynq/Makefile                   |   2 +-
 arch/arm/mach-zynq/firmware-zynq.c            | 145 ++++++++++++++++++
 .../mach-zynq/include/mach/firmware-zynq.h    |  85 ++++++++++
 .../include/mach/firmware-zynqmp.h            |  46 ++++++
 drivers/firmware/Kconfig                      |   7 +
 drivers/firmware/Makefile                     |   1 +
 drivers/firmware/zynqmp-fpga.c                | 124 ++++++++-------
 8 files changed, 352 insertions(+), 60 deletions(-)
 create mode 100644 arch/arm/mach-zynq/firmware-zynq.c
 create mode 100644 arch/arm/mach-zynq/include/mach/firmware-zynq.h

diff --git a/arch/arm/configs/zynq_defconfig b/arch/arm/configs/zynq_defconfig
index a16c57d5c..82ea899e2 100644
--- a/arch/arm/configs/zynq_defconfig
+++ b/arch/arm/configs/zynq_defconfig
@@ -36,6 +36,7 @@ CONFIG_CMD_MENU_MANAGEMENT=y
 CONFIG_CMD_READLINE=y
 CONFIG_CMD_TIMEOUT=y
 CONFIG_CMD_CLK=y
+CONFIG_CMD_FIRMWARELOAD=y
 CONFIG_CMD_OFTREE=y
 CONFIG_CMD_TIME=y
 CONFIG_NET=y
@@ -43,5 +44,6 @@ CONFIG_DRIVER_SERIAL_CADENCE=y
 CONFIG_DRIVER_NET_MACB=y
 # CONFIG_SPI is not set
 # CONFIG_PINCTRL is not set
+CONFIG_FIRMWARE_ZYNQ7000_FPGA=y
 CONFIG_FS_TFTP=y
 CONFIG_DIGEST=y
diff --git a/arch/arm/mach-zynq/Makefile b/arch/arm/mach-zynq/Makefile
index 06c2ce996..2484abe5c 100644
--- a/arch/arm/mach-zynq/Makefile
+++ b/arch/arm/mach-zynq/Makefile
@@ -1,2 +1,2 @@
-obj-y += zynq.o bootm-zynqimg.o
+obj-y += bootm-zynqimg.o firmware-zynq.o zynq.o
 lwl-y += cpu_init.o
diff --git a/arch/arm/mach-zynq/firmware-zynq.c b/arch/arm/mach-zynq/firmware-zynq.c
new file mode 100644
index 000000000..947e83a89
--- /dev/null
+++ b/arch/arm/mach-zynq/firmware-zynq.c
@@ -0,0 +1,145 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ */
+#include <common.h>
+#include <init.h>
+#include <linux/iopoll.h>
+#include <mach/firmware-zynq.h>
+
+/*
+ * zynq_devc_fpga_load - Perform the fpga load
+ * @mgr:	FPGA-Manager
+ * @address:	Address to write to
+ * @size:	PL bitstream size
+ * @flags:	Flags - unused
+ *
+ * This function provides access to PCAP to transfer
+ * the required bitstream into PL.
+ *
+ * Return:	Returns status, either success or error+reason
+ */
+static int zynq_devc_fpga_load(struct fpgamgr *mgr, u64 address,
+				u32 size, u32 flags)
+{
+	unsigned long reg;
+	int ret;
+
+	if (!address || !size)
+		return -EINVAL;
+
+	/*
+	 * The Programming Seqenze, see ug585 (v.12.2) Juny 1, 2018 Chapter
+	 * 6.4.2 on page 211 Configure the PL via PCAP Bridge Example for
+	 * detailed information to this Sequenze
+	 */
+
+	/* Enable the PCAP bridge and select PCAP for reconfiguration */
+	reg = readl(mgr->regs + CTRL_OFFSET);
+	reg |= ( CTRL_PCAP_PR_MASK | CTRL_PCAP_MODE_MASK );
+	writel(reg, mgr->regs + CTRL_OFFSET);
+
+	/* Clear the interrupts */
+	writel(0xffffffff, mgr->regs + INT_STS_OFFSET);
+
+	/* Initialize the PL */
+	reg = readl(mgr->regs + CTRL_OFFSET);
+	reg |= CTRL_PCFG_PROG_B_MASK;
+	writel(reg, mgr->regs + CTRL_OFFSET);
+
+	reg = readl(mgr->regs + CTRL_OFFSET);
+	reg &= ~CTRL_PCFG_PROG_B_MASK;
+	writel(reg, mgr->regs + CTRL_OFFSET);
+
+	ret = readl_poll_timeout(mgr->regs + STATUS_OFFSET, reg,
+			!(reg & STATUS_PCFG_INIT_MASK), 100 * USEC_PER_MSEC);
+	if (ret < 0) {
+		dev_err(&mgr->dev, "initialisation timout");
+		return ret;
+	}
+
+	reg = readl(mgr->regs + CTRL_OFFSET);
+	reg |= CTRL_PCFG_PROG_B_MASK;
+	writel(reg, mgr->regs + CTRL_OFFSET);
+
+	/* Clear the Interrupts */
+	writel(0xffffffff, mgr->regs + INT_STS_OFFSET);
+
+	/* Ensure that the PL is ready for programming */
+	ret = readl_poll_timeout(mgr->regs + STATUS_OFFSET, reg,
+			(reg & STATUS_PCFG_INIT_MASK), 100 * USEC_PER_MSEC);
+	if (ret < 0) {
+		dev_err(&mgr->dev, "timeout waiting for PL");
+		return ret;
+	}
+
+	/* Check that there is room in the command queue */
+	ret = readl_poll_timeout(mgr->regs + STATUS_OFFSET, reg,
+			!(reg & STATUS_DMA_CMD_Q_F_MASK), 100 * USEC_PER_MSEC);
+	if (ret < 0) {
+		dev_err(&mgr->dev, "not enough space in DMA queue");
+		return ret;
+	}
+
+	/* Disable the PCAP loopback */
+	reg = readl(mgr->regs + MCTRL_OFFSET);
+	reg &= ~MCTRL_INT_PCAP_LPBK_MASK;
+	writel(reg, mgr->regs + MCTRL_OFFSET);
+
+	/* Program the PCAP_2x clock divider */
+	reg = readl(mgr->regs + CTRL_OFFSET);
+	reg &= ~CTRL_PCAP_RATE_EN_MASK;
+	writel(reg, mgr->regs + CTRL_OFFSET);
+
+	/* Source Address: Location of bitstream */
+	writel(address, mgr->regs + DMA_SRC_ADDR_OFFSET);
+
+	/* Destination Address: 0xFFFF_FFFF */
+	writel(0xffffffff, mgr->regs + DMA_DST_ADDR_OFFSET);
+
+	/* Source Length: Total number of 32-bit words in the bitstream */
+	writel((size >> 2), mgr->regs + DMA_SRC_LEN_OFFSET);
+
+	/* Destination Length: Total number of 32-bit words in the bitstream */
+	writel((size >> 2), mgr->regs + DMA_DEST_LEN_OFFSET);
+
+	/* Wait for the DMA transfer to be done */
+	ret = readl_poll_timeout(mgr->regs + INT_STS_OFFSET, reg,
+			(reg & INT_STS_D_P_DONE_MASK), 100 * USEC_PER_MSEC);
+	if (ret < 0) {
+		dev_err(&mgr->dev, "PCAP/DMA transfer timeout");
+		return ret;
+	}
+
+	/* Check for errors */
+	if (reg & INT_STS_ERROR_FLAGS_MASK) {
+		dev_err(&mgr->dev, "interrupt status register (0x%04lx)\n", reg);
+		return -EIO;
+	}
+
+	/* Wait for the DMA transfer to be done and PL is in user mode */
+	ret = readl_poll_timeout(mgr->regs + INT_STS_OFFSET, reg,
+			(reg & INT_STS_DONE_INT_MASK), 100 * USEC_PER_MSEC);
+	if (ret < 0) {
+		dev_err(&mgr->dev, "PL programming timeout");
+		return ret;
+	}
+
+	dev_info(&mgr->dev, "FPGA config done\n");
+
+	return 0;
+}
+
+static const struct zynq_devc_ops devc_ops = {
+	.fpga_load = zynq_devc_fpga_load,
+};
+
+/**
+ * zynq_get_devc_ops - Get devc ops functions
+ *
+ * Return: Pointer of devc_ops structure
+ */
+const struct zynq_devc_ops *zynq_get_devc_ops(void)
+{
+	return &devc_ops;
+}
+EXPORT_SYMBOL_GPL(zynq_get_devc_ops);
diff --git a/arch/arm/mach-zynq/include/mach/firmware-zynq.h b/arch/arm/mach-zynq/include/mach/firmware-zynq.h
new file mode 100644
index 000000000..217b1e9b2
--- /dev/null
+++ b/arch/arm/mach-zynq/include/mach/firmware-zynq.h
@@ -0,0 +1,85 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ * Xilinx Zynq Firmware layer
+ *
+ */
+
+#ifndef FIRMWARE_ZYNQ_H_
+#define FIRMWARE_ZYNQ_H_
+
+#include <firmware.h>
+
+#define CTRL_OFFSET				0x00
+#define LOCK_OFFSET				0x04
+#define INT_STS_OFFSET				0x0c
+#define INT_MASK_OFFSET			0x10
+#define STATUS_OFFSET				0x14
+#define DMA_SRC_ADDR_OFFSET			0x18
+#define DMA_DST_ADDR_OFFSET			0x1c
+#define DMA_SRC_LEN_OFFSET			0x20
+#define DMA_DEST_LEN_OFFSET			0x24
+#define UNLOCK_OFFSET				0x34
+#define MCTRL_OFFSET				0x80
+
+#define CTRL_PCFG_PROG_B_MASK			BIT(30)
+#define CTRL_PCAP_PR_MASK			BIT(27)
+#define CTRL_PCAP_MODE_MASK			BIT(26)
+#define CTRL_PCAP_RATE_EN_MASK		BIT(25)
+
+#define STATUS_DMA_CMD_Q_F_MASK		BIT(31)
+#define STATUS_PCFG_INIT_MASK			BIT(4)
+
+#define INT_STS_D_P_DONE_MASK			BIT(12)
+#define INT_STS_DONE_INT_MASK			BIT(2)
+#define INT_STS_ERROR_FLAGS_MASK		0x00f4c860
+
+#define MCTRL_INT_PCAP_LPBK_MASK		BIT(4)
+
+/*
+ * Xilinx 7-Series Bitstream Composition:
+ *
+ * Bitstream can be provided with an optinal header (`struct bs_header`).
+ * The true bitstream starts with the binary-header composed of 13 words:
+ *
+ *  0: 0xFFFFFFFF (Dummy pad word)
+ *     ...
+ *  7: 0xFFFFFFFF (Dummy pad word)
+ *  8: 0x000000BB (Bus width auto detect word 1)
+ *  9: 0x11220044 (Bus width auto detect word 2)
+ * 10: 0xFFFFFFFF (Dummy pad word)
+ * 11: 0xFFFFFFFF (Dummy pad word)
+ * 12: 0xAA995566 (Sync word)
+ *
+ * See Xilinx UG470 (v1.13.1) August 20 2018, Chapter 5 "Configuration
+ * Details - Bitstream Composition" for further details.
+ */
+
+#define DUMMY_WORD				0xFFFFFFFF
+#define BUS_WIDTH_AUTO_DETECT1_OFFSET		8
+#define BUS_WIDTH_AUTO_DETECT1		0x000000BB
+#define BUS_WIDTH_AUTO_DETECT2_OFFSET		9
+#define BUS_WIDTH_AUTO_DETECT2		0x11220044
+#define SYNC_WORD_OFFSET			12
+#define SYNC_WORD				0xAA995566
+#define BIN_HEADER_LENGTH			13
+
+#define DEVC_UNLOCK_CODE			0x757bdf0d
+
+struct fpgamgr {
+	struct firmware_handler fh;
+	struct device_d dev;
+	void __iomem *regs;
+	const struct zynq_devc_ops *devc_ops;
+	int programmed;
+	char *buf;
+	size_t size;
+	u32 features;
+};
+
+struct zynq_devc_ops {
+	int (*fpga_load)(struct fpgamgr *mgr, u64 address, u32 size, u32 flags);
+};
+
+const struct zynq_devc_ops *zynq_get_devc_ops(void);
+
+#endif /* FIRMWARE_ZYNQ_H_ */
diff --git a/arch/arm/mach-zynqmp/include/mach/firmware-zynqmp.h b/arch/arm/mach-zynqmp/include/mach/firmware-zynqmp.h
index a04482237..1764a2db3 100644
--- a/arch/arm/mach-zynqmp/include/mach/firmware-zynqmp.h
+++ b/arch/arm/mach-zynqmp/include/mach/firmware-zynqmp.h
@@ -15,6 +15,8 @@
 #ifndef FIRMWARE_ZYNQMP_H_
 #define FIRMWARE_ZYNQMP_H_
 
+#include <firmware.h>
+
 #define PAYLOAD_ARG_CNT			4
 
 #define ZYNQMP_PM_VERSION(MAJOR, MINOR)	((MAJOR << 16) | MINOR)
@@ -27,6 +29,50 @@
 
 #define ZYNQMP_PCAP_STATUS_FPGA_DONE	BIT(3)
 
+#define ZYNQMP_PM_FEATURE_BYTE_ORDER_IRREL	BIT(0)
+#define ZYNQMP_PM_FEATURE_SIZE_NOT_NEEDED	BIT(1)
+
+#define ZYNQMP_PM_VERSION_1_0_FEATURES	0
+#define ZYNQMP_PM_VERSION_1_1_FEATURES	(ZYNQMP_PM_FEATURE_BYTE_ORDER_IRREL | \
+					 ZYNQMP_PM_FEATURE_SIZE_NOT_NEEDED)
+
+/*
+ * Xilinx KU040 Bitstream Composition:
+ *
+ * Bitstream can be provided with an optinal header (`struct bs_header`).
+ * The true bitstream starts with the binary-header composed of 21 words:
+ *
+ *  0: 0xFFFFFFFF (Dummy pad word)
+ *     ...
+ * 15: 0xFFFFFFFF (Dummy pad word)
+ * 16: 0x000000BB (Bus width auto detect word 1)
+ * 17: 0x11220044 (Bus width auto detect word 2)
+ * 18: 0xFFFFFFFF (Dummy pad word)
+ * 19: 0xFFFFFFFF (Dummy pad word)
+ * 20: 0xAA995566 (Sync word)
+ *
+ * See Xilinx UG570 (v1.11) September 30 2019, Chapter 9 "Configuration
+ * Details - Bitstream Composition" for further details.
+ */
+#define DUMMY_WORD			0xFFFFFFFF
+#define BUS_WIDTH_AUTO_DETECT1_OFFSET	16
+#define BUS_WIDTH_AUTO_DETECT1		0x000000BB
+#define BUS_WIDTH_AUTO_DETECT2_OFFSET	17
+#define BUS_WIDTH_AUTO_DETECT2		0x11220044
+#define SYNC_WORD_OFFSET		20
+#define SYNC_WORD			0xAA995566
+#define BIN_HEADER_LENGTH		21
+
+struct fpgamgr {
+	struct firmware_handler fh;
+	struct device_d dev;
+	const struct zynqmp_eemi_ops *eemi_ops;
+	int programmed;
+	char *buf;
+	size_t size;
+	u32 features;
+};
+
 enum pm_ioctl_id {
 	IOCTL_SET_PLL_FRAC_MODE = 8,
 	IOCTL_GET_PLL_FRAC_MODE,
diff --git a/drivers/firmware/Kconfig b/drivers/firmware/Kconfig
index 90b4c0ab9..a00d682a9 100644
--- a/drivers/firmware/Kconfig
+++ b/drivers/firmware/Kconfig
@@ -15,6 +15,13 @@ config FIRMWARE_ALTERA_SOCFPGA
 	depends on ARCH_SOCFPGA
 	select FIRMWARE
 
+config FIRMWARE_ZYNQ7000_FPGA
+	bool "Xilinx Zynq 7000 FPGA loader"
+	depends on ARCH_ZYNQ
+	select FIRMWARE
+	help
+	  Load a bitstream to the PL of Zynq
+
 config FIRMWARE_ZYNQMP_FPGA
 	bool "Xilinx ZynqMP FPGA loader"
 	depends on ARCH_ZYNQMP
diff --git a/drivers/firmware/Makefile b/drivers/firmware/Makefile
index b162b08b0..a7c6344bf 100644
--- a/drivers/firmware/Makefile
+++ b/drivers/firmware/Makefile
@@ -1,3 +1,4 @@
 obj-$(CONFIG_FIRMWARE_ALTERA_SERIAL) += altera_serial.o
 obj-$(CONFIG_FIRMWARE_ALTERA_SOCFPGA) += socfpga.o
+obj-$(CONFIG_FIRMWARE_ZYNQ7000_FPGA) += zynqmp-fpga.o
 obj-$(CONFIG_FIRMWARE_ZYNQMP_FPGA) += zynqmp-fpga.o
diff --git a/drivers/firmware/zynqmp-fpga.c b/drivers/firmware/zynqmp-fpga.c
index ab70d9993..707a018b5 100644
--- a/drivers/firmware/zynqmp-fpga.c
+++ b/drivers/firmware/zynqmp-fpga.c
@@ -15,57 +15,19 @@
 #include <common.h>
 #include <init.h>
 #include <dma.h>
+#ifdef CONFIG_FIRMWARE_ZYNQMP_FPGA
 #include <mach/firmware-zynqmp.h>
-
-#define ZYNQMP_PM_FEATURE_BYTE_ORDER_IRREL	BIT(0)
-#define ZYNQMP_PM_FEATURE_SIZE_NOT_NEEDED	BIT(1)
-
-#define ZYNQMP_PM_VERSION_1_0_FEATURES	0
-#define ZYNQMP_PM_VERSION_1_1_FEATURES	(ZYNQMP_PM_FEATURE_BYTE_ORDER_IRREL | \
-					 ZYNQMP_PM_FEATURE_SIZE_NOT_NEEDED)
-
-/*
- * Xilinx KU040 Bitstream Composition:
- *
- * Bitstream can be provided with an optinal header (`struct bs_header`).
- * The true bitstream starts with the binary-header composed of 21 words:
- *
- *  0: 0xFFFFFFFF (Dummy pad word)
- *     ...
- * 15: 0xFFFFFFFF (Dummy pad word)
- * 16: 0x000000BB (Bus width auto detect word 1)
- * 17: 0x11220044 (Bus width auto detect word 2)
- * 18: 0xFFFFFFFF (Dummy pad word)
- * 19: 0xFFFFFFFF (Dummy pad word)
- * 20: 0xAA995566 (Sync word)
- *
- * See Xilinx UG570 (v1.11) September 30 2019, Chapter 9 "Configuration
- * Details - Bitstream Composition" for further details.
- */
-#define DUMMY_WORD			0xFFFFFFFF
-#define BUS_WIDTH_AUTO_DETECT1_OFFSET	16
-#define BUS_WIDTH_AUTO_DETECT1		0x000000BB
-#define BUS_WIDTH_AUTO_DETECT2_OFFSET	17
-#define BUS_WIDTH_AUTO_DETECT2		0x11220044
-#define SYNC_WORD_OFFSET		20
-#define SYNC_WORD			0xAA995566
-#define BIN_HEADER_LENGTH		21
+#endif
+#ifdef CONFIG_FIRMWARE_ZYNQ7000_FPGA
+#include <mach/firmware-zynq.h>
+#include <mach/zynq7000-regs.h>
+#endif
 
 enum xilinx_byte_order {
 	XILINX_BYTE_ORDER_BIT,
 	XILINX_BYTE_ORDER_BIN,
 };
 
-struct fpgamgr {
-	struct firmware_handler fh;
-	struct device_d dev;
-	const struct zynqmp_eemi_ops *eemi_ops;
-	int programmed;
-	char *buf;
-	size_t size;
-	u32 features;
-};
-
 struct bs_header {
 	__be16 length;
 	u8 padding[9];
@@ -198,15 +160,16 @@ static int fpgamgr_program_finish(struct firmware_handler *fh)
 {
 	struct fpgamgr *mgr = container_of(fh, struct fpgamgr, fh);
 	char *buf_aligned;
-	u32 *buf_size = NULL;
 	u32 *body;
 	size_t body_length;
 	int header_length = 0;
 	enum xilinx_byte_order byte_order;
 	u64 addr;
 	int status = 0;
+#ifdef CONFIG_FIRMWARE_ZYNQMP_FPGA
+	u32 *buf_size = NULL;
 	u8 flags = 0;
-
+#endif
 	if (!mgr->buf) {
 		status = -ENOBUFS;
 		dev_err(&mgr->dev, "buffer is NULL\n");
@@ -234,6 +197,13 @@ static int fpgamgr_program_finish(struct firmware_handler *fh)
 		goto err_free;
 	}
 
+	buf_aligned = dma_alloc_coherent(body_length, DMA_ADDRESS_BROKEN);
+	if (!buf_aligned) {
+		status = -ENOBUFS;
+		goto err_free;
+	}
+
+#ifdef CONFIG_FIRMWARE_ZYNQMP_FPGA
 	if (!(mgr->features & ZYNQMP_PM_FEATURE_SIZE_NOT_NEEDED)) {
 		buf_size = dma_alloc_coherent(sizeof(*buf_size),
 		DMA_ADDRESS_BROKEN);
@@ -244,12 +214,6 @@ static int fpgamgr_program_finish(struct firmware_handler *fh)
 		*buf_size = body_length;
 	}
 
-	buf_aligned = dma_alloc_coherent(body_length, DMA_ADDRESS_BROKEN);
-	if (!buf_aligned) {
-		status = -ENOBUFS;
-		goto err_free;
-	}
-
 	if (!(mgr->features & ZYNQMP_PM_FEATURE_BYTE_ORDER_IRREL) &&
 	    byte_order == XILINX_BYTE_ORDER_BIN)
 		copy_words_swapped((u32 *)buf_aligned, body,
@@ -271,7 +235,32 @@ static int fpgamgr_program_finish(struct firmware_handler *fh)
 		status = mgr->eemi_ops->fpga_load(addr, (u32)(body_length),
 						  flags);
 	}
+#endif
+#ifdef CONFIG_FIRMWARE_ZYNQ7000_FPGA
+	/* UG585 (v1.12.2) July 1, 2018 Chapter 6.4.3
+	 * In all modes, the DMA transactions must be 64-byte aligned to prevent
+	 * accidently crossing a 4K byte boundary.
+	 */
+	if(byte_order == XILINX_BYTE_ORDER_BIN)
+		copy_words_swapped((u32 *)buf_aligned, body, body_length / sizeof(u32));
+	else
+		memcpy((u32 *)buf_aligned, body, body_length);
+
+	addr = (u32)buf_aligned;
+
+	writel(0x0000DF0D, ZYNQ_SLCR_UNLOCK);
+	writel(0x0000000f, ZYNQ_SLCR_BASE + 0x240); // assert FPGA resets
+
+	writel(0x00000000, ZYNQ_SLCR_BASE + 0x900); // disable levelshifter
+	writel(0x0000000a, ZYNQ_SLCR_BASE + 0x900); // enable levelshifter PS-PL
 
+	status = mgr->devc_ops->fpga_load(mgr, addr, (u32)(body_length), 0);
+
+	writel(0x0000000f, ZYNQ_SLCR_BASE + 0x900); // enable all levelshifter
+	writel(0x00000000, ZYNQ_SLCR_BASE + 0x240); // deassert FPGA resets
+
+	writel(0x0000767B, ZYNQ_SLCR_LOCK);
+#endif
 	if (status < 0)
 		dev_err(&mgr->dev, "unable to load fpga\n");
 
@@ -313,8 +302,10 @@ static int fpgamgr_program_start(struct firmware_handler *fh)
 	return 0;
 }
 
+
 static int programmed_get(struct param_d *p, void *priv)
 {
+#ifdef CONFIG_FIRMWARE_ZYNQMP_FPGA
 	struct fpgamgr *mgr = priv;
 	u32 status = 0x00;
 	int ret = 0;
@@ -324,7 +315,7 @@ static int programmed_get(struct param_d *p, void *priv)
 		return ret;
 
 	mgr->programmed = !!(status & ZYNQMP_PCAP_STATUS_FPGA_DONE);
-
+#endif
 	return 0;
 }
 
@@ -335,7 +326,12 @@ static int zynqmp_fpga_probe(struct device_d *dev)
 	const char *alias = of_alias_get(dev->device_node);
 	const char *model = NULL;
 	struct param_d *p;
+#ifdef CONFIG_FIRMWARE_ZYNQMP_FPGA
 	u32 api_version;
+#endif
+#ifdef CONFIG_FIRMWARE_ZYNQ7000_FPGA
+	struct resource *iores;
+#endif
 	int ret;
 
 	mgr = xzalloc(sizeof(*mgr));
@@ -354,6 +350,7 @@ static int zynqmp_fpga_probe(struct device_d *dev)
 		fh->model = xstrdup(model);
 	fh->dev = dev;
 
+#ifdef CONFIG_FIRMWARE_ZYNQMP_FPGA
 	mgr->eemi_ops = zynqmp_pm_get_eemi_ops();
 
 	ret = mgr->eemi_ops->get_api_version(&api_version);
@@ -361,11 +358,21 @@ static int zynqmp_fpga_probe(struct device_d *dev)
 		dev_err(&mgr->dev, "could not get API version\n");
 		goto out;
 	}
-
-	mgr->features = 0;
-
 	if (api_version >= ZYNQMP_PM_VERSION(1, 1))
 		mgr->features |= ZYNQMP_PM_VERSION_1_1_FEATURES;
+#endif
+#ifdef CONFIG_FIRMWARE_ZYNQ7000_FPGA
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores)) {
+		ret = PTR_ERR(iores);
+		goto out;
+	}
+	mgr->regs = IOMEM(iores->start);
+	mgr->devc_ops = zynq_get_devc_ops();
+	/* Unlock DevC in case BootROM did not do it */
+	writel(DEVC_UNLOCK_CODE, mgr->regs + UNLOCK_OFFSET);
+#endif
+	mgr->features = 0;
 
 	dev_dbg(dev, "Registering ZynqMP FPGA programmer\n");
 	mgr->dev.id = DEVICE_ID_SINGLE;
@@ -400,9 +407,8 @@ out:
 }
 
 static struct of_device_id zynqmpp_fpga_id_table[] = {
-	{
-		.compatible = "xlnx,zynqmp-pcap-fpga",
-	},
+	{ .compatible = "xlnx,zynqmp-pcap-fpga" },
+	{ .compatible = "xlnx,zynq-devcfg-1.0" },
 	{ /* sentinel */ }
 };
 
-- 
2.25.1

>From c3d0306aeecb93f35a7e57ea396db7dbca29f347 Mon Sep 17 00:00:00 2001
From: Michael Graichen <michael.graichen@hotmail.com>
Date: Wed, 28 Apr 2021 10:01:08 +0200
Subject: [PATCH 2/2] renamed "zynqmp_fpga_manager" to "zynq_fpga_manager"

Signed-off-by: Michael Graichen <michael.graichen@hotmail.com>
---
 drivers/firmware/Kconfig                      |  2 +-
 drivers/firmware/Makefile                     |  4 +--
 .../firmware/{zynqmp-fpga.c => zynq-fpga.c}   | 26 +++++++++----------
 3 files changed, 16 insertions(+), 16 deletions(-)
 rename drivers/firmware/{zynqmp-fpga.c => zynq-fpga.c} (94%)

diff --git a/drivers/firmware/Kconfig b/drivers/firmware/Kconfig
index a00d682a9..198566a4e 100644
--- a/drivers/firmware/Kconfig
+++ b/drivers/firmware/Kconfig
@@ -20,7 +20,7 @@ config FIRMWARE_ZYNQ7000_FPGA
 	depends on ARCH_ZYNQ
 	select FIRMWARE
 	help
-	  Load a bitstream to the PL of Zynq
+	  Load a bitstream to the PL of Zynq 7000
 
 config FIRMWARE_ZYNQMP_FPGA
 	bool "Xilinx ZynqMP FPGA loader"
diff --git a/drivers/firmware/Makefile b/drivers/firmware/Makefile
index a7c6344bf..faa75c15b 100644
--- a/drivers/firmware/Makefile
+++ b/drivers/firmware/Makefile
@@ -1,4 +1,4 @@
 obj-$(CONFIG_FIRMWARE_ALTERA_SERIAL) += altera_serial.o
 obj-$(CONFIG_FIRMWARE_ALTERA_SOCFPGA) += socfpga.o
-obj-$(CONFIG_FIRMWARE_ZYNQ7000_FPGA) += zynqmp-fpga.o
-obj-$(CONFIG_FIRMWARE_ZYNQMP_FPGA) += zynqmp-fpga.o
+obj-$(CONFIG_FIRMWARE_ZYNQ7000_FPGA) += zynq-fpga.o
+obj-$(CONFIG_FIRMWARE_ZYNQMP_FPGA) += zynq-fpga.o
diff --git a/drivers/firmware/zynqmp-fpga.c b/drivers/firmware/zynq-fpga.c
similarity index 94%
rename from drivers/firmware/zynqmp-fpga.c
rename to drivers/firmware/zynq-fpga.c
index 707a018b5..5cd42c311 100644
--- a/drivers/firmware/zynqmp-fpga.c
+++ b/drivers/firmware/zynq-fpga.c
@@ -1,6 +1,6 @@
 // SPDX-License-Identifier: GPL-2.0
 /*
- * Xilinx Zynq MPSoC PL loading
+ * Xilinx Zynq MPSoC / Zynq 7000 PL loading
  *
  * Copyright (c) 2018 Thomas Haemmerle <thomas.haemmerle@wolfvision.net>
  *
@@ -120,7 +120,7 @@ static int get_header_length(const char *header, size_t size)
 	return -EINVAL;
 }
 
-static void zynqmp_fpga_show_header(const struct device_d *dev,
+static void zynq_fpga_show_header(const struct device_d *dev,
 			 struct bs_header *header, size_t size)
 {
 	struct bs_header_entry *entry;
@@ -181,7 +181,7 @@ static int fpgamgr_program_finish(struct firmware_handler *fh)
 		status = header_length;
 		goto err_free;
 	}
-	zynqmp_fpga_show_header(&mgr->dev,
+	zynq_fpga_show_header(&mgr->dev,
 			      (struct bs_header *)mgr->buf, header_length);
 
 	body = (u32 *)&mgr->buf[header_length];
@@ -319,7 +319,7 @@ static int programmed_get(struct param_d *p, void *priv)
 	return 0;
 }
 
-static int zynqmp_fpga_probe(struct device_d *dev)
+static int zynq_fpga_probe(struct device_d *dev)
 {
 	struct fpgamgr *mgr;
 	struct firmware_handler *fh;
@@ -340,7 +340,7 @@ static int zynqmp_fpga_probe(struct device_d *dev)
 	if (alias)
 		fh->id = xstrdup(alias);
 	else
-		fh->id = xstrdup("zynqmp-fpga-manager");
+		fh->id = xstrdup("zynq-fpga-manager");
 
 	fh->open = fpgamgr_program_start;
 	fh->write = fpgamgr_program_write_buf;
@@ -374,9 +374,9 @@ static int zynqmp_fpga_probe(struct device_d *dev)
 #endif
 	mgr->features = 0;
 
-	dev_dbg(dev, "Registering ZynqMP FPGA programmer\n");
+	dev_dbg(dev, "Registering Zynq FPGA programmer\n");
 	mgr->dev.id = DEVICE_ID_SINGLE;
-	dev_set_name(&mgr->dev, "zynqmp_fpga");
+	dev_set_name(&mgr->dev, "zynq_fpga");
 	mgr->dev.parent = dev;
 	ret = register_device(&mgr->dev);
 	if (ret)
@@ -406,15 +406,15 @@ out:
 	return ret;
 }
 
-static struct of_device_id zynqmpp_fpga_id_table[] = {
+static struct of_device_id zynq_fpga_id_table[] = {
 	{ .compatible = "xlnx,zynqmp-pcap-fpga" },
 	{ .compatible = "xlnx,zynq-devcfg-1.0" },
 	{ /* sentinel */ }
 };
 
-static struct driver_d zynqmp_fpga_driver = {
-	.name = "zynqmp_fpga_manager",
-	.of_compatible = DRV_OF_COMPAT(zynqmpp_fpga_id_table),
-	.probe = zynqmp_fpga_probe,
+static struct driver_d zynq_fpga_driver = {
+	.name = "zynq_fpga_manager",
+	.of_compatible = DRV_OF_COMPAT(zynq_fpga_id_table),
+	.probe = zynq_fpga_probe,
 };
-device_platform_driver(zynqmp_fpga_driver);
+device_platform_driver(zynq_fpga_driver);
-- 
2.25.1

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

