Delivery-date: Tue, 21 Feb 2023 09:07:06 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pUNg2-00Debl-Mb
	for lore@lore.pengutronix.de; Tue, 21 Feb 2023 09:07:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pUNg1-0006rp-4G
	for lore@pengutronix.de; Tue, 21 Feb 2023 09:07:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eGwPCAU/VpE19oz/qE20SAd7Qk8nuYdtzkXSiRXvrvI=; b=cnL8jOzRrwpOQO3FW8TjBJr8g8
	BbmhRygLpbAmWIXoiGpGV4gwKrpJHuNEWGuKG9pUDjriNK/HilRkpDvvh30pExPlTqYpkETkTZ/rG
	+0Upz3JAD6f3nJSftcDuevPghJQuHQAq5Kw38soP1z2PpEa/9/NpJy2i1VCX3BJGC3i/FQVUi56S4
	6jNx2XCU7rQZbOaVJRO2QMwnB5Fs6QJp87dTBrwIL1tVB4Z7RN3iNK1um8r5j0PZWplD4cjK/gayX
	y7oRzOUbAiZbJwRSWMFUjJPZzr73XZfi5dgd3Jzt9FQCXdVEDLLMFKGKJ9rOxtAcWC9qq0uFn2UDl
	vKw0u6qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUNel-006yQe-E6; Tue, 21 Feb 2023 08:05:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUNeV-006yIs-M9
	for barebox@lists.infradead.org; Tue, 21 Feb 2023 08:05:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pUNeS-00061n-G6; Tue, 21 Feb 2023 09:05:28 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pUNeQ-006RjL-Km; Tue, 21 Feb 2023 09:05:27 +0100
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pUNeP-002YHa-Rb; Tue, 21 Feb 2023 09:05:25 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: lst@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 21 Feb 2023 09:05:24 +0100
Message-Id: <20230221080524.607241-13-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230221080524.607241-1-a.fatoum@pengutronix.de>
References: <20230221080524.607241-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230221_000531_747711_60D8A62F 
X-CRM114-Status: GOOD (  16.87  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH RFC 12/12] ARM64: layerscape: configure all DMA masters to be cache-coherent
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Upstream device tree now has /soc/dma-coherent, which breaks USB in
Linux v6.1 when kernel is booted with barebox. Fix this by setting
fixing up cache coherency setting into kernel DT whenever barebox
DT has /soc/dma-coherent.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/Kconfig                            |  1 +
 arch/arm/mach-layerscape/Makefile           |  1 +
 arch/arm/mach-layerscape/dma-coherent.c     | 20 ++++++++++++++++++++
 arch/arm/mach-layerscape/lowlevel-ls1046a.c | 10 ++++++----
 include/soc/fsl/immap_lsch2.h               |  7 +++++++
 5 files changed, 35 insertions(+), 4 deletions(-)
 create mode 100644 arch/arm/mach-layerscape/dma-coherent.c

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 8183f6d54686..0296e227b9ad 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -115,6 +115,7 @@ config ARCH_LAYERSCAPE
 	select HW_HAS_PCI
 	select OFTREE
 	select OFDEVICE
+	select OF_DMA_COHERENCY
 
 config ARCH_MVEBU
 	bool "Marvell EBU platforms"
diff --git a/arch/arm/mach-layerscape/Makefile b/arch/arm/mach-layerscape/Makefile
index 58d3ea820aa3..05965e113bde 100644
--- a/arch/arm/mach-layerscape/Makefile
+++ b/arch/arm/mach-layerscape/Makefile
@@ -4,6 +4,7 @@ obj- := __dummy__.o
 lwl-y += lowlevel.o errata.o
 lwl-$(CONFIG_ARCH_LS1046) += lowlevel-ls1046a.o
 obj-y += icid.o
+obj-y += dma-coherent.o
 obj-pbl-y += boot.o
 pbl-y += xload-qspi.o xload.o
 obj-$(CONFIG_ARCH_LAYERSCAPE_PPA) += ppa.o ppa-entry.o
