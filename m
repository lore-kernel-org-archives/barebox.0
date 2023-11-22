Delivery-date: Wed, 22 Nov 2023 11:55:00 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5ksm-004Enq-02
	for lore@lore.pengutronix.de;
	Wed, 22 Nov 2023 11:55:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5ksm-0001BC-1d
	for lore@pengutronix.de; Wed, 22 Nov 2023 11:55:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=2R3aOsCmfkaDtF4Ybvk9DjwhDe9mVNJDd0CLpI6Y1Ps=; b=X7CVesCm+elKdqZS2oxCHinr3T
	6XcS8GprNwFu2nWTY6j/Mbl2xx7nVVGLbsY5qhb4XGt/3wG/Xo+bY6sVQtaxAvU6bYgrwZmMjNhWV
	ot615qH8WzMJR3XidFVjHMwLgJT6+3E4wxIdbgerP1DZ2du1XK8UV29HY+wg/K3Qi7NLOnYfZR3fu
	pZd0RUW8/tSpVdKmy74Y5/mZ930v1d2Voq2u0R/4UrKH28wM5paEo6VHNEKa0Oq6K3bHY6y3fwkbF
	g+vfAB8/PtjEh6VE0lZ8mNEU+lQFwxxQ+sNeLIbPNCIrZYaSW5R+z3KHZ1FMdSluCTiyYJVQaFkLx
	slTjZnpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5krI-001U2X-1p;
	Wed, 22 Nov 2023 10:53:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5krG-001Tzv-0t
	for barebox@lists.infradead.org;
	Wed, 22 Nov 2023 10:53:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r5krC-0000nX-SW; Wed, 22 Nov 2023 11:53:22 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r5krC-00An7q-GD; Wed, 22 Nov 2023 11:53:22 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1r5krC-00Fnz2-1S;
	Wed, 22 Nov 2023 11:53:22 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 22 Nov 2023 11:53:19 +0100
Message-Id: <20231122105321.3767044-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_025326_309663_752D9B49 
X-CRM114-Status: GOOD (  14.89  )
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
Subject: [PATCH 1/3] mci: imx-esdhc: add layerscape flag
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

More Layerscape specifics are about to come. Instead of adding a
specific quirk flag for each of them, rename the ESDHC_FLAG_CACHE_SNOOPING
flag to ESDHC_FLAG_LAYERSCAPE to get a common layerscape flag.

>From looking at the Kernel driver it seems we can use these flag for the
modern Layerscape SoCs, we would have to revisit this once we support
LS1012.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/imx-esdhc.c | 4 ++--
 drivers/mci/imx-esdhc.h | 9 +++++++--
 2 files changed, 9 insertions(+), 4 deletions(-)

diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index f30a791fa4..90a6c12439 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -232,7 +232,7 @@ static int esdhc_init(struct mci_host *mci, struct device *dev)
 	sdhci_write32(&host->sdhci, SDHCI_MMC_BOOT, 0);
 
 	/* Enable cache snooping */
-	if (host->socdata->flags & ESDHC_FLAG_CACHE_SNOOPING)
+	if (esdhc_is_layerscape(host))
 		esdhc_setbits32(host, ESDHC_DMA_SYSCTL, ESDHC_SYSCTL_DMA_SNOOP);
 
 	/* Set the initial clock speed */
@@ -377,7 +377,7 @@ static struct esdhc_soc_data usdhc_imx6sx_data = {
 
 static struct esdhc_soc_data esdhc_ls_data = {
 	.flags = ESDHC_FLAG_MULTIBLK_NO_INT | ESDHC_FLAG_BIGENDIAN |
-		 ESDHC_FLAG_CACHE_SNOOPING,
+		 ESDHC_FLAG_LAYERSCAPE,
 };
 
 static __maybe_unused struct of_device_id fsl_esdhc_compatible[] = {
diff --git a/drivers/mci/imx-esdhc.h b/drivers/mci/imx-esdhc.h
index b14039757a..6810039a96 100644
--- a/drivers/mci/imx-esdhc.h
+++ b/drivers/mci/imx-esdhc.h
@@ -103,8 +103,8 @@
 #define ESDHC_FLAG_HS400		BIT(9)
 /* Need to access registers in bigendian mode */
 #define ESDHC_FLAG_BIGENDIAN		BIT(10)
-/* Enable cache snooping */
-#define ESDHC_FLAG_CACHE_SNOOPING	BIT(11)
+/* Layerscape variant ls1046a, ls1028a, ls1088a, revisit for ls1012a */
+#define ESDHC_FLAG_LAYERSCAPE		BIT(11)
 
 struct esdhc_soc_data {
 	u32 flags;
@@ -124,6 +124,11 @@ static inline int esdhc_is_usdhc(struct fsl_esdhc_host *data)
 	return !!(data->socdata->flags & ESDHC_FLAG_USDHC);
 }
 
+static inline int esdhc_is_layerscape(struct fsl_esdhc_host *data)
+{
+	return !!(data->socdata->flags & ESDHC_FLAG_LAYERSCAPE);
+}
+
 static inline struct fsl_esdhc_host *sdhci_to_esdhc(struct sdhci *sdhci)
 {
 	return container_of(sdhci, struct fsl_esdhc_host, sdhci);
-- 
2.39.2



