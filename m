Delivery-date: Mon, 17 Jun 2024 13:37:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sJAfz-007YhS-2H
	for lore@lore.pengutronix.de;
	Mon, 17 Jun 2024 13:37:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sJAfx-0007CZ-U7
	for lore@pengutronix.de; Mon, 17 Jun 2024 13:37:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1mat6bpvDHrO+HSv4MIzRF4CN+pR6MDQfUWllxq6uJ0=; b=FZM1Fo+vtbh0yjjazMeZtHFyCx
	EubB93vOHTRFcyqhDpCGNdGUFqGvI1l6oEtABQEA4FwpNHkjU24mPqRuAmaW+1Gwh+LoXQXjhZKgC
	7+ZLU/y5N9vnm4Y+vf05AjsO42ISId9Jpcs5VSJgvQjdecu/qv1HyUSCLdvRezYyYDMlJcAX1XKI9
	wh+LMsq1Xx3o747OpPHXkzuqt2QgnCl2aikIvvMuEpz66bm50tKjJD/MFZX2NtqNvWeGL9ZB4DqjZ
	OU8lErVjWgfMGECSsOrC0VKeS952H8aMslOvQve6h9TFE9VBUmuiazflEZCNep6Q4ME8YpczOwcOH
	vLhl8RiA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJAfS-0000000AVk0-1bvN;
	Mon, 17 Jun 2024 11:36:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJAfA-0000000AVWN-4BdN
	for barebox@lists.infradead.org;
	Mon, 17 Jun 2024 11:36:44 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1sJAf8-0006ab-Df; Mon, 17 Jun 2024 13:36:38 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 17 Jun 2024 13:36:30 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240617-v2024-05-0-topic-socfpga-arria10-xloader-v1-8-48a6eba4bb5e@pengutronix.de>
References: <20240617-v2024-05-0-topic-socfpga-arria10-xloader-v1-0-48a6eba4bb5e@pengutronix.de>
In-Reply-To: <20240617-v2024-05-0-topic-socfpga-arria10-xloader-v1-0-48a6eba4bb5e@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
X-Mailer: b4 0.13.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240617_043641_116491_1D1E45B3 
X-CRM114-Status: GOOD (  11.33  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 08/14] ARM: Arria10: xload: kick watchdog
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To be sure, that the watchdog doesn't prematurely triggers, kick it when
things are expected to take a little bit longer.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/mach-socfpga/arria10-xload.c |  6 ++++++
 include/mach/socfpga/arria10-fpga.h   |  1 +
 include/mach/socfpga/generic.h        | 11 +++++++++++
 3 files changed, 18 insertions(+)

diff --git a/arch/arm/mach-socfpga/arria10-xload.c b/arch/arm/mach-socfpga/arria10-xload.c
index e9a12ca9bb..f846781e8f 100644
--- a/arch/arm/mach-socfpga/arria10-xload.c
+++ b/arch/arm/mach-socfpga/arria10-xload.c
@@ -46,6 +46,7 @@ static int a10_fpga_wait_for_condone(void)
 
 		if (reg & A10_FPGAMGR_IMGCFG_STAT_F2S_CONDONE_PIN)
 			return 0;
+		arria10_kick_l4wd0();
 
 		if ((reg & A10_FPGAMGR_IMGCFG_STAT_F2S_NSTATUS_PIN) == 0)
 			return -EIO;
@@ -69,6 +70,7 @@ static void a10_fpga_generate_dclks(uint32_t count)
 	timeout = 10000000;
 
 	while (!readl(ARRIA10_FPGAMGRREGS_ADDR + A10_FPGAMGR_DCLKSTAT_OFST)) {
+		arria10_kick_l4wd0();
 		if (timeout-- < 0)
 			return;
 	}
@@ -357,10 +359,12 @@ static inline int __arria10_load_fpga(void *buf, uint32_t sector, uint32_t end)
 {
 	int ret;
 
+	arria10_kick_l4wd0();
 	arria10_read_blocks(buf, sector + bitstream.first_sec, SZ_16K);
 
 	sector += SZ_16K / SECTOR_SIZE;
 
+	arria10_kick_l4wd0();
 	ret = a10_fpga_init(buf);
 	if (ret)
 		return -EAGAIN;
@@ -370,10 +374,12 @@ static inline int __arria10_load_fpga(void *buf, uint32_t sector, uint32_t end)
 		if (ret == -ENOSPC)
 			break;
 
+		arria10_kick_l4wd0();
 		sector += SZ_16K / SECTOR_SIZE;
 		ret = arria10_read_blocks(buf, sector, SZ_16K);
 	}
 
+	arria10_kick_l4wd0();
 	ret = a10_fpga_write_complete();
 	if (ret)
 		return -EAGAIN;
diff --git a/include/mach/socfpga/arria10-fpga.h b/include/mach/socfpga/arria10-fpga.h
index 3efad9a4f5..f76582eed7 100644
--- a/include/mach/socfpga/arria10-fpga.h
+++ b/include/mach/socfpga/arria10-fpga.h
@@ -20,6 +20,7 @@
 #define	__A10_FPGAMGR_H__
 
 #include <linux/bitops.h>
+#include <mach/socfpga/generic.h>
 #include <mach/socfpga/arria10-regs.h>
 
 #define A10_FPGAMGR_DCLKCNT_OFST				0x08
diff --git a/include/mach/socfpga/generic.h b/include/mach/socfpga/generic.h
index 1af086140f..270c309d7b 100644
--- a/include/mach/socfpga/generic.h
+++ b/include/mach/socfpga/generic.h
@@ -3,6 +3,8 @@
 #ifndef __MACH_SOCFPGA_GENERIC_H
 #define __MACH_SOCFPGA_GENERIC_H
 
+#include <mach/socfpga/arria10-regs.h>
+#include <mach/socfpga/arria10-reset-manager.h>
 #include <linux/types.h>
 
 struct socfpga_cm_config;
@@ -57,6 +59,15 @@ int arria10_device_init(struct arria10_mainpll_cfg *mainpll,
 			struct arria10_perpll_cfg *perpll,
 			uint32_t *pinmux);
 enum bootsource arria10_get_bootsource(void);
+static void inline arria10_kick_l4wd0(void)
+{
+	writel(0x76, ARRIA10_L4WD0_ADDR + 0xc);
+}
+static void inline arria10_watchdog_disable(void)
+{
+	setbits_le32(ARRIA10_RSTMGR_ADDR + ARRIA10_RSTMGR_PER1MODRST,
+		     ARRIA10_RSTMGR_PER1MODRST_WATCHDOG0);
+}
 #else
 static inline void socfpga_arria10_mmc_init(void)
 {

-- 
2.43.2