diff --git a/arch/arm/mach-layerscape/dma-coherent.c b/arch/arm/mach-layerscape/dma-coherent.c
new file mode 100644
index 000000000000..c7bb1cffb080
--- /dev/null
+++ b/arch/arm/mach-layerscape/dma-coherent.c
@@ -0,0 +1,20 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <io.h>
+#include <init.h>
+#include <of_address.h>
+
+static int layerscape_of_fixup_dma_coherent(void)
+{
+	struct device_node *soc;
+
+	soc = of_find_node_by_path("/soc");
+	if (!soc)
+		return -ENOENT;
+
+	if (!of_property_read_bool(soc, "dma-coherent"))
+		return 0;
+
+	return of_register_fixup(of_dma_coherent_fixup, NULL);
+}
+coredevice_initcall(layerscape_of_fixup_dma_coherent);
diff --git a/arch/arm/mach-layerscape/lowlevel-ls1046a.c b/arch/arm/mach-layerscape/lowlevel-ls1046a.c
index 32f825ec2575..320f791164ca 100644
--- a/arch/arm/mach-layerscape/lowlevel-ls1046a.c
+++ b/arch/arm/mach-layerscape/lowlevel-ls1046a.c
@@ -227,11 +227,13 @@ void ls1046a_init_lowlevel(void)
 	set_cntfrq(25000000);
 	syscnt_enable(IOMEM(LSCH2_SYS_COUNTER_ADDR));
 
-	/* Make SEC reads and writes snoopable */
+	/* Make DMA master reads and writes snoopable */
 	setbits_be32(&scfg->snpcnfgcr, SCFG_SNPCNFGCR_SECRDSNP |
-		SCFG_SNPCNFGCR_SECWRSNP |
-		SCFG_SNPCNFGCR_SATARDSNP |
-		SCFG_SNPCNFGCR_SATAWRSNP);
+		SCFG_SNPCNFGCR_SECWRSNP | SCFG_SNPCNFGCR_USB1RDSNP |
+		SCFG_SNPCNFGCR_USB1WRSNP | SCFG_SNPCNFGCR_USB2RDSNP |
+		SCFG_SNPCNFGCR_USB2WRSNP | SCFG_SNPCNFGCR_USB3RDSNP |
+		SCFG_SNPCNFGCR_USB3WRSNP | SCFG_SNPCNFGCR_SATARDSNP |
+		SCFG_SNPCNFGCR_SATAWRSNP | SCFG_SNPCNFGCR_EDMASNP);
 
 	/*
 	 * Enable snoop requests and DVM message requests for
diff --git a/include/soc/fsl/immap_lsch2.h b/include/soc/fsl/immap_lsch2.h
index 1b74c77908d1..969ce93736f9 100644
--- a/include/soc/fsl/immap_lsch2.h
+++ b/include/soc/fsl/immap_lsch2.h
@@ -247,6 +247,13 @@ struct ccsr_gur {
 #define SCFG_SNPCNFGCR_SECWRSNP		0x40000000
 #define SCFG_SNPCNFGCR_SATARDSNP	0x00800000
 #define SCFG_SNPCNFGCR_SATAWRSNP	0x00400000
+#define SCFG_SNPCNFGCR_USB1RDSNP	0x00200000
+#define SCFG_SNPCNFGCR_USB1WRSNP	0x00100000
+#define SCFG_SNPCNFGCR_EDMASNP		0x00020000
+#define SCFG_SNPCNFGCR_USB2RDSNP	0x00008000
+#define SCFG_SNPCNFGCR_USB2WRSNP	0x00010000
+#define SCFG_SNPCNFGCR_USB3RDSNP	0x00002000
+#define SCFG_SNPCNFGCR_USB3WRSNP	0x00004000
 
 /* RGMIIPCR bit definitions*/
 #define SCFG_RGMIIPCR_EN_AUTO		BIT(3)
-- 
2.30.2



