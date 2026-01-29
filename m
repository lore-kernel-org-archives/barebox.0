Delivery-date: Thu, 29 Jan 2026 12:35:57 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vlQJZ-006axM-2v
	for lore@lore.pengutronix.de;
	Thu, 29 Jan 2026 12:35:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vlQJY-000610-Ut
	for lore@pengutronix.de; Thu, 29 Jan 2026 12:35:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ZQx2BAMyReQfDuXSFMG6qKDJAO2zIMfb1pLVVfDg8FQ=; b=AHxdYLzYEt1c3sRtYILzzCXDx/
	OPyevP7vid15+OCsGWGADzLVxz95+vgbIAOj2W1dv8xHak/yJ1ztYV5n5tiKM5rM2tAptNMKHVy0E
	+/OYFmcZN7tk59jGRtvDvk2of/9vyL1Awuia6ZqBK0gjXCHNjwWe+OPduPnq83lEA/cy6CzbCVW3f
	iiRuKRsKD15ZwB2/5VzpZ/RtzL/IxfgqPcv2NIorwrdxMQ+I2W0F4FEneYL4ALj5fIUmSJlWcEZvE
	PKQyR4Nv4bHCNxyC8mwy/iEy6K/oFgWwEjSg5RClYniDIjq/Jo22q7tizfexZ32dBKX7rrkF04u2k
	no1YiyrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlQJ1-000000003HM-0lp0;
	Thu, 29 Jan 2026 11:35:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlQIv-000000003Ft-1xNH
	for barebox@lists.infradead.org;
	Thu, 29 Jan 2026 11:35:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vlQIr-0005s0-HN; Thu, 29 Jan 2026 12:35:13 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vlQIr-0034no-3B;
	Thu, 29 Jan 2026 12:35:13 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vlQIr-0000000Da9F-33Ik;
	Thu, 29 Jan 2026 12:35:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 29 Jan 2026 12:35:05 +0100
Message-Id: <20260129-regulator-ramp-v1-0-6269bd55d432@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAOlFe2kC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIzMDQyNL3aLU9NKcxJL8It2ixNwCXRODVEuLZFNDU2NDIyWgpoKi1LTMCrC
 B0bG1tQBtfPhSYAAAAA==
X-Change-ID: 20260129-regulator-ramp-40e98c515312
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1769686513; l=783;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=4FGw1GMESBvQ2gJFMmJGOMzB+bt8sEU/2BS1fP6cpeE=;
 b=U+xRr6NRzeVUUthGqvKnHJ2f17arLCGYBi5gt6GEjXgmYcg3rfEP6ZZ2MFsGgvOEZYMcsTvn6
 ofXPET/gIV7ARHOBHX3tZn+H6osVDlsOfuKQuVHJ7BPDw3EEOldFygz
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260129_033517_521378_629E5BE4 
X-CRM114-Status: UNSURE (   7.77  )
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
Subject: [PATCH 0/2] regulator: Fix enable delay handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The fixed regulator has a "off-on-delay-us" property which we wrongly
interpret as delay needed until a regulator has been fully ramped up
and a "startup-delay-us" which exists for that purpose, but we didn't
handle at all. This series fixes this.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (2):
      regulator: fix handling of off_on_delay
      regulator: fixed: handle startup-delay-us property

 drivers/regulator/core.c  | 14 +++++++++++---
 drivers/regulator/fixed.c |  3 +++
 include/regulator.h       |  3 +++
 3 files changed, 17 insertions(+), 3 deletions(-)
---
base-commit: 0024921364eb4c8bc8089fdc198440b0d67a239f
change-id: 20260129-regulator-ramp-40e98c515312

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



