Delivery-date: Fri, 26 Jun 2026 18:23:08 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wd9Ke-00A8Hv-01
	for lore@lore.pengutronix.de;
	Fri, 26 Jun 2026 18:23:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wd9Kc-0002O6-RK
	for lore@pengutronix.de; Fri, 26 Jun 2026 18:23:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=n96M6fUtjVUXJbvTZaHZ+vu9bS+ZNhRh6vKqMH/WXZA=; b=T2OoQyUWJpbh4rMDtbY9rExk/i
	DVKWafYXGKKICpBaHDWQRuFKxJf1nV+lPzRXPyE5LY/ZjcIDniP0JDL3SbLHyD6mlMpzNWiLUYYVN
	hte16466tjuQN3tRC3hPXfgaPzMFgpifahEnX7vpEn/lOhDYF5GvyesFlBgJ/tITi0ChANPr5PDRa
	RhKx3Ujitq17p2oVUFC6fFoBCSzceres3mIzk7gVV9ChGVblwtKXg2cVEucw36mm7uiyd8YgzjzNA
	wjGmUEM+TVwfM1xbvv49OkU9e08UvTtqduFqWqAAv0V3T3PA1kDp5rluZ4UiQQlJ6m0RnGjGattlY
	m6/tOquQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd9JQ-0000000BcUz-2UwQ;
	Fri, 26 Jun 2026 16:21:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd9JK-0000000BcPX-2ORv
	for barebox@lists.infradead.org;
	Fri, 26 Jun 2026 16:21:50 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wd9JI-0006R9-WE; Fri, 26 Jun 2026 18:21:45 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri, 26 Jun 2026 18:19:38 +0200
Message-ID: <20260626162136.1885999-7-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260626162136.1885999-1-a.fatoum@barebox.org>
References: <20260626162136.1885999-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260626_092146_778059_A1DD9888 
X-CRM114-Status: GOOD (  19.42  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 7/9] mci: add PCI SDHCI controller support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

QEMU can expose eMMC through the class-compliant sdhci-pci device, but
barebox only had platform SDHCI glue. Add a PCI host driver that maps BAR0,
enables bus mastering, initializes the SDHCI core and registers an MCI host.

This is intentionally small and PIO-based, which is enough for the QEMU RPMB
test environment while reusing the common SDHCI helpers.

Assisted-by: Codex:gpt-5.5
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
v1 -> v2:
  - new commit
---
 drivers/mci/Kconfig     |   8 ++
 drivers/mci/Makefile    |   1 +
 drivers/mci/mci-core.c  |   2 +-
 drivers/mci/sdhci-pci.c | 203 ++++++++++++++++++++++++++++++++++++++++
 4 files changed, 213 insertions(+), 1 deletion(-)
 create mode 100644 drivers/mci/sdhci-pci.c

diff --git a/drivers/mci/Kconfig b/drivers/mci/Kconfig
index b38f7a3bdf8b..55e63aad92d4 100644
--- a/drivers/mci/Kconfig
+++ b/drivers/mci/Kconfig
@@ -90,6 +90,14 @@ config MCI_MMC_RPMB
 
 comment "--- MCI host drivers ---"
 
+config MCI_SDHCI_PCI
+	bool "PCI SDHCI controller"
+	depends on PCI && HAS_DMA
+	select MCI_SDHCI
+	help
+	  Enable support for PCI-attached SDHCI controllers, such as QEMU's
+	  sdhci-pci device used to attach emulated eMMC devices.
+
 config MCI_DWC_MSHC
 	bool "Synopsys DesignWare Cores MSHC"
 	depends on HAS_DMA
diff --git a/drivers/mci/Makefile b/drivers/mci/Makefile
index 67a1f7bf1724..761f4187c079 100644
--- a/drivers/mci/Makefile
+++ b/drivers/mci/Makefile
@@ -2,6 +2,7 @@
 obj-$(CONFIG_MCI)		+= mci-core.o
 pbl-$(CONFIG_MCI)		+= mci-pbl.o
 obj-$(CONFIG_MCI_MMC_RPMB)	+= rpmb.o
