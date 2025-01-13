Delivery-date: Mon, 13 Jan 2025 12:29:33 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tXIdQ-000ZuE-37
	for lore@lore.pengutronix.de;
	Mon, 13 Jan 2025 12:29:32 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tXIdO-0006Mg-EO
	for lore@pengutronix.de; Mon, 13 Jan 2025 12:29:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zqp5SXQRDWx6KWw21YNv/u9SjKP3pZbgPd9AvM1t3TM=; b=IcfyieTs7iqHjwow7rewJ7yd3i
	bonECROMXBqkNysHCAw+6U+kFLr7XlknVIj66e2yNKlXrYycMrHWXv4HYVDOQPpZrXcduFCg3D9aY
	tXld9M/NdYVLmkQSThfmxWfAoeAqIeB3yJC54VwhiH64wmlFUoFw0B3PjWXQxb3ZkqjF6chfqBNvO
	S+70sDHcQaOfzDPno0GUjdd94fAWfPZeEwJWY9PBxTfSLUk88sHJbWvrnJIS49hMr988ROH4g3ZqU
	fDT0gocYjUpRTt3G3kH4K4kPux8gqkXwkDq9ILJsqg+9dqUS5orvc+08pYvHZT9FDdjWQnKuHtt/4
	dvSkuyfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tXIck-00000004uW3-3VNj;
	Mon, 13 Jan 2025 11:28:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tXIb1-00000004tuy-0V0z
	for barebox@lists.infradead.org;
	Mon, 13 Jan 2025 11:27:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tXIar-0005ek-W2; Mon, 13 Jan 2025 12:26:54 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tXIar-000FRL-0Q;
	Mon, 13 Jan 2025 12:26:53 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tXIar-001FK2-1g;
	Mon, 13 Jan 2025 12:26:53 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 13 Jan 2025 12:26:56 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250113-k3-r5-v3-9-065fcdcc28d3@pengutronix.de>
References: <20250113-k3-r5-v3-0-065fcdcc28d3@pengutronix.de>
In-Reply-To: <20250113-k3-r5-v3-0-065fcdcc28d3@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1736767613; l=13781;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=YYScInhiLwJvlUvhqNF2DtKbQYkcY30ankaz9odqDBE=;
 b=HML+4pmjOrTY1Sb1OB2Rok2OXTn3Mau0DDBQRsK+8fBPLNbU6FpbwiEauh7J8PefC4Wp1YTUX
 mUzJz/593weDUT06Xuj30RJm4bxs6ajp1lkhP2O/uGXIdSSyTys0bXe
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250113_032703_467591_745B634B 
X-CRM114-Status: GOOD (  24.84  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 09/23] pmdomain: add K3 driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The power domain support for K3 SoCs is implemented on the Cortex-R5
boot processor by the ti-dm firmware binary. The A53 cores access the
power domains via mailboxes. However, during early boot we are running
barebox on the Cortex-R5 processor and the ti-dm firmware is not yet
running, so we must implement our own driver for the power domains.
Code is based on U-Boot-2025.01-rc1.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/pmdomain/ti/Kconfig  |   4 +
 drivers/pmdomain/ti/Makefile |   1 +
 drivers/pmdomain/ti/ti-k3.c  | 479 +++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 484 insertions(+)

diff --git a/drivers/pmdomain/ti/Kconfig b/drivers/pmdomain/ti/Kconfig
index f34a5146c1..fc65e34118 100644
--- a/drivers/pmdomain/ti/Kconfig
+++ b/drivers/pmdomain/ti/Kconfig
@@ -6,3 +6,7 @@ config TI_SCI_PM_DOMAINS
 	help
 	  Generic power domain implementation for TI device implementing
 	  the TI SCI protocol.
+
+config TI_K3_PM_DOMAINS
+	bool "TI K3 PM Domains Driver"
+	depends on MACH_K3_CORTEX_R5 || COMPILE_TEST
diff --git a/drivers/pmdomain/ti/Makefile b/drivers/pmdomain/ti/Makefile
index ab582e04a8..e5d56da052 100644
--- a/drivers/pmdomain/ti/Makefile
+++ b/drivers/pmdomain/ti/Makefile
@@ -1,2 +1,3 @@
 # SPDX-License-Identifier: GPL-2.0-only
 obj-$(CONFIG_TI_SCI_PM_DOMAINS) += ti_sci_pm_domains.o
