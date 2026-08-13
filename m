Delivery-date: Thu, 13 Aug 2026 17:29:05 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wuXMe-002img-3C
	for lore@lore.pengutronix.de;
	Thu, 13 Aug 2026 17:29:05 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 8D1802020E5
	for <lore@pengutronix.de>; Thu, 13 Aug 2026 17:29:01 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=C2JplhVg;
	dkim=pass header.d=kernel.org header.s=k20201202 header.b=L7WAydTi;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:
	References:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:
	Subject:Date:From:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6nCLh5s8QRbduMzyTnG7r1W3tVMo3ci87Yvtky8EN3U=; b=C2JplhVg72TZJf7ylp37YP/G1i
	0gSsGnFuk+JJggllFR0gvqkX4D2U0edogHneIV3nv5wAFV4eo8IMWJMtejEr+kUPROe3NaZPrTuFI
	ShrpaWJwnhdfN97GrvVKZH1CGU3HvK9MYFkf+49U0+WLv0Zod60ZcbH40bmojAVoS6GFfhIk9gUWb
	LDMFYZBmYoXYXaEWJ0/DCMERHC827fqIkvtLg2kO6x/FJr8NVeuX/cE689q+EuJuoBIK4LlVdsu3H
	BvKWFBSUSa8D1osU2WsEYQL0tVZuZjydKYZBV+ua0UNTotunV+cSbn+RAip0VQC59ZMYOqVxyMVH7
	3M+vdl6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuXKD-000000010ZR-1FfE;
	Thu, 13 Aug 2026 15:26:33 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wuXK8-000000010TT-0RA5
	for barebox@lists.infradead.org;
	Thu, 13 Aug 2026 15:26:28 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id B3BEB43850;
	Thu, 13 Aug 2026 15:26:26 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A3B3C2BCFA;
	Thu, 13 Aug 2026 15:26:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786634786;
	bh=uqh4MWbPyHYP2eRf1CyrJifhrgFU/A1713ZGN/C5ao8=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To:From;
	b=L7WAydTimjzlpK43LYWhSKUT+jdraYvwE099HcmwZSpysdvQ4v0tK4nsmb2HLZEgf
	 r8XxTWuAdgwFjgFz3//Pq01k1LtFAlh+hfScdGDutd0Mvu1RRDW6fusrPFHyNYnv/x
	 e19yV1l+96V0uc8waFCnHPvlR4Edv8qpbBHzI3Tu/YFA9C8CnLF+VuAeY1mwvvDhTs
	 rYetA06fP8LGi/EWH1ur8JljKiVXKHzNPBIc6EuKE404qPU/2XPvznB+RYDIGdOv9n
	 0hq8DVt2ZQppdESB0teI+62ZrVKUySrz4uKKrqrPI7Z1stiuhu0L+vsxL9lwVfqyGH
	 MnP3Y7+NyS14w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8A239C5DF6A;
	Thu, 13 Aug 2026 15:26:26 +0000 (UTC)
From: Luca Lauro via B4 Relay <devnull+famlauro93l.gmail.com@kernel.org>
Date: Thu, 13 Aug 2026 17:26:29 +0200
Subject: [PATCH v4 09/14] ata: ahci: add PCI AHCI and Marvell 9170
 controller support
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260813-rn102-rn104-series-v4-9-f932ac63efa0@gmail.com>
References: <20260813-rn102-rn104-series-v4-0-f932ac63efa0@gmail.com>
In-Reply-To: <20260813-rn102-rn104-series-v4-0-f932ac63efa0@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Luca Lauro <famlauro93l@gmail.com>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1786634824; l=3034;
 i=famlauro93l@gmail.com; s=20260723; h=from:subject:message-id;
 bh=A4ugrv46pB1faIhK+VC7D6/Kfdt2bOARz2Sq0q/XHQs=;
 b=/PJEzic3ZLU79Rd8v8o8n5m4pTmT1SMkZ4A/TXdGkFIiQXc+TwjnkIrs08Ea9OiUBssjeJD/e
 yMIMwI2l7UnCogeI1ilZwYQOrguMp4vvoiesCZN5MQdoz9loRMfWMGC
X-Developer-Key: i=famlauro93l@gmail.com; a=ed25519;
 pk=OAJlcD69ugQCl99Vy6w+Aeu+ZUb1IVGcz1Ijxo6Ch78=
X-Endpoint-Received: by B4 Relay for famlauro93l@gmail.com/20260723 with
 auth_id=892
