Delivery-date: Wed, 04 Mar 2026 14:13:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vxm2E-007ziq-0D
	for lore@lore.pengutronix.de;
	Wed, 04 Mar 2026 14:13:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vxm2E-0004lz-CX
	for lore@pengutronix.de; Wed, 04 Mar 2026 14:13:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xHzdDFM7qiqpoQ2C1IyaH2iDKOwvwRh9jIeQpRoKRLM=; b=h2FsLzQ5aFrkTr
	59XcPMm3de5TmgUcXSJL0ws+6qPjTQn76rPlekKU1EZVqsn94HWnKVw4H7IZnPvxPthd3jeomt7YL
	CnP9oThGaGQSMXDyqgO5oREtOhjJYC/EZokXP1xRjnI2WRvNX4eIFQ8PPKTe/FPV7hWmajuuB5QIy
	ceA+fbq9fNug+lLLGqBKgu7xzc6Ip0P6A9qF/WBskQB9i8laB7g6eukZ5yimwQqbiofHKMbkXTVwu
	nP1NRfn91QBLK8NaZuYomdqTz08rFwpv3LYlrXRPQdtdnm8tEzkMSqISRcetNhlkn5WYlguW7MXAO
	xEJdrM++lanoXahw7mMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxm1n-0000000HEPz-3lGf;
	Wed, 04 Mar 2026 13:12:39 +0000
Received: from smtp28.bhosted.nl ([2a02:9e0:8000::40])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxm1k-0000000HEOk-3GJ4
	for barebox@lists.infradead.org;
	Wed, 04 Mar 2026 13:12:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=protonic.nl; s=202111;
	h=content-transfer-encoding:mime-version:message-id:date:subject:cc:to:from:
	 from;
	bh=xHzdDFM7qiqpoQ2C1IyaH2iDKOwvwRh9jIeQpRoKRLM=;
	b=CapXRePEWQKA6k+deRaU+eRsgmqLrs5dBxB7W8E94TACKTLVQwckH5f4aMBtUV5so3Nqc6EQOwcoS
	 RSBiswN+QLnsoUzy7eMdPodzbuDcTkwG72xya1pxmmXsVtMDMUwFmuHUFX6f+nzFG3V1YhbADNM8Ra
	 njw1Oiq0/NjW62zbRsDvtv79BFkrnSn/Gj2jX40bvLph5bJ47ksYDO1CAIPWd89ZzONIJbj5t22dQQ
	 3xsit2gkpMpPRs4JfqPrvKz+f1gcvSEwJatAww4e21VkghQqdN3Q6fhG3oF2mvKijQRCTjDIIjt0tJ
	 nhIHm3t8pA/UCVvRsDjdDO/Ci73C5BA==
X-MSG-ID: ceef30df-17cb-11f1-b532-0050568164d1
From: Robin van der Gracht <robin.van.der.gracht@protonic.nl>
To: barebox@lists.infradead.org
Date: Wed,  4 Mar 2026 14:12:32 +0100
Message-ID: <20260304131232.563522-1-robin.van.der.gracht@protonic.nl>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_051236_960189_EA515CA2 
X-CRM114-Status: GOOD (  11.99  )
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
Cc: Robin van der Gracht <robin.van.der.gracht@protonic.nl>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: rockchip: RK3562: Add reset reason detection
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Reset reason detection on the RK3562 (and some other Rochchip models)
only works if the TSACD_SHUT_M0 pin hasn't been connected to the nPOR
pin (as is suggested by the hardware design guide). In that case all
soft resets become POR.

Signed-off-by: Robin van der Gracht <robin.van.der.gracht@protonic.nl>
---
 arch/arm/mach-rockchip/rk3562.c     | 34 +++++++++++++++++++++++++++++
 include/mach/rockchip/rk3562-regs.h |  1 +
 2 files changed, 35 insertions(+)

diff --git a/arch/arm/mach-rockchip/rk3562.c b/arch/arm/mach-rockchip/rk3562.c
index 9ab5b82695..2dde1e94ff 100644
--- a/arch/arm/mach-rockchip/rk3562.c
+++ b/arch/arm/mach-rockchip/rk3562.c
@@ -2,6 +2,7 @@
 #include <common.h>
 #include <io.h>
 #include <bootsource.h>
+#include <reset_source.h>
 #include <mach/rockchip/rk3562-regs.h>
 #include <mach/rockchip/rockchip.h>
 #include <asm/barebox-arm-head.h>
@@ -12,9 +13,42 @@ void rk3562_lowlevel_init(void)
 	arm_cpu_lowlevel_init();
 }
 
+static void rk3562_detect_reset_reason(void)
+{
+	u32 val = readl(RK3562_CRU_BASE + 0x0620);
+
+	switch (val) {
+	case 0:
+		reset_source_set(RESET_POR);
+		break;
+	case (1 << 0):
+	case (1 << 1):
+		reset_source_set(RESET_RST);
+		break;
+	case (1 << 2):
+	case (1 << 3):
+		reset_source_set(RESET_THERM);
+		break;
+	case (1 << 4):
+	case (1 << 5):
+		reset_source_set(RESET_WDG);
+		break;
+	default:
+		reset_source_set(RESET_UKWN);
+		break;
+	}
+
+	/*
+	 * Clear the reset status register here so current reset status bit
+	 * doesn't interfere with the check on the next boot.
+	 */
+	writel(0, RK3562_CRU_BASE + 0x0620);
+}
+
 int rk3562_init(void)
 {
 	rockchip_parse_bootrom_iram(rockchip_scratch_space()->iram);
+	rk3562_detect_reset_reason();
 
 	return 0;
 }
diff --git a/include/mach/rockchip/rk3562-regs.h b/include/mach/rockchip/rk3562-regs.h
index e0a06e6427..7049a37c58 100644
--- a/include/mach/rockchip/rk3562-regs.h
+++ b/include/mach/rockchip/rk3562-regs.h
@@ -17,5 +17,6 @@
 
 #define RK3562_IRAM_BASE	0xfe480000
 #define RK3562_PMUGRF_BASE	0xff010000
+#define RK3562_CRU_BASE		0xff100000
 
 #endif /* __MACH_RK3562_REGS_H */
-- 
2.43.0