+obj-$(CONFIG_TI_K3_PM_DOMAINS) += ti-k3.o
diff --git a/drivers/pmdomain/ti/ti-k3.c b/drivers/pmdomain/ti/ti-k3.c
new file mode 100644
index 0000000000..33bffeaca0
--- /dev/null
+++ b/drivers/pmdomain/ti/ti-k3.c
@@ -0,0 +1,479 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Texas Instruments power domain driver
+ *
+ * Copyright (C) 2020-2021 Texas Instruments Incorporated - https://www.ti.com/
+ *	Tero Kristo <t-kristo@ti.com>
+ */
+
+#define pr_fmt(fmt)     "ti-k3-pm-domain: " fmt
+
+#include <io.h>
+#include <of_device.h>
+#include <malloc.h>
+#include <init.h>
+#include <pm_domain.h>
+#include <linux/iopoll.h>
+#include <linux/kernel.h>
+#include <linux/device.h>
+
+#define PSC_PTCMD		0x120
+#define PSC_PTCMD_H		0x124
+#define PSC_PTSTAT		0x128
+#define PSC_PTSTAT_H		0x12C
+#define PSC_PDSTAT		0x200
+#define PSC_PDCTL		0x300
+#define PSC_MDSTAT		0x800
+#define PSC_MDCTL		0xa00
+
+#define PDCTL_STATE_MASK		0x1
+#define PDCTL_STATE_OFF			0x0
+#define PDCTL_STATE_ON			0x1
+
+#define MDSTAT_STATE_MASK		0x3f
+#define MDSTAT_BUSY_MASK		0x30
+#define MDSTAT_STATE_SWRSTDISABLE	0x0
+#define MDSTAT_STATE_ENABLE		0x3
+
+#define LPSC_TIMEOUT		1000
+#define PD_TIMEOUT		1000
+
+#define LPSC_MODULE_EXISTS      BIT(0)
+#define LPSC_NO_CLOCK_GATING    BIT(1)
+#define LPSC_DEPENDS            BIT(2)
+#define LPSC_HAS_RESET_ISO      BIT(3)
+#define LPSC_HAS_LOCAL_RESET    BIT(4)
+#define LPSC_NO_MODULE_RESET    BIT(5)
+
+#define PSC_PD_EXISTS           BIT(0)
+#define PSC_PD_ALWAYSON         BIT(1)
+#define PSC_PD_DEPENDS          BIT(2)
+
+#define MDSTAT_STATE_MASK		0x3f
+#define MDSTAT_BUSY_MASK		0x30
+#define MDSTAT_STATE_SWRSTDISABLE	0x0
+#define MDSTAT_STATE_ENABLE		0x3
+
+struct ti_psc {
+	int id;
+	void __iomem *base;
+};
+
+struct ti_pd;
+
+struct ti_pd {
+	int id;
+	int usecount;
+	struct ti_psc *psc;
+	struct ti_pd *depend;
+};
+
+struct ti_lpsc;
+
+struct ti_lpsc {
+	int id;
+	int usecount;
+	struct ti_psc *psc;
+	struct ti_pd *pd;
+	struct ti_lpsc *depend;
+};
+
+struct ti_dev {
+	int lpsc;
+	int id;
+};
+
+/**
+ * struct ti_k3_pd_platdata - pm domain controller information structure
+ */
+struct ti_k3_pd_platdata {
+	struct ti_psc *psc;
+	struct ti_pd *pd;
+	struct ti_lpsc *lpsc;
+	struct ti_dev *devs;
+	int num_psc;
+	int num_pd;
+	int num_lpsc;
+	int num_devs;
+};
+
+struct ti_k3_pm_domain {
+	struct generic_pm_domain genpd;
+	struct ti_lpsc *lpsc;
+};
+
+struct ti_k3_priv {
+	const struct ti_k3_pd_platdata *data;
+	struct genpd_onecell_data pd_data;
+	struct ti_k3_pm_domain *pd;
+};
+
+static u32 psc_read(struct ti_psc *psc, u32 reg)
+{
+	return readl(psc->base + reg);
+}
+
+static void psc_write(u32 val, struct ti_psc *psc, u32 reg)
+{
+	writel(val, psc->base + reg);
+}
+
+static u32 pd_read(struct ti_pd *pd, u32 reg)
+{
+	return psc_read(pd->psc, reg + 4 * pd->id);
+}
+
+static void pd_write(u32 val, struct ti_pd *pd, u32 reg)
+{
+	psc_write(val, pd->psc, reg + 4 * pd->id);
+}
+
+static u32 lpsc_read(struct ti_lpsc *lpsc, u32 reg)
+{
+	return psc_read(lpsc->psc, reg + 4 * lpsc->id);
+}
+
+static void lpsc_write(u32 val, struct ti_lpsc *lpsc, u32 reg)
+{
+	psc_write(val, lpsc->psc, reg + 4 * lpsc->id);
+}
+
+static int ti_pd_wait(struct ti_pd *pd)
+{
+	u32 ptstat;
+	u32 pdoffset = 0;
+	u32 ptstatreg = PSC_PTSTAT;
+	int ret;
+
+	if (pd->id > 31) {
+		pdoffset = 32;
+		ptstatreg = PSC_PTSTAT_H;
+	}
+
+	ret = readl_poll_timeout(pd->psc->base + ptstatreg, ptstat,
+				 !(ptstat & BIT(pd->id - pdoffset)), PD_TIMEOUT);
+
+	if (ret)
+		pr_err("%s: psc%d, pd%d failed to transition.\n", __func__,
+		       pd->psc->id, pd->id);
+
+	return ret;
+}
+
+static void ti_pd_transition(struct ti_pd *pd)
+{
+	u32 pdoffset = 0;
+	u32 ptcmdreg = PSC_PTCMD;
+
+	if (pd->id > 31) {
+		pdoffset = 32;
+		ptcmdreg = PSC_PTCMD_H;
+	}
+
+	psc_write(BIT(pd->id - pdoffset), pd->psc, ptcmdreg);
+}
+
+static int ti_pd_get(struct ti_pd *pd)
+{
+	u32 pdctl;
+	int ret;
+
+	pd->usecount++;
+
+	if (pd->usecount > 1)
+		return 0;
+
+	if (pd->depend) {
+		ret = ti_pd_get(pd->depend);
+		if (ret)
+			return ret;
+		ti_pd_transition(pd->depend);
+		ret = ti_pd_wait(pd->depend);
+		if (ret)
+			return ret;
+	}
+
+	pdctl = pd_read(pd, PSC_PDCTL);
+
+	if ((pdctl & PDCTL_STATE_MASK) == PDCTL_STATE_ON)
+		return 0;
+
+	pr_debug("%s: enabling psc:%d, pd:%d\n", __func__, pd->psc->id, pd->id);
+
+	pdctl &= ~PDCTL_STATE_MASK;
+	pdctl |= PDCTL_STATE_ON;
+
+	pd_write(pdctl, pd, PSC_PDCTL);
+
+	return 0;
+}
+
+static int ti_pd_put(struct ti_pd *pd)
+{
+	u32 pdctl;
+	int ret;
+
+	pd->usecount--;
+
+	if (pd->usecount > 0)
+		return 0;
+
+	pdctl = pd_read(pd, PSC_PDCTL);
+	if ((pdctl & PDCTL_STATE_MASK) == PDCTL_STATE_OFF)
+		return 0;
+
+	pdctl &= ~PDCTL_STATE_MASK;
+	pdctl |= PDCTL_STATE_OFF;
+
+	pr_debug("%s: disabling psc:%d, pd:%d\n", __func__, pd->psc->id, pd->id);
+
+	pd_write(pdctl, pd, PSC_PDCTL);
+
+	if (pd->depend) {
+		ti_pd_transition(pd);
+		ret = ti_pd_wait(pd);
+		if (ret)
+			return ret;
+
+		ret = ti_pd_put(pd->depend);
+		if (ret)
+			return ret;
+		ti_pd_transition(pd->depend);
+		ret = ti_pd_wait(pd->depend);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
+static int ti_lpsc_wait(struct ti_lpsc *lpsc)
+{
+	u32 mdstat;
+	int ret;
+
+	ret = readl_poll_timeout(lpsc->psc->base + PSC_MDSTAT + lpsc->id * 4,
+				 mdstat,
+				 !(mdstat & MDSTAT_BUSY_MASK), LPSC_TIMEOUT);
+
+	if (ret)
+		pr_err("%s: module %d failed to transition.\n", __func__,
+		       lpsc->id);
+
+	return ret;
+}
+
+static int ti_lpsc_transition(struct ti_lpsc *lpsc, u8 state)
+{
+	struct ti_pd *psc_pd;
+	int ret;
+	u32 mdctl;
+
+	psc_pd = lpsc->pd;
+
+	if (state == MDSTAT_STATE_ENABLE) {
+		lpsc->usecount++;
+		if (lpsc->usecount > 1)
+			return 0;
+	} else {
+		lpsc->usecount--;
+		if (lpsc->usecount >= 1)
+			return 0;
+	}
+
+	pr_debug("%s: transitioning psc:%d, lpsc:%d to %x\n", __func__,
+		 lpsc->psc->id, lpsc->id, state);
+
+	if (lpsc->depend)
+		ti_lpsc_transition(lpsc->depend, state);
+
+	mdctl = lpsc_read(lpsc, PSC_MDCTL);
+	if ((mdctl & MDSTAT_STATE_MASK) == state)
+		return 0;
+
+	if (state == MDSTAT_STATE_ENABLE)
+		ti_pd_get(psc_pd);
+	else
+		ti_pd_put(psc_pd);
+
+	mdctl &= ~MDSTAT_STATE_MASK;
+	mdctl |= state;
+
+	lpsc_write(mdctl, lpsc, PSC_MDCTL);
+
+	ti_pd_transition(psc_pd);
+
+	ret = ti_pd_wait(psc_pd);
+	if (ret)
+		return ret;
+
+	return ti_lpsc_wait(lpsc);
+}
+
+static inline struct ti_k3_pm_domain *to_ti_k3_pd(struct generic_pm_domain *gpd)
+{
+	return container_of(gpd, struct ti_k3_pm_domain, genpd);
+}
+
+static int ti_k3_pm_domain_on(struct generic_pm_domain *domain)
+{
+	struct ti_k3_pm_domain *pd = to_ti_k3_pd(domain);
+
+	return ti_lpsc_transition(pd->lpsc, MDSTAT_STATE_ENABLE);
+}       
+        
+static int ti_k3_pm_domain_off(struct generic_pm_domain *domain)
+{       
+	struct ti_k3_pm_domain *pd = to_ti_k3_pd(domain);
+
+	return ti_lpsc_transition(pd->lpsc, MDSTAT_STATE_SWRSTDISABLE);
+}       
+
+static struct ti_psc am625_psc[] = {
+	[0] = { .id = 0, .base = (void *)0x04000000 },
+	[1] = { .id = 1, .base = (void *)0x00400000 },
+};
+
+static struct ti_pd am625_pd[] = {
+	[0] = { .id = 0, .psc = &am625_psc[1], },
+	[1] = { .id = 2, .psc = &am625_psc[1], .depend = &am625_pd[0] },
+	[2] = { .id = 3, .psc = &am625_psc[1], .depend = &am625_pd[0] },
+	[3] = { .id = 4, .psc = &am625_psc[1], .depend = &am625_pd[2] },
+	[4] = { .id = 5, .psc = &am625_psc[1], .depend = &am625_pd[2] },
+};
+
+static struct ti_lpsc am625_lpsc[] = {
+	[0] = { .id = 0, .psc = &am625_psc[1], .pd = &am625_pd[0], },
+	[1] = { .id = 9, .psc = &am625_psc[1], .pd = &am625_pd[0], .depend = &am625_lpsc[11] },
+	[2] = { .id = 10, .psc = &am625_psc[1], .pd = &am625_pd[0], .depend = &am625_lpsc[1] },
+	[3] = { .id = 11, .psc = &am625_psc[1], .pd = &am625_pd[0], .depend = &am625_lpsc[2] },
+	[4] = { .id = 12, .psc = &am625_psc[1], .pd = &am625_pd[0], .depend = &am625_lpsc[8] },
+	[5] = { .id = 13, .psc = &am625_psc[1], .pd = &am625_pd[0], .depend = &am625_lpsc[9] },
+	[6] = { .id = 20, .psc = &am625_psc[1], .pd = &am625_pd[0], .depend = &am625_lpsc[11] },
+	[7] = { .id = 21, .psc = &am625_psc[1], .pd = &am625_pd[0], .depend = &am625_lpsc[11] },
+	[8] = { .id = 23, .psc = &am625_psc[1], .pd = &am625_pd[0], .depend = &am625_lpsc[11] },
+	[9] = { .id = 24, .psc = &am625_psc[1], .pd = &am625_pd[0], .depend = &am625_lpsc[11] },
+	[10] = { .id = 28, .psc = &am625_psc[1], .pd = &am625_pd[0], .depend = &am625_lpsc[11] },
+	[11] = { .id = 34, .psc = &am625_psc[1], .pd = &am625_pd[0], },
+	[12] = { .id = 41, .psc = &am625_psc[1], .pd = &am625_pd[1], .depend = &am625_lpsc[11] },
+	[13] = { .id = 42, .psc = &am625_psc[1], .pd = &am625_pd[2], .depend = &am625_lpsc[11] },
+	[14] = { .id = 45, .psc = &am625_psc[1], .pd = &am625_pd[3], .depend = &am625_lpsc[13] },
+	[15] = { .id = 46, .psc = &am625_psc[1], .pd = &am625_pd[4], .depend = &am625_lpsc[13] },
+};
+
+static struct ti_dev am625_dev[] = {
+	{ .id = 16,  .lpsc = 0 },
+	{ .id = 77,  .lpsc = 0 },
+	{ .id = 61,  .lpsc = 0 },
+	{ .id = 95,  .lpsc = 0 },
+	{ .id = 107, .lpsc = 0 },
+	{ .id = 170, .lpsc = 1 },
+	{ .id = 177, .lpsc = 2 },
+	{ .id = 55,  .lpsc = 3 },
+	{ .id = 178, .lpsc = 4 },
+	{ .id = 179, .lpsc = 5 },
+	{ .id = 57,  .lpsc = 6 },
+	{ .id = 58,  .lpsc = 7 },
+	{ .id = 161, .lpsc = 8 },
+	{ .id = 162, .lpsc = 9 },
+	{ .id = 75,  .lpsc = 10 },
+	{ .id = 36,  .lpsc = 11 },
+	{ .id = 102, .lpsc = 11 },
+	{ .id = 146, .lpsc = 11 },
+	{ .id = 13,  .lpsc = 12 },
+	{ .id = 166, .lpsc = 13 },
+	{ .id = 135, .lpsc = 14 },
+	{ .id = 136, .lpsc = 15 },
+};
+
+const struct ti_k3_pd_platdata am62x_pd_platdata = {
+	.psc = am625_psc,
+	.pd = am625_pd,
+	.lpsc = am625_lpsc,
+	.devs = am625_dev,
+	.num_psc = ARRAY_SIZE(am625_psc),
+	.num_pd = ARRAY_SIZE(am625_pd),
+	.num_lpsc = ARRAY_SIZE(am625_lpsc),
+	.num_devs = ARRAY_SIZE(am625_dev),
+};
+
+static struct generic_pm_domain *ti_k3_pd_xlate(struct of_phandle_args *args,
+						void *data)
+{
+	struct genpd_onecell_data *genpd_data = data;
+	struct ti_k3_priv *priv = container_of(genpd_data, struct ti_k3_priv, pd_data);
+	unsigned int idx = args->args[0];
+	int i;
+
+	for (i = 0; i < priv->data->num_devs; i++)
+		if (priv->data->devs[i].id == idx) {
+			unsigned int lpsc = priv->data->devs[i].lpsc;
+			pr_debug("Translate: %d -> %d\n", idx, lpsc);
+			return &priv->pd[lpsc].genpd;
+		}
+
+	return 0;
+}
+
+static int ti_k3_pm_domain_probe(struct device *dev)
+{
+	struct ti_k3_priv *priv;
+	const struct ti_k3_pd_platdata *data;
+	struct ti_k3_pm_domain *pd;
+	struct generic_pm_domain **domains;
+	struct genpd_onecell_data *pd_data;
+	int num_domains;
+	int i;
+
+	priv = xzalloc(sizeof(*priv));
+
+	if (of_machine_is_compatible("ti,am625"))
+		data = &am62x_pd_platdata;
+	else
+		return dev_err_probe(dev, -EINVAL, "Unknown SoC\n");
+
+	priv->data = data;
+
+	num_domains = data->num_lpsc;
+
+	pd = devm_kcalloc(dev, num_domains, sizeof(*pd), GFP_KERNEL);
+	if (!pd)
+		return -ENOMEM;
+
+	domains = devm_kcalloc(dev, num_domains, sizeof(*domains), GFP_KERNEL);
+	if (!domains)
+		return -ENOMEM;
+
+	priv->pd = pd;
+
+	for (i = 0; i < num_domains; i++, pd++) {
+		pd->genpd.name = basprintf("pd:%d", i);
+		pd->lpsc = &data->lpsc[i];
+		pd->genpd.power_off = ti_k3_pm_domain_off;
+		pd->genpd.power_on = ti_k3_pm_domain_on;
+
+		pm_genpd_init(&pd->genpd, NULL, true);
+
+		domains[i] = &pd->genpd;
+	}
+
+	pd_data = &priv->pd_data;
+
+	pd_data->domains = domains;
+	pd_data->num_domains = num_domains;
+	pd_data->xlate = ti_k3_pd_xlate;
+
+	return of_genpd_add_provider_onecell(dev->of_node, pd_data);
+}
+
+static const struct of_device_id ti_k3_power_domain_of_match[] = {
+	{ .compatible = "ti,sci-pm-domain" },
+	{ /* sentinel */ }
+};
+
+static struct driver ti_k3_pm_domains_driver = {
+        .probe = ti_k3_pm_domain_probe,
+        .name = "ti_k3_pm_domains",
+        .of_match_table = ti_k3_power_domain_of_match,
+};
+core_platform_driver(ti_k3_pm_domains_driver);

-- 
2.39.5



