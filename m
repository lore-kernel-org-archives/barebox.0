Delivery-date: Fri, 16 Apr 2021 08:28:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lXHyF-0000pq-Lz
	for lore@lore.pengutronix.de; Fri, 16 Apr 2021 08:28:51 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lXHyE-0007pM-CR
	for lore@pengutronix.de; Fri, 16 Apr 2021 08:28:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Dzc2ikZfkCbzA68paStBOvkqzlzVLhAo5d5lLJEKki4=; b=YAGeESQAJ0Wd7+46duNoxmYxa
	4PYxyVyb2d2AJaNyJ9GkQ8DSVbS+lI4M9+5emudsoDSqfufgJ7m9zD9npdKscPd+aOTtwBbQ7pBc7
	lYRQQpER/eU1fwhFs2ygbD7XduB8H7d/IaBuakRccsj172ZnRZ+CaUoRPEmsX0bX4BxneylqQDoHZ
	7xJ2XfH5ds9qcP4TwIH950eVR0Svi9BRAJ2oGpbv3ZV9JD6NySdk+GHNU7vfivCO7Pdz0Hp3K4Pja
	4l0pm00I/1gTfnqKqY7kgf+a0gauYxY9PbzT8JlYqTICWpxeSBhdeva+nTmpsswbtZ7tE0nf0OaYt
	0+GEhMyBw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lXHvq-0012ER-0q; Fri, 16 Apr 2021 06:26:22 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXHuP-0011qS-FD
 for barebox@desiato.infradead.org; Fri, 16 Apr 2021 06:24:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=x+3NhRnkO5G5qTrbYHK4BXy9ERlqqMiz/+nWY7jTnQw=; b=aZcfOyvOkOknV3TJYXkNhwvF+0
 lA7zkekkrpOgf9Owkq90T7M1mKqjfgXQLW418sDGP8UEI+ds0n4C2H5nH7NwG0m9+ekuVSdXlymY1
 McCFx/WOqqUWg2AEBvnZdqV95zfxQFtdVoUulZVwrHL0JGrdVrEDzPr9a/4A8r7pXkWNgyw4cRW0e
 0+YEZFVL5rFVgATw9CpINnHTPgrKF96d173foAImUHuktfbHpG5vxYi9mIv+1xFYULD7QJesXORgB
 n5fjMYAQFjRE4aSEND37rL6BfkIEaubetLmRWPzp3SZ4JH/fRrFUW7B7kr+55MJ+j22IB/MnLs3aC
 /36vNInw==;
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXHuK-0097Eh-UX
 for barebox@lists.infradead.org; Fri, 16 Apr 2021 06:24:52 +0000
X-Originating-IP: 83.135.94.168
Received: from geraet.fritz.box (unknown [83.135.94.168])
 (Authenticated sender: ahmad@a3f.at)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 816AC1C000E;
 Fri, 16 Apr 2021 06:24:45 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Fri, 16 Apr 2021 08:24:36 +0200
Message-Id: <20210416062436.332665-5-ahmad@a3f.at>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210416062436.332665-1-ahmad@a3f.at>
References: <20210416062436.332665-1-ahmad@a3f.at>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210415_232449_277347_65A87B59 
X-CRM114-Status: GOOD (  26.67  )
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
X-Spam-Status: No, score=-3.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/4] watchdog: add support for Intel TCO watchdog timer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Variants of the iTCO are integrated into many Intel southbridges.
They are most often accessed via PCI. Add a driver for the variant
found in the q35 QEMU machine.

It should be straight forward to extend the itco_chipset_info array
to support more variants in future as the need arises. To test, use:

  qemu-system-x86_64 -M q35 -global ICH9-LPC.noreboot=false

The last option corresponds to a pin strap option, which can't be
influenced from within the VM.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/x86/configs/efi_defconfig |   1 +
 drivers/watchdog/Kconfig       |  17 ++
 drivers/watchdog/Makefile      |   1 +
 drivers/watchdog/itco_wdt.c    | 346 +++++++++++++++++++++++++++++++++
 4 files changed, 365 insertions(+)
 create mode 100644 drivers/watchdog/itco_wdt.c

diff --git a/arch/x86/configs/efi_defconfig b/arch/x86/configs/efi_defconfig
index e007bf8a0150..73614dd4b466 100644
--- a/arch/x86/configs/efi_defconfig
+++ b/arch/x86/configs/efi_defconfig
@@ -87,6 +87,7 @@ CONFIG_STATE_DRV=y
 CONFIG_WATCHDOG=y
 CONFIG_WATCHDOG_EFI=y
 CONFIG_F71808E_WDT=y
+CONFIG_ITCO_WDT=y
 # CONFIG_PINCTRL is not set
 CONFIG_PCI_EFI=y
 CONFIG_FS_EXT4=y
