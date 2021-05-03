Delivery-date: Mon, 03 May 2021 16:09:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldZGn-0003Mb-Up
	for lore@lore.pengutronix.de; Mon, 03 May 2021 16:09:57 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldZGm-0008F9-Pq
	for lore@pengutronix.de; Mon, 03 May 2021 16:09:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=v7Xos7swJ1yKD120d993BoKuES4TsQUOE//haeY7YEA=; b=lfb/oa2o/VdqZW
	tlG4ER9vpRNWpfcwGRnkHl7azyyrHj4Mzx+cwvk5wh5b+F1D/FmA0E91F1GXULeQmsVHdLSr2Qo6k
	RDyQem3gG6f98wHvNjT7zu0tjiBlHyJ7giwHeiJZsNJY67JLHvndeaR9kojhruoushyUt8jOb2LGK
	yAlF3V4k6D1h8UdOicnbfalGNxe83YW1H3+TWyOUa1dKJHNVAv0wn7O9doUk32v72t7C5vHMLG7by
	ivXqzQivZZdXE0KPpR89BFacu87b8ljFIam7BgmNaxIsgq5rH9n88oFaB/nIzNQCao7kZsveoQF3U
	gee3oJjYH5eGHFA7DqDA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ldZFQ-00E0Z8-JC; Mon, 03 May 2021 14:08:32 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldZFM-00E0Z3-Ii
 for barebox@desiato.infradead.org; Mon, 03 May 2021 14:08:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=MIME-Version:
 Content-Transfer-Encoding:Content-Type:Message-ID:Date:Subject:To:From:Sender
 :Reply-To:Cc:Content-ID:Content-Description:In-Reply-To:References;
 bh=Ehi2joE/mcCBido5nAB1y/bDnk5gNBKLgN78wbYUVU8=; b=C7NvTqNWNFH9LZHLtJ4hitEXey
 gjoKNxAnu74wmvfXTtfloG2nRxivZlK35/3fXvYLkj500Gbf4D0aiWzjFrYzN88ABvGCgR1s7IYy8
 4XHrx5FWXc99T0Q1Q0Bth5GfUC7lpEDI17W7I4JJD9KWAV13q6yz9LLEdqC1eV7uBn33ddL9pK2hg
 jpzKjV/UGyxIgTNJjTkKH8sFr2495/NAeCuNOwZjjhtMGIQmWkAhO+6iujJxasDmb70SjythwDrEU
 OVAXz4krbEMFYd08x8Of+K6GwMrNDX4tXUri953XyxsgBz43I4HAE0buWz854R0bpqy/Vrs50s9c2
 iG2YKGGg==;
