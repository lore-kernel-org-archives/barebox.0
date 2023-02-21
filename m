Delivery-date: Tue, 21 Feb 2023 09:07:17 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pUNgC-00Dedq-VR
	for lore@lore.pengutronix.de; Tue, 21 Feb 2023 09:07:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pUNgB-0006y7-Es
	for lore@pengutronix.de; Tue, 21 Feb 2023 09:07:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fvsi1TW39bY7QdDeVN104BKozvk88GAq/cVZRClcB3U=; b=eW5uIdbSN6d0Ft83Ug/Dh1qfEZ
	otjMG6EYupnxUIWc4mwI8o0a7uxEjkzk6Y4RZWHW9qYGOBo53y2k33TPMffIBacjwtcMdLsTTsSTJ
	WipXW0XKP+STSb6fpyS1aJCjf1CBSWXI8D3QLkyUYFMzePYQ4hTiBS1bITMwBpHfekk4liAgn/yuh
	akxA7LHIeA7nVP3ad2pCQP+YR6IaN7NBlhfD5+iOR32hKlB1SujPUpIBS6MMplj8XXXAFUjEoTIlv
	UUNpgnG3TUTvd+3Lybl78jiGytxaTrY3ICE1KVVLHQhr6EVzThsQ4YYj4HrSd+m7Di8ikpVLm6J8c
	AImRYGdw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUNfQ-006yso-JV; Tue, 21 Feb 2023 08:06:28 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUNeb-006yOa-PC
	for barebox@lists.infradead.org; Tue, 21 Feb 2023 08:05:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pUNeS-00061m-HA; Tue, 21 Feb 2023 09:05:28 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pUNeQ-006RjK-Kd; Tue, 21 Feb 2023 09:05:27 +0100
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pUNeP-002YHX-RL; Tue, 21 Feb 2023 09:05:25 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: lst@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 21 Feb 2023 09:05:23 +0100
Message-Id: <20230221080524.607241-12-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230221080524.607241-1-a.fatoum@pengutronix.de>
References: <20230221080524.607241-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230221_000537_838082_89A60674 
X-CRM114-Status: GOOD (  14.55  )
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
Subject: [PATCH RFC 11/12] dma: provide of_dma_coherent_fixup helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Upstream DT changing dma-coherency setting can break booting newer
kernels. TO allows newer bareboxes to both boot old and new kernels add
a new DT fixup helper that may be called from board code after enabling
cache coherence.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/dma/Makefile    |  1 +
 drivers/dma/of_fixups.c | 16 ++++++++++++++++
 include/of_address.h    |  8 ++++++++
 3 files changed, 25 insertions(+)
 create mode 100644 drivers/dma/of_fixups.c

diff --git a/drivers/dma/Makefile b/drivers/dma/Makefile
index 39829cab5008..a3c1d52e05c3 100644
--- a/drivers/dma/Makefile
+++ b/drivers/dma/Makefile
@@ -1,3 +1,4 @@
 # SPDX-License-Identifier: GPL-2.0-only
 obj-$(CONFIG_MXS_APBH_DMA)	+= apbh_dma.o
 obj-$(CONFIG_HAS_DMA)		+= map.o
+obj-$(CONFIG_OFTREE)		+= of_fixups.o
diff --git a/drivers/dma/of_fixups.c b/drivers/dma/of_fixups.c
new file mode 100644
index 000000000000..27dc24e287ee
--- /dev/null
+++ b/drivers/dma/of_fixups.c
@@ -0,0 +1,16 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+
+#include <of.h>
+#include <of_address.h>
+
+int of_dma_coherent_fixup(struct device_node *root, void *data)
+{
+	struct device_node *soc;
+
+	soc = of_find_node_by_path_from(root, "/soc");
+	if (!soc)
+		return -ENOENT;
+
+	of_property_write_bool(soc, "dma-noncoherent", false);
+	return of_property_write_bool(soc, "dma-coherent", true);
+}
diff --git a/include/of_address.h b/include/of_address.h
index 4e5faf6f7783..4f425e0803eb 100644
--- a/include/of_address.h
+++ b/include/of_address.h
@@ -62,6 +62,8 @@ extern int of_dma_get_range(struct device_node *np, u64 *dma_addr, u64 *paddr,
 
 extern bool of_dma_is_coherent(struct device_node *np);
 
+extern int of_dma_coherent_fixup(struct device_node *np, void *unused);
+
 #else /* CONFIG_OFTREE */
 
 static inline u64 of_translate_address(struct device_node *dev,
@@ -115,6 +117,12 @@ static inline bool of_dma_is_coherent(struct device_node *np)
 {
 	return false;
 }
+
+static inline int of_dma_coherent_fixup(struct device_node *np, void *unused)
+{
+	return 0;
+}
+
 #endif /* CONFIG_OFTREE */
 
 #ifdef CONFIG_OF_PCI
-- 
2.30.2



