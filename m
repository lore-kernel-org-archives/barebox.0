Delivery-date: Mon, 17 Jun 2024 13:37:27 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sJAfv-007Yey-1j
	for lore@lore.pengutronix.de;
	Mon, 17 Jun 2024 13:37:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sJAfu-00078n-E0
	for lore@pengutronix.de; Mon, 17 Jun 2024 13:37:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BRz9FdSB14Jy9oIiURcEEuJBzJPfa1XO9Ui5/AcxYco=; b=w3lO6C9iGY3o1qqLZu8az/g8OR
	bYnRQ63kE7FzVe1u58I/T3YwCPSB5l2IDEzwngjyfziNTbpdR5VEWyuRXabx78JK7IVsFQeTG3nZZ
	jzauPTbZjV/F4+0woI95PVY2l8oqkDI/lpeQQ8s9qqO2J76fbIrZ3M6SRav4jodYQnD9k/dleZFxt
	oW7l+ZWcJnakaYtQ4e6CjV4IWPDmAJUtx1b78lm8jedAC0XHq06TcZlYlzgIqzubT9TYzwKy1ICyR
	ujkbkeRNU+lb9BOAUcGH0V390jdRiAwmOYDcocGKRue8SI0LOMz4rU1Kv/of03It6Gc2CYddUFyxf
	2nSxbblg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJAfN-0000000AVgb-3MiO;
	Mon, 17 Jun 2024 11:36:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJAfA-0000000AVWG-32VX
	for barebox@lists.infradead.org;
	Mon, 17 Jun 2024 11:36:42 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1sJAf8-0006ab-7P; Mon, 17 Jun 2024 13:36:38 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 17 Jun 2024 13:36:28 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240617-v2024-05-0-topic-socfpga-arria10-xloader-v1-6-48a6eba4bb5e@pengutronix.de>
References: <20240617-v2024-05-0-topic-socfpga-arria10-xloader-v1-0-48a6eba4bb5e@pengutronix.de>
In-Reply-To: <20240617-v2024-05-0-topic-socfpga-arria10-xloader-v1-0-48a6eba4bb5e@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240617_043640_868870_BBC1F118 
X-CRM114-Status: GOOD (  10.85  )
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
Subject: [PATCH 06/14] ARM: Arria10: xload: rework __arria10_load_fpga
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When arria10_load_fpga was reworked to try writing the FPGA multiple
times, some decisions where made regarding what is a failure and when to
try it again.
Some of these assumptions turn out to be premature optimizations that
actually make it worse:

  - when a10_fpga_write returns ENOSPC this is not a reason to try
    again. Just try writing the FPGA and see if it succeeds. Try again,
    if that fails.
  - ignore arria10_read_blocks errors (as before)

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/mach-socfpga/arria10-xload.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/arch/arm/mach-socfpga/arria10-xload.c b/arch/arm/mach-socfpga/arria10-xload.c
index 7b0d6f00fb..d4370945a1 100644
--- a/arch/arm/mach-socfpga/arria10-xload.c
+++ b/arch/arm/mach-socfpga/arria10-xload.c
@@ -368,13 +368,10 @@ static inline int __arria10_load_fpga(void *buf, uint32_t count, uint32_t size)
 	while (count <= size) {
 		ret = a10_fpga_write(buf, SZ_16K);
 		if (ret == -ENOSPC)
-			return -EAGAIN;
+			break;
 
 		count += SZ_16K / SECTOR_SIZE;
 		ret = arria10_read_blocks(buf, count, SZ_16K);
-		// Reading failed, consider this a failed attempt to configure the FPGA and retry
-		if (ret)
-			return -EAGAIN;
 	}
 
 	ret = a10_fpga_write_complete();

-- 
2.43.2



