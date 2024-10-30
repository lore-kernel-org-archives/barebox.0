Delivery-date: Wed, 30 Oct 2024 16:00:56 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t6ABr-002jUx-1S
	for lore@lore.pengutronix.de;
	Wed, 30 Oct 2024 16:00:56 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t6ABr-0004JO-Az
	for lore@pengutronix.de; Wed, 30 Oct 2024 16:00:56 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=BDt7HWRA8GVkF/Ge6SuAlOOZlOB3809J2/W1C8skKPI=; b=chot9Oa8UsSk0zxdVCGaxVQ26B
	zsKjdm6iAHjCqzJlJIpg0vf05KQqMHnsutPt++9dhD76ohfEGZMIOAWQHnOvVEpk+SepWlV0zoRbF
	3ATO/CWhNtaKch7iIXgQgUDxlQ845HbMMoJZ254iUQU8ADAyVDxQmSLBIF24kPwitwZELSTB8YfOA
	OVKXEV4oBh6L9NkU/M+gov2/LZFrRfm/Bl0JQcJTjvOP3V9BkzaGALFpGtb/O9XSjk3NyAg39zXMV
	G+NKUUa6uXAlMQva0qPmBRmzRFRPQtA9ymtrS7w5A0pbKEbQrf6f8/Ik8f4tbEPuwfS7yRNauiBHt
	ZAzLhDCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t6ABL-00000000kp9-48ZB;
	Wed, 30 Oct 2024 15:00:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t6AB7-00000000khM-48gr
	for barebox@lists.infradead.org;
	Wed, 30 Oct 2024 15:00:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t6AAy-0003sQ-PB; Wed, 30 Oct 2024 16:00:00 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t6AAy-001DMU-1q;
	Wed, 30 Oct 2024 16:00:00 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1t6AAy-003w8y-1f;
	Wed, 30 Oct 2024 16:00:00 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 30 Oct 2024 15:59:59 +0100
Message-Id: <20241030-imx-flash-header-v3-v1-0-1ae28b3b8947@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAO9JImcC/x3MywqAIBBA0V+RWTfgo6D6lWghOuVALxREkP49a
 XkW91ZIFJkSzKJCpMyJ76tBdQJcsNdOyL4ZtNS9kkYinwW3w6aAgayniNlgr6dRqsEbRxpa+UT
 auPzXZX3fDyOirTplAAAA
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1730300400; l=816;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=tELLJpb3Y17o42Ct345s172jSsrJMSx82/9l5cyk7ew=;
 b=fgGxRiB6eV5n0/sp6gWmL4Qu7ZHc8XxCtUHVxlwdEidbjxVxynac7H2QfeiZV8Zfa38CTgMOe
 PTkNHVhsZrDD6LtRQjvgQsL868Ta+vu/QiwzRclvJdsCGakjFvrXVdR
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241030_080010_089186_17F0C72C 
X-CRM114-Status: UNSURE (   9.65  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/2] ARM: i.MX: Add bootm support for i.MX flash header v3
 images
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On i.MX9 and some i.MX8 SoCs the barebox images are encapsulated in the
i.MX flash header v3 format. This series adds support for detecting and
chainloading them via bootm command.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (2):
      filetype: detect i.MX flash header v3
      ARM: i.MX: Add bootm handler for i.MX flash header v3 images

 arch/arm/mach-imx/Makefile       |  2 +-
 arch/arm/mach-imx/imx-v3-image.c | 50 ++++++++++++++++++++++++++++++++++++++++
 common/filetype.c                |  4 ++++
 include/filetype.h               |  1 +
 4 files changed, 56 insertions(+), 1 deletion(-)
---
base-commit: e55e492573e33823f25935ee00fe7fa7bf2c5c90
change-id: 20241030-imx-flash-header-v3-4298015d3ce2

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



