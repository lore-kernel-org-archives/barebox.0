Delivery-date: Fri, 23 May 2025 18:52:45 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uIVdV-001xIW-0W
	for lore@lore.pengutronix.de;
	Fri, 23 May 2025 18:52:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uIVdU-0006js-JL
	for lore@pengutronix.de; Fri, 23 May 2025 18:52:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=QvKBwquGFdvLZluU1ONhN2m+5Dw2JTB2kzRmyATToiw=; b=PDRHZ9yFS9Jqq6eDvkvrb+ZVHC
	t2b1cQvVJLEM1n12n1aVEgoRqdpBMzVDggT6X46KAndoFViFRtk5c2T+Sc3d67zUcjSF79zpxC0Ku
	AB1KvsPcj/IfCV6B/gBH5cKZAxp3/c5nwJiEvuy83j/HcL7fn8wHDY5s0qaI35rPfWX/Zus2iCYcS
	qg0ZHnqrdA+BdVRpUWVyvfkUxjyJnLzyQpd1A04DE82WGC2DqtZYorppp1DoiMgSDqMmjL2wgL/N4
	OhkNNIQMRzzN8na1hZRXoi0irEc7+bTxuJO5pt1glKvSgwml5eGeqonfLYEP4ndkqcUJyEvW0jU7N
	oEv71pPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uIVci-00000004SQK-2Frt;
	Fri, 23 May 2025 16:51:56 +0000
Received: from mout.kundenserver.de ([212.227.126.131])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uIV9h-00000004NlT-3CSf
	for barebox@lists.infradead.org;
	Fri, 23 May 2025 16:21:59 +0000
Received: from Precision-T3610.Speedport_W_723V_1_49_000 ([84.147.163.231]) by
 mrelayeu.kundenserver.de (mreue009 [213.165.67.97]) with ESMTPSA (Nemesis) id
 1MsI0I-1vBzQ73QUs-012trl; Fri, 23 May 2025 18:21:42 +0200
From: Johannes Roith <johannes@gnu-linux.rocks>
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org,
	michael.graichen@hotmail.com,
	a.fatoum@barebox.org,
	Johannes Roith <johannes@gnu-linux.rocks>
Date: Fri, 23 May 2025 18:21:19 +0200
Message-Id: <20250523162119.3430-1-johannes@gnu-linux.rocks>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:PkJxTScXWrKoFWznrSZFOwCubr02QEW5WDBeJoSJcNRVY8AndY5
 gqo7znfmmCCwq8K9pWBDsJgGHjCYHpEHBhFByV0IHNnoUUoP2VyBWyI6D2NGEanfTG4DU8H
 4CPG3sVJbI6I+zIJS8c+rBzk6HRLkG0om2sIxT/cP2kZ137ZlUvwjjdcXqP4u2/NhP66srT
 sdj/p9c3unOhaRDWLPvQg==
UI-OutboundReport: notjunk:1;M01:P0:Y99zW2YGxwc=;GgUtZvVunu9W99Nd+Rxqo/U4f1v
 WwPxh7x6FGgoFUifkMnbj2XktW9LcSk/qLAS1XWuQNbG480m69SoJI8zGa8Xcnt/KXlQW8fVe
 WMHqSOqWULHfATkjLqW5cTTSD3SeSV7eOa3SnTjMuUuUKqZvtJaDYpeHo9fD9/jhiqu8Awn9a
 mNg0LvoxuKgdDvuo5SH2bPvzQDdy9++RTk61DVK7f0rMjSYuSp9EUEqAbPs4HCnWmhg2zuvz5
 +h9FnY7RkZKIBCdEkhpP4vkor5xzKvgpejJYIPcGrNdyq9GzwzmyEddRTiz/B5YICeHRiTR5A
 DH+R+smj0kbYnMCvDQ+IXudcXqCGvbQCXKp/1TWN2iu5ya6VsSOK3bvtjvPJrt/OAmj/UrAhg
 6zX4dLb5NjEL5Uc7CDlUE56AmqJef+XYiTPIAXA/C8MawTxYG4k46JEapZBMlCAslwYPjm17I
 nWr4SbTXjJPL9jXbKT2o9hHJRuP5agWcA77Ae39DIjPND/M4rMdtdmJvsiCndP534sHr6kF4Z
 CMyjiCJcK6lU1aiZmU6hknrimiZO+UGT9IaHThjAH0lzgj6VaKiQlB573P6HL+FT4W6YNBc+O
 82B30s3ix/aJ8CTXhCbEzmvp16uTalvUhlyMACxSRmQhlmtmOah3Jn5W4LSngBuMa/mx+co1Q
 jpT6aewa3LUzgMOCS79RDFO9GsdrY3v2y2ruNwqv7ZlUSyzSVGj+cE1E8iJmr0ZKddXdzsEk/
 2qV9wd66oL0NHakpYzx8BdCPMzPMRGc4XHq4KHIvKl95wnV8dC1HdtHNUoPj/1HLKDA0uzN7U
 JPsJMwRiC+OZQ1TeiXLZH51lI9Ut3Im5+TAix34cp9x7X3NMBeBw96Gs83N4nRRM5Wz+n809+
 W454a8lHS3U7ECXIcjzNCwjAcFROBn6KFRXnqPy7zzfH0rhzJLJtj3+VaBeElbvn3im/MEaKc
 vWZIQKGf7uzYVNbEoCc7QdBMrjZVm/87lg0zZ6Ne0G32d+iEvyCLyMAVAVOmamLsUzB96ZEgT
 z1ckoqxK1KqZMyrkKZbhEpaGMbyl4qBLVOU66M6Rz8bcjdGUJG+15HHHhbpT34sHGsCCdyzy8
 WSHLSEGhz9aTs4be96KLXUL1Ked91f+pwy53Msu8a8YLgD/nTVkFblKxIdwffqdiSAZsqO+oP
 Ltr99GgxjIDpCG79KxDpmDipHqMXz3TJfMFkx05z0UFOefVjySaD8OTr1vrK/juwHnTRXPZZq
 MBzoyxUHvNIE7U2ZKyGvQyS1bK0aVQAhwA29rvTm1qyVIe2Cd4khRJXlgTZsKVnB4qTxFI1aP
 pNsTaVg+Ws8ynxHMNdd4LC4AEKw/OpgKAkhg9CjQNtNkNJ4OCbPT99F8nTUu6EiGMihXBJtw0
 Rr0wi9FFqSJpcSaCWVMZsnKfJnO6uhBLHq/hXX5qzPvLeABFgnCqHjyRk2N4aSdNV2OVNhXNN
 cWc7rRw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250523_092158_090846_A9E2ED48 
