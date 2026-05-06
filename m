Delivery-date: Wed, 06 May 2026 11:07:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKYEY-001XeI-0Z
	for lore@lore.pengutronix.de;
	Wed, 06 May 2026 11:07:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKYES-00011Q-Sy
	for lore@pengutronix.de; Wed, 06 May 2026 11:07:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=STW2omjGClYY5YwenIu23QRl1RfycjqEIyjz4BKW3IU=; b=EIwqMANd9dnZmQbBuQC+CKHaCJ
	BJGI4I036eYlQJjUHcCQ6YPZDj0aipkHCP6xiVRvte4d/VbtjvLndbbwlOyuJxLJ4+PTDU6r2ZMdo
	kGSqY9nDGAO7V1+QL9JXj4Zg3863Zn6QXHQuCaW43Zv3My3n1HgV3gV6wWFmqyaisvLJy4lwiVF5u
	zq9HMJ7N6TZQN+/WtsO7gCN2tBSuTJp3zBpcCRYm2XQMUdRF2DrCuXHIcXWwr4RBj6YRspa5MK74m
	lPnfxsCzuK+g8DcaDzCtsWDWkAG+Gcj07vkH329t5HSHiSrYcHIjM5UiHIz6GbQH6nW7z+KwdfYm6
	Gg1iLRRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKYCx-00000000Htj-3pT8;
	Wed, 06 May 2026 09:06:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKYCv-00000000Hqk-3Xoo
	for barebox@lists.infradead.org;
	Wed, 06 May 2026 09:06:17 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wKYCs-0008RK-6y; Wed, 06 May 2026 11:06:14 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Wed, 06 May 2026 11:06:12 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260506-socfpga-agilex5-qspi-v1-6-94def85c1b80@pengutronix.de>
References: <20260506-socfpga-agilex5-qspi-v1-0-94def85c1b80@pengutronix.de>
In-Reply-To: <20260506-socfpga-agilex5-qspi-v1-0-94def85c1b80@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260506_020617_886805_A7973D52 
X-CRM114-Status: GOOD (  14.70  )
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
Subject: [PATCH 6/6] arm: socfpga: agilex5: extract write_qspi_refclk from
 mailbox
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Currently, the QSPI reference clock rate is stored to a register as a
side effect of requesting access to the QSPI flash via mailbox. This is
surprising and inconvenient.

Return the QSPI reference clock rate to the calling function that
requested QSPI flash access and let the caller decide what to do with
it.

This detangles the mailbox code and the low level code, and eventually
allows to use the clock rate in low level platform code.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 arch/arm/mach-socfpga/atf.c         | 9 ++++++++-
 arch/arm/mach-socfpga/mailbox_s10.c | 7 ++-----
 include/mach/socfpga/mailbox_s10.h  | 2 +-
 3 files changed, 11 insertions(+), 7 deletions(-)

diff --git a/arch/arm/mach-socfpga/atf.c b/arch/arm/mach-socfpga/atf.c
index 3719bde0e8bb..e1f0a3558b04 100644
--- a/arch/arm/mach-socfpga/atf.c
+++ b/arch/arm/mach-socfpga/atf.c
@@ -14,6 +14,7 @@
 
 static void socfpga_agilex5_qspi_init(void)
 {
+	unsigned long master_ref_clk = 0;
 	int ret;
 
 	ret = socfpga_mailbox_s10_init();
@@ -22,11 +23,17 @@ static void socfpga_agilex5_qspi_init(void)
 		return;
 	}
 
-	ret = socfpga_mailbox_s10_qspi_open();
+	ret = socfpga_mailbox_s10_qspi_open(&master_ref_clk);
 	if (ret) {
 		pr_warn("Failed to request QSPI access: %d\n", ret);
 		return;
 	}
+
+	ret = socfpga_agilex5_write_qspi_refclk(master_ref_clk);
+	if (ret) {
+		pr_warn("Failed to store reference clock: %d\n", ret);
+		return;
+	}
 }
 
 static void __noreturn agilex5_load_and_start_image_via_tfa(void)
diff --git a/arch/arm/mach-socfpga/mailbox_s10.c b/arch/arm/mach-socfpga/mailbox_s10.c
index 417816673c3d..fdbd7f272866 100644
--- a/arch/arm/mach-socfpga/mailbox_s10.c
+++ b/arch/arm/mach-socfpga/mailbox_s10.c
@@ -10,7 +10,6 @@
 #include <io.h>
 #include <mach/socfpga/mailbox_s10.h>
 #include <mach/socfpga/soc64-regs.h>
-#include <mach/socfpga/soc64-system-manager.h>
 
 #define MBOX_READL(reg)			\
 	 readl(SOCFPGA_MAILBOX_ADDRESS + (reg))
@@ -294,7 +293,7 @@ int socfpga_mailbox_s10_qspi_close(void)
 			     0, NULL, 0, 0, NULL);
 }
 
-int socfpga_mailbox_s10_qspi_open(void)
+int socfpga_mailbox_s10_qspi_open(unsigned long *master_ref_clk)
 {
 	int ret;
 	u32 resp_buf[1] = {};
@@ -339,9 +338,7 @@ int socfpga_mailbox_s10_qspi_open(void)
 
 	pr_info("QSPI: reference clock at %d kHz\n", clk_rate / 1000);
 
-	ret = socfpga_agilex5_write_qspi_refclk(clk_rate);
-	if (ret)
-		return ret;
+	*master_ref_clk = clk_rate;
 
 	return 0;
 
diff --git a/include/mach/socfpga/mailbox_s10.h b/include/mach/socfpga/mailbox_s10.h
index bba4adbbe877..0033bf40d45b 100644
--- a/include/mach/socfpga/mailbox_s10.h
+++ b/include/mach/socfpga/mailbox_s10.h
@@ -185,7 +185,7 @@ enum ALT_SDM_MBOX_RESP_CODE {
 int socfpga_mailbox_s10_init(void);
 
 int socfpga_mailbox_s10_qspi_close(void);
-int socfpga_mailbox_s10_qspi_open(void);
+int socfpga_mailbox_s10_qspi_open(unsigned long *master_ref_clk);
 int socfpga_mailbox_s10_qspi_get_device_info(u32 *resp_buf, u32 resp_buf_len);
 
 #endif /* _MAILBOX_S10_H_ */

-- 
2.47.3



