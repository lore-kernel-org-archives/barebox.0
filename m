Delivery-date: Thu, 16 Apr 2026 17:26:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDOc1-00Crj4-2a
	for lore@lore.pengutronix.de;
	Thu, 16 Apr 2026 17:26:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDOc1-0008Id-9L
	for lore@pengutronix.de; Thu, 16 Apr 2026 17:26:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=L1q3722a4DubN10BN0z+KfucFmpj5WDjbydgB/00PxQ=; b=R3qVeADaEIk/bh
	zKQN9/TsUlLp99SJFYF9NeCuVN6r3vcv9t5MKQkBBxwHYtHGaKJpg8/QEs0lzRup1O3C5i93VP19p
	pJ61KxqYetULjPAd1q8RCKU0j6TrYhYd2dkrpBvmdof5tfjSkrDGv9bI0FGfJ5f9HmUqjmtLDMKy/
	Gbivv8d0zZeRnUkjQ0ahcjXa75H9Fi0P+WFx+jvAOOrCnsuYh1p/uCFaDGZSyb8zRz8AXeQd1Pe0J
	QOhPEwsvHqfHlRk40vDSxE8zCORP9CMhb0oZZLPUlbmGW16l1zrhyoTAi4iayuBidhyVjf62bxuWd
	goxsuWu2gntq/SYjpAtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDObO-00000002cCX-2hwG;
	Thu, 16 Apr 2026 15:25:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDObL-00000002cAL-1sAT
	for barebox@lists.infradead.org;
	Thu, 16 Apr 2026 15:25:57 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wDObI-0007uE-S1; Thu, 16 Apr 2026 17:25:52 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Thu, 16 Apr 2026 17:25:45 +0200
Message-Id: <20260416-socfpga-agilex5-iossm-cleanup-v1-0-ca9aae003c84@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAHr/4GkC/x3MQQrDIBAAwK+EPXchWg0kXwk9WLPahVTFJUUI+
 Xslx7nMCUKVSWAZTqj0Y+GcOtRjAP9xKRLy1g161NNo1ISSfSjRoYu8U7PIWeSLfieXjoLzW5s
 5KP0kZaEfpVLgdv/r67r+TXM75G8AAAA=
X-Change-ID: 20260416-socfpga-agilex5-iossm-cleanup-9b249f123e15
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 Michael Tretter <m.tretter@pengutronix.de>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260416_082555_495560_787BA069 
X-CRM114-Status: UNSURE (   5.59  )
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
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH 0/6] arm: socfpga: iossm: code cleanup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

There are a few surprises in the iossm_mailbox code that seem
unnecessary or even confusing. Cleanup the code in an attempt to make it
less convoluted and easier to read and understand.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
Michael Tretter (6):
      arm: socfpga: iossm: make io96b_cal_status static
      arm: socfpga: iossm: use readl_poll_timeout
      arm: socfpga: iossm: remove duplicate read of response status
      arm: socfpga: iossm: remove multiple read of status_addr
      arm: socfpga: iossm: change io96b_csr_addr to void *
      arm: socfpga: iossm: extract io96b_mb_init_instance

 arch/arm/mach-socfpga/agilex5-sdram.c |   6 +-
 arch/arm/mach-socfpga/iossm_mailbox.c | 216 +++++++++++++++-------------------
 arch/arm/mach-socfpga/iossm_mailbox.h |   7 +-
 3 files changed, 104 insertions(+), 125 deletions(-)
---
base-commit: 2f83a1e9e4ecf9f2fe1948550801c27a60769d2b
change-id: 20260416-socfpga-agilex5-iossm-cleanup-9b249f123e15

Best regards,
-- 
Michael Tretter <m.tretter@pengutronix.de>



