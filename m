Delivery-date: Mon, 17 Jun 2024 13:37:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sJAfu-007Yec-2i
	for lore@lore.pengutronix.de;
	Mon, 17 Jun 2024 13:37:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sJAft-00077c-Rz
	for lore@pengutronix.de; Mon, 17 Jun 2024 13:37:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xRtQ2OpEQRGeE+lVHV9vCywS+wwbP8x/J2iOxiJ7m/I=; b=QQp0m9dFzWjbtlWFRsCOSI/Vhh
	toT4XKnlEF5X+QWWzoMGU/6MSWi8Yj5VhqjD2Vi3cjvlxdZdccVrZlSPbIQfumkeqAwVk9Bt6Cs9g
	WLFH8ki8ujxsqBDEHDNcDIFtKPBvF6exUHczhWlIfZFlWXTVl8dBiG6x7GJjrKybbT5UIEt7pOkiI
	nUNNEyD6oVcRPGzPXbVnfv6mMLHyzmVj46YvB6ozDD+hBK+/61PzOqLlcoejEkn+4jayjgBUejYQ4
	aiFQWhkj5omMXvS2JUxJ8ffEjY28dHGw4mxpzyNTGEZyjev8TeenBgnjCKPsPq+8kIgtkPqO9rojb
	csQwo0BA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJAfI-0000000AVe0-16Td;
	Mon, 17 Jun 2024 11:36:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJAfA-0000000AVWB-2KI7
	for barebox@lists.infradead.org;
	Mon, 17 Jun 2024 11:36:42 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1sJAf7-0006ab-UN; Mon, 17 Jun 2024 13:36:37 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 17 Jun 2024 13:36:25 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240617-v2024-05-0-topic-socfpga-arria10-xloader-v1-3-48a6eba4bb5e@pengutronix.de>
References: <20240617-v2024-05-0-topic-socfpga-arria10-xloader-v1-0-48a6eba4bb5e@pengutronix.de>
In-Reply-To: <20240617-v2024-05-0-topic-socfpga-arria10-xloader-v1-0-48a6eba4bb5e@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240617_043640_855220_4CB2CC21 
X-CRM114-Status: UNSURE (   6.99  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 03/14] ARM: socfpga: Arria10: PE1: remove
 arm_cpu_lowlevel_init
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The bringup image is intedend to be loaded via JTAG.
The arm_cpu_lowlevel_init() call often results in bringup errors,
because for some unknown reason we hang in relocate_to_current_adr if
arm_cpu_lowlevel_init is run beforehand. Without it, starting barebox
over JTAG works fine.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/boards/enclustra-aa1/lowlevel.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boards/enclustra-aa1/lowlevel.c b/arch/arm/boards/enclustra-aa1/lowlevel.c
index ba4d562e5f..ada7cb5a9f 100644
--- a/arch/arm/boards/enclustra-aa1/lowlevel.c
+++ b/arch/arm/boards/enclustra-aa1/lowlevel.c
@@ -103,7 +103,6 @@ ENTRY_FUNCTION_WITHSTACK(start_socfpga_aa1_bringup, ARRIA10_STACKTOP, r0, r1, r2
 {
 	void *fdt;
 
-	arm_cpu_lowlevel_init();
 	arria10_cpu_lowlevel_init();
 
 	relocate_to_current_adr();

-- 
2.43.2



