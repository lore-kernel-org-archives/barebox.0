Delivery-date: Thu, 25 Mar 2021 08:59:58 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lPKuK-0007oM-Ht
	for lore@lore.pengutronix.de; Thu, 25 Mar 2021 08:59:58 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lPKuF-0005op-JD
	for lore@pengutronix.de; Thu, 25 Mar 2021 08:59:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:CC:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=GExbYFsN1VUypXgTf7eC3/+rJPXvDGIH4+oSxaKrlGg=; b=OjttT0klQ8BIl7qchTbfEy/uBw
	Va0MRQD+rfd5GQlvntN/pK2FZKZrJ4OklwUa79gvZ6B8nO/r6dZnaRRAl+DkTueUj9i7JlAnPsLcw
	nUWNnqrF/90VHOCT312HU9Oe5TBRRdeNmU3JUkCGc3DDOuOEct3SvLm1clVi2WaOo/lk3eI/1ggM8
	uXKnUFsiluqmwt2+eH5V5jIUEe7xBtzCuZZXHU+h1GKR7utE1OhF+t874H+FmL6cRrEyuffsb9jNC
	4kVw3SXWzSCCQa9hoLuo8tcfuAiSTn6pR8kVTZGNJ4VLQ+B/lH0bK2j1RdaGXaImig6uf+de6qHHO
	3uFFkIsw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lPKrc-000r02-01; Thu, 25 Mar 2021 07:57:08 +0000
Received: from mail-vi1eur06olkn2086.outbound.protection.outlook.com
 ([40.92.17.86] helo=EUR06-VI1-obe.outbound.protection.outlook.com)
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lPKoE-000pj4-5W
 for barebox@lists.infradead.org; Thu, 25 Mar 2021 07:53:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=LJX45cpN+ruynRczuaoD4ccVU8rJ5Afp3qWAL9IVBBcKA02XDOvNh+AdZbnYqAdeNMNHyi5vZdk2nAt4a+ZvHPCMl/A79EDqfyG9gi0lEIP4SXETQoUJKpS8zLnqfQe46oS/Q8GnRbMn0bnpGoJo9/4b7ujsNjwFVSOF4bACiK0ZSsu8yvyWby7obfVm82KTB/FxgsvVnnJzBBw3r7sttd3U7WPUFsYiEVROdW47BXKXCZMFMusy9UbMqzWcnVytT4cDKQgLnGWrMk/vS9WAHdKL9pRRuHiLim1AKr8oxOU6SaYqAQsbFAR7eCAT0FmXp3/jUotOyoooYunyQ6Tkhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A70WHPGA8Y6XMljlzRX2kTmRDSphp3wBTDUW3I8tUEs=;
 b=j5c9JnYcZ52f7AinX2GBZHPd7lslutfpASJTRDN6spZn5HuY/8o6VQaUBp0oqzw98VZxLgDmUZy3uUSCtK0DkTYQW7jGrRR2J6K6vN7EZElxOVLBMtedLTLOkURtS7qoaB79T+D677lcsPexlikHp0/zAnRbLaRKx1z1tBuUmUjZjWVi9reBvSOy2oevbpQ/xoTRG/9azXZQdC3oOBGdbnk3Q98sPn6Wi2oUyzpnf8eixSjQukweO59sUm6JRq/FjG+7l2W8Uj/RM0Bb6ISH5bwPrySkHYs/xaYt5e8WoKAy1A6MyP0ZZBW+8YFKjzIdag1n70X6lx1KzwiUaccL3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=A70WHPGA8Y6XMljlzRX2kTmRDSphp3wBTDUW3I8tUEs=;
 b=EpvHUuXx1Qlx1NV25IljNVfXnQ103oXDegKtsYcb4gCTR6mJXV+d2LSh5A/qZ2+iNCcBiDwxJm2vxlPFC3xjxI2aTUKhyla2rdVTHIGPQMIL0esyoxAzu0jYGNv+tEjh8VGDVCpxorG9XB/WFZA9v8fXYiA2WJibZVsUfplT6ng9mrRii/bSg5qmY1F4sqSkPvrtm6F0VKitddAq2evwpPMUP4NbT1LFk52QqN0UsSO4Z7fDh93Q50mpyvuDxlP4FyZLpfvR6r6uPEiD+NJDMqcekeoEx66IAFQrJDV/Sqw1V9tjt3ObEYFLESyNW5c7/eZ7BGT5nDP5igrn52E/2Q==