diff --git a/drivers/watchdog/Kconfig b/drivers/watchdog/Kconfig
index cf83b6a15bd4..76c1a89edc19 100644
--- a/drivers/watchdog/Kconfig
+++ b/drivers/watchdog/Kconfig
@@ -117,4 +117,21 @@ config F71808E_WDT
 	  F71862FG, F71868, F71869, F71882FG, F71889FG, F81865 and F81866
 	  Super I/O controllers.
 
+config ITCO_WDT
+	bool "Intel TCO Timer/Watchdog"
+	depends on X86
+	depends on PCI
+	help
+	  Hardware driver for the intel TCO timer based watchdog devices.
+	  These drivers are included in the Intel 82801 I/O Controller
+	  Hub family (from ICH0 up to ICH10) and in the Intel 63xxESB
+	  controller hub.
+
+	  The TCO (Total Cost of Ownership) timer is a watchdog timer
+	  that will reboot the machine after its second expiration.
+
+	  On some motherboards the driver may fail to reset the chipset's
+	  NO_REBOOT flag which prevents the watchdog from rebooting the
+	  machine.
+
 endif
diff --git a/drivers/watchdog/Makefile b/drivers/watchdog/Makefile
index dc9842770a62..b55c58cf3cb3 100644
--- a/drivers/watchdog/Makefile
+++ b/drivers/watchdog/Makefile
@@ -16,3 +16,4 @@ obj-$(CONFIG_RAVE_SP_WATCHDOG) += rave-sp-wdt.o
 obj-$(CONFIG_STM32_IWDG_WATCHDOG) += stm32_iwdg.o
 obj-$(CONFIG_STPMIC1_WATCHDOG) += stpmic1_wdt.o
 obj-$(CONFIG_F71808E_WDT) += f71808e_wdt.o
