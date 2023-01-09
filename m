Delivery-date: Mon, 09 Jan 2023 19:05:41 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pEwWk-006ual-DQ
	for lore@lore.pengutronix.de; Mon, 09 Jan 2023 19:05:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pEwWh-0004BL-Hl
	for lore@pengutronix.de; Mon, 09 Jan 2023 19:05:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=hOIezf8vDz3t1n5kYkpKKOpB/9hk3sD5W9r5JEeKLp8=; b=pl6Qv4er5aB1CWBe52vXBDTF8+
	iFUgccL9c5UQCpf+Y6NkOLhcXoQbFmHKJMLBrWIVtXDaFXMCY6Ivx9XUzppmU7dgdpHjRDSYinQLV
	/dbW/1XZtIgMfuiimFXPqthF0wQkcRJxdimctbmrGqoICQusmLquLv0VfNJJjU6ogGVejHKZ3UUY5
	TZefqgT0Cjbg/OIVwU4SAgnXKA/HjZLAuCXpBCpPqMpEGSbnHmoBoY+nTsMZSG2AqUmLITv40fkN7
	HIcWep7HBqNR+XRspnQ+gDngp0tzoVHOAWhulUqRuek9G/Lx5Twm5QK1jWSZcs9WoOgZCz3Ee5ksO
	irsXAM2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEwVA-0037B9-Ve; Mon, 09 Jan 2023 18:04:05 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEwRk-0035o1-Tb
	for barebox@lists.infradead.org; Mon, 09 Jan 2023 18:00:35 +0000
Received: (Authenticated sender: ahmad@a3f.at)
	by mail.gandi.net (Postfix) with ESMTPSA id DBA69C0004;
	Mon,  9 Jan 2023 18:00:28 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon,  9 Jan 2023 19:00:24 +0100
Message-Id: <20230109180024.2018960-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230109_100033_135057_26BA6C9A 
X-CRM114-Status: GOOD (  12.37  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: rockchip: make ATF installation optional
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On RK3399, ATF running as BL31 will disable normal world access to
some peripherals. To make it easier to develop PBL code that accesses
these peripherals prior to ATF installation, support running barebox
proper in EL3, so all of memory can be poked from the barebox shell.

This is strictly a development feature. Linux on ARM64 is not meant to
be booted without PSCI, which the secure monitor provides.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/arm/mach-rockchip/Kconfig            | 13 +++++++++++--
 arch/arm/mach-rockchip/Makefile           |  2 +-
 arch/arm/mach-rockchip/include/mach/atf.h |  5 +++++
 3 files changed, 17 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
index 1f3ba706ee9f..4ac75ab9475c 100644
--- a/arch/arm/mach-rockchip/Kconfig
+++ b/arch/arm/mach-rockchip/Kconfig
@@ -88,16 +88,25 @@ config MACH_RADXA_ROCK3
 
 comment "select board features:"
 
+config ARCH_ROCKCHIP_ATF
+	bool "Build rockchip ATF binaries into barebox"
+	depends on ARCH_ROCKCHIP_V8
+	default y
+	help
+	  When deselected, barebox proper will run in EL3. This can be
+	  useful for debugging early startup, but for all other cases,
+	  say y here.
+
 config ARCH_RK3399_OPTEE
 	bool "Build rk3399 OP-TEE binary into barebox"
-	depends on ARCH_RK3399
+	depends on ARCH_ROCKCHIP_ATF && ARCH_RK3399
 	help
 	  With this option enabled the RK3399 OP-TEE binary is compiled
 	  into barebox and started along with the BL31 trusted firmware.
 
 config ARCH_RK3568_OPTEE
 	bool "Build rk3568 OP-TEE binary into barebox"
-	depends on ARCH_RK3568
+	depends on ARCH_ROCKCHIP_ATF && ARCH_RK3568
 	help
 	  With this option enabled the RK3568 OP-TEE binary is compiled
 	  into barebox and started along with the BL31 trusted firmware.
diff --git a/arch/arm/mach-rockchip/Makefile b/arch/arm/mach-rockchip/Makefile
index a86ee71617c8..2529af7c7e97 100644
--- a/arch/arm/mach-rockchip/Makefile
+++ b/arch/arm/mach-rockchip/Makefile
@@ -1,7 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
 obj-y += rockchip.o
-pbl-$(CONFIG_ARCH_ROCKCHIP_V8) += atf.o
+pbl-$(CONFIG_ARCH_ROCKCHIP_ATF) += atf.o
 obj-$(CONFIG_ARCH_RK3188) += rk3188.o
 obj-$(CONFIG_ARCH_RK3288) += rk3288.o
 obj-pbl-$(CONFIG_ARCH_RK3568) += rk3568.o
diff --git a/arch/arm/mach-rockchip/include/mach/atf.h b/arch/arm/mach-rockchip/include/mach/atf.h
index d1bae5a7714f..e5d55af3d74a 100644
--- a/arch/arm/mach-rockchip/include/mach/atf.h
+++ b/arch/arm/mach-rockchip/include/mach/atf.h
@@ -19,8 +19,13 @@
 #define RK3568_BAREBOX_LOAD_ADDRESS	(RK3568_DRAM_BOTTOM + 1024*1024)
 
 #ifndef __ASSEMBLY__
+#ifdef CONFIG_ARCH_ROCKCHIP_ATF
 void rk3399_atf_load_bl31(void *fdt);
 void rk3568_atf_load_bl31(void *fdt);
+#else
+static inline void rk3399_atf_load_bl31(void *fdt) { }
+static inline void rk3568_atf_load_bl31(void *fdt) { }
+#endif
 #endif
 
 #endif /* __MACH_ATF_H */
-- 
2.38.1



