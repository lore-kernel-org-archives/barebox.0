Delivery-date: Wed, 06 May 2026 11:08:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKYEc-001XfF-0R
	for lore@lore.pengutronix.de;
	Wed, 06 May 2026 11:08:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wKYEV-00012O-OM
	for lore@pengutronix.de; Wed, 06 May 2026 11:08:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uE3F5wFcWRVSPzsSoPnOqJH42OEcR6kIOKE9iUpmBZo=; b=LjvieIzDrZ45FCiBQjNcJKLVGz
	rP6MyQao5hu9K25q/JK5Mt3OQitJhM3NyW+xkwXFnvKCFr328t31DAQIU2QdZ+UFQxqlAlOR2yBCL
	LfuZ/vanK9E8vDikQXNfEAiHMAku6V2GGZMqG7qJ/oykcDKWP3i3VZNNx0W/MSVjPWEnOSXMBZzLW
	laZFhgBjLRQ7hKmlMyMGdgQ07Fu+XBY77anOAx7lSI2VtxBMimim9uw1kBNxAmDTEcupSFtEDOz97
	Q/Da03piURFQNBwbXEhCMd7QtpCt28/weRWAmqsj0ULGS3lXBPE/qYN+Q8KzPjyz1ycRVUyldWzIm
	VchMf3oA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKYCy-00000000Hu2-0VRV;
	Wed, 06 May 2026 09:06:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wKYCv-00000000Hqh-3mIP
	for barebox@lists.infradead.org;
	Wed, 06 May 2026 09:06:18 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wKYCs-0008RK-3Y; Wed, 06 May 2026 11:06:14 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Wed, 06 May 2026 11:06:09 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260506-socfpga-agilex5-qspi-v1-3-94def85c1b80@pengutronix.de>
References: <20260506-socfpga-agilex5-qspi-v1-0-94def85c1b80@pengutronix.de>
In-Reply-To: <20260506-socfpga-agilex5-qspi-v1-0-94def85c1b80@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260506_020617_994353_443F77C9 
X-CRM114-Status: GOOD (  10.62  )
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
Subject: [PATCH 3/6] arm: socfpga: agilex5: extract function to request
 qspi access
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Requesting access to the QSPI flash access may actually fail due to the
firmware configuration. Tell the user about the failure, since other
features, for example, barebox environment in flash, may rely on QSPI
flash access.

Extract a helper function and print a warning, if QSPI flash access was
not granted.

Since requesting QSPI flash access is currently the only function that
uses the S10 mailbox, move socfgpa_mailbox_s10_init(), too.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 arch/arm/mach-socfpga/atf.c | 20 ++++++++++++++++++--
 1 file changed, 18 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-socfpga/atf.c b/arch/arm/mach-socfpga/atf.c
index c7be4e11d2ea..3719bde0e8bb 100644
--- a/arch/arm/mach-socfpga/atf.c
+++ b/arch/arm/mach-socfpga/atf.c
@@ -12,6 +12,23 @@
 #include <mach/socfpga/soc64-sdram.h>
 #include <mach/socfpga/soc64-system-manager.h>
 
+static void socfpga_agilex5_qspi_init(void)
+{
+	int ret;
+
+	ret = socfpga_mailbox_s10_init();
+	if (ret) {
+		pr_warn("Failed to init s10 mailbox: %d\n", ret);
+		return;
+	}
+
+	ret = socfpga_mailbox_s10_qspi_open();
+	if (ret) {
+		pr_warn("Failed to request QSPI access: %d\n", ret);
+		return;
+	}
+}
+
 static void __noreturn agilex5_load_and_start_image_via_tfa(void)
 {
 	void *bl31 = (void *)AGILEX5_ATF_BL31_BASE_ADDR;
@@ -55,8 +72,7 @@ void __noreturn agilex5_barebox_entry(void *fdt)
 			writel(LCR_BKSE, SOCFPGA_UART0_ADDRESS + LCR);
 		agilex5_ddr_init_full();
 
-		socfpga_mailbox_s10_init();
-		socfpga_mailbox_s10_qspi_open();
+		socfpga_agilex5_qspi_init();
 
 		agilex5_load_and_start_image_via_tfa();
 		__builtin_unreachable();

-- 
2.47.3



