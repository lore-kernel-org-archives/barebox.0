Delivery-date: Thu, 26 Mar 2026 10:07:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w5ggp-005IL8-0Q
	for lore@lore.pengutronix.de;
	Thu, 26 Mar 2026 10:07:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w5ggo-0002EL-JI
	for lore@pengutronix.de; Thu, 26 Mar 2026 10:07:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=8TWJCe4bLo0fb1/dFioYA8xeV+rtGMGBipcA/nZLg90=; b=Tj8ewZrik27/5Bnjcxmud9OdEu
	GtROfkzOvbGyFaVzqMdlpefiAYH+WD+T1DXMFMNEuXEQIq9bq98WO1K/8UyQ05FB3lw0vNUyTPJSq
	pxxZEr+qNh0xfWuRxPSblbBizCVTKnpU5bWVuF9ICrBy/kX5isAJ/NHb2dLfRjHwGJ/OCcmSRlA8P
	lUbuqb9JJ2EOjNLAiVRdqh8bQ+EljY/Tazqh6A7ehnsLrgwrCA4DXWX7EJEpC8cnQGbOPqpbXTUpr
	a1xnFIoyN+vFVi/wPixuhAPxeBmNPR9hD37R21Epx7JgT2VaUhzpM5OmMN+SI7Rbcu2AGQm0OswIX
	s0GLOEAQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5ggQ-000000056VZ-0Xde;
	Thu, 26 Mar 2026 09:07:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5gg1-000000056Jy-1klY
	for barebox@lists.infradead.org;
	Thu, 26 Mar 2026 09:06:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w5gfy-00020H-93; Thu, 26 Mar 2026 10:06:50 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w5gfy-002CKZ-0I;
	Thu, 26 Mar 2026 10:06:50 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w5gfx-0000000Bqxc-44pr;
	Thu, 26 Mar 2026 10:06:50 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 26 Mar 2026 10:06:48 +0100
Message-ID: <20260326090649.2824291-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260326_020653_459744_2DFF289C 
X-CRM114-Status: UNSURE (   9.57  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: mmu: make ARM_MMU_PERMISSIONS depend on MMU
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Without a MMU, CONFIG_ARM_MMU_PERMISSIONS is a no-op, so reflect the
dependency in the Kconfig. No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 17f01c884efa..c735a0dbfd5b 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -418,7 +418,7 @@ config ARM_UNWIND
 
 config ARM_MMU_PERMISSIONS
 	bool "Map with extended RO/X permissions"
-	depends on !EFI_RUNTIME
+	depends on MMU && !EFI_RUNTIME
 	default y
 	help
 	  Enable this option to map readonly sections as readonly, executable
-- 
2.47.3



