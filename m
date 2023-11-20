Delivery-date: Mon, 20 Nov 2023 14:41:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r54Ww-001W0t-08
	for lore@lore.pengutronix.de;
	Mon, 20 Nov 2023 14:41:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r54Ww-00034f-26
	for lore@pengutronix.de; Mon, 20 Nov 2023 14:41:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=IkwbWbnvIzfhC5oP6dsuth82aSmJTX4/Kc3L3ByHyqY=; b=NZIdFiHwkhudHAhR23Ienlb1jp
	PntzcnPximCwdAmut/3k/QFiLd+YRBEv61FUsuCaVHsoeQ12oc5xKXYVXy2O82PsmG67hH4QZhcN/
	W/jbxoadPCCvWb9hrAKCNAnUaKNVIniOOIqbR4E/WgTkT9cvQpqWuaRN6aKdS4BCghArhFOy8jG6v
	BAUvWpyGqPkzGt22Trqb5OZYEQ+l9fe6jDRDVHUVMPsNrZvzwExcYyjbkuFNe07u4D7GkCY3gY40M
	IdKSbuxpiCRseeLmhQWmMBG+2yuHA21MTAZbII3cWDV0n5toY2OTJu3RhzTwxIBY3WvvjriKi9LO/
	i2Yw/Lxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r54VX-00CAe4-25;
	Mon, 20 Nov 2023 13:40:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r54Uv-00CAaC-2M
	for barebox@lists.infradead.org;
	Mon, 20 Nov 2023 13:40:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r54Ut-0002iu-2X; Mon, 20 Nov 2023 14:39:31 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r54Us-00AMdh-MV; Mon, 20 Nov 2023 14:39:30 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1r54Us-00GYeb-23;
	Mon, 20 Nov 2023 14:39:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 20 Nov 2023 14:39:30 +0100
Message-Id: <20231120133930.3946286-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231120_053933_776345_EA8F075C 
X-CRM114-Status: GOOD (  11.37  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] ARM: ls1046a: use compressed dtbs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

It's getting tight in the initial 64k SRAM space. Use compressed dtbs
to get some more free space.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig                      | 1 +
 arch/arm/boards/ls1046ardb/lowlevel.c | 4 ++--
 arch/arm/boards/tqmls1046a/lowlevel.c | 4 ++--
 3 files changed, 5 insertions(+), 4 deletions(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index e76ee0f6df..9e5cdd1b49 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -101,6 +101,7 @@ config ARCH_LAYERSCAPE
 	select HW_HAS_PCI
 	select OFTREE
 	select OFDEVICE
+	select ARM_USE_COMPRESSED_DTB
 
 config ARCH_MVEBU
 	bool "Marvell EBU platforms"
diff --git a/arch/arm/boards/ls1046ardb/lowlevel.c b/arch/arm/boards/ls1046ardb/lowlevel.c
index a9dbfa7e71..e7544df86a 100644
--- a/arch/arm/boards/ls1046ardb/lowlevel.c
+++ b/arch/arm/boards/ls1046ardb/lowlevel.c
@@ -147,7 +147,7 @@ static void ddr_board_options(memctl_options_t *popts,
 	popts->cpo_sample = 0x61;
 }
 
-extern char __dtb_fsl_ls1046a_rdb_start[];
+extern char __dtb_z_fsl_ls1046a_rdb_start[];
 
 static struct spd_eeprom spd_eeprom[] = {
 	{
@@ -195,7 +195,7 @@ static noinline __noreturn void ls1046ardb_r_entry(unsigned long memsize)
 			memsize = 0x100000000 - membase;
 
 		barebox_arm_entry(membase, 0x80000000 - SZ_64M,
-				  __dtb_fsl_ls1046a_rdb_start);
+				  __dtb_z_fsl_ls1046a_rdb_start);
 	}
 
 	arm_cpu_lowlevel_init();
diff --git a/arch/arm/boards/tqmls1046a/lowlevel.c b/arch/arm/boards/tqmls1046a/lowlevel.c
index d302f63ebc..dc64762433 100644
--- a/arch/arm/boards/tqmls1046a/lowlevel.c
+++ b/arch/arm/boards/tqmls1046a/lowlevel.c
@@ -90,7 +90,7 @@ static struct fsl_ddr_controller ddrc[] = {
 	},
 };
 
-extern char __dtb_fsl_tqmls1046a_mbls10xxa_start[];
+extern char __dtb_z_fsl_tqmls1046a_mbls10xxa_start[];
 
 static noinline __noreturn void tqmls1046a_r_entry(void)
 {
@@ -98,7 +98,7 @@ static noinline __noreturn void tqmls1046a_r_entry(void)
 
 	if (get_pc() >= membase)
 		barebox_arm_entry(membase, 0x80000000 - SZ_64M,
-				  __dtb_fsl_tqmls1046a_mbls10xxa_start);
+				  __dtb_z_fsl_tqmls1046a_mbls10xxa_start);
 
 	arm_cpu_lowlevel_init();
 	ls1046a_init_lowlevel();
-- 
2.39.2