Received: from VI1EUR06FT037.eop-eur06.prod.protection.outlook.com
 (2a01:111:e400:fc37::41) by
 VI1EUR06HT155.eop-eur06.prod.protection.outlook.com (2a01:111:e400:fc37::84)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3977.29; Thu, 25 Mar
 2021 07:53:33 +0000
Received: from AM9P192MB0870.EURP192.PROD.OUTLOOK.COM (2a01:111:e400:fc37::51)
 by VI1EUR06FT037.mail.protection.outlook.com
 (2a01:111:e400:fc37::249) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3977.25 via Frontend
 Transport; Thu, 25 Mar 2021 07:53:33 +0000
Received: from AM9P192MB0870.EURP192.PROD.OUTLOOK.COM
 ([fe80::7890:490d:69ae:8127]) by AM9P192MB0870.EURP192.PROD.OUTLOOK.COM
 ([fe80::7890:490d:69ae:8127%4]) with mapi id 15.20.3977.026; Thu, 25 Mar 2021
 07:53:33 +0000
From: Michael Graichen <michael.graichen@hotmail.com>
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
CC: Michael Tretter <m.tretter@pengutronix.de>
Thread-Topic: [PATCH 1/1] added support for zynq7000-fpga-manager
Thread-Index: AQHXIUiW/dq4+Seq2EihfUO4fc+eWg==
Date: Thu, 25 Mar 2021 07:53:33 +0000
Message-ID: <AM9P192MB0870C727E2A97796E63AC256AB629@AM9P192MB0870.EURP192.PROD.OUTLOOK.COM>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:478A4907763ACDD0D63A6BB824C7E61E500B93EAE17C67E1F85A36831ED7A8E1;
 UpperCasedChecksum:5B413B21A32C7CEB81BF2614759600A5172A0FFE957DE7F624A707224C73DE99;
 SizeAsReceived:6863; Count:43
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [BfXaPzTP+VSalxVwgJUoupydk930CTaB]
x-ms-publictraffictype: Email
x-incomingheadercount: 43
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: 537f896e-ebb2-4b5c-9385-08d8ef6316e9
x-ms-exchange-slblob-mailprops: CjO2us0gQYBzC/R3EOAx91bNr30an1LWC+w96F8JsFVboLKKBPtOZ4KjXdytDTWxg+IMexXTkVLYLozUxN6ZCJj4dRefci5ePLkhUOOL7jIkTZrzNpC8aI2DO4UwtLrhE99M2TXTxTFG0D6nXM9wUZ08VWqDVAGo/NO048VPSaYYy6Gn2apsno9ZFAl2m1ihrtGoEKxHJ6api+Kc86lCrn+Qp0smhPcBEUS7O9J3Nn2QzX+zEJdvrrJTz1NRUgxs/AuGYU3anPZV3SFY9GCKnYngkrtqO1rrNpMSx1MJsvlarMbVl3Fh9PENjtDmUro1IuSyoBNUU0hcAkrblb6grvhgUn9Wc1n0ayZjV2FyZ37k5J4jL7FEO6uhiyT2nRev7qjV93ymwROjcWibsSvRPphGl6q5KsinJAJFDrUk8yikDR0HX/2IfvVw+YAfzMSwiOScm6D0gqtL1zW3pCjjqxjudYXAfzNyl3d0YccdKhjOwMVaO7hf95XHIWXVgCTvSEnykcivGKAPKoBosa3wDz0KWwf/cLYw3fUJeTJ8N5u4eBkVXXPFMVy3SGbXPI3lxm+LQ+JI/dJA2Xxvw5FOPAGd250yNZq5gPoi6B2UlaEOnTeIGfbOG8JFjD/q0y/xWRg5B3WbH2J2J79i64GMSi6nvMiIOeCjvfFJK2iXZgxz41w08e4Ppolfkpo5X431
x-ms-traffictypediagnostic: VI1EUR06HT155:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: szRgikhmPTeOqi2aW/umDZZE3hIqCpUohlVAogtqQb827wWqI0Zt4parQE7U8Va50yWrONpkismItJFskmV9maiPgFSRzBNcb8Ywq5VCNZJItJsNJLiZMzc3Z3AwyKoBZrpOG0oOyTTuiQawSmIBSEeWvTODN58ZWAOberShStVLS5Zx0yZ17+SigO+7e0mNMNezoyy2f4wrIn94/MAx9UlaMHyBsluVvJYc5E/baVjQaVc0Qk5FA5JGh/+fnT6BZiVIJPmIrQVATQbD6th4P/8i3mhdjJcXydH8Mq1C6MGaxEqVlBrmeufa0+KDbdVTmemTEUXFt6Bi+PPSy19RIakjVUYcqX23TWBbJFRpOpY7tb9bYyp2cSpalukkYmUIT8Wr2zQgkqAZ0AGQSbOwxw==
x-ms-exchange-antispam-messagedata: mvECA/deb8+aPLbewHmQZAz9USQGB/Jv7P3UAOiCxxXIXXFs36SAXbJzP0ne/jyUwbokBclmq4+JsSE1fajUfo7sophM0IKvcFvEpqGFxcyJMGmiBDHzcC32Kq4/9+21/hQK1sEEOHbRR3WCzIPF8A==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: VI1EUR06FT037.eop-eur06.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: 537f896e-ebb2-4b5c-9385-08d8ef6316e9
X-MS-Exchange-CrossTenant-originalarrivaltime: 25 Mar 2021 07:53:33.5673 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1EUR06HT155
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210325_075342_766673_10B1A5DB 
X-CRM114-Status: GOOD (  19.03  )
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
X-Spam-Status: No, score=-2.6 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,FORGED_HOTMAIL_RCVD2,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/1] added support for zynq7000-fpga-manager
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hey, 

