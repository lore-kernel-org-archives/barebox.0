Delivery-date: Thu, 16 Apr 2026 11:49:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDJLJ-00Cm5G-2n
	for lore@lore.pengutronix.de;
	Thu, 16 Apr 2026 11:49:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wDJLI-0001K6-8r
	for lore@pengutronix.de; Thu, 16 Apr 2026 11:49:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=5q0IqfDa/tkwQgv4p+j1liiqUnmWZpHKP8rWqC1eq0Y=; b=nakt1+q1YiSMtajOYxNHEByVku
	e4XpOGhtrAGqmHOgJz3MM+u3i/48sVZ0nZF56K9O2QqKxbqab4vp+E60FLzKg9xytYdOsLrIGtmUk
	BuamphEcb5ITnXo+1rLKmAkvt0Fn1p2ifiDIOQqC+9azafev1iL7+MZpyTsvcjbNHP6DyVoT/rJyX
	N/+90MSBx8AE+zqD+pip74/Bt2DtTNenFP30b4KVsx7+8gGgGb8kmfUqFuVOXGki0Q46tNICS9KZL
	3gluM3r2xkx3Vxs4gOb8gIdwBZYuNiVrdhtKUWdoEK0Z/Jmt3xacWnDklcwNz7NwJueUye7dAriJu
	Cf0R+P8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDJKe-00000002GRD-0vbf;
	Thu, 16 Apr 2026 09:48:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wDJKa-00000002GO8-3LWa
	for barebox@lists.infradead.org;
	Thu, 16 Apr 2026 09:48:19 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wDJKX-0000o5-32; Thu, 16 Apr 2026 11:48:13 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Thu, 16 Apr 2026 11:48:06 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260416-socfpga-agilex5-sdram-v1-2-07556aa7219f@pengutronix.de>
References: <20260416-socfpga-agilex5-sdram-v1-0-07556aa7219f@pengutronix.de>
In-Reply-To: <20260416-socfpga-agilex5-sdram-v1-0-07556aa7219f@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260416_024816_846318_A64D32CB 
X-CRM114-Status: UNSURE (   9.70  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/9] arm: socfgpa: agilex5: remove unused memsize
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The memsize parameter isn't used when loading the TF-A. Furthermore,
using a fixed memory size may be wrong if inline ecc is enabled, because
inline ecc reduces the amount of usable memory.

Remove the parameter to avoid confusion.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 arch/arm/boards/arrow-axe5-eagle/lowlevel.c | 2 +-
 arch/arm/mach-socfpga/atf.c                 | 2 +-
 include/mach/socfpga/generic.h              | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boards/arrow-axe5-eagle/lowlevel.c b/arch/arm/boards/arrow-axe5-eagle/lowlevel.c
index 6b158305fdb5..41c1b832a682 100644
--- a/arch/arm/boards/arrow-axe5-eagle/lowlevel.c
+++ b/arch/arm/boards/arrow-axe5-eagle/lowlevel.c
@@ -63,7 +63,7 @@ static noinline void axe5_eagle_continue(void)
 		socfpga_mailbox_s10_init();
 		socfpga_mailbox_s10_qspi_open();
 
-		agilex5_load_and_start_image_via_tfa(SZ_1G);
+		agilex5_load_and_start_image_via_tfa();
 	}
 
 	fdt = __dtb_z_socfpga_agilex5_axe5_eagle_start;
diff --git a/arch/arm/mach-socfpga/atf.c b/arch/arm/mach-socfpga/atf.c
index 98460472227e..3ad19e33ac94 100644
--- a/arch/arm/mach-socfpga/atf.c
+++ b/arch/arm/mach-socfpga/atf.c
@@ -9,7 +9,7 @@
 #include <mach/socfpga/generic.h>
 #include <mach/socfpga/soc64-regs.h>
 
-void __noreturn agilex5_load_and_start_image_via_tfa(unsigned long memsize)
+void __noreturn agilex5_load_and_start_image_via_tfa(void)
 {
 	void *bl31 = (void *)AGILEX5_ATF_BL31_BASE_ADDR;
 	void *bl33 = (void *)AGILEX5_ATF_BL33_BASE_ADDR;
diff --git a/include/mach/socfpga/generic.h b/include/mach/socfpga/generic.h
index 07add9ed40d6..06768e9ec0a0 100644
--- a/include/mach/socfpga/generic.h
+++ b/include/mach/socfpga/generic.h
@@ -100,7 +100,7 @@ static inline void arria10_watchdog_disable(void) {}
 #endif
 
 int agilex5_clk_init(void);
-void __noreturn agilex5_load_and_start_image_via_tfa(unsigned long memsize);
+void __noreturn agilex5_load_and_start_image_via_tfa(void);
 
 static inline void __udelay(unsigned us)
 {

-- 
2.47.3



