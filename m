Delivery-date: Wed, 11 Jan 2023 09:02:21 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFW3x-008dou-Om
	for lore@lore.pengutronix.de; Wed, 11 Jan 2023 09:02:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFW3v-0000Bc-Im
	for lore@pengutronix.de; Wed, 11 Jan 2023 09:02:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yxarrXgLFXQcBFRqkY1oQRxTiq/znox+YMXhtHCA40g=; b=VP/Pg34nwfaCQfzECwbkwrIHuJ
	juJD33eeI0kmJnaArqrtex6RJnwmE97GB5pqoo0T3oa09O4DJaOyyMyGhSgm6PO8syPj0fQHVNY0n
	w2u4dJl/GeJSflXMudfFu4u/70dXVmGVyaAzOT0FCyocMfIWcOXmPECa45wy1i8SN+mFYSCPilb57
	+/AYxiLZUzxqBHjNph2gTBYPFah810xbGsnpfVqxO4ZsnuhFfgQkMU4EI1aT8KbLj1q1PN+1r73S6
	atcNibPhtYxSi0JZu7+NLykiV/i8VJxRlz1WOAO8TYqZa0lbMjROagyKwJLiw4zX3/Rx5nmS8Ijih
	w5phh38g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFW2Y-00AE2h-Lg; Wed, 11 Jan 2023 08:00:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFW1b-00ADYi-IQ
	for barebox@lists.infradead.org; Wed, 11 Jan 2023 07:59:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pFW1S-0007Xy-A8; Wed, 11 Jan 2023 08:59:46 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFW1R-005Fc4-Jx; Wed, 11 Jan 2023 08:59:45 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFW1Q-003uWa-HF; Wed, 11 Jan 2023 08:59:44 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 11 Jan 2023 08:59:40 +0100
Message-Id: <20230111075940.922817-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230111075940.922817-1-a.fatoum@pengutronix.de>
References: <20230111075940.922817-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_235955_646299_BD9067A8 
X-CRM114-Status: GOOD (  14.92  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 7/7] ARM: i.MX8M: init CAAM when CONFIG_FSL_CAAM_RNG_PBL_INIT
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig                   |  1 +
 arch/arm/mach-imx/atf.c                     | 10 ++++++++++
 arch/arm/mach-imx/include/mach/imx8m-regs.h |  3 +++
 drivers/crypto/caam/Kconfig                 |  3 ++-
 4 files changed, 16 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 84b763f83fb1..774c4cacb7f7 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -184,6 +184,7 @@ config ARCH_IMX8M
 	select IMX8M_DRAM
 	select PBL_VERIFY_PIGGY if HABV4
 	select ARM_USE_COMPRESSED_DTB
+	imply FSL_CAAM_RNG_PBL_INIT if HAVE_OPTEE
 
 config ARCH_IMX8MM
 	select ARCH_IMX8M
diff --git a/arch/arm/mach-imx/atf.c b/arch/arm/mach-imx/atf.c
index 61b602816623..2a3e3f53b885 100644
--- a/arch/arm/mach-imx/atf.c
+++ b/arch/arm/mach-imx/atf.c
@@ -8,6 +8,7 @@
 #include <mach/xload.h>
 #include <mach/romapi.h>
 #include <soc/fsl/fsl_udc.h>
+#include <soc/fsl/caam.h>
 
 /**
  * imx8m_atf_load_bl31 - Load ATF BL31 blob and transfer control to it
@@ -38,9 +39,18 @@
 static __noreturn void imx8m_atf_start_bl31(const void *fw, size_t fw_size, void *atf_dest)
 {
 	void __noreturn (*bl31)(void) = atf_dest;
+	int ret;
 
 	BUG_ON(fw_size > MX8M_ATF_BL31_SIZE_LIMIT);
 
+	if (IS_ENABLED(CONFIG_FSL_CAAM_RNG_PBL_INIT)) {
+		ret = imx_early_caam_init(MX8M_CAAM_BASE_ADDR);
+		if (ret)
+			pr_debug("CAAM early init failed: %d\n", ret);
+		else
+			pr_debug("CAAM early init successful\n");
+	}
+
 	memcpy(bl31, fw, fw_size);
 
 	asm volatile("msr sp_el2, %0" : :
diff --git a/arch/arm/mach-imx/include/mach/imx8m-regs.h b/arch/arm/mach-imx/include/mach/imx8m-regs.h
index 794e1bdd88a4..d101b88cc4a6 100644
--- a/arch/arm/mach-imx/include/mach/imx8m-regs.h
+++ b/arch/arm/mach-imx/include/mach/imx8m-regs.h
@@ -3,6 +3,8 @@
 #ifndef __MACH_IMX8M_REGS_H
 #define __MACH_IMX8M_REGS_H
 
+#include <linux/compiler.h>
+
 /*
  * Actual addressable OCRAM size may differ from SoC to SoC, but all of
  * i.MX8MQ/M/N/P have this region of MMIO address space set aside for
@@ -31,6 +33,7 @@
 #define MX8M_UART1_BASE_ADDR		0x30860000
 #define MX8M_UART3_BASE_ADDR		0x30880000
 #define MX8M_UART2_BASE_ADDR		0x30890000
+#define MX8M_CAAM_BASE_ADDR		IOMEM(0x30900000)
 #define MX8M_I2C1_BASE_ADDR		0x30A20000
 #define MX8M_I2C2_BASE_ADDR		0x30A30000
 #define MX8M_I2C3_BASE_ADDR		0x30A40000
diff --git a/drivers/crypto/caam/Kconfig b/drivers/crypto/caam/Kconfig
index 33d7b0fb8329..e7f57708f3ea 100644
--- a/drivers/crypto/caam/Kconfig
+++ b/drivers/crypto/caam/Kconfig
@@ -36,4 +36,5 @@ config CRYPTO_DEV_FSL_CAAM_RNG
 	  Selecting this will register the SEC4 hardware rng.
 
 config FSL_CAAM_RNG_PBL_INIT
-	bool
+	bool "Setup CAAM in EL3"
+	depends on ARCH_IMX8M
-- 
2.30.2



