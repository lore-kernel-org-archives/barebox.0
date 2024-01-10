Delivery-date: Wed, 10 Jan 2024 17:02:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNb2Y-00BoKc-22
	for lore@lore.pengutronix.de;
	Wed, 10 Jan 2024 17:02:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNb2Y-0002pH-0k
	for lore@pengutronix.de; Wed, 10 Jan 2024 17:02:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cDuBohtS0xvB9MC485FAoIJY1m45NJ2fe+yNhG5k3dU=; b=S47+oYFxt7/gtBL+6SPPGzY6nb
	LCfoS7Azyh3ZC/lhZ7crKp4al+z88wAldtuif9cD+P9Jj9kewVykSVlLhD/w7V277QzPzDz56hzj0
	CT2vx1Oglv2KQGHhzhsnkKddVwz6CiRbLib7N46xDD4CEUlh/hqg24H79LJ3QArsHDJ6ojUyKzWEn
	yIuzhxRJzCNEbPD0f56txMiyb1PQmv+v883QqlkRLhlin4Vz+Jte0OI91wTrrBi/D7/R2lipNwM5e
	jFHCUy6cV3/kHCUO8D8pNFlriBwBeeiY9+KymfochUW7rKYWJ2xKFDxKvS1G+z+kcAEq8fXVNHNKm
	NrmlXQqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNb1I-00Ckf3-2n;
	Wed, 10 Jan 2024 16:01:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNb1E-00Ckaq-1E
	for barebox@lists.infradead.org;
	Wed, 10 Jan 2024 16:01:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rNb1D-0002Bi-6F; Wed, 10 Jan 2024 17:01:27 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rNb1C-001jup-Pv; Wed, 10 Jan 2024 17:01:26 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rNb1C-00HLtL-2I;
	Wed, 10 Jan 2024 17:01:26 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 10 Jan 2024 17:01:05 +0100
Message-Id: <20240110160112.4134162-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240110160112.4134162-1-a.fatoum@pengutronix.de>
References: <20240110160112.4134162-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240110_080128_479221_CDBEBCA4 
X-CRM114-Status: GOOD (  15.27  )
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
Subject: [PATCH v2 03/11] dma: introduce CONFIG_OF_DMA_COHERENCY
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Some architectures are either exclusively cache-coherent or not, but
some others can have only some devices that snoop the bus, while the
rest doesn't. This information can be encoded in the device tree, but
we don't want to look this up in the device tree for the vast majority
of platforms that are either completely coherent or aren't.

Therefore provide a new CONFIG_OF_DMA_COHERENCY symbol for selections
by platforms that require this functionality.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - make of_dma_is_coherent DT walking dependent on
    CONFIG_OF_DMA_COHERENCY
---
 drivers/dma/Kconfig   | 10 ++++++++++
 drivers/of/platform.c | 14 ++++++++------
 2 files changed, 18 insertions(+), 6 deletions(-)

diff --git a/drivers/dma/Kconfig b/drivers/dma/Kconfig
index 46b9b90d8231..635b11c7af7d 100644
--- a/drivers/dma/Kconfig
+++ b/drivers/dma/Kconfig
@@ -7,4 +7,14 @@ config MXS_APBH_DMA
 	select STMP_DEVICE
 	help
 	  Experimental!
+
+config OF_DMA_COHERENCY
+	bool "Respect device tree DMA coherency settings" if COMPILE_TEST
+	depends on HAS_DMA && OFDEVICE
+	help
+	  For most platforms supported, either all DMA is coherent or it isn't.
+	  Platforms that have DMA masters of mixed coherency or that differ
+	  from the architecture default will select this option to parse
+	  DMA coherency out of the DT.
+
 endmenu
diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index dc6c53b7163b..edfeb192d434 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -101,12 +101,14 @@ static struct device_node *of_get_next_dma_parent(const struct device_node *np)
  */
 bool of_dma_is_coherent(struct device_node *node)
 {
-	while (node) {
-		if (of_property_read_bool(node, "dma-coherent"))
-			return true;
-		if (of_property_read_bool(node, "dma-noncoherent"))
-			return false;
-		node = of_get_next_dma_parent(node);
+	if (IS_ENABLED(CONFIG_OF_DMA_COHERENCY)) {
+		while (node) {
+			if (of_property_read_bool(node, "dma-coherent"))
+				return true;
+			if (of_property_read_bool(node, "dma-noncoherent"))
+				return false;
+			node = of_get_next_dma_parent(node);
+		}
 	}
 
 	return IS_ENABLED(CONFIG_ARCH_DMA_DEFAULT_COHERENT);
-- 
2.39.2



