Delivery-date: Tue, 22 Apr 2025 10:38:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7997-003yVO-1Z
	for lore@lore.pengutronix.de;
	Tue, 22 Apr 2025 10:38:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u7993-0001MD-V4
	for lore@pengutronix.de; Tue, 22 Apr 2025 10:38:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Fh5SZuVKCfz3kAknE9ton3iM5OFTeauuTy4lxQ75rWc=; b=30O5LA/Xy5xWTjYNODMtFN+H49
	wdXyLCM7O1LJ+E6wb2Iu0s7W7AfJrs3jUBurSGJ+LCqgBbHeVP313f3kL16Y5QVRoZlUUDnnwtvjJ
	9MM0cTlo3tirqcZ/QN26AaBJbIgulIAo15JvpVHG4l3PbvtRbTNKiKKa+kg/r8bzt/ocl8Y6rVi9C
	7q1A9463RdnhpAnhRvNf43Rb7Lc0Hfugd9f0D4hrpQnjE9p5GqHsaRHAOid813SZDpDy3fGkLcHz4
	OVJVAGJNtYgGrlQgA5f6YE0Af+YEJtn7mYz5uqF7/xT6dtCXzA8cz18ALshCLGpDNdQk7NK0Hgpqw
	vKPXmAbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u798Y-00000006M22-2c34;
	Tue, 22 Apr 2025 08:37:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u78TR-00000006C4Q-22ym
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 07:55:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u78TQ-0000VL-DR
	for barebox@lists.infradead.org; Tue, 22 Apr 2025 09:55:20 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u78TQ-001VvB-0i
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 09:55:20 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u78TQ-000uz2-0R
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 09:55:20 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 22 Apr 2025 09:55:17 +0200
Message-Id: <20250422075519.219029-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250422075519.219029-1-a.fatoum@pengutronix.de>
References: <20250422075519.219029-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250422_005521_523329_6BBA4457 
X-CRM114-Status: UNSURE (   9.18  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 2/4] ARM: Layerscape: fix compilation of LS1028 without LS1046
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

Definitions inside icid.c are needed for both LS1046 and LS1028, so make
sure it's compiled unconditionally.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/mach-layerscape/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-layerscape/Makefile b/arch/arm/mach-layerscape/Makefile
index 10e1c031b953..095d3e4eae57 100644
--- a/arch/arm/mach-layerscape/Makefile
+++ b/arch/arm/mach-layerscape/Makefile
@@ -3,7 +3,7 @@
 obj- := __dummy__.o
 lwl-y += errata.o
 lwl-$(CONFIG_ARCH_LS1046) += lowlevel.o lowlevel-ls1046a.o
-obj-$(CONFIG_ARCH_LS1046) += icid.o
+obj-y += icid.o
 obj-pbl-y += boot.o soc.o
 pbl-y += xload-qspi.o xload.o
 pbl-$(CONFIG_ARCH_LS1028) += tzc400.o
-- 
2.39.5



