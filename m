Delivery-date: Wed, 04 Mar 2026 14:15:00 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vxm43-007zko-0a
	for lore@lore.pengutronix.de;
	Wed, 04 Mar 2026 14:15:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vxm43-00058e-Hc
	for lore@pengutronix.de; Wed, 04 Mar 2026 14:15:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xGPYKhVDbUA5LYNABDHQhB+npxEI+yLdq3j173AeuBU=; b=zGsFj8WD2GGtRZ
	X7mXDaSOrkCJdPe6x4YUMCdHIDXywY9wx5uCYlxLGtAlyePc+/vEEoza05uP4x11LgksvG2g97xNb
	Y3vL4pPE0aXoRCksjPejHSettQXO8p4RB1sBTweynfSAFaj48o4HzMaoczRBikYcziB0bo9wX3UvS
	xQXX/l3J8RF2b+VAWKej90L+XY41eGhKUwX1IPJWHXnxqk678+lFFLFA+aPQUdnm34UUumqnow5u6
	9MLGg4sox492wK4whnXf488wzFDdlcAylUJDUvnSJsWULs/KWO+DhD/ItNF5jsW04G6yQLHLXJt0f
	D+kc8Cf8UeN62LrwRWEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxm3T-0000000HEYn-1I2m;
	Wed, 04 Mar 2026 13:14:23 +0000
Received: from smtp16.bhosted.nl ([2a02:9e0:8000::27])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vxm3Q-0000000HEYC-32xM
	for barebox@lists.infradead.org;
	Wed, 04 Mar 2026 13:14:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=protonic.nl; s=202111;
	h=content-transfer-encoding:mime-version:message-id:date:subject:cc:to:from:
	 from;
	bh=xGPYKhVDbUA5LYNABDHQhB+npxEI+yLdq3j173AeuBU=;
	b=RyBXMuPjO/jOXWJ+k4E5vjEKv1TvtJTDC6XQjbXI5ceny6f6G/UqfZR2OsCcOSbrS3liZOmNkk8bf
	 9mm15VC1tLdxKujZX7WVAMgZ/hfrGFwzCJvbYlH19GjNSzMFB0/5j1luhUN8iCB2QOdBSibs4nf0l5
	 Nuf4eV/zyJgA84aqnm2xtKN54TIoxkcD+8a0zglRPbyu3kq+cqPt89at0Fbagi7KlWTAxKpLkcy42j
	 McO6sO6acoeOV2TiRaLb2RJ20fGmM1kx2o3nDFXLvSSqTzXxedBWoKsCplNQ+S2c9OCUFJ2c+Tj89S
	 9tTkj0SphMP8+ZrNTPFTKWKCCSP3UOA==
X-MSG-ID: 0d306eaa-17cc-11f1-9155-005056817704
From: Robin van der Gracht <robin.van.der.gracht@protonic.nl>
To: barebox@lists.infradead.org
Date: Wed,  4 Mar 2026 14:14:16 +0100
Message-ID: <20260304131417.564470-1-robin.van.der.gracht@protonic.nl>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260304_051420_923775_9541D274 
X-CRM114-Status: UNSURE (   8.43  )
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
Cc: Robin van der Gracht <robin@protonic.nl>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: rockchip: Add missing LIBFDT dependency to ARCH_ROCKCHIP_ATF_PASS_FDT
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Robin van der Gracht <robin@protonic.nl>

arch/arm/mach-rockchip/atf.pbl.o: in function `rk3562_barebox_entry':
arch/arm/mach-rockchip/atf.c:159: undefined reference to `fdt_open_into'

Signed-off-by: Robin van der Gracht <robin@protonic.nl>
---
 arch/arm/mach-rockchip/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
index eb0dfb8240..eae243c758 100644
--- a/arch/arm/mach-rockchip/Kconfig
+++ b/arch/arm/mach-rockchip/Kconfig
@@ -179,6 +179,7 @@ config ARCH_ROCKCHIP_ATF
 config ARCH_ROCKCHIP_ATF_PASS_FDT
 	bool "Pass device tree to TF-A"
 	depends on ARCH_ROCKCHIP_ATF
+	select LIBFDT
 	help
 	  Enable this option if you are using an upstream OP-TEE that uses the
 	  device tree to initialize dynamic shared memory, which is passed
-- 
2.43.0



