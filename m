Delivery-date: Tue, 16 Jul 2024 14:03:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTguI-005RDh-11
	for lore@lore.pengutronix.de;
	Tue, 16 Jul 2024 14:03:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sTguH-0003FC-Kv
	for lore@pengutronix.de; Tue, 16 Jul 2024 14:03:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=oHrXMJCR0xD72kP2hnf8FTKETou0NaDdkugb0UBm32s=; b=bePfyCfs6kpF5Cied2dj6j3/i4
	y/O8j9L6dakT6PCz1rKZn56sgO2A0eWooCu9LHpqGHVHNAoMFq6xbwR8D63ScahQBr+YJxsXcfTF8
	zUJwShZQazdXs7VOYznuknGjKpkIJIF7tlRle+RhXl2fIvRfDh2rZEI+u6xYwxf7VDrLLpbjyh4DP
	9uDB/02gUlAUxpdw/phyPNBCsR41hs2cCMQDIkxwAPinxlJdo7ditAib+cmdzbAMWKE2QCVpkc9sY
	49JLzZ5pCnoNCXJLgq8AgECvhBT0Y7r9u84DyFcnSKHlC6QwwVhZ+onTIzXKmgNcLznbZRj6GEdiO
	v40Jc8rA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTgtq-0000000ALZu-09GO;
	Tue, 16 Jul 2024 12:03:18 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTgtn-0000000ALZR-3ZpQ
	for barebox@bombadil.infradead.org;
	Tue, 16 Jul 2024 12:03:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=oHrXMJCR0xD72kP2hnf8FTKETou0NaDdkugb0UBm32s=; b=VvLoc1mBcWiMgH+knUghBwQ/QY
	BEOjC1Je+1R50ToX2dV2xWkO9hR1WDRoAnBKiork2e4D1G6jXNe08xoltyDzZJyAKuX2ktYGXr7Vf
	U5nHRcnxpIu6WVDEFuI0zVocdoQMt7mbM8Xx7pgx4xAM/jxFgn4wRfrVBR/CVzpKHHfW4q+kVqHbP
	v4lC1EgYO/RfASzfLwbXXApCWc4atdLneT8B/YOAATqM6MferbvnStpfWyEYDkeVUcyb2Uet3u90D
	dkBvbjDOfOp9b4WlQgQkqB+WCrzmlYuP6qxo0yMvXUXjFqkvRtfK2Dm9dRmYbHQxAhKPNMXJw8mHb
	DpFtk8oQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sTgtk-0000000224C-1piY
	for barebox@lists.infradead.org;
	Tue, 16 Jul 2024 12:03:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTgtj-00031o-S8; Tue, 16 Jul 2024 14:03:11 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTgtj-0007a9-FZ; Tue, 16 Jul 2024 14:03:11 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sTgtj-008LGV-1G;
	Tue, 16 Jul 2024 14:03:11 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 16 Jul 2024 14:03:09 +0200
Message-Id: <20240716120310.1968471-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240716_130312_592139_CCC59CEF 
X-CRM114-Status: GOOD (  18.57  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/2] sandbox: alias I/O ports region in MMIO space
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We currently define __pci_iobase to please static analyzers that would
otherwise complain about inb/outb and friends accessing the NULL page.

Let's make better use of it and add a node representing it to the device
tree. This way we can add simple memory mapped peripherals on top that
just need writable registers that can be read back in tests.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - new commit: instead of messing with readb/writeb and friends'
    definition, we just do a device tree fixup
---
 arch/sandbox/board/Makefile   |  1 +
 arch/sandbox/board/devices.c  |  2 --
 arch/sandbox/board/io-ports.c | 35 +++++++++++++++++++++++++++++++++++
 arch/sandbox/dts/sandbox.dts  |  6 ++++++
 4 files changed, 42 insertions(+), 2 deletions(-)
 create mode 100644 arch/sandbox/board/io-ports.c

diff --git a/arch/sandbox/board/Makefile b/arch/sandbox/board/Makefile
index b4bab02163fb..8e6e1d2d8843 100644
--- a/arch/sandbox/board/Makefile
+++ b/arch/sandbox/board/Makefile
@@ -1,5 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
+obj-y += io-ports.o
 obj-y += board.o
 obj-y += clock.o
 obj-y += hostfile.o
diff --git a/arch/sandbox/board/devices.c b/arch/sandbox/board/devices.c
index ecd24e920721..0f344017b213 100644
--- a/arch/sandbox/board/devices.c
+++ b/arch/sandbox/board/devices.c
@@ -10,8 +10,6 @@
 #include <mach/linux.h>
 #include <asm/io.h>
 
-unsigned char __pci_iobase[IO_SPACE_LIMIT];
-
 static LIST_HEAD(sandbox_device_list);
 
 int sandbox_add_device(struct device *dev)
diff --git a/arch/sandbox/board/io-ports.c b/arch/sandbox/board/io-ports.c
new file mode 100644
index 000000000000..c5a26cdd0155
--- /dev/null
+++ b/arch/sandbox/board/io-ports.c
@@ -0,0 +1,35 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#include <asm/io.h>
+#include <driver.h>
+#include <of.h>
+
+unsigned char __pci_iobase[IO_SPACE_LIMIT];
+
+static int ioport_bus_probe(struct device *dev)
+{
+	struct device_node *bus = dev->of_node;
+	u64 arr[3] = {
+		0,				/* child bus address */
+		virt_to_phys(__pci_iobase),	/* parent bus address */
+		sizeof(__pci_iobase),		/* resource size */
+	};
+
+	of_property_write_u64_array(bus, "reg", &arr[1], 2);
+	of_property_write_u64_array(bus, "ranges", &arr[0], 3);
+
+	return of_platform_populate(bus, of_default_bus_match_table, dev);
+}
+
+static __maybe_unused struct of_device_id sandbox_ioport_dt_ids[] = {
+	{ .compatible = "barebox,sandbox-ioport-bus", },
+	{ /* sentinel */ }
+};
+MODULE_DEVICE_TABLE(of, sandbox_ioport_dt_ids);
+
+static struct driver sandbox_ioport_driver = {
+	.name  = "sandbox-ioport-bus",
+	.of_compatible = sandbox_ioport_dt_ids,
+	.probe = ioport_bus_probe,
+};
+postcore_platform_driver(sandbox_ioport_driver);
diff --git a/arch/sandbox/dts/sandbox.dts b/arch/sandbox/dts/sandbox.dts
index 3ed2c115a67e..ea75f3a6a9b0 100644
--- a/arch/sandbox/dts/sandbox.dts
+++ b/arch/sandbox/dts/sandbox.dts
@@ -55,6 +55,12 @@ y {
 		};
 	};
 
+	io-ports {
+		compatible = "barebox,sandbox-ioport-bus";
+		#address-cells = <2>;
+		#size-cells = <2>;
+	};
+
 	stickypage: stickypage {
 		compatible = "barebox,stickypage", "syscon";
 		reg = <0 0 0 4096>;
-- 
2.39.2



