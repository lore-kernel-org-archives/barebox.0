Delivery-date: Wed, 10 Jan 2024 17:02:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNb2U-00BoJ5-1J
	for lore@lore.pengutronix.de;
	Wed, 10 Jan 2024 17:02:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNb2T-0002my-QD
	for lore@pengutronix.de; Wed, 10 Jan 2024 17:02:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JUzqUEJHJ7Kz5QtXNRoWe96pxnvHeq98I72neB1NMRE=; b=xvPMWNE+JyHUh4AGa66K2OoJ1i
	JFrsnFmjroTOcmoo0SpGsYodzQajwLX/lp2T5OOl9iW3d0z7LbYa6AfKy7VwPfEe9UF2M3cdb4J0e
	jRIeHR7xXSwzpoQKigtMrAKqQT4OxHyvMrzKLfry0TAWjLPeSs9JdZPktOgkFYZQYcwwknWyw2S44
	4clPUc4shyGpcbV/qyEBVySnDYWEGhzBph2MSpLk792CxSx/Bin0PqdCFcuwmcCIk2lsywVilR5xB
	nwZAKKRWuUmL60BP/vlQOf1Nd5JreNQxuad+yGI6iPGd7/Bwyo8NH+iBXNBnwOfxGMvQesTP9C374
	DdjboRDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNb1M-00Ckhy-1v;
	Wed, 10 Jan 2024 16:01:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNb1E-00Ckan-1E
	for barebox@lists.infradead.org;
	Wed, 10 Jan 2024 16:01:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rNb1D-0002Bg-3a; Wed, 10 Jan 2024 17:01:27 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rNb1C-001juj-NH; Wed, 10 Jan 2024 17:01:26 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rNb1C-00HLtL-1z;
	Wed, 10 Jan 2024 17:01:26 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 10 Jan 2024 17:01:03 +0100
Message-Id: <20240110160112.4134162-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240110160112.4134162-1-a.fatoum@pengutronix.de>
References: <20240110160112.4134162-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240110_080128_483961_F954EFEF 
X-CRM114-Status: GOOD (  13.03  )
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
Subject: [PATCH v2 01/11] dma: rename OF_DMA_DEFAULT_COHERENT to ARCH_DMA_DEFAULT_COHERENT
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The symbol is not visible and only used by of_dma_is_coherent, which
has no current callers.

It was added to extend devices with a DMA coherency attribute like done
in Linux and was renamed there in commit c00a60d6f4a1 ("of: address: always
use dma_default_coherent for default coherency"), so have barebox follow
suit.

No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - new patch to sync with Linux
---
 arch/Kconfig          | 7 +++++++
 arch/riscv/Kconfig    | 2 +-
 drivers/of/Kconfig    | 4 ----
 drivers/of/platform.c | 2 +-
 4 files changed, 9 insertions(+), 6 deletions(-)

diff --git a/arch/Kconfig b/arch/Kconfig
index 1a9d32370422..2212b8928829 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -11,3 +11,10 @@ source "arch/$(SRCARCH)/Kconfig"
 
 config ARCH_HAS_CTRLC
 	bool
+
+#
+# Select this option if the architecture assumes DMA devices are coherent
+# by default.
+#
+config ARCH_DMA_DEFAULT_COHERENT
+        bool
diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index afbd55aa3e6f..c31c39454a25 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -10,7 +10,7 @@ config RISCV
 	select COMMON_CLK_OF_PROVIDER
 	select CLKDEV_LOOKUP
 	select HAS_DMA
-	select OF_DMA_DEFAULT_COHERENT
+	select ARCH_DMA_DEFAULT_COHERENT
 	select HAVE_PBL_IMAGE
 	select HAVE_PBL_MULTI_IMAGES
 	select HAVE_IMAGE_COMPRESSION
diff --git a/drivers/of/Kconfig b/drivers/of/Kconfig
index 816aff0063b0..71f6103f0e69 100644
--- a/drivers/of/Kconfig
+++ b/drivers/of/Kconfig
@@ -35,10 +35,6 @@ config FEATURE_CONTROLLER_FIXUP
 config OF_ADDRESS_PCI
 	bool
 
-config OF_DMA_DEFAULT_COHERENT
-	# arches should select this if DMA is coherent by default for OF devices
-	bool
-
 config OF_GPIO
 	depends on GPIOLIB
 	depends on OFDEVICE
diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index 9ba4438812c1..dc6c53b7163b 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -109,7 +109,7 @@ bool of_dma_is_coherent(struct device_node *node)
 		node = of_get_next_dma_parent(node);
 	}
 
-	return IS_ENABLED(CONFIG_OF_DMA_DEFAULT_COHERENT);
+	return IS_ENABLED(CONFIG_ARCH_DMA_DEFAULT_COHERENT);
 }
 EXPORT_SYMBOL_GPL(of_dma_is_coherent);
 
-- 
2.39.2



