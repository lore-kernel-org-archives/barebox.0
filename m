Delivery-date: Tue, 18 Feb 2025 15:05:18 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tkODu-003w5r-21
	for lore@lore.pengutronix.de;
	Tue, 18 Feb 2025 15:05:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tkODt-0000JU-DB
	for lore@pengutronix.de; Tue, 18 Feb 2025 15:05:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=8zJfbZh6WKUom4QJcGTb7IKR9pzLzUm0Lexq0pjPx60=; b=oH2epd8quCNUfuK/WBJEz2JBC2
	cDSi5soccK+Xmfm/JqmO7z5xs630UEWxXB+5QQTKD+8d7zJQnE7aYEPQkunnKdjMZ6CrtWi0DFUTx
	m9vLTTjEed97CL3xYvK0FmD4cSwe4E7EvKEt7lemkux/vmAfNJGWK3Q+x1hO3rhjX4wvx0CsDXOB/
	gkD0qfrY/EajqYuK2PEqCX1u/BchW1h+73B63np2YrHo0KyATOhj237Uc+ZxoUqlaUQ5edpFyW6JQ
	tZmVK6uoxM1Wi+lrgNJ4fOQFKdLFebDR+afDZZrk+D6AG1aeRvkQqP+DBitcT9l7OakrVaJSxF53H
	p6IERtww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tkODN-00000008QTJ-0kba;
	Tue, 18 Feb 2025 14:04:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tkOCo-00000008QLj-2KnP
	for barebox@lists.infradead.org;
	Tue, 18 Feb 2025 14:04:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tkOCn-0008Sx-9f; Tue, 18 Feb 2025 15:04:09 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tkOCn-001bR0-0K;
	Tue, 18 Feb 2025 15:04:09 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tkOCm-0058nj-3B;
	Tue, 18 Feb 2025 15:04:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 18 Feb 2025 15:04:06 +0100
Message-Id: <20250218140407.1224499-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250218_060410_592639_FCF8F95A 
X-CRM114-Status: GOOD (  10.88  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] ARM: i.MX6: Enable PBL_VERIFY_PIGGY with HABV4 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Some i.MX6 configurations use the xload mechanism. With this the ROM
only loads and verifies the PBL. The PBL will then load barebox proper.
Without verification the barebox proper binary is untrusted and could be
modified. Select PBL_VERIFY_PIGGY when HABV4 is enabled to ensure the
barebox proper binary has not been tempered with.

boards not using the xload mechanism don't need this option, but there
is no good way to detect currently if the xload mechanism is used, so
these boards will have to live with a slightly increased binary size
for now.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 58b32b8e91..424c7d71a6 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -127,6 +127,7 @@ config ARCH_IMX6
 	select PINCTRL_IMX_IOMUX_V3
 	select COMMON_CLK_OF_PROVIDER
 	select HW_HAS_PCI
+	select PBL_VERIFY_PIGGY if HABV4
 
 config ARCH_IMX6SL
 	bool
-- 
2.39.5



