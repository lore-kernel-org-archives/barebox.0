Delivery-date: Wed, 10 Jan 2024 17:02:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNb2V-00BoJz-0R
	for lore@lore.pengutronix.de;
	Wed, 10 Jan 2024 17:02:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNb2U-0002nK-FC
	for lore@pengutronix.de; Wed, 10 Jan 2024 17:02:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZmqmOD7hWlfnjyPqIcWTLR5J/G4So9Lxqr8bos8Dgz4=; b=yTSuLHRwQHfF/gKkpLnqxMzUFl
	DwbK0Kx9t8f4IvioE94WPwUO5zye0kc+VovdE2bPC2he8HqVGfcapKSNxrhAcqtqkgtY+6ejcMc4N
	q6oyA6xCPZNkTvLCLo9XlX7tz42QJrnnZSf8oxwyB1k04G1s3wWIpPDy5OzlsLk4zk03gHpYFv7fV
	KVruHukqWbmrjZjx6/NY8M2/D68vl4mcqHbcuCVu/DxCV7FCzN1yYg30uNr2ofxKBAcz9IZaryoWS
	clsWY1GnWfTwrVpLEF9FAx60FmP2O5SBcCIsuKt8fo029PyZJGEuDDCm6JIEeAo9NO7StRBMhJK4s
	aEQk+6KQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNb1Q-00Ckli-0X;
	Wed, 10 Jan 2024 16:01:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNb1E-00Ckaz-29
	for barebox@lists.infradead.org;
	Wed, 10 Jan 2024 16:01:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rNb1D-0002Ce-G8; Wed, 10 Jan 2024 17:01:27 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rNb1D-001jv7-3D; Wed, 10 Jan 2024 17:01:27 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rNb1D-00HLtL-00;
	Wed, 10 Jan 2024 17:01:27 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 10 Jan 2024 17:01:11 +0100
Message-Id: <20240110160112.4134162-10-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240110160112.4134162-1-a.fatoum@pengutronix.de>
References: <20240110160112.4134162-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240110_080128_719570_47131E59 
X-CRM114-Status: GOOD (  16.71  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 09/11] dma: align barebox DMA coherency setting with kernel's
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

ARM platforms that have cache-coherent peripherals should select
OF_DMA_COHERENCY. These same platforms may run into issues if kernel DT
is changed to assume cache coherency, while barebox DT wasn't.

Therefore add a fixup that fixes up barebox dma-coherent setting into
the kernel's. That way we only have to make sure that Linux and barebox
are in-sync regarding CONFIG_ARCH_DMA_DEFAULT_COHERENT.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - split from Layerscape support and make it generic to all users of
    CONFIG_OF_DMA_COHERENCY
  - fixup both dma-coherent or dma-noncoherent if needed
  - don't fix up new property of coherency setting is the default
---
 drivers/dma/Kconfig     |  5 ++++-
 drivers/dma/Makefile    |  1 +
 drivers/dma/of_fixups.c | 40 ++++++++++++++++++++++++++++++++++++++++
 3 files changed, 45 insertions(+), 1 deletion(-)
 create mode 100644 drivers/dma/of_fixups.c

diff --git a/drivers/dma/Kconfig b/drivers/dma/Kconfig
index 635b11c7af7d..e7516466d9d3 100644
--- a/drivers/dma/Kconfig
+++ b/drivers/dma/Kconfig
@@ -15,6 +15,9 @@ config OF_DMA_COHERENCY
 	  For most platforms supported, either all DMA is coherent or it isn't.
 	  Platforms that have DMA masters of mixed coherency or that differ
 	  from the architecture default will select this option to parse
-	  DMA coherency out of the DT.
+	  DMA coherency out of the DT. This allows barebox to choose the
+	  correct cache maintenance operation during runtime and will cause
+	  barebox to fix up its own DMA coherency setting into the kernel
+	  DT if it differs.
 
 endmenu
diff --git a/drivers/dma/Makefile b/drivers/dma/Makefile
index b55c16e768d5..77bd8abba52c 100644
--- a/drivers/dma/Makefile
+++ b/drivers/dma/Makefile
@@ -2,3 +2,4 @@
 obj-$(CONFIG_HAS_DMA)		+= map.o
 obj-$(CONFIG_DMA_API_DEBUG)	+= debug.o
 obj-$(CONFIG_MXS_APBH_DMA)	+= apbh_dma.o
+obj-$(CONFIG_OF_DMA_COHERENCY)	+= of_fixups.o
diff --git a/drivers/dma/of_fixups.c b/drivers/dma/of_fixups.c
new file mode 100644
index 000000000000..668313bbfb57
--- /dev/null
+++ b/drivers/dma/of_fixups.c
@@ -0,0 +1,40 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#include <of.h>
+#include <of_address.h>
+#include <driver.h>
+
+static int of_dma_coherent_fixup(struct device_node *root, void *data)
+{
+	struct device_node *soc;
+	enum dev_dma_coherence coherency = (enum dev_dma_coherence)(uintptr_t)data;
+
+	soc = of_find_node_by_path_from(root, "/soc");
+	if (!soc)
+		return -ENOENT;
+
+	of_property_write_bool(soc, "dma-noncoherent", coherency == DEV_DMA_NON_COHERENT);
+	of_property_write_bool(soc, "dma-coherent", coherency == DEV_DMA_COHERENT);
+
+	return 0;
+}
+
+static int of_dma_coherent_fixup_register(void)
+{
+	struct device_node *soc;
+	enum dev_dma_coherence soc_dma_coherency;
+
+	soc = of_find_node_by_path("/soc");
+	if (!soc)
+		return -ENOENT;
+
+	if (of_property_read_bool(soc, "dma-coherent"))
+		soc_dma_coherency = DEV_DMA_COHERENT;
+	else if (of_property_read_bool(soc, "dma-noncoherent"))
+		soc_dma_coherency = DEV_DMA_NON_COHERENT;
+	else
+		soc_dma_coherency = DEV_DMA_COHERENCE_DEFAULT;
+
+	return of_register_fixup(of_dma_coherent_fixup, (void *)(uintptr_t)soc_dma_coherency);
+}
+coredevice_initcall(of_dma_coherent_fixup_register);
-- 
2.39.2



