Delivery-date: Fri, 03 May 2024 12:29:48 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s2qAm-00H7QQ-2X
	for lore@lore.pengutronix.de;
	Fri, 03 May 2024 12:29:48 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s2qAm-0000VQ-40
	for lore@pengutronix.de; Fri, 03 May 2024 12:29:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=r6JAFB2aeSz6satpyi3PVaT7DG8UGQhrks/oNKWFeXE=; b=gzKptpOdv/ufqCbwGlnaVfw6fZ
	X1dP5wihmaZDElaNj+Q3n+l22u4/iT+x1p6+indCXy9qKdBntudoC6hwSh8DvMVDzCFWfNe+L0oeL
	NSukjW9q9hkFfkvAitL1YIhRmqkfb8Bxs37QOxqKgmkBl/+KNppjoqCOtANHRjrN0JD/RznKiarbp
	hOo4osQC3riwQ/uR1amCX/GEI74LCHbJy1X0DIZl5J6d3pCoY4SIQacUpo10Lgjj4HpliieHoY/jo
	zqxViIMbBmcBNuQs83Q+xbvquPldCO166l/a68i8awUkv4YCknPS9EnY+vnIRvwIQIG/V1Nhm469O
	3M+bxyhw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2qAF-0000000G31n-2TyE;
	Fri, 03 May 2024 10:29:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s2qAC-0000000G318-2GNW
	for barebox@lists.infradead.org;
	Fri, 03 May 2024 10:29:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s2qAB-0000OL-0a; Fri, 03 May 2024 12:29:11 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s2qAA-00FgTj-KP; Fri, 03 May 2024 12:29:10 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s2qAA-005iSm-1k;
	Fri, 03 May 2024 12:29:10 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  3 May 2024 12:29:09 +0200
Message-Id: <20240503102909.1362544-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240503_032912_604911_4FE7CFB1 
X-CRM114-Status: GOOD (  11.12  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] dma: of_fixups: add fallbacks if /soc doesn't exist
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The fixup was written for Layerscape LS1046A. Enabling it on i.MX8MP
throws an initcall error, because the SoC node is called /soc@0.

Improve the situation by falling back to either /soc@0 or just plain /.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/dma/of_fixups.c | 33 ++++++++++++++++++---------------
 1 file changed, 18 insertions(+), 15 deletions(-)

diff --git a/drivers/dma/of_fixups.c b/drivers/dma/of_fixups.c
index 668313bbfb57..084ab94cc71c 100644
--- a/drivers/dma/of_fixups.c
+++ b/drivers/dma/of_fixups.c
@@ -6,15 +6,22 @@
 
 static int of_dma_coherent_fixup(struct device_node *root, void *data)
 {
-	struct device_node *soc;
-	enum dev_dma_coherence coherency = (enum dev_dma_coherence)(uintptr_t)data;
+	struct device_node *soc_bb = data, *soc_kernel;
+	enum dev_dma_coherence coherency;
 
-	soc = of_find_node_by_path_from(root, "/soc");
-	if (!soc)
+	if (of_property_read_bool(soc_bb, "dma-coherent"))
+		coherency = DEV_DMA_COHERENT;
+	else if (of_property_read_bool(soc_bb, "dma-noncoherent"))
+		coherency = DEV_DMA_NON_COHERENT;
+	else
+		coherency = DEV_DMA_COHERENCE_DEFAULT;
+
+	soc_kernel = of_find_node_by_path_from(root, soc_bb->full_name);
+	if (!soc_kernel)
 		return -ENOENT;
 
-	of_property_write_bool(soc, "dma-noncoherent", coherency == DEV_DMA_NON_COHERENT);
-	of_property_write_bool(soc, "dma-coherent", coherency == DEV_DMA_COHERENT);
+	of_property_write_bool(soc_kernel, "dma-noncoherent", coherency == DEV_DMA_NON_COHERENT);
+	of_property_write_bool(soc_kernel, "dma-coherent", coherency == DEV_DMA_COHERENT);
 
 	return 0;
 }
@@ -22,19 +29,15 @@ static int of_dma_coherent_fixup(struct device_node *root, void *data)
 static int of_dma_coherent_fixup_register(void)
 {
 	struct device_node *soc;
-	enum dev_dma_coherence soc_dma_coherency;
 
 	soc = of_find_node_by_path("/soc");
+	if (!soc)
+		soc = of_find_node_by_path("/soc@0");
+	if (!soc)
+		soc = of_find_node_by_path("/");
 	if (!soc)
 		return -ENOENT;
 
-	if (of_property_read_bool(soc, "dma-coherent"))
-		soc_dma_coherency = DEV_DMA_COHERENT;
-	else if (of_property_read_bool(soc, "dma-noncoherent"))
-		soc_dma_coherency = DEV_DMA_NON_COHERENT;
-	else
-		soc_dma_coherency = DEV_DMA_COHERENCE_DEFAULT;
-
-	return of_register_fixup(of_dma_coherent_fixup, (void *)(uintptr_t)soc_dma_coherency);
+	return of_register_fixup(of_dma_coherent_fixup, soc);
 }
 coredevice_initcall(of_dma_coherent_fixup_register);
-- 
2.39.2



