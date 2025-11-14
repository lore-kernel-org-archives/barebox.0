Delivery-date: Fri, 14 Nov 2025 08:24:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vJoA9-000p8C-1X
	for lore@lore.pengutronix.de;
	Fri, 14 Nov 2025 08:24:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vJoA8-0000ZS-T1
	for lore@pengutronix.de; Fri, 14 Nov 2025 08:24:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CoDRXz1FgTaHXc/Hs23vOrETeR1Qlf0D2Aii6/uFmPU=; b=uQSvb0dgzBp/wDpIbnwumPKRB1
	Bqs9GE2V7Mvh6uHCuP6T3O24auJJK8Tj94Zg/e25a1iR+k3jzMVcW6dni+Muj2Lk7YZFLPAkN/WTa
	5wUpQkMX89Cs4SSO3uUky4vc5FNkeg5pV6rICSH4Z7tvFE5xzuOw/MBOKFMyu+CFg0uMlTJF91ZYj
	rdwOmlAaFAAHNEXdNxEftKnLBI4dtF9JJg4Gt2i0QLK2q/K4iBHQEycjZ4r6aNohAGA1YG1C81FBk
	KHisc8T5ia0KwZCHq00ehcW6gbPJwdn+6cuxbwQ/ZTQuiYe0Sg81U4uAI9qEqks4r3rDuwFXniIAJ
	Lv0w67Qg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJo9f-0000000BkUr-3aMq;
	Fri, 14 Nov 2025 07:23:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vJo9b-0000000BkTV-2GzC
	for barebox@lists.infradead.org;
	Fri, 14 Nov 2025 07:23:33 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1vJo9Y-0000Ng-Dj; Fri, 14 Nov 2025 08:23:28 +0100
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Fri, 14 Nov 2025 08:23:16 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251114-v2025-11-0-topic-socfpga-arria10-v1-2-e091cddacea5@pengutronix.de>
References: <20251114-v2025-11-0-topic-socfpga-arria10-v1-0-e091cddacea5@pengutronix.de>
In-Reply-To: <20251114-v2025-11-0-topic-socfpga-arria10-v1-0-e091cddacea5@pengutronix.de>
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 Bruno Knittel <bruno.knittel@bruker.com>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251113_232331_586789_F8DE4B41 
X-CRM114-Status: UNSURE (   9.55  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] ARM: socfpga: arria10-init: setup uart earlier
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Bruno Knittel <bruno.knittel@bruker.com>

Dedicated peripherals like GPIO but especially UART can be enabled and
used before the FPGA is configured.

This commit ensures socfpga_uart_setup_ll() is done before FPGA
configuration and allows to have UART debug output as early as possible.

Signed-off-by: Bruno Knittel <bruno.knittel@bruker.com>
Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/mach-socfpga/arria10-init.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/mach-socfpga/arria10-init.c b/arch/arm/mach-socfpga/arria10-init.c
index 14cee3196a..7b438a8947 100644
--- a/arch/arm/mach-socfpga/arria10-init.c
+++ b/arch/arm/mach-socfpga/arria10-init.c
@@ -146,10 +146,6 @@ void arria10_finish_io(uint32_t *pinmux)
 	arria10_reset_deassert_shared_peripherals();
 
 	arria10_reset_deassert_fpga_peripherals();
-
-	socfpga_uart_setup_ll();
-
-	puts_ll("lowlevel init done\n");
 }
 /*
  * First C function to initialize the critical hardware early
@@ -197,4 +193,8 @@ void arria10_init(struct arria10_mainpll_cfg *mainpll,
 
 	/* deassert peripheral resets */
 	arria10_reset_deassert_dedicated_peripherals();
+
+	socfpga_uart_setup_ll();
+
+	puts_ll("lowlevel init done\n");
 }

-- 
2.46.0



