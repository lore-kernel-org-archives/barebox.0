Delivery-date: Wed, 30 Jul 2025 07:59:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ugzqd-005AVC-2e
	for lore@lore.pengutronix.de;
	Wed, 30 Jul 2025 07:59:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ugzqd-0003HC-3G
	for lore@pengutronix.de; Wed, 30 Jul 2025 07:59:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5T7Ecgek1RwDODjnGThZa9dcSFCK+Y+/V4Q7pfrjGKA=; b=pmvfqhWA2FgSZtR/OsI15PkayB
	i90u9vtUVvqbVLtHTWwv5oH2ykTcoa6vqEayIMJC78gY/lsXFlhry1M3li61NjKiB74d5/sCy2/12
	H5aAMxNKS9k1hR1IwzkbmLKXR3/AeumZc7EeoKiZaCV0h9cK5LqYmIMzg9F/YmZgxTTKc51qLpOL4
	mTskOsrd6UrpOOHaWq6+v01fTtFrfH6+mnvbFcH7x7kVgP+REsaRmHH7zjFQODOF89h6fPwXIrJvT
	/S8PdPFo3/CnpNGIXla41SWzXGSX/SD9J51SQLX4qaiq12ZORSuJ+jpo8p6YtnfNMzqjBUPb5qvt/
	SiW4t9xQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugzq1-00000000kw1-0MBZ;
	Wed, 30 Jul 2025 05:58:53 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugzoy-00000000kgq-2YKE
	for barebox@lists.infradead.org;
	Wed, 30 Jul 2025 05:57:50 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1ugzov-0002zI-02; Wed, 30 Jul 2025 07:57:45 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: chalianis1@gmail.com,
	Ahmad Fatoum <a.fatoum@barebox.org>
Date: Wed, 30 Jul 2025 07:57:41 +0200
Message-Id: <20250730055743.922932-2-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250730055743.922932-1-a.fatoum@barebox.org>
References: <20250730055743.922932-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250729_225748_657020_CCB88F5F 
X-CRM114-Status: UNSURE (   6.97  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/4] ARM64: configs: multi_v8: disable layerscape temporarily
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

With multi_v8, we build everything in a single build and that makes the
layerscape PBLs exceed their hard limit of 64K failing the build.

Until resolved, let's disable it from the defconfig. Users can still use
the dedicated layerscape defconfigs.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/configs/multi_v8_defconfig | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/arch/arm/configs/multi_v8_defconfig b/arch/arm/configs/multi_v8_defconfig
index a487d331d04e..5c295cd58269 100644
--- a/arch/arm/configs/multi_v8_defconfig
+++ b/arch/arm/configs/multi_v8_defconfig
@@ -3,7 +3,6 @@ CONFIG_ARCH_BCM283X=y
 CONFIG_ARCH_IMX=y
 CONFIG_ARCH_K3=y
 CONFIG_ARCH_SUNXI=y
-CONFIG_ARCH_LAYERSCAPE=y
 CONFIG_ARCH_ROCKCHIP=y
 CONFIG_ARCH_ZYNQMP=y
 CONFIG_MACH_RPI3=y
@@ -28,9 +27,6 @@ CONFIG_MACH_ZII_IMX8MQ_DEV=y
 CONFIG_MACH_PHYTEC_PHYCORE_IMX93=y
 CONFIG_MACH_TQMA93XX=y
 CONFIG_IMX_IIM=y
-CONFIG_MACH_LS1028ARDB=y
-CONFIG_MACH_LS1046ARDB=y
-CONFIG_MACH_TQMLS1046A=y
 CONFIG_MACH_BEAGLEPLAY=y
 CONFIG_MACH_RK3568_EVB=y
 CONFIG_MACH_RK3568_BPI_R2PRO=y
@@ -258,7 +254,6 @@ CONFIG_REGULATOR_FIXED=y
 CONFIG_REGULATOR_ARM_SCMI=y
 CONFIG_REGULATOR_RK808=y
 CONFIG_RESET_IMX7=y
-CONFIG_PCI_LAYERSCAPE=y
 CONFIG_PCI_ECAM_GENERIC=y
 CONFIG_RTC_CLASS=y
 CONFIG_RTC_DRV_DS1307=y
-- 
2.39.5



