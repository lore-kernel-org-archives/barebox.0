Delivery-date: Tue, 09 Jan 2024 17:17:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNEmo-00AULk-39
	for lore@lore.pengutronix.de;
	Tue, 09 Jan 2024 17:17:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNEmn-0000U1-RN
	for lore@pengutronix.de; Tue, 09 Jan 2024 17:17:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uz61n4o1dWQtpshRrbFxKnmKcuXrKPpJXdiDVINcnLk=; b=WfM7OtRAYuIOEd3baEQtThQl5R
	MC1KiZqVAHDI1YHWSkdNsEs/d5FSVHevT11ypelChjV6ZQLWU/mCMBQEZVvJQPv9ejiJEisngeAY2
	nTyh5avywvi9hC/GvfsvK9N7SEgDHxqrMinIA84NHlXkCiSgGqOHYgoLWB4AUkjif0nBNiL3j46B1
	kqc/IMw7FGT18D5Ss/F2KHsiVQZcn28D3VA6fjlNVi94WGW7jAEk4GkFBDw/jFIY6cNrMgcUV9iDD
	Sj7sD1jPCgKGvsOIogsV8Xww7brtumH6h1XsqAOs1dO04VZrzSkVmWYOFZQUx8tpPz1R9m7o9wuOk
	cL357ptg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNElj-008o4K-2x;
	Tue, 09 Jan 2024 16:16:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNElO-008nnr-2n
	for barebox@lists.infradead.org;
	Tue, 09 Jan 2024 16:15:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rNElF-0007lg-Jl; Tue, 09 Jan 2024 17:15:29 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rNElE-001WCx-RH; Tue, 09 Jan 2024 17:15:28 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rNElE-00E7Rg-2L;
	Tue, 09 Jan 2024 17:15:28 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  9 Jan 2024 17:15:24 +0100
Message-Id: <20240109161527.3237581-19-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240109161527.3237581-1-s.hauer@pengutronix.de>
References: <20240109161527.3237581-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240109_081538_934991_4D192434 
X-CRM114-Status: GOOD (  13.20  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 18/21] ARM: Layerscape: LS1028a: implement bootsource detection
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Detecting the bootsource is just a matter of decoding the porsr1
register. Implement it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-layerscape/boot.c      | 40 ++++++++++++++++++++++++++++
 arch/arm/mach-layerscape/soc.c       |  1 +
 include/mach/layerscape/layerscape.h |  1 +
 3 files changed, 42 insertions(+)

diff --git a/arch/arm/mach-layerscape/boot.c b/arch/arm/mach-layerscape/boot.c
index 26a7a1434a..4d074205cc 100644
--- a/arch/arm/mach-layerscape/boot.c
+++ b/arch/arm/mach-layerscape/boot.c
@@ -3,8 +3,10 @@
 #include <common.h>
 #include <init.h>
 #include <bootsource.h>
+#include <linux/bitfield.h>
 #include <mach/layerscape/layerscape.h>
 #include <soc/fsl/immap_lsch2.h>
+#include <soc/fsl/immap_lsch3.h>
 
 enum bootsource ls1046a_bootsource_get(void)
 {
@@ -41,3 +43,41 @@ void ls1046a_bootsource_init(void)
 {
 	bootsource_set_raw(ls1046a_bootsource_get(), BOOTSOURCE_INSTANCE_UNKNOWN);
 }
+
+#define PORSR1_RCW_SRC	GENMASK(26, 23)
+
+static enum bootsource ls1028a_bootsource_get(int *instance)
+{
+	void __iomem *porsr1 = IOMEM(LSCH3_DCFG_BASE);
+	uint32_t rcw_src;
+
+	rcw_src = FIELD_GET(PORSR1_RCW_SRC, readl(porsr1));
+
+	printf("%s: 0x%08x\n", __func__, rcw_src);
+
+	switch (rcw_src) {
+	case 8:
+		*instance = 0;
+		return BOOTSOURCE_MMC;
+	case 9:
+		*instance = 1;
+		return BOOTSOURCE_MMC;
+	case 0xa:
+		return BOOTSOURCE_I2C;
+	case 0xd:
+	case 0xc:
+		return BOOTSOURCE_NAND;
+	case 0xf:
+		return BOOTSOURCE_SPI_NOR;
+	}
+
+	return BOOTSOURCE_UNKNOWN;
+}
+
+void ls1028a_bootsource_init(void)
+{
+	int instance = BOOTSOURCE_INSTANCE_UNKNOWN;
+	enum bootsource source = ls1028a_bootsource_get(&instance);
+
+	bootsource_set_raw(source, instance);
+}
diff --git a/arch/arm/mach-layerscape/soc.c b/arch/arm/mach-layerscape/soc.c
index a50aafc954..462405ea87 100644
--- a/arch/arm/mach-layerscape/soc.c
+++ b/arch/arm/mach-layerscape/soc.c
@@ -92,6 +92,7 @@ static int ls1028a_init(void)
 	if (!cpu_is_ls1028a())
 		return -EINVAL;
 
+	ls1028a_bootsource_init();
 	layerscape_register_pbl_image_handler();
 	ls1028a_setup_icids();
 
diff --git a/include/mach/layerscape/layerscape.h b/include/mach/layerscape/layerscape.h
index a9037125c8..bf4a751b92 100644
--- a/include/mach/layerscape/layerscape.h
+++ b/include/mach/layerscape/layerscape.h
@@ -54,6 +54,7 @@ struct dram_regions_info {
 };
 
 void ls1021a_bootsource_init(void);
+void ls1028a_bootsource_init(void);
 void ls1046a_bootsource_init(void);
 void layerscape_register_pbl_image_handler(void);
 void ls102xa_smmu_stream_id_init(void);
-- 
2.39.2



