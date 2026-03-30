Delivery-date: Mon, 30 Mar 2026 14:25:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w7Bg6-006n3K-1m
	for lore@lore.pengutronix.de;
	Mon, 30 Mar 2026 14:25:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w7Bg6-0005SV-06
	for lore@pengutronix.de; Mon, 30 Mar 2026 14:25:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JgildYhoO848CXGX1gBguOzIQ/kdtLT/4wp1hRSBj1M=; b=TmV5fA2yy/TG5Czn722BTOHLQb
	R8VtsRVAjAhg8N5T79Q12AMfBVY0eaJiCocKFghKgq+mg2nw/OlTI9RwzU6mWbH3h6+mylKN3E6HJ
	M9DTiFS4Mfhs13gfGRcPc37FPu7tCkfzhdAQ+d2H2/VFj0fCkTv6xwDmIQP6AwKcPQiU/QJDUoTVj
	A5/+upPoYkcwBxDTBoJ+kR+L8apcLkilIey0WRzNnVc8qUjNbnD8VSGXQz8rKeoY+WEGAqw+i6lp2
	y5wLlReBPmn2rzjfUXc4imCSJMSPITWZWe2nwiqlzvDF12V3L2dVOsIt/2KEDXQkq72Da7TxF/vVT
	pWE/7RVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7BfT-0000000BFRi-0T9K;
	Mon, 30 Mar 2026 12:24:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w7BfP-0000000BFPe-3znE
	for barebox@lists.infradead.org;
	Mon, 30 Mar 2026 12:24:30 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1w7BfM-0005EW-HU; Mon, 30 Mar 2026 14:24:24 +0200
From: Fabian Pflug <f.pflug@pengutronix.de>
Date: Mon, 30 Mar 2026 14:24:16 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260330-v2026-03-0-topic-soc_bin_id-v1-2-11292f75b196@pengutronix.de>
References: <20260330-v2026-03-0-topic-soc_bin_id-v1-0-11292f75b196@pengutronix.de>
In-Reply-To: <20260330-v2026-03-0-topic-soc_bin_id-v1-0-11292f75b196@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Fabian Pflug <f.pflug@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260330_052427_994330_C9F3FB20 
X-CRM114-Status: GOOD (  11.37  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] i.MX: HAB: update text for HABV4_CSF_UNLOCK_UID
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

With the establishment of global.soc_uid_bin, there is no need to look
for the serial number and reverse it.

Also some SoC's will have 128-bit UID's, so the hint to 64 bit is not
correct and should be removed.

Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig | 11 +++--------
 1 file changed, 3 insertions(+), 8 deletions(-)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 2e4d1ac80a..bfcb6ae402 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -918,17 +918,12 @@ config HABV4_CSF_UNLOCK_UID
 	depends on HABV4 && HABV4_CSF_UNLOCK_FIELD_RETURN
 	string "CSF Unlock UID"
 	help
-	  Device specific 64-bit UID required to unlock the field-return
+	  Device specific UID required to unlock the field-return
 	  feature. This value must match the per device UNIQUE_ID fuses.
 
 	  The below example shows the expected format. The UNIQUE_ID is
-	  printed during boot by barebox:
-	    i.MX___ unique ID: 7766554433221100
-	  or it can be queried by Linux via:
-	    - cat /sys/devices/soc0/serial_number
-	      7766554433221100
-
-	  So this value have to be set:
+	  is stored in $global.soc_uid_bin, but must be split into bytes.
+	  The soc_uid_bin 0011223344556677 becomes:
 	    - 0x00, 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77
 
 	  Afterwards, the `hab -p -r` command can be used to burn the fuse.

-- 
2.47.3