i have reworked the ZynqMP FPGA manager to program the FPGA within the Zynq7000. 

Michael Tretter, would you be so kind an test this on your ZynqMP board?
Since I have no access to a ZynqMP chip I have only tested compiling. 

The name "ZynqMP" may now be missleading for the firmwareload tool, because I intended to use it on both, ZynqMP and Zynq7000.
I would be happy to get read your feedback.

Best Regards 
Michael 


Signed-off-by: Michael Graichen <michael.graichen@hotmail.com>
---
 arch/arm/configs/zynq_defconfig               |   2 +
 arch/arm/mach-zynq/Makefile                   |   2 +-
 arch/arm/mach-zynq/firmware-zynq.c            | 124 ++++++++++++++++++
 .../mach-zynq/include/mach/firmware-zynq.h    |  85 ++++++++++++
 .../include/mach/firmware-zynqmp.h            |  46 +++++++
 drivers/firmware/Kconfig                      |   7 +
 drivers/firmware/Makefile                     |   1 +
 drivers/firmware/zynqmp-fpga.c                | 115 ++++++++--------
 8 files changed, 324 insertions(+), 58 deletions(-)
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
index 000000000..307b22fe5
--- /dev/null
+++ b/arch/arm/mach-zynq/firmware-zynq.c
@@ -0,0 +1,124 @@
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
+	/* Clear the Interrupts */
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
+	readl_poll_timeout(mgr->regs + STATUS_OFFSET, reg,
+			!(reg & STATUS_PCFG_INIT_MASK), 100 * USEC_PER_MSEC);
+
+	reg = readl(mgr->regs + CTRL_OFFSET);
+	reg |= CTRL_PCFG_PROG_B_MASK;
+	writel(reg, mgr->regs + CTRL_OFFSET);
+
+	/* Clear the Interrupts */
+	writel(0xffffffff, mgr->regs + INT_STS_OFFSET);
+
+	/* Ensure that the PL is ready for programming */
+	readl_poll_timeout(mgr->regs + STATUS_OFFSET, reg,
+			(reg & STATUS_PCFG_INIT_MASK), 100 * USEC_PER_MSEC);
+
+	/* Check that there is room in the Command Queue */
+	readl_poll_timeout(mgr->regs + STATUS_OFFSET, reg,
+			!(reg & STATUS_DMA_CMD_Q_F_MASK), 100 * USEC_PER_MSEC);
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
+	readl_poll_timeout(mgr->regs + INT_STS_OFFSET, reg,
+			(reg & INT_STS_D_P_DONE_MASK), 100 * USEC_PER_MSEC);
+
+	/* Check for errors */
+	if(reg & INT_STS_ERROR_FLAGS_MASK) {
+		printf("interrupt status register (0x%04lx)\n", reg);
+		return -EIO;
+	}
+
+	/* Wait for the DMA transfer to be done */
+	readl_poll_timeout(mgr->regs + INT_STS_OFFSET, reg,
+			(reg & INT_STS_DONE_INT_MASK), 100 * USEC_PER_MSEC);
+
+	printf("FPGA config done\n");
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
index ab70d9993..4ce835e18 100644
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
@@ -234,6 +196,13 @@ static int fpgamgr_program_finish(struct firmware_handler *fh)
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
@@ -244,12 +213,6 @@ static int fpgamgr_program_finish(struct firmware_handler *fh)
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
@@ -271,7 +234,32 @@ static int fpgamgr_program_finish(struct firmware_handler *fh)
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
+
+	status = mgr->devc_ops->fpga_load(mgr, addr, (u32)(body_length), 0);

