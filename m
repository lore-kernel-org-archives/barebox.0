Delivery-date: Fri, 19 Jan 2024 15:25:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQpoY-0079ZV-11
	for lore@lore.pengutronix.de;
	Fri, 19 Jan 2024 15:25:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQpoY-0003kq-UJ
	for lore@pengutronix.de; Fri, 19 Jan 2024 15:25:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SX96tBcXdW1BYWHT4LFNr2gLaTMJyWaGKjWTcdhIZZU=; b=LPfQW6AeaK6yROe8LpydMWt4Ep
	zgr5B/L0l1I/gkU55yQ1CdlfZsOiNCsTC8zmDieBtSgBzsAvKMXEsW0aA9+yw3j82g3S1q2Ellses
	pvAKj8oSdErqCgaRfyDVLu248iBoz9Fd6SI+tuTaDX6Qcex5keGazIhT4oMW0K4fKSoWivshUIA9I
	aMadm5mkJ9T4Sy6ya6V4z2pOZ74XsJuRt5D3UrZX4dTOcII1dL7JhKwjw9f20D0iObN2WEG6hbR5R
	Xr+VaKbzTjgcBO9qj4GlfbYA3+VEMe9Db5PZZB2nYxOJPwyKijSzQrVXAAr21FMHvZaHzc3K/6Cgs
	JCCasq3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQpnM-005ps7-32;
	Fri, 19 Jan 2024 14:24:32 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQpnE-005pnW-2X
	for barebox@lists.infradead.org;
	Fri, 19 Jan 2024 14:24:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rQpn5-0003P1-LQ; Fri, 19 Jan 2024 15:24:15 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rQpn5-000wII-8o; Fri, 19 Jan 2024 15:24:15 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rQpn5-00DczL-0Y;
	Fri, 19 Jan 2024 15:24:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 19 Jan 2024 15:24:12 +0100
Message-Id: <20240119142413.3206832-7-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240119142413.3206832-1-s.hauer@pengutronix.de>
References: <20240119142413.3206832-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240119_062424_870430_9DC2CD3C 
X-CRM114-Status: GOOD (  13.16  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 6/7] ARM: i.MX93: add scratch space support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

With upcoming i.MX93 OP-TEE support we'll need to transport the OP-TEE
base address from PBL to barebox proper. Add scratch space support for
i.MX93 to accommodate this.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/atf.c     |  2 ++
 arch/arm/mach-imx/esdctl.c  |  2 ++
 arch/arm/mach-imx/scratch.c | 11 +++++++++++
 include/mach/imx/scratch.h  |  1 +
 4 files changed, 16 insertions(+)

diff --git a/arch/arm/mach-imx/atf.c b/arch/arm/mach-imx/atf.c
index d334c902b2..148de8f448 100644
--- a/arch/arm/mach-imx/atf.c
+++ b/arch/arm/mach-imx/atf.c
@@ -384,6 +384,8 @@ void __noreturn imx93_load_and_start_image_via_tfa(void)
 	const void *tfa;
 	size_t tfa_size;
 
+	imx93_init_scratch_space(true);
+
 	/*
 	 * On completion the TF-A will jump to MX93_ATF_BL33_BASE_ADDR
 	 * in EL2. Copy the image there, but replace the PBL part of
diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index 9c2c4b105d..0dbf0f7242 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -1047,6 +1047,8 @@ void __noreturn imx7d_barebox_entry(void *boarddata)
 
 void __noreturn imx93_barebox_entry(void *boarddata)
 {
+	imx93_init_scratch_space(false);
+
 	barebox_arm_entry(MX9_DDR_CSD1_BASE_ADDR,
 			  imx9_ddrc_sdram_size(), boarddata);
 }
diff --git a/arch/arm/mach-imx/scratch.c b/arch/arm/mach-imx/scratch.c
index 117b2eadbf..60d15a4f1a 100644
--- a/arch/arm/mach-imx/scratch.c
+++ b/arch/arm/mach-imx/scratch.c
@@ -5,6 +5,7 @@
 #include <linux/err.h>
 #include <linux/printk.h>
 #include <mach/imx/imx8m-regs.h>
+#include <mach/imx/imx9-regs.h>
 #include <mach/imx/esdctl.h>
 #include <mach/imx/scratch.h>
 #include <memory.h>
@@ -30,6 +31,16 @@ void imx8m_init_scratch_space(int ddr_buswidth, bool zero_init)
 		memset(scratch, 0, sizeof(*scratch));
 }
 
+void imx93_init_scratch_space(bool zero_init)
+{
+	ulong endmem = MX9_DDR_CSD1_BASE_ADDR + imx9_ddrc_sdram_size();
+
+	scratch = (void *)arm_mem_scratch(endmem);
+
+	if (zero_init)
+		memset(scratch, 0, sizeof(*scratch));
+}
+
 void imx8m_scratch_save_bootrom_log(const u32 *rom_log)
 {
 	size_t sz = sizeof(scratch->bootrom_log);
diff --git a/include/mach/imx/scratch.h b/include/mach/imx/scratch.h
index b1bb2e446e..6c2cecabcd 100644
--- a/include/mach/imx/scratch.h
+++ b/include/mach/imx/scratch.h
@@ -4,6 +4,7 @@
 #define __MACH_IMX_SCRATCH_H
 
 void imx8m_init_scratch_space(int ddr_buswidth, bool zero_init);
+void imx93_init_scratch_space(bool zero_init);
 
 const u32 *imx8m_scratch_get_bootrom_log(void);
 void imx8m_scratch_save_bootrom_log(const u32 *rom_log);
-- 
2.39.2