+obj-$(CONFIG_MCI_SDHCI_PCI)	+= sdhci-pci.o
 obj-$(CONFIG_MCI_AM654)		+= am654-sdhci.o
 obj-$(CONFIG_MCI_ARASAN)	+= arasan-sdhci.o
 obj-$(CONFIG_MCI_ATMEL)		+= atmel_mci.o atmel_mci_common.o
diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 4413fd1655aa..d6746fbec28f 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -2942,7 +2942,7 @@ static struct device_node *mci_get_partition_node(struct device_node *hwnode,
 	struct device_node *np;
 	char partnodename[sizeof("bootx-partitions")];
 
-	if (index > 8)
+	if (!hwnode || index > 8)
 		return NULL;
 
 	switch (type) {
diff --git a/drivers/mci/sdhci-pci.c b/drivers/mci/sdhci-pci.c
new file mode 100644
index 000000000000..1c8ad5435697
--- /dev/null
+++ b/drivers/mci/sdhci-pci.c
@@ -0,0 +1,203 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#include <dma.h>
+#include <init.h>
+#include <io.h>
+#include <malloc.h>
+#include <mci.h>
+#include <module.h>
+#include <linux/pci.h>
+#include <linux/pci_ids.h>
+
+#include "sdhci.h"
+
+struct sdhci_pci_host {
+	struct mci_host mci;
+	struct sdhci sdhci;
+};
+
+static inline struct sdhci_pci_host *to_sdhci_pci_host(struct mci_host *mci)
+{
+	return container_of(mci, struct sdhci_pci_host, mci);
+}
+
+#define PCI_CLASS_SYSTEM_SDHCI_DMA	((PCI_CLASS_SYSTEM_SDHCI << 8) | 0x01)
+
+static const struct pci_device_id pci_ids[] = {
+	/* Generic SD host controller */
+	{PCI_DEVICE_CLASS(PCI_CLASS_SYSTEM_SDHCI_DMA, PCI_ANY_ID)},
+	{ /* end: all zeroes */ },
+};
+
+MODULE_DEVICE_TABLE(pci, pci_ids);
+
+/*****************************************************************************\
+ *                                                                           *
+ * MCI core callbacks                                                        *
+ *                                                                           *
+\*****************************************************************************/
+
+static int sdhci_pci_init(struct mci_host *mci, struct device *dev)
+{
+	struct sdhci_pci_host *host = to_sdhci_pci_host(mci);
+	int ret;
+
+	(void)dev;
+
+	ret = sdhci_reset(&host->sdhci, SDHCI_RESET_ALL);
+	if (ret)
+		return ret;
+
+	sdhci_write8(&host->sdhci, SDHCI_POWER_CONTROL,
+		     SDHCI_BUS_VOLTAGE_330 | SDHCI_BUS_POWER_EN);
+	udelay(400);
+
+	sdhci_write32(&host->sdhci, SDHCI_INT_ENABLE,
+		      SDHCI_INT_CMD_MASK | SDHCI_INT_DATA_MASK);
+	sdhci_write32(&host->sdhci, SDHCI_SIGNAL_ENABLE, 0);
+
+	return 0;
+}
+
+static void sdhci_pci_set_ios(struct mci_host *mci, struct mci_ios *ios)
+{
+	struct sdhci_pci_host *host = to_sdhci_pci_host(mci);
+	u8 val;
+
+	if (ios->clock)
+		sdhci_set_clock(&host->sdhci, ios->clock, host->sdhci.max_clk);
+
+	sdhci_set_bus_width(&host->sdhci, ios->bus_width);
+
+	val = sdhci_read8(&host->sdhci, SDHCI_HOST_CONTROL);
+	if (ios->clock > 26000000)
+		val |= SDHCI_CTRL_HISPD;
+	else
+		val &= ~SDHCI_CTRL_HISPD;
+	sdhci_write8(&host->sdhci, SDHCI_HOST_CONTROL, val);
+}
+
+static int sdhci_pci_send_cmd(struct mci_host *mci, struct mci_cmd *cmd)
+{
+	struct sdhci_pci_host *host = to_sdhci_pci_host(mci);
+
+	return sdhci_send_command(&host->sdhci, cmd);
+}
+
+static int sdhci_pci_card_present(struct mci_host *mci)
+{
+	struct sdhci_pci_host *host = to_sdhci_pci_host(mci);
+
+	return !!(sdhci_read32(&host->sdhci, SDHCI_PRESENT_STATE) &
+		  SDHCI_CARD_PRESENT);
+}
+
+static int sdhci_pci_card_write_protected(struct mci_host *mci)
+{
+	struct sdhci_pci_host *host = to_sdhci_pci_host(mci);
+
+	return !(sdhci_read32(&host->sdhci, SDHCI_PRESENT_STATE) &
+		 SDHCI_WRITE_PROTECT);
+}
+
+static const struct mci_ops sdhci_pci_ops = {
+	.init = sdhci_pci_init,
+	.set_ios = sdhci_pci_set_ios,
+	.send_cmd = sdhci_pci_send_cmd,
+	.card_present = sdhci_pci_card_present,
+	.card_write_protected = sdhci_pci_card_write_protected,
+};
+
+/*****************************************************************************\
+ *                                                                           *
+ * Device probing/removal                                                    *
+ *                                                                           *
+\*****************************************************************************/
+
+static int sdhci_pci_probe(struct pci_dev *pdev,
+			   const struct pci_device_id *ent)
+{
+	struct sdhci_pci_host *host;
+	struct mci_host *mci;
+	void __iomem *base;
+	int ret;
+
+	(void)ent;
+
+	dev_info(&pdev->dev, "SDHCI controller found [%04x:%04x] (rev %x)\n",
+		 (int)pdev->vendor, (int)pdev->device, (int)pdev->revision);
+
+	ret = pci_enable_device(pdev);
+	if (ret)
+		return ret;
+
+	pci_set_master(pdev);
+
+	base = pci_iomap(pdev, 0);
+	if (!base)
+		return dev_err_probe(&pdev->dev, -EBUSY, "failed to map BAR0\n");
+
+	host = xzalloc(sizeof(*host));
+	mci = &host->mci;
+
+	host->sdhci.base = base;
+	host->sdhci.mci = mci;
+	host->sdhci.quirks2 = SDHCI_QUIRK2_BROKEN_HS200;
+
+	mci->hw_dev = &pdev->dev;
+	mci->ops = sdhci_pci_ops;
+	mci->max_req_size = 0x8000;
+
+	ret = sdhci_setup_host(&host->sdhci);
+	if (ret)
+		goto err;
+
+	if (host->sdhci.flags & SDHCI_USE_64_BIT_DMA)
+		dma_set_mask(&pdev->dev, DMA_BIT_MASK(64));
+	else
+		dma_set_mask(&pdev->dev, DMA_BIT_MASK(32));
+
+	ret = sdhci_setup_adma(&host->sdhci);
+	if (ret && ret != -ENOTSUPP)
+		dev_warn(&pdev->dev, "ADMA setup failed (%pe), falling back to SDMA\n",
+			 ERR_PTR(ret));
+
+	mci->f_max = host->sdhci.max_clk;
+	if (!mci->f_max)
+		mci->f_max = 50000000;
+	mci->f_min = mci->f_max / SDHCI_MAX_DIV_SPEC_300;
+
+	pdev->dev.priv = host;
+
+	ret = mci_register(mci);
+	if (ret)
+		goto err;
+
+	return 0;
+
+err:
+	pdev->dev.priv = NULL;
+	free(host);
+	return ret;
+}
+
+static void sdhci_pci_remove(struct pci_dev *pdev)
+{
+	struct sdhci_pci_host *host = pdev->dev.priv;
+
+	sdhci_release_adma(&host->sdhci);
+	pci_clear_master(pdev);
+}
+
+static struct pci_driver sdhci_driver = {
+	.name =		"sdhci-pci",
+	.id_table =	pci_ids,
+	.probe =	sdhci_pci_probe,
+	.remove =	sdhci_pci_remove,
+};
+
+static int __init sdhci_pci_driver_init(void)
+{
+	return pci_register_driver(&sdhci_driver);
+}
+module_init(sdhci_pci_driver_init);
-- 
2.47.3



