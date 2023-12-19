Delivery-date: Tue, 19 Dec 2023 13:57:59 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rFZfb-004YGp-0z
	for lore@lore.pengutronix.de;
	Tue, 19 Dec 2023 13:57:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rFZfa-0007tz-No
	for lore@pengutronix.de; Tue, 19 Dec 2023 13:57:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nzp3MSYtVDc+3gGTGhnQurS6fXJiVRf0u62X2YTK/z4=; b=d9AqIr9JEy2d1dWajwwzdyYCDU
	KC/psOEg86ESOLif0KIjs+TREc8xxItheTohsMtJzA5E+1tDboCL+fL9CpB6LtkjcTRtCYk6VDsDK
	oYLSmvMJcRtYoO12m42cvM1Dcm2NsWJ5md8pXYpiBLeU5m6N/J04ZHlrgoLcVcPa131w2olYZHXbK
	wzy/3ekFyaT1fnOD5KG1RRSnuWAZ3XaBxTP6cuFfjXhzy0RlpFuvoku++gLR0yJcQjuLKusuYZycW
	QbhjKXo7cGMlcprK+qXCqUg7HLIlpwWZKn9osB6o+SzVXvi4IlSYF/yTOCYWIGLK5WgEbZJFNn/UL
	tZdp/6UQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFZeX-00E6f7-2w;
	Tue, 19 Dec 2023 12:56:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([185.203.201.7])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFZeM-00E6XK-2v
	for barebox@lists.infradead.org;
	Tue, 19 Dec 2023 12:56:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rFZeC-00077G-0C; Tue, 19 Dec 2023 13:56:32 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rFZeA-0001KE-Ey; Tue, 19 Dec 2023 13:56:31 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rFZeB-0000yK-1Y;
	Tue, 19 Dec 2023 13:56:31 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 19 Dec 2023 13:56:28 +0100
Message-Id: <20231219125630.3684-5-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231219125630.3684-1-s.hauer@pengutronix.de>
References: <20231219125630.3684-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231219_045642_989148_D8418CBE 
X-CRM114-Status: GOOD (  12.12  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 4/6] pci: fix __pci_bus_find_cap_start
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

BIT(7) of dev->hdr_type has unrelated information. Mask out the upper
bit so that the capabilities can properly be found.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/pci/pci.c        | 4 ++--
 include/linux/pci_regs.h | 1 +
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index 638af9722e..0211fc0081 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -428,7 +428,7 @@ static unsigned int pci_scan_bus(struct pci_bus *bus)
 		pr_debug("%02x:%02x [%04x:%04x]\n", bus->number, dev->devfn,
 		    dev->vendor, dev->device);
 
-		switch (hdr_type & 0x7f) {
+		switch (hdr_type & PCI_HEADER_TYPE_MASK) {
 		case PCI_HEADER_TYPE_NORMAL:
 			if (class == PCI_CLASS_BRIDGE_PCI)
 				goto bad;
@@ -642,7 +642,7 @@ u8 pci_find_capability(struct pci_dev *dev, int cap)
 {
 	u8 pos;
 
-	pos = __pci_bus_find_cap_start(dev->bus, dev->devfn, dev->hdr_type);
+	pos = __pci_bus_find_cap_start(dev->bus, dev->devfn, dev->hdr_type & PCI_HEADER_TYPE_MASK);
 	if (pos)
 		pos = __pci_find_next_cap(dev->bus, dev->devfn, pos, cap);
 
diff --git a/include/linux/pci_regs.h b/include/linux/pci_regs.h
index 2c335f5835..631f218229 100644
--- a/include/linux/pci_regs.h
+++ b/include/linux/pci_regs.h
@@ -69,6 +69,7 @@
 #define PCI_CACHE_LINE_SIZE	0x0c	/* 8 bits */
 #define PCI_LATENCY_TIMER	0x0d	/* 8 bits */
 #define PCI_HEADER_TYPE		0x0e	/* 8 bits */
+#define  PCI_HEADER_TYPE_MASK		0x7f
 #define  PCI_HEADER_TYPE_NORMAL		0
 #define  PCI_HEADER_TYPE_BRIDGE		1
 #define  PCI_HEADER_TYPE_CARDBUS	2
-- 
2.39.2