X-CRM114-Status: GOOD (  15.36  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2] added zynq 7000 usb support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds support to use the USB interface on Zynq-7000 SoC.

Signed-off-by: Michael Graichen <michael.graichen@hotmail.com>
Signed-off-by: Johannes Roith <johannes@gnu-linux.rocks>
---
 drivers/usb/host/Kconfig     |  8 ++++++++
 drivers/usb/host/Makefile    |  1 +
 drivers/usb/host/ehci-zynq.c | 36 ++++++++++++++++++++++++++++++++++++
 3 files changed, 45 insertions(+)
 create mode 100644 drivers/usb/host/ehci-zynq.c

diff --git a/drivers/usb/host/Kconfig b/drivers/usb/host/Kconfig
index d38b4dcac4..812270f869 100644
--- a/drivers/usb/host/Kconfig
+++ b/drivers/usb/host/Kconfig
@@ -14,6 +14,14 @@ config USB_EHCI_ATMEL
 	select USB_OHCI_AT91
 	bool "Atmel EHCI driver"
 
+config USB_EHCI_ZYNQ
+	bool "Support for Xilinx Zynq on-chip EHCI USB controller"
+	depends on ARCH_ZYNQ
+	depends on USB_EHCI
+	select USB_ULPI
+	help
+	  Enable support for Zynq on-chip EHCI USB controller
+
 config USB_OHCI
 	bool "OHCI driver"
 	depends on !MMU && HAS_DMA
diff --git a/drivers/usb/host/Makefile b/drivers/usb/host/Makefile
index e55dff4580..cbddfbe923 100644
--- a/drivers/usb/host/Makefile
+++ b/drivers/usb/host/Makefile
@@ -2,6 +2,7 @@
 obj-$(CONFIG_USB_EHCI)		+= ehci-hcd.o
 obj-$(CONFIG_USB_EHCI_OMAP)	+= ehci-omap.o
 obj-$(CONFIG_USB_EHCI_ATMEL)	+= ehci-atmel.o
+obj-$(CONFIG_USB_EHCI_ZYNQ)	+= ehci-zynq.o
 obj-$(CONFIG_USB_OHCI)		+= ohci-hcd.o
 obj-$(CONFIG_USB_OHCI_AT91)	+= ohci-at91.o
 obj-$(CONFIG_USB_XHCI)		+= xhci.o xhci-mem.o xhci-ring.o
diff --git a/drivers/usb/host/ehci-zynq.c b/drivers/usb/host/ehci-zynq.c
new file mode 100644
index 0000000000..13b551d091
--- /dev/null
+++ b/drivers/usb/host/ehci-zynq.c
@@ -0,0 +1,36 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * USB Low level initialization(Specific to Zynq 7000)
+ */
+
+#include <common.h>
+#include <linux/usb/ulpi.h>
+
+static int zynq_ehci_probe(struct device_d *dev)
+{
+	struct resource *res;
+	void __iomem *base;
+
+	res = dev_get_resource(dev, IORESOURCE_MEM, 0);
+	if (IS_ERR(res))
+		return PTR_ERR(res);
+
+	base = IOMEM(res->start);
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
-- 
2.39.5



