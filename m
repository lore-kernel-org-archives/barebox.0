Delivery-date: Thu, 21 May 2026 10:38:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPyur-002Aj2-0E
	for lore@lore.pengutronix.de;
	Thu, 21 May 2026 10:38:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wPyuq-0003RL-DN
	for lore@pengutronix.de; Thu, 21 May 2026 10:38:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pT/qLRBkCw4OjPSKrICRH90Cf5bb1yXiWAxcJXgsyTo=; b=4FXZa0Q+faKoZUya+FBTKqaFMM
	9EiTmZ44NyqYy1Nm8NsovhF060NYQTj4QQzbtjx5qtXHEFKaOsnF90LEJrpRkVpVZ9v3LAAkHgjid
	iH2QrWeyp0/M2VHDGR6Mj6DovzWdLC7N9UiwBYJJKR7aYb13SIctzTmvHpWowBAj/6M+FLTk0+cwe
	/F1cUx1pCPStq2JtIz85zwjya0dL1wwrySfWhe3QeBxbnKrvItYj2nvWx+JoKG0sbY30Tcs6ScbRy
	AK+Qpd2rFoNLOTe+Jycr1qDnNNy4I4dDFkj8NapczTWvlSywWCEVXPE5CABFTJ3982g9KykrSVWY5
	PZO0D33w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPytp-00000007Ar5-25mG;
	Thu, 21 May 2026 08:37:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wPytm-00000007Aok-21Hf
	for barebox@lists.infradead.org;
	Thu, 21 May 2026 08:37:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wPytk-0002Ma-ER; Thu, 21 May 2026 10:36:56 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wPytj-0014d3-2W;
	Thu, 21 May 2026 10:36:56 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1wPytk-0000000DTPV-19M2;
	Thu, 21 May 2026 10:36:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 21 May 2026 10:36:57 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260521-pci-of-dynamic-v1-3-951f1878e378@pengutronix.de>
References: <20260521-pci-of-dynamic-v1-0-951f1878e378@pengutronix.de>
In-Reply-To: <20260521-pci-of-dynamic-v1-0-951f1878e378@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1779352616; l=1663;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=ttlaTCPFiJoLmqfeUMz9jg54MMq2hnjH62wZFgzUHmQ=;
 b=1vRjPSFUjl5zcM6UETlq6lS10nlIkNfxOo+85GYvS1ItzENbeNj74iyL4NkWgcuDtOXfh+mEI
 YJbtwcjbEJHAknSk+zxc67aYUPM4AACPEFNYpqyiCaHGIcU351vygVx
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260521_013658_530746_231D1C3E 
X-CRM114-Status: GOOD (  13.22  )
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
Subject: [PATCH 3/4] pci: add pci_is_bridge() helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Mirror the Linux helper of the same name so callers don't have to
open-code the header-type compare.

Replace the open-coded site in pci_ea_init().

Assisted-by: Claude Opus 4.7
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/pci/pci.c   |  2 +-
 include/linux/pci.h | 14 ++++++++++++++
 2 files changed, 15 insertions(+), 1 deletion(-)

diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index 8d18889109..fc00ec2249 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -334,7 +334,7 @@ static void pci_ea_init(struct pci_dev *dev)
 	offset = ea + PCI_EA_FIRST_ENT;
 
 	/* Skip DWORD 2 for type 1 functions */
-	if (dev->hdr_type == PCI_HEADER_TYPE_BRIDGE)
+	if (pci_is_bridge(dev))
 		offset += 4;
 
 	/* parse each EA entry */
diff --git a/include/linux/pci.h b/include/linux/pci.h
index f6511e0095..a2dbaf6ec2 100644
--- a/include/linux/pci.h
+++ b/include/linux/pci.h
@@ -123,6 +123,20 @@ struct pci_dev {
 };
 #define	to_pci_dev(d) container_of(d, struct pci_dev, dev)
 
+/**
+ * pci_is_bridge - check if the PCI device is a bridge
+ * @dev: PCI device
+ *
+ * Return true if the PCI device is a bridge of PCI-to-PCI type. Masks the
+ * multi-function flag so a multi-function bridge is still recognised.
+ */
+static inline bool pci_is_bridge(struct pci_dev *dev)
+{
+	u8 type = dev->hdr_type & PCI_HEADER_TYPE_MASK;
+
+	return type == PCI_HEADER_TYPE_BRIDGE;
+}
+
 #define pci_resource_start(dev, bar)	((dev)->resource[(bar)].start)
 #define pci_resource_end(dev, bar)	((dev)->resource[(bar)].end)
 #define pci_resource_flags(dev, bar)	((dev)->resource[(bar)].flags)

-- 
2.47.3



