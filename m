Delivery-date: Tue, 02 May 2023 11:15:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptm6o-002Adc-UO
	for lore@lore.pengutronix.de; Tue, 02 May 2023 11:15:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptm6m-0002G8-8h
	for lore@pengutronix.de; Tue, 02 May 2023 11:15:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FGa+/RskhhAoMz3004p4eQGCdByMpg/6AL4aDz4bVqU=; b=lkHKPMTXlnu7uFpY1RlqKWehon
	ghY1K+toeVWn6d2rrM5XdyBEa91kSpuXVy/ia84tn4pnOyxRaWJEwxO0GE5YVcQ2wLmWpYUG1yZ7F
	mDlTxINIK/ujjL+8wKJPf/ZmC9241s0/d+W8/2sqgxte1cxQ1HC0e9rdAb49wK7yfZQ2aCfS1yNCP
	l89KRfWPBmVCYcCa1fA6QL27LM9AbDptxsDptrPveytztNBLN/PFDobNQRFcA/Rfab/IBUQ0oCGdb
	+ZN3/VA+sVPuHQUdS1p/RCkbYzIUNYSMsdobu359dMLx3VoCWkvp8AeDLfKTTt85nGirBOwKkdnfI
	pLoSDiUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptm5f-000jNz-1Y;
	Tue, 02 May 2023 09:14:31 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptm5X-000jGs-2e
	for barebox@lists.infradead.org;
	Tue, 02 May 2023 09:14:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ptm5W-0001AR-Jf; Tue, 02 May 2023 11:14:22 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ptm5W-000Yjd-4a; Tue, 02 May 2023 11:14:22 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ptm5U-00Ar02-9V; Tue, 02 May 2023 11:14:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  2 May 2023 11:14:16 +0200
Message-Id: <20230502091419.2551228-10-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230502091419.2551228-1-s.hauer@pengutronix.de>
References: <20230502091419.2551228-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_021423_882651_A8B592A1 
X-CRM114-Status: GOOD (  14.57  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 09/12] ARM: versatile: move over to multi image support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

With multi image support we can compile the versatile image along
with other images. Enable support for it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig                     | 1 +
 arch/arm/boards/versatile/lowlevel.c | 2 +-
 images/Makefile                      | 1 +
 images/Makefile.versatile            | 8 ++++++++
 4 files changed, 11 insertions(+), 1 deletion(-)
 create mode 100644 images/Makefile.versatile

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 1da6b396e7..088146894b 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -163,6 +163,7 @@ config ARCH_VERSATILE
 	select HAS_DEBUG_LL
 	select COMMON_CLK
 	select COMMON_CLK_OF_PROVIDER
+	select HAVE_PBL_MULTI_IMAGES
 
 config ARCH_TEGRA
 	bool "NVIDIA Tegra"
diff --git a/arch/arm/boards/versatile/lowlevel.c b/arch/arm/boards/versatile/lowlevel.c
index 2f8d7b514b..04209dc12c 100644
--- a/arch/arm/boards/versatile/lowlevel.c
+++ b/arch/arm/boards/versatile/lowlevel.c
@@ -7,7 +7,7 @@
 
 extern char __dtb_versatile_pb_start[];
 
-void __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
+ENTRY_FUNCTION(start_versatile_pb, r0, r1, r2)
 {
 	void *fdt;
 
diff --git a/images/Makefile b/images/Makefile
index aa5814710f..c93f9e2689 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -152,6 +152,7 @@ include $(srctree)/images/Makefile.rockchip
 include $(srctree)/images/Makefile.socfpga
 include $(srctree)/images/Makefile.stm32mp
 include $(srctree)/images/Makefile.tegra
+include $(srctree)/images/Makefile.versatile
 include $(srctree)/images/Makefile.vexpress
 include $(srctree)/images/Makefile.xburst
 include $(srctree)/images/Makefile.at91
diff --git a/images/Makefile.versatile b/images/Makefile.versatile
new file mode 100644
index 0000000000..c57a32868d
--- /dev/null
+++ b/images/Makefile.versatile
@@ -0,0 +1,8 @@
+# SPDX-License-Identifier: GPL-2.0-only
+#
+# barebox image generation Makefile for VExpress images
+#
+
+pblb-$(CONFIG_MACH_VERSATILEPB) += start_versatile_pb
+FILE_barebox-versatile-pb.img = start_versatile_pb.pblb
+image-$(CONFIG_MACH_VERSATILEPB) += barebox-versatile-pb.img
-- 
2.39.2