+obj-$(CONFIG_ITCO_WDT) += itco_wdt.o
diff --git a/drivers/watchdog/itco_wdt.c b/drivers/watchdog/itco_wdt.c
new file mode 100644
index 000000000000..e7bd0fc99bbb
--- /dev/null
+++ b/drivers/watchdog/itco_wdt.c
@@ -0,0 +1,346 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * EFI Boot Guard, iTCO support (Version 3 and later)
+ *
+ * Copyright (c) 2006-2011 Wim Van Sebroeck <wim@iguana.be>.
+ * Copyright (c) 2019 Siemens AG
+ * Copyright (c) 2019 Ahmad Fatoum, Pengutronix
+ *
+ * Authors:
+ *  Jan Kiszka <jan.kiszka@siemens.com>
+ *  Christian Storm <christian.storm@siemens.com>
+ */
+
+#include <common.h>
+#include <init.h>
+#include <efi.h>
+#include <linux/pci.h>
+#include <watchdog.h>
+
+#define ACPIBASE		0x40
+#define ACPICTRL_PMCBASE	0x44
+
+#define PMBASE_ADDRMASK		0x0000ff80
+#define PMCBASE_ADDRMASK	0xfffffe00
+
+#define ACPIBASE_GCS_OFF	0x3410
+
+#define ACPIBASE_SMI_OFF	0x30
+#define ACPIBASE_SMI_END	0x33
+#define ACPIBASE_PMC_OFF	0x08
+#define ACPIBASE_PMC_END	0x0c
+#define ACPIBASE_TCO_OFF	0x60
+#define ACPIBASE_TCO_END	0x7f
+
+#define SMI_TCO_MASK		(1 << 13)
+
+#define TCO_TMR_HLT_MASK	(1 << 11)
+
+/* SMI Control and Enable Register */
+#define SMI_EN(itco)	((itco)->smibase)
+/* TCO base address */
+#define TCOBASE(itco)	((itco)->tcobase)
+
+#define TCO_RLD(p)	(TCOBASE(p) + 0x00) /* TCO Timer Reload/Curr. Value */
+#define TCOv1_TMR(p)	(TCOBASE(p) + 0x01) /* TCOv1 Timer Initial Value*/
+#define TCO_DAT_IN(p)	(TCOBASE(p) + 0x02) /* TCO Data In Register	*/
+#define TCO_DAT_OUT(p)	(TCOBASE(p) + 0x03) /* TCO Data Out Register	*/
+#define TCO1_STS(p)	(TCOBASE(p) + 0x04) /* TCO1 Status Register	*/
+#define TCO2_STS(p)	(TCOBASE(p) + 0x06) /* TCO2 Status Register	*/
+#define TCO1_CNT(p)	(TCOBASE(p) + 0x08) /* TCO1 Control Register	*/
+#define TCO2_CNT(p)	(TCOBASE(p) + 0x0a) /* TCO2 Control Register	*/
+#define TCOv2_TMR(p)	(TCOBASE(p) + 0x12) /* TCOv2 Timer Initial Value*/
+
+#define PMC_NO_REBOOT_MASK	(1 << 4)
+
+#define RCBABASE		0xf0
+
+#define PCI_ID_ITCO_INTEL_ICH9		0x2918
+
+struct itco_priv;
+
+struct itco_info {
+	u32 pci_id;
+	const char *name;
+	u32 pmbase;
+	u32 smireg;
+	int (*update_no_reboot_bit)(struct itco_priv *itco, bool set);
+	unsigned version;
+};
+
+struct itco_priv {
+	struct pci_dev *pdev;
+	struct watchdog wdd;
+	void __iomem *io;
+	u32 smibase;
+	u32 tcobase;
+	void __iomem *gcs_pmc;
+	struct itco_info *info;
+	unsigned timeout;
+};
+
+static u32 itco_get_pmbase(struct itco_priv *itco)
+{
+	u32 pmbase = itco->info->pmbase;
+
+	if (!pmbase)
+		pci_read_config_dword(itco->pdev, ACPIBASE, &pmbase);
+
+	return pmbase & PMBASE_ADDRMASK;
+}
+
+static inline struct itco_priv *to_itco_priv(struct watchdog *wdd)
+{
+	return container_of(wdd, struct itco_priv, wdd);
+}
+
+static void itco_wdt_ping(struct itco_priv *itco)
+{
+	/* Reload the timer by writing to the TCO Timer Counter register */
+	outw(0x0001, TCO_RLD(itco));
+}
+
+static inline unsigned int seconds_to_ticks(struct itco_priv *itco, int secs)
+{
+	return itco->info->version == 3 ? secs : (secs * 10) / 6;
+}
+
+static inline unsigned int ticks_to_seconds(struct itco_priv *itco, int ticks)
+{
+	return itco->info->version == 3 ? ticks : (ticks * 6) / 10;
+}
+
+
+static int itco_wdt_start(struct itco_priv *itco, unsigned int timeout)
+{
+	unsigned tmrval;
+	u32 value;
+	int ret;
+
+	tmrval = seconds_to_ticks(itco, timeout);
+
+	/* Enable TCO SMIs */
+	value = inl(SMI_EN(itco)) | SMI_TCO_MASK;
+	outl(value, SMI_EN(itco));
+
+	/* Set timer value */
+	value = inw(TCOv2_TMR(itco));
+
+	value &= 0xfc00;
+	value |= tmrval & 0x3ff;
+
+	outw(value, TCOv2_TMR(itco));
+	value = inw(TCOv2_TMR(itco));
+
+	if ((value & 0x3ff) != tmrval)
+		return -EINVAL;
+
+	/* Force reloading of timer value */
+	outw(1, TCO_RLD(itco));
+
+	/* Clear NO_REBOOT flag */
+	ret = itco->info->update_no_reboot_bit(itco, false);
+	if (ret)
+		return ret;
+
+	/* Clear HLT flag to start timer */
+	value = inw(TCO1_CNT(itco)) & ~TCO_TMR_HLT_MASK;
+	outw(value, TCO1_CNT(itco));
+	value = inw(TCO1_CNT(itco));
+
+	if (value & 0x0800)
+		return -EIO;
+
+	return 0;
+}
+
+static int itco_wdt_stop(struct itco_priv *itco)
+{
+	u32 val;
+
+	/* Bit 11: TCO Timer Halt -> 1 = The TCO timer is disabled */
+	val = inw(TCO1_CNT(itco)) | 0x0800;
+	outw(val, TCO1_CNT(itco));
+	val = inb(TCO1_CNT(itco));
+
+	/* Set the NO_REBOOT bit to prevent later reboots, just for sure */
+	itco->info->update_no_reboot_bit(itco, true);
+
+	if ((val & 0x0800) == 0)
+		return -EIO;
+	return 0;
+}
+
+static int itco_wdt_set_timeout(struct watchdog *wdd, unsigned int timeout)
+{
+	struct itco_priv *itco = to_itco_priv(wdd);
+	int ret;
+
+	if (!timeout)
+		return itco_wdt_stop(itco);
+
+	/* from the specs: */
+	/* "Values of 0h-3h are ignored and should not be attempted" */
+	if (timeout < 0x04)
+		return -EINVAL;
+
+	if (itco->timeout != timeout) {
+		ret = itco_wdt_start(itco, timeout);
+		if (ret) {
+			dev_err(wdd->hwdev, "Fail to (re)start watchdog\n");
+			return ret;
+		}
+	}
+
+	itco_wdt_ping(itco);
+	return 0;
+}
+
+static inline u32 no_reboot_bit(unsigned version)
+{
+	u32 enable_bit;
+
+	switch (version) {
+	case 5:
+	case 3:
+		enable_bit = 0x00000010;
+		break;
+	case 2:
+		enable_bit = 0x00000020;
+		break;
+	case 4:
+	case 1:
+	default:
+		enable_bit = 0x00000002;
+		break;
+	}
+
+	return enable_bit;
+}
+
+
+static int update_no_reboot_bit(struct itco_priv *itco, bool set)
+{
+	u32 val32 = 0, newval32 = 0;
+
+	val32 = readl(itco->gcs_pmc);
+	if (set)
+		val32 |= no_reboot_bit(itco->info->version);
+	else
+		val32 &= ~no_reboot_bit(itco->info->version);
+	writel(val32, itco->gcs_pmc);
+	newval32 = readl(itco->gcs_pmc);
+
+	/* make sure the update is successful */
+	if (val32 != newval32)
+		return -EPERM;
+
+	return 0;
+}
+
+static void lpc_ich_enable_acpi_space(struct itco_priv *itco)
+{
+	u8 reg_save;
+
+	pci_read_config_byte(itco->pdev, ACPICTRL_PMCBASE, &reg_save);
+	pci_write_config_byte(itco->pdev, ACPICTRL_PMCBASE, reg_save | 0x80);
+}
+
+enum itco_chipsets {
+	ITCO_INTEL_ICH9,
+};
+
+/* version 1 not supported! */
+static struct itco_info itco_chipset_info[] = {
+	[ITCO_INTEL_ICH9] = {
+		.pci_id = PCI_ID_ITCO_INTEL_ICH9,
+		.name = "ICH9", /* QEmu machine q35 */
+		.smireg = 0x30,
+		.update_no_reboot_bit = update_no_reboot_bit,
+		.version = 2,
+	},
+};
+
+static int itco_wdt_probe(struct pci_dev *pdev, const struct pci_device_id *id)
+{
+	struct itco_priv *itco;
+	struct watchdog *wdd;
+	u32 rcba_base_cfg;
+	u32 pmbase;
+	int ret;
+	int i;
+
+	pci_enable_device(pdev);
+	pci_set_master(pdev);
+
+	itco = xzalloc(sizeof(*itco));
+
+	itco->pdev = pdev;
+
+	for (i = 0; i < ARRAY_SIZE(itco_chipset_info); i++) {
+		if (id->device == itco_chipset_info[i].pci_id) {
+			itco->info = &itco_chipset_info[i];
+			break;
+		}
+	}
+
+	if (!itco->info)
+		return -ENODEV;
+
+
+	pci_read_config_dword(itco->pdev, RCBABASE, &rcba_base_cfg);
+	if (!(rcba_base_cfg & 1)) {
+		dev_notice(&pdev->dev, "RCBA is disabled by hardware/BIOS, device disabled\n");
+		return -ENODEV;
+	}
+
+	pmbase = itco_get_pmbase(itco);
+	if (!pmbase) {
+		dev_notice(&itco->pdev->dev, "I/O space for ACPI uninitialized\n");
+		return -ENODEV;
+	}
+
+	itco->smibase = pmbase + ACPIBASE_SMI_OFF;
+	itco->tcobase = pmbase + ACPIBASE_TCO_OFF;
+
+	lpc_ich_enable_acpi_space(itco);
+
+	itco->gcs_pmc = IOMEM(rcba_base_cfg & 0xffffc000UL) + ACPIBASE_GCS_OFF;
+
+
+	dev_notice(&pdev->dev, "gcs_pmc = 0x%p, smibase = 0x%x, tcobase = 0x%x\n",
+		   itco->gcs_pmc, itco->smibase, itco->tcobase);
+
+	wdd = &itco->wdd;
+	wdd->hwdev = &pdev->dev;
+	wdd->set_timeout = itco_wdt_set_timeout;
+
+	wdd->timeout_max = ticks_to_seconds(itco, 0x3ff);
+
+	outw(0x0008, TCO1_STS(itco)); /* Clear the Time Out Status bit */
+	outw(0x0002, TCO2_STS(itco)); /* Clear SECOND_TO_STS bit */
+	outw(0x0004, TCO2_STS(itco)); /* Clear BOOT_STS bit */
+
+	ret = watchdog_register(wdd);
+	if (ret) {
+		dev_err(&pdev->dev, "Failed to register watchdog device\n");
+		return ret;
+	}
+
+	dev_info(&pdev->dev, "probed Intel TCO %s watchdog\n", itco->info->name);
+
+	return 0;
+}
+
+
+static DEFINE_PCI_DEVICE_TABLE(itco_wdt_pci_tbl) = {
+	{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, PCI_ID_ITCO_INTEL_ICH9) },
+	{ /* sentinel */ },
+};
+
+static struct pci_driver itco_wdt_driver = {
+	.name = "itco_wdt",
+	.id_table = itco_wdt_pci_tbl,
+	.probe = itco_wdt_probe,
+};
+device_pci_driver(itco_wdt_driver);
-- 
2.31.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

