Delivery-date: Thu, 26 Jun 2025 16:46:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uUnrg-00BIlG-2I
	for lore@lore.pengutronix.de;
	Thu, 26 Jun 2025 16:46:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uUnrf-0007xd-ES
	for lore@pengutronix.de; Thu, 26 Jun 2025 16:46:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eWRNeMTh09mVVYUt0TiAV9OO/MW//KRq5AP2FqkcQdo=; b=UJX2zUpWoIK6yjOQ1Fdx2rLFmN
	U5m0UyUcZFGT/ca+9NEwgmeH2aVWRwAWl7uA3KGJdC4FgN0uds1ezbZ0RXcKgsZ0yLAQ2QQ++DKZ3
	fUR3uLUwPBUWovg4bAhxrXXZSexx3RpBG3jQIEWEBfyXFP4Od+SUomBxO5KopWwS5v49XtRabB3+W
	K5C4AGSbBToHchzYkLpOcTKu6ZjmKrDq9GFBhpES/gBrhoqGcKX00YRQ22u1FaNqkxjiS2YKkdChb
	shzvqte0To+ukLYXGO80H08+3a2l8aBam49f6BoNA22MC+3i2pFRxjHiCP9msq32ZTHFPQ+VSBwPi
	L+I4aqoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUnrC-0000000ByTA-1LY9;
	Thu, 26 Jun 2025 14:45:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uUnr8-0000000ByPw-0EB8
	for barebox@lists.infradead.org;
	Thu, 26 Jun 2025 14:45:40 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1uUnr4-0006pw-SC; Thu, 26 Jun 2025 16:45:34 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 26 Jun 2025 16:45:22 +0200
Message-Id: <20250626144527.416697-2-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250626144527.416697-1-m.felsch@pengutronix.de>
References: <20250626144527.416697-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250626_074538_140301_3503BEF7 
X-CRM114-Status: GOOD (  11.03  )
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
Subject: [PATCH v2 1/6] ARM: i.MX6QDL: add imxcfg helper to configure the TZASC1/2
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On i.MX6 platforms we need to set the bypass mode within the DCD unlike
the i.MX8M platforms which uses the PBL lowlevel code
(imx8m_tzc380_init()).

Add a helper for this to make the integration easier.

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
Changelog:
v2:
- Add Ahmad r-b
- Change subject

 include/mach/imx/imx6q-tzasc.h | 8 ++++++++
 1 file changed, 8 insertions(+)
 create mode 100644 include/mach/imx/imx6q-tzasc.h

diff --git a/include/mach/imx/imx6q-tzasc.h b/include/mach/imx/imx6q-tzasc.h
new file mode 100644
index 000000000000..968b17d5ec3f
--- /dev/null
+++ b/include/mach/imx/imx6q-tzasc.h
@@ -0,0 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+/*
+ * Per default all clocks are on, except for TZASC1/2 CG11/2, so enable them
+ * before activate the modules (disable the bypass mode).
+ */
+wm 32 0x020c4070 0xffffffff
+/* Disable TZASC1/2 bypass */
+wm 32 0x020E0024 0x00000003
-- 
2.39.5