Received: from mail-oln040092066045.outbound.protection.outlook.com
 ([40.92.66.45] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldZFJ-00375H-9I
 for barebox@lists.infradead.org; Mon, 03 May 2021 14:08:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bo8V3TmAbUKHBdZcjIjwP0pmSZrm3jr3Znk5p1Rwi5aQ7KKFFZ53vfJBvm/9OZ/+RYQvKxA7B+o3OweQE+mOSSYgKU7QK+Hz/DC9okay2DVpE+65EoczlD0LXmbjr9In5FrhjwFPKB5PPscecYbPBlxK760gBRl/1uwmxRMgFpLOSgJCGxol5c/PyLfE4Mj+K7Z0Hcgn+kSR38iSA6mYzBos25zRUOttaZi02ZT9o57AOBVySpVFid8jIn2Yy+DNOz5hniOwCDfRulfW0jt1Pmbr5MYcZ+SNgZQvWPOIqp852ZqzyeGwKaGzjrZ+sC4fZ741vpmzh14CYHKQrA8elw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ehi2joE/mcCBido5nAB1y/bDnk5gNBKLgN78wbYUVU8=;
 b=OCnJ1F2PRV+1W/NFAoNsiFkkHUL0DitkcPFjJYLLatwli3YChcokEAAVgZO8kgYmHw5cFdwRfGA9eWEuzXkGSILvbbomujJdGhI7ed2oDr1+ym49au/CWzoZtHVL99O4Y2cjV6qQh3rf/gdXu2vhEQZOS4l2O2D2ZEvlzpOmns0a/sz5aOV0h3fio9CwEZgLouMKME7ZmuTPI5qtcvZrQREj4lUPwM+pdUib05kb9LXbZALv6ll63uNCzXHGms/wtOyVvdZ9ZZu6Mt/Zt/ZAd2CWg+GfbINfVP4/VgbbNY51UycKvOCAJq1VG/2B3ro46MfBUnFtVSz/Reqi8ilF0Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=none; dmarc=none;
 dkim=none; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Ehi2joE/mcCBido5nAB1y/bDnk5gNBKLgN78wbYUVU8=;
 b=Uu4BK/+9k6dwR2z2tL2c5bKSP0I7A4OeF2DiDKtsQKa17Lqjqv1+55kOX63z2QitU3bxEpvkeOvOpOtbQSTEDuyEXMeypO6HlHfhgVxtu0BT6F1X2fdQ5nPzvMIAEEFC2kJFLQSSlD1zh1KLpyFE5oOBWUfAzgs1yoAj3IbA1KzvZUejROV7/m9iUj9fKcr4uUiw79am5uZqBm7jECTgm+0OftfJ3IC+XSY55VT9cTcXqrtbUmV+MDmzmWYJj/AJ483EKoxv4VfzLNFvsKv7hjfUgVqAAoHUH9gw56FVT5ys4YuPae5v5VAPaXuaiE1LwiSCih+UIUmLhIPn08v9Ug==
Received: from HE1EUR01FT038.eop-EUR01.prod.protection.outlook.com
 (2a01:111:e400:7e18::46) by
 HE1EUR01HT162.eop-EUR01.prod.protection.outlook.com (2a01:111:e400:7e18::360)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4087.27; Mon, 3 May
 2021 14:08:20 +0000
Received: from AM9P192MB0870.EURP192.PROD.OUTLOOK.COM (2a01:111:e400:7e18::51)
 by HE1EUR01FT038.mail.protection.outlook.com
 (2a01:111:e400:7e18::349) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4087.27 via Frontend
 Transport; Mon, 3 May 2021 14:08:20 +0000
Received: from AM9P192MB0870.EURP192.PROD.OUTLOOK.COM
 ([fe80::1dab:3ff6:d6f2:38d2]) by AM9P192MB0870.EURP192.PROD.OUTLOOK.COM
 ([fe80::1dab:3ff6:d6f2:38d2%3]) with mapi id 15.20.4087.044; Mon, 3 May 2021
 14:08:20 +0000
From: Michael Graichen <michael.graichen@hotmail.com>
To: barebox <barebox@lists.infradead.org>
Thread-Topic: [PATCH 1/1] zedboard: add support for usb
Thread-Index: AQHXQCWFMbmdCJZUg0OYZUTONSDMBw==
Date: Mon, 3 May 2021 14:08:19 +0000
Message-ID: <AM9P192MB08705B62FF903088CDE45846AB5B9@AM9P192MB0870.EURP192.PROD.OUTLOOK.COM>
Accept-Language: de-DE, en-US
Content-Language: de-DE
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:2E3C7E3F5D69EA7B2AB6E4C3FA3E0ECA2A4185347825DE26D45D97201015E100;
 UpperCasedChecksum:4E4B3095DF6A37138D9F6A95397F582D84660F0AFED9B097749FD8F79219A9F7;
 SizeAsReceived:6675; Count:42
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [jJP9gEJxM1Org2v6acoWa56LQfsagW3p]
x-ms-publictraffictype: Email
x-incomingheadercount: 42
x-eopattributedmessage: 0
x-ms-office365-filtering-correlation-id: e1577dcb-ffd8-4581-4284-08d90e3ce7db
x-ms-traffictypediagnostic: HE1EUR01HT162:
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: odlvstJiihoKd2rzcIXqFcGEtSWC3eaO9GCbNYrsef3KISvcBYB3n+y+6FCz59yMBLys1I3aznICcU+d3pZ3fC4Y3zGQ9Xe19hBAs1d6Q896Mq2HMoRAv6pf5guIOGyiQ4SL+EGzqz5NgOE22ORhr8UQ3WWEnLoquhkYO4DVhtRicQmmi/+RAZfT8RDLgz3PeQviJVRqWUpwB0dI6OZikp44pDn3J7+v0rSCTYIi007OD/mEGO0HxyPvsrcMl/HISvG4VSXmKDWkH+g1jLE842LAS/81grBJlcYZUbaRQjiPfiv5IliJyq8FTPwzWbyx4VeXvLf4RAtneUdcMpzrKja9+nCEg7tVpiMK9eYJV6ypaaX5eMeV3C+28C3FjdJFw1Xa7MEQOug5eenWT4RBOg==
x-ms-exchange-antispam-messagedata: yC1kWd1rLZzlJUPAkW2sEJkDEn5KzzfHdP01phYkyOAiWKd+VdI55f76gbwe0t4BxwssR+3L/s2qaxFtdAHd70i01q9/lOCihKt59dbWuqH5HfwwhHdEbC+9oMwYHZg0XElJgWXtrsytrDc728JkEg==
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-AuthSource: HE1EUR01FT038.eop-EUR01.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-CrossTenant-Network-Message-Id: e1577dcb-ffd8-4581-4284-08d90e3ce7db
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 May 2021 14:08:19.9831 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 00000000-0000-0000-0000-000000000000
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1EUR01HT162
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210503_070825_518291_92361891 
X-CRM114-Status: GOOD (  15.79  )
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
X-Spam-Status: No, score=-2.4 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,FORGED_HOTMAIL_RCVD2,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE autolearn=no autolearn_force=no version=3.4.2
Subject: [PATCH 1/1] zedboard: add support for usb
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This adds minimalistic support for USB on the Zedboard/Zynq-7000

>From e1e1cdc8e2f82a5c9ecb4acc8eb67181687791d0 Mon Sep 17 00:00:00 2001
From: Michael Graichen <michael.graichen@hotmail.com>
Date: Mon, 3 May 2021 16:08:23 +0200
Subject: [PATCH] zedboard: add support for usb

Signed-off-by: Michael Graichen <michael.graichen@hotmail.com>
---
 arch/arm/boards/avnet-zedboard/lowlevel.c | 13 +++++++
 drivers/usb/host/Kconfig                  |  6 +++
 drivers/usb/host/Makefile                 |  1 +
 drivers/usb/host/ehci-zynq.c              | 47 +++++++++++++++++++++++
 drivers/usb/otg/ulpi.c                    |  1 +
 5 files changed, 68 insertions(+)
 create mode 100644 drivers/usb/host/ehci-zynq.c

diff --git a/arch/arm/boards/avnet-zedboard/lowlevel.c b/arch/arm/boards/avnet-zedboard/lowlevel.c
index f7bdceb42..e43832218 100644
--- a/arch/arm/boards/avnet-zedboard/lowlevel.c
+++ b/arch/arm/boards/avnet-zedboard/lowlevel.c
@@ -236,6 +236,19 @@ static void avnet_zedboard_ps7_init(void)
 	writel(0x00000702, ZYNQ_MIO_BASE + 0x14);
 	writel(0x00000702, ZYNQ_MIO_BASE + 0x18);
 	writel(0x00000602, ZYNQ_MIO_BASE + 0x20);
+	/* USB0 */
+	writel(0x00000304, ZYNQ_MIO_BASE + 0x70);	// MIO_PIN_28 => OTG_DATA_4
+	writel(0x00000305, ZYNQ_MIO_BASE + 0x74);	// MIO_PIN_29 => OTG_DIR
+	writel(0x00000304, ZYNQ_MIO_BASE + 0x78);	// MIO_PIN_30 => OTG_STP
+	writel(0x00000305, ZYNQ_MIO_BASE + 0x7c);	// MIO_PIN_31 => OTG_NXT
+	writel(0x00000304, ZYNQ_MIO_BASE + 0x80);	// MIO_PIN_32 => OTG_DATA_0
+	writel(0x00000304, ZYNQ_MIO_BASE + 0x84);	// MIO_PIN_33 => OTG_DATA_1
+	writel(0x00000304, ZYNQ_MIO_BASE + 0x88);	// MIO_PIN_34 => OTG_DATA_2
+	writel(0x00000304, ZYNQ_MIO_BASE + 0x8c);	// MIO_PIN_35 => OTG_DATA_3
+	writel(0x00000305, ZYNQ_MIO_BASE + 0x90);	// MIO_PIN_36 => OTG-CLK
+	writel(0x00000304, ZYNQ_MIO_BASE + 0x94);	// MIO_PIN_37 => OTG_DATA_5
+	writel(0x00000304, ZYNQ_MIO_BASE + 0x98);	// MIO_PIN_38 => OTG_DATA_6
+	writel(0x00000304, ZYNQ_MIO_BASE + 0x9c);	// MIO_PIN_39 => OTG_DATA_7
 
 	/* poor mans clkctrl */
 	writel(0x00001403, ZYNQ_CLOCK_CTRL_BASE + ZYNQ_UART_CLK_CTRL);
diff --git a/drivers/usb/host/Kconfig b/drivers/usb/host/Kconfig
index 891523c4d..fcd90824c 100644
--- a/drivers/usb/host/Kconfig
+++ b/drivers/usb/host/Kconfig
@@ -13,6 +13,12 @@ config USB_EHCI_ATMEL
 	select USB_OHCI_AT91
 	bool "Atmel EHCI driver"
 
+config USB_EHCI_ZYNQ
+	bool "Support for Xilinx Zynq on-chip EHCI USB controller"
+	depends on ARCH_ZYNQ
+	help
+	  Enable support for Zynq on-chip EHCI USB controller
+
 config USB_OHCI
 	bool "OHCI driver"
 	depends on !MMU && HAS_DMA
diff --git a/drivers/usb/host/Makefile b/drivers/usb/host/Makefile
index e7a6cf213..eef038128 100644
--- a/drivers/usb/host/Makefile
+++ b/drivers/usb/host/Makefile
@@ -1,6 +1,7 @@
 obj-$(CONFIG_USB_EHCI)		+= ehci-hcd.o
 obj-$(CONFIG_USB_EHCI_OMAP)	+= ehci-omap.o
 obj-$(CONFIG_USB_EHCI_ATMEL)	+= ehci-atmel.o
+obj-$(CONFIG_USB_EHCI_ZYNQ)	+= ehci-zynq.o
 obj-$(CONFIG_USB_OHCI)		+= ohci-hcd.o
 obj-$(CONFIG_USB_OHCI_AT91)	+= ohci-at91.o
 obj-$(CONFIG_USB_XHCI)		+= xhci.o xhci-mem.o xhci-ring.o
diff --git a/drivers/usb/host/ehci-zynq.c b/drivers/usb/host/ehci-zynq.c
new file mode 100644
index 000000000..4246960e1
--- /dev/null
+++ b/drivers/usb/host/ehci-zynq.c
@@ -0,0 +1,47 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * USB Low level initialization(Specific to Zynq 7000)
+ */
+
+#include <common.h>
+#include <usb/ulpi.h>
+
+struct zynq_ehci_priv {
+	struct device_d *dev;
+	void __iomem *base;
+};
+
+static int zynq_ehci_probe(struct device_d *dev)
+{
+	struct zynq_ehci_priv *pdata;
+	struct resource *res;
+	void __iomem *base;
+
+	pdata = xzalloc(sizeof(*pdata));
+	pdata->dev = dev;
+	dev->priv = pdata;
+
+	res = dev_get_resource(dev, IORESOURCE_MEM, 0);
+	if (!res)
+		return -EINVAL;
+
+	base = IOMEM(res->start);
+	pdata->base = base;
+
+	ulpi_setup(base + 0x170, 1);
+	add_generic_usb_ehci_device(DEVICE_ID_DYNAMIC, (unsigned int)base, NULL);
+
+	return 0;
+}
+
+static const struct of_device_id zynq_ehci_dt_ids[] = {
+	{ .compatible = "xlnx,zynq-usb-2.20a" },
+	{ /* sentinel */ }
+};
+
+static struct driver_d zynq_ehci_driver = {
+	.name = "zynq-ehci",
+	.probe = zynq_ehci_probe,
+	.of_compatible = DRV_OF_COMPAT(zynq_ehci_dt_ids),
+};
+device_platform_driver(zynq_ehci_driver);
diff --git a/drivers/usb/otg/ulpi.c b/drivers/usb/otg/ulpi.c
index 9bc432fa8..38210150e 100644
--- a/drivers/usb/otg/ulpi.c
+++ b/drivers/usb/otg/ulpi.c
@@ -144,6 +144,7 @@ struct ulpi_info {
 static struct ulpi_info ulpi_ids[] = {
 	ULPI_INFO(ULPI_ID(0x04cc, 0x1504), "NXP ISP150x"),
 	ULPI_INFO(ULPI_ID(0x0424, 0x0006), "SMSC USB331x"),
+	ULPI_INFO(ULPI_ID(0x0451, 0x1507), "TI TUSB1210"),
 };
 
 static int ulpi_read_id(void __iomem *view, int *vid, int *pid)
-- 
2.25.1

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

