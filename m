Delivery-date: Mon, 08 Sep 2025 11:30:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uvYCQ-000asq-12
	for lore@lore.pengutronix.de;
	Mon, 08 Sep 2025 11:30:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uvYCP-0006q7-ML
	for lore@pengutronix.de; Mon, 08 Sep 2025 11:30:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=2Etn61r6ZKCj7scSjHv8O3/VyuSO72DRDwO5zN9HqX4=; b=gnyPY4Z4h3tsXfDR34UNkacT7l
	OJEJelY2eLRQWRFqiqa7CJkn1AWBiHhjgDOsHL5gBuH0bH/lqbX85pyUgmcd54Nm0u7nkJBpTkdza
	RqVlR3dhqolDHx94CnreHYiMFayv8ALGhnn0nEcfux1mrMvj96+OHgVtUQbAASUUI4OXxtVO19l/R
	BzNBKkIG/1v3w0uHfjowWTwbA6ahVob46Cw24BL5FnRH/b4jWJcb+1e7tcKlefiKAa6omq/V7abZW
	u2w5pxgL7lUR5XKPeIplfWpr0+h7k+XS5vGFj7ju2f72mj2gQDW/+tjs5qXlTOTwctEcedIYG9OGH
	ciXRIRvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvYBg-0000000G2Ah-0lH4;
	Mon, 08 Sep 2025 09:29:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvXI9-0000000Fj9x-2WFE
	for barebox@lists.infradead.org;
	Mon, 08 Sep 2025 08:32:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uvXI5-0005Mx-S9; Mon, 08 Sep 2025 10:31:57 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uvXI5-000DZ3-23;
	Mon, 08 Sep 2025 10:31:57 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uvXI5-0000000269A-2MlL;
	Mon, 08 Sep 2025 10:31:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 08 Sep 2025 10:31:54 +0200
Message-Id: <20250908-imx8-snvs-v1-0-1049458a0286@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAHqUvmgC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDSwML3czcCgvd4ryyYl1TM4M0SxMTSxNj40QloPqCotS0zAqwWdGxtbU
 ASnhgGVsAAAA=
X-Change-ID: 20250908-imx8-snvs-560f9449433a
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1757320317; l=1287;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=upyIPHhBpwS9YFmjyOkxTQ2UMA6N38ZJtBIsdiTyH0E=;
 b=F4FemOw94r8tquvCHiNL08RacKzl+SHLEGCmFQKNIkG7ie4QfYli5++/yzAdtxy8x41myJIJg
 jzDHPyR70b/AbENBBurbjYa5LEwmUKVkSO9nfakUvkFPB/kdNPds8PK
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250908_013201_654857_2490492F 
X-CRM114-Status: GOOD (  11.54  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/4] i.MX8M: Add SNVS support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This series adds support for Secure Non Volatile Storage (SNVS) to
i.MX8M.

The driver itself already exists for i.MX6, so we only need to add the
missing pieces and enable it in the config.

With this the SNVS is available as /dev/snvs. On i.MX8M its size is 16
bytes and the values are preserved over reset.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (4):
      ARM: i.MX8M: initialize SNVS
      nvmem: snvs_lpgpr: Add i.MX7/8 support
      nvmem: snvs_lpgpr: set nvmem config name to snvs
      ARM: defconfigs: enable SNVS driver in i.MX8 configs

 arch/arm/configs/imx_v8_defconfig   |  1 +
 arch/arm/configs/multi_v8_defconfig |  1 +
 arch/arm/mach-imx/Kconfig           |  5 +++++
 arch/arm/mach-imx/Makefile          |  1 +
 arch/arm/mach-imx/atf.c             |  5 +++++
 arch/arm/mach-imx/snvs.c            | 44 +++++++++++++++++++++++++++++++++++++
 drivers/nvmem/snvs_lpgpr.c          | 21 +++++++++++++++++-
 include/mach/imx/imx8m-regs.h       |  1 +
 include/mach/imx/snvs.h             |  9 ++++++++
 9 files changed, 87 insertions(+), 1 deletion(-)
---
base-commit: 33d2188b0b95b3388e5533c05aeecec8caa1e8d2
change-id: 20250908-imx8-snvs-560f9449433a

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



