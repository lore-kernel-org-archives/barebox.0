Delivery-date: Tue, 16 Jan 2024 18:09:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rPmvs-002FNz-1E
	for lore@lore.pengutronix.de;
	Tue, 16 Jan 2024 18:09:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rPmvt-0007U3-0D
	for lore@pengutronix.de; Tue, 16 Jan 2024 18:09:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9bCj7RKMMPbvJPdfX0K8HDm95FQmQeJ8nh7SDlA7rVw=; b=S3Pp7xj3MnR9m01WGwn3/vbNzZ
	c3CQZEcGBRkmN4PJIlQ+AZC1942lEZSHEr14tQR8UhS+838mZVIjvbi473OhM2XKL6mLO7pnxaz0E
	Ht44Ez57u/mFHqE8Z9OJKDS811QWpPf7gUUrVfhmgM0MZwWDaYVr15MwtuaX6Ipp+lq+tYetw1Xjn
	Fn+Gp/u1f5iqj6yYhnzTNeXw/eRZFmLN+oG2fp9NRiJyRhxwq5Muhgz6+3IcVXNZr586Gbb4p/ZcX
	dARqviEaZ34Vre38CcIMLZ+G1W2dkGyU7aUjSbF1hk88+mT/f27LMxx8zumNC1/lUlfNyJkxVWc8C
	sZO5So8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rPmuu-00Ci2X-2d;
	Tue, 16 Jan 2024 17:08:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rPmug-00ChqG-1A
	for barebox@lists.infradead.org;
	Tue, 16 Jan 2024 17:07:51 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1rPmuf-0006lg-6U
	for barebox@lists.infradead.org; Tue, 16 Jan 2024 18:07:45 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 16 Jan 2024 18:07:27 +0100
Message-Id: <20240116170738.209954-8-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240116170738.209954-1-m.felsch@pengutronix.de>
References: <20240116170738.209954-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240116_090746_481018_B1664971 
X-CRM114-Status: GOOD (  14.07  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 07/18] common: add OPTEE_SHM_SIZE to configure optee shared memory
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

An size of 4M seems quite large and upstream OP-TEE code mostly uses 2M
for all i.MX platforms. However keep the 4M as default but make it
configurable for integrators which want to use the autom. OF fixup
logic.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/mach-imx/imx8m.c           | 3 ++-
 common/Kconfig                      | 9 +++++++++
 include/asm-generic/memory_layout.h | 6 ++++++
 3 files changed, 17 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/imx8m.c b/arch/arm/mach-imx/imx8m.c
index c7c799c64bc4..ca50eec63622 100644
--- a/arch/arm/mach-imx/imx8m.c
+++ b/arch/arm/mach-imx/imx8m.c
@@ -8,6 +8,7 @@
 #include <pm_domain.h>
 #include <asm/syscounter.h>
 #include <asm/system.h>
+#include <asm-generic/memory_layout.h>
 #include <mach/imx/generic.h>
 #include <mach/imx/revision.h>
 #include <mach/imx/imx8mq.h>
@@ -68,7 +69,7 @@ static int imx8m_init(const char *cputypestr)
 	if (IS_ENABLED(CONFIG_PBL_OPTEE) && tzc380_is_enabled() &&
 	    !of_find_node_by_path_from(NULL, "/firmware/optee")) {
 		static struct of_optee_fixup_data optee_fixup_data = {
-			.shm_size = SZ_4M,
+			.shm_size = OPTEE_SHM_SIZE,
 			.method = "smc",
 		};
 
diff --git a/common/Kconfig b/common/Kconfig
index c38cfaed0e9f..ddca1e913b18 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1140,6 +1140,15 @@ config OPTEE_SIZE
 	  Can be smaller than the actual size used by OP-TEE, this is used to prevent
 	  barebox from allocating memory in this area.
 
+config OPTEE_SHM_SIZE
+	hex
+	default 0x400000
+	prompt "OP-TEE Shared Memory Size"
+	depends on HAVE_OPTEE
+	help
+	  Size to reserve in main memory for OP-TEE shared memory communication.
+	  Can be used for fixing up the OP-TEE OF node.
+
 config BOOTM_OPTEE
 	bool
 	prompt "support booting OP-TEE"
diff --git a/include/asm-generic/memory_layout.h b/include/asm-generic/memory_layout.h
index 7593e18da151..6af1db8113f2 100644
--- a/include/asm-generic/memory_layout.h
+++ b/include/asm-generic/memory_layout.h
@@ -19,6 +19,12 @@
 #define OPTEE_SIZE 0
 #endif
 
+#ifdef CONFIG_OPTEE_SHM_SIZE
+#define OPTEE_SHM_SIZE CONFIG_OPTEE_SHM_SIZE
+#else
+#define OPTEE_SHM_SIZE 0
+#endif
+
 #define HEAD_TEXT_BASE MALLOC_BASE
 #define MALLOC_SIZE CONFIG_MALLOC_SIZE
 #define STACK_SIZE  CONFIG_STACK_SIZE
-- 
2.39.2