+	writel(0x0000000f, ZYNQ_SLCR_BASE + 0x900); // enable all levelshifter
+	writel(0x00000000, ZYNQ_SLCR_BASE + 0x240); // deassert FPGA resets
+
+	writel(0x0000767B, ZYNQ_SLCR_LOCK);
+#endif
 	if (status < 0)
 		dev_err(&mgr->dev, "unable to load fpga\n");

@@ -313,8 +301,10 @@ static int fpgamgr_program_start(struct firmware_handler *fh)
 	return 0;
 }

+
 static int programmed_get(struct param_d *p, void *priv)
 {
+#ifdef CONFIG_FIRMWARE_ZYNQMP_FPGA
 	struct fpgamgr *mgr = priv;
 	u32 status = 0x00;
 	int ret = 0;
@@ -324,7 +314,7 @@ static int programmed_get(struct param_d *p, void *priv)
 		return ret;

 	mgr->programmed = !!(status & ZYNQMP_PCAP_STATUS_FPGA_DONE);
-
+#endif
 	return 0;
 }

@@ -336,6 +326,7 @@ static int zynqmp_fpga_probe(struct device_d *dev)
 	const char *model = NULL;
 	struct param_d *p;
 	u32 api_version;
+	struct resource *iores;
 	int ret;

 	mgr = xzalloc(sizeof(*mgr));
@@ -354,6 +345,7 @@ static int zynqmp_fpga_probe(struct device_d *dev)
 		fh->model = xstrdup(model);
 	fh->dev = dev;

+#ifdef CONFIG_FIRMWARE_ZYNQMP_FPGA
 	mgr->eemi_ops = zynqmp_pm_get_eemi_ops();

 	ret = mgr->eemi_ops->get_api_version(&api_version);
@@ -361,11 +353,21 @@ static int zynqmp_fpga_probe(struct device_d *dev)
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
@@ -400,9 +402,8 @@ out:
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


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

