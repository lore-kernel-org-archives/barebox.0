Delivery-date: Thu, 02 Mar 2023 11:53:46 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pXgZF-006Tqd-RR
	for lore@lore.pengutronix.de; Thu, 02 Mar 2023 11:53:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pXgZF-00054Q-PS
	for lore@pengutronix.de; Thu, 02 Mar 2023 11:53:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qT+ftuMgfzgElhkFh+0rpcYWZWKRR250hI6BnBhNaj0=; b=jPzQNiI2v1xsWfxiXM1f8ly7zQ
	yXpQtUVGd2k+wmWlT8Yf5qp979tIKOXI71CBxnMkpRy+UbbMZZEeoa9FsesgOmHmV+pgGQCOcr6ZH
	UksTTZTDhuIq7wY3aXxugiEeH2KvDJhX2eF3rU7xSbGb4O4bV5YTzvtv6tnNJiaLCi4vWh8CZVxEz
	BLbx+1fpEmHB3gE4krcTGn8CUJ6HRtVDuB+P7Z5eFrQvJZ3C9ad8OQZ5hIAsEuJ59UCDJRiTF05Rb
	RPAwOOF95ejG2sA8mdOsEG5KjqGIz8ph8RvM5P9SkGuelYqCwmIzbP+GSo8Pn6mTrdawhmPDm4n8o
	BDfxNMzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXgY6-001kye-Vi; Thu, 02 Mar 2023 10:52:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXgY1-001kwo-AD
	for barebox@lists.infradead.org; Thu, 02 Mar 2023 10:52:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pXgY0-0004sx-2e; Thu, 02 Mar 2023 11:52:28 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pXgXz-001J7L-EZ; Thu, 02 Mar 2023 11:52:27 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pXgXy-003zCN-HT; Thu, 02 Mar 2023 11:52:26 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  2 Mar 2023 11:52:24 +0100
Message-Id: <20230302105225.943524-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230302105225.943524-1-s.hauer@pengutronix.de>
References: <20230302105225.943524-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230302_025229_385591_29091DCE 
X-CRM114-Status: UNSURE (   9.98  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] ARM: i.MX: Remove config CONFIG_ARCH_TEXT_BASE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

CONFIG_ARCH_TEXT_BASE is only used when CONFIG_RELOCATABLE
is disabled which is not the case for i.MX. Remove the unused
Kconfig option.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig | 23 -----------------------
 1 file changed, 23 deletions(-)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index ea4756c493..262e2b3e94 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -2,29 +2,6 @@
 
 if ARCH_IMX
 
-config ARCH_TEXT_BASE
-	hex
-	default 0xa7f00000 if MACH_PCA100
-	default 0xa0000000 if MACH_PCM038
-	default 0x97f00000 if MACH_FREESCALE_MX51_PDK
-	default 0x7ff00000 if MACH_FREESCALE_MX53_LOCO
-	default 0x7ff00000 if MACH_FREESCALE_MX53_SMD
-	default 0x7ff00000 if MACH_FREESCALE_MX53_VMX53
-	default 0x93d00000 if MACH_TX25
-	default 0x7ff00000 if MACH_TQMA53
-	default 0x4fc00000 if MACH_SABRELITE
-	default 0x8fe00000 if MACH_TX53
-	default 0x97f00000 if MACH_EFIKA_MX_SMARTBOOK
-	default 0x17800000 if MACH_SABRESD
-	default 0x4fc00000 if MACH_REALQ7
-	default 0x4fc00000 if MACH_GK802
-	default 0x2fc00000 if MACH_TQMA6X
-	default 0x4fc00000 if MACH_DFI_FS700_M60
-	default 0x4fc00000 if MACH_UDOO
-	default 0x4fc00000 if MACH_VARISCITE_MX6
-	default 0x4fc00000 if MACH_PHYTEC_SOM_IMX6
-	default 0x9fc00000 if MACH_WARP7
-
 config ARCH_IMX_IMXIMAGE
 	bool
 	default y
-- 
2.30.2



