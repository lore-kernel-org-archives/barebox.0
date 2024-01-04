Delivery-date: Thu, 04 Jan 2024 15:19:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rLOYx-003cRk-1L
	for lore@lore.pengutronix.de;
	Thu, 04 Jan 2024 15:19:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rLOYv-0005Ey-MT
	for lore@pengutronix.de; Thu, 04 Jan 2024 15:19:10 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=n4qtXMFN2zCamLXREqqyYnDpgWGtWvOEtVol0aA4CfA=; b=0IVdTmFhOAEvShAaZo4HFEzvDy
	azfXWXQw1fAEHNRpgKodhSvBYKxcowWKLBCy4DaQeoxjsOzTlMZnSvpAeK7mIn0UnzazLfTUE9/KA
	E6zCJR3uMijUIFFgG6O3UR1e991WnllihXY+SxS8/9FZ7Q8NRxerFJoSrWmwtowIYGcbvrvtKxmMs
	74rRnl89OP+Qz4fvddtY8OWqYn8sGwmhM6p8ddG00M971QTf+sFEpPv+xA2PRCiJru1HGCxQHK2J5
	lLqvGD4ErjZHIah148SDVnst8O2FtwkSAhaFZ027opVP5x3eIHTbMayjnNG5AArctAA9oMnJN/cEq
	ij96TryQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLOXp-00EJ6t-20;
	Thu, 04 Jan 2024 14:18:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLOXf-00EIz0-2M
	for barebox@lists.infradead.org;
	Thu, 04 Jan 2024 14:17:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rLOXc-0004HQ-5o; Thu, 04 Jan 2024 15:17:48 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rLOXb-000My3-Jl; Thu, 04 Jan 2024 15:17:47 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rLOXb-0017xW-1l;
	Thu, 04 Jan 2024 15:17:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  4 Jan 2024 15:17:29 +0100
Message-Id: <20240104141746.165014-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240104141746.165014-1-s.hauer@pengutronix.de>
References: <20240104141746.165014-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240104_061751_837254_541FD10E 
X-CRM114-Status: GOOD (  11.65  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 02/19] soc/fsl/immap_lsch2.h: cleanup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Some values differ between LS1046a and LS1021. Move them directly where
needed so that we can drop the #ifdef SOC_TYPE from immap_lsch2.h

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-layerscape/lowlevel-ls102xa.c | 5 +++++
 include/soc/fsl/immap_lsch2.h               | 6 ------
 2 files changed, 5 insertions(+), 6 deletions(-)

diff --git a/arch/arm/mach-layerscape/lowlevel-ls102xa.c b/arch/arm/mach-layerscape/lowlevel-ls102xa.c
index 259d8866d5..7ea0a5b071 100644
--- a/arch/arm/mach-layerscape/lowlevel-ls102xa.c
+++ b/arch/arm/mach-layerscape/lowlevel-ls102xa.c
@@ -299,6 +299,11 @@ static void fsl_epu_clean(void *epu_base)
 		out_be32(epu_base + offset, 0);
 }
 
+#define TIMER_COMP_VAL			0xffffffffffffffffull
+#define ARCH_TIMER_CTRL_ENABLE		(1 << 0)
+#define SYS_COUNTER_CTRL_ENABLE		(1 << 24)
+#define SCFG_QSPI_CLKSEL		0x50100000
+
 /* ls102xa_init_lowlevel
  * Based on ls1046 and U-boot ls102xa arch_cpu_init
  */
diff --git a/include/soc/fsl/immap_lsch2.h b/include/soc/fsl/immap_lsch2.h
index 62e48ae746..ce840d4223 100644
--- a/include/soc/fsl/immap_lsch2.h
+++ b/include/soc/fsl/immap_lsch2.h
@@ -63,10 +63,6 @@
 #define LSCH2_QDMA_BASE_ADDR		(LSCH2_IMMR + 0x07380000)
 #define LSCH2_EHCI_USB1_ADDR		(LSCH2_IMMR + 0x07600000)
 
-#define TIMER_COMP_VAL			0xffffffffffffffffull
-#define ARCH_TIMER_CTRL_ENABLE		(1 << 0)
-#define SYS_COUNTER_CTRL_ENABLE		(1 << 24)
-
 struct ccsr_gur {
 	u32     porsr1;         /* POR status 1 */
 #define FSL_CHASSIS2_CCSR_PORSR1_RCW_MASK	0xFF800000
@@ -306,13 +302,11 @@ struct ls102xa_ccsr_gur {
 #define SCFG_USB_PHY3			0x08510000
 #define SCFG_USB_PHY_RX_OVRD_IN_HI		0x200c
 #if defined CONFIG_ARCH_LS1046
-#define SCFG_QSPI_CLKSEL		0x40100000
 #define USB_PHY_RX_EQ_VAL_1		0x0000
 #define USB_PHY_RX_EQ_VAL_2		0x0080
 #define USB_PHY_RX_EQ_VAL_3		0x0380
 #define USB_PHY_RX_EQ_VAL_4		0x0b80
 #elif defined CONFIG_ARCH_LS1021
-#define SCFG_QSPI_CLKSEL		0x50100000
 #define USB_PHY_RX_EQ_VAL_1		0x0000
 #define USB_PHY_RX_EQ_VAL_2		0x8000
 #define USB_PHY_RX_EQ_VAL_3		0x8004
-- 
2.39.2



