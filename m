Delivery-date: Thu, 16 Apr 2026 11:49:02 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDJLK-00Cm6Y-2e
	for lore@lore.pengutronix.de;
	Thu, 16 Apr 2026 11:49:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDJLK-0001LP-7o
	for lore@pengutronix.de; Thu, 16 Apr 2026 11:49:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=npZXQsfOnnQipbwg/5QouOtaMhIjXtAkUFo6IFb9rGE=; b=eKzPAOIhL5j85cbwe6jxhD3kTP
	aCxUThqbYi6zQfWS+HwC//1YXETNIIWNa60jb2ULCO8tSQsDm+HrM+3i4kcXMCy9vf+t+BgMq4hM1
	EZNrxnjKU0a34WBbg5E6xMDDK8EZy3CT2VsLlrR1C5O5ovq8Dc8i5wzFCjprBn1wJ4ot2GMAziifk
	Dr7YzBRTBUOudiWnjdaHT8AfVNpcCS7T867Xo/T26WTtvEqY76a4awIBujLvhIOEs2N3TcRuHel1q
	UTnQfnPs3sNHNCGrgPV0vDTxg4KIVy0hmZkgzMa5deeiPtt0SIxBIl/yj05q3soUWJId7Ln9DZQ2N
	59Vf/QOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDJKd-00000002GR1-3zDy;
	Thu, 16 Apr 2026 09:48:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDJKa-00000002GOA-3S5R
	for barebox@lists.infradead.org;
	Thu, 16 Apr 2026 09:48:18 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wDJKX-0000o5-5O; Thu, 16 Apr 2026 11:48:13 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Thu, 16 Apr 2026 11:48:08 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260416-socfpga-agilex5-sdram-v1-4-07556aa7219f@pengutronix.de>
References: <20260416-socfpga-agilex5-sdram-v1-0-07556aa7219f@pengutronix.de>
In-Reply-To: <20260416-socfpga-agilex5-sdram-v1-0-07556aa7219f@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260416_024816_869470_E91BD3B8 
X-CRM114-Status: UNSURE (   9.83  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/9] arm: socfpga: agilex5: fix read of memory limit
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

FW_MPU_DDR_DMI0_SCR_READL adds the base address to the register address.

Drop it from the caller to avoid adding the base address twice.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 include/mach/socfpga/soc64-sdram.h | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/include/mach/socfpga/soc64-sdram.h b/include/mach/socfpga/soc64-sdram.h
index c84cd7f82537..8f367822e869 100644
--- a/include/mach/socfpga/soc64-sdram.h
+++ b/include/mach/socfpga/soc64-sdram.h
@@ -8,6 +8,8 @@
 
 #include <linux/sizes.h>
 
+#include <mach/socfpga/soc64-firewall.h>
+
 struct altera_sdram_plat {
 	void __iomem *mpfe_base_addr;
 	bool dualport;
@@ -192,8 +194,7 @@ static inline resource_size_t agilex5_mpfe_sdram_size(void)
 	u32 lower;
 	resource_size_t mem = 0;
 
-	lower = FW_MPU_DDR_DMI0_SCR_READL(SOCFPGA_FW_DDR_CCU_DMI0_ADDRESS +
-					  FW_MPU_DDR_SCR_MPUREGION0ADDR_LIMIT);
+	lower = FW_MPU_DDR_DMI0_SCR_READL(FW_MPU_DDR_SCR_MPUREGION0ADDR_LIMIT);
 
 	mem = lower;
 

-- 
2.47.3