X-Original-From: Luca Lauro <famlauro93l@gmail.com>
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
Reply-To: famlauro93l@gmail.com
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: rg3j57rdcwk4ugj3j75iyqjscww8udi4
X-Spamd-Result: default: False [-7.91 / 15.00];
	DWL_DNSWL_MED(-4.00)[infradead.org:dkim,kernel.org:dkim];
	BAYES_HAM(-3.00)[100.00%];
	FREEMAIL_REPLYTO_NEQ_FROM(2.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,kernel.org:s=k20201202];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_ALL(0.00)[];
	FREEMAIL_REPLYTO(0.00)[gmail.com];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	FORGED_SENDER(0.00)[devnull@kernel.org,barebox-bounces@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de,famlauro93l.gmail.com];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,kernel.org:+];
	RCPT_COUNT_THREE(0.00)[3];
	HAS_REPLYTO(0.00)[famlauro93l@gmail.com]
X-Rspamd-Queue-Id: 8D1802020E5

From: Luca Lauro <famlauro93l@gmail.com>

Barebox previously supported only memory-mapped AHCI controllers.
Some devices expose their AHCI controller through PCI BARs, such as the
Marvell 9170 controller found in Netgear RN102/RN104 NAS devices,
requiring a dedicated probing path and MMIO mapping.
This patch extends the barebox AHCI driver with full support for
PCI-based AHCI controllers, adding:

- A PCI probe path that enables AHCI initialization via
pci_enable_device(), pci_iomap() and ahci_add_host().

- A small device list to keep track of PCI AHCI instances.

Changes are based on the upstream Linux driver, with some adaptations.

Signed-off-by: Luca Lauro <famlauro93l@gmail.com>
---
 drivers/ata/ahci.c | 49 +++++++++++++++++++++++++++++++++++++++++++++++++
 drivers/ata/ahci.h |  1 +
 2 files changed, 50 insertions(+)

diff --git a/drivers/ata/ahci.c b/drivers/ata/ahci.c
index 819dc37b3e..fd27da40f2 100644
--- a/drivers/ata/ahci.c
+++ b/drivers/ata/ahci.c
@@ -19,6 +19,8 @@
 #include <disks.h>
 #include <ata_drive.h>
 #include <linux/sizes.h>
+#include <linux/pci.h>
+#include <linux/pci_ids.h>
 #include <clock.h>
 
 #include "ahci.h"
@@ -47,6 +49,45 @@
 #define ahci_debug(ahci, fmt, arg...) \
 	dev_dbg(ahci->dev, fmt, ##arg)
 
+static const struct pci_device_id ahci_pci_tbl[] = {
+	{ PCI_DEVICE(PCI_VENDOR_ID_MARVELL_EXT, 0x9170) },
+	{ 0, }
+};
+
+static int ahci_pci_probe(struct pci_dev *pdev, const struct pci_device_id *id)
+{
+	struct ahci_device *ahci;
+	void __iomem *mmio;
+	int ret;
+
+	dev_info(&pdev->dev, "ahci: PCI probe %04x:%04x rev %02x\n",
+			pdev->vendor, pdev->device, pdev->revision);
+
+	ret = pci_enable_device(pdev);
+	if (ret)
+		return ret;
+
+	pci_set_master(pdev);
+
+	mmio = pci_iomap(pdev, 5);
+	if (!mmio)
+		return -ENODEV;
+
+	ahci = xzalloc(sizeof(*ahci));
+	ahci->dev = &pdev->dev;
+	ahci->mmio_base = mmio;
+	pdev->dev.priv = ahci;
+
+	ret = ahci_add_host(ahci);
+	if (ret) {
+		free(ahci);
+		pdev->dev.priv = NULL;
+		return ret;
+	}
+
+	return 0;
+}
+
 struct ahci_cmd_hdr {
 	u32	opts;
 	u32	status;
@@ -635,6 +676,7 @@ int ahci_add_host(struct ahci_device *ahci)
 	tmp = ahci_ioread(ahci, HOST_CTL);
 
 	ahci->dev->detect = ahci_detect;
+	list_add(&ahci->list, &ahci_devices);
 
 	return 0;
 }
@@ -674,6 +716,13 @@ static __maybe_unused struct of_device_id ahci_dt_ids[] = {
 };
 MODULE_DEVICE_TABLE(of, ahci_dt_ids);
 
+static struct pci_driver ahci_pci_driver = {
+	.name = "ahci-pci",
+	.id_table = ahci_pci_tbl,
+	.probe = ahci_pci_probe,
+};
+device_pci_driver(ahci_pci_driver);
+
 static struct driver ahci_driver = {
 	.name   = "ahci",
 	.probe  = ahci_probe,
diff --git a/drivers/ata/ahci.h b/drivers/ata/ahci.h
index 196bde73c2..d2a19f4648 100644
--- a/drivers/ata/ahci.h
+++ b/drivers/ata/ahci.h
@@ -184,6 +184,7 @@ struct ahci_port {
 };
 
 struct ahci_device {
+	struct list_head list;
 	struct device		*dev;
 	struct ahci_port	ports[AHCI_MAX_PORTS];
 	u32			n_ports;

-- 
2.47.3




