Delivery-date: Mon, 30 Jun 2025 10:06:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uW9X3-00CYdH-0I
	for lore@lore.pengutronix.de;
	Mon, 30 Jun 2025 10:06:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uW9X2-0006Rw-8n
	for lore@pengutronix.de; Mon, 30 Jun 2025 10:06:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uTLMLBwcPuWN7lowJSTMEQV81hFdS23l+49W/BdzlA0=; b=GM42DuVY278iS67JuWWr+iAYAH
	8hRfacjyunuFroHOpIm0Ayl6V/meVa7epeH7/mUJLM8NQ8d+QfsLmn1FXrj4js8wQT+mYYN6NYWdY
	zgi+mPVhhqTwYMM5p4Ou2HMMLFqFEfSF0invBRktBVpv0Pb9MhJQIbs+vynBcjPKXlel8M2OEeZYU
	szXxoqihFXnMJaoW14P9sIi2mDc7F5JGTn998HmaDTzeCg4j7gdKiVKh0OKpd/pJ/SOF1yRDP9fmA
	t3VoWDK0v4FIVYTDHjW1BC33kzQfDezw3wf4vtaE/Eah0KP7GKP02/OmZJ/hdwAqwKa7YuViQcicy
	dNnsaxeg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uW9WY-00000001Z1I-1lI3;
	Mon, 30 Jun 2025 08:05:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uW9VR-00000001Ykd-2y87
	for barebox@lists.infradead.org;
	Mon, 30 Jun 2025 08:04:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uW9VQ-0004sI-K7; Mon, 30 Jun 2025 10:04:48 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uW9VQ-0064Qp-1N;
	Mon, 30 Jun 2025 10:04:48 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uW9D2-004Sjo-0Z;
	Mon, 30 Jun 2025 09:45:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 30 Jun 2025 09:45:52 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250630-arm-optee-early-helper-v2-10-c8cce3ae42b0@pengutronix.de>
References: <20250630-arm-optee-early-helper-v2-0-c8cce3ae42b0@pengutronix.de>
In-Reply-To: <20250630-arm-optee-early-helper-v2-0-c8cce3ae42b0@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1751269548; l=2566;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=/IInaGSNfuQyuWwkyxxwe9JEWkhG6V+l7KrpMlBlur4=;
 b=oFlCbhr7ZuNVTyZBQ1HNnJkTQVFVEM6WZY1VY+Tza21Bd/6ZPLv4aw3cPVuL9mOlGrLFqLwVW
 yEoZDzjqM+rCiLNC67uf+uGRxhunHpcNiKE6Wsap25oz1SFGyecxmfI
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250630_010449_756061_85426611 
X-CRM114-Status: GOOD (  11.77  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 10/14] ARM: i.MX: add imx6_can_access_tzasc()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On ARMv7 there is no direct way to detect if we are in the secure or non
secure world. Add a imx6_can_access_tzasc() for this purpose. When
accessing the TZASC triggers a data abort then we are in the non secure
world, because OP-TEE configures the CSU to forbid accesses to the TZASC
from the normal world. This function can be used later to detect if we
have to load OP-TEE or not.

We'll need CONFIG_ARM_EXCEPTIONS_PBL for this functionality, so select
this symbol in Kconfig.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig |  1 +
 arch/arm/mach-imx/tzasc.c | 13 +++++++++++++
 include/mach/imx/tzasc.h  |  1 +
 3 files changed, 15 insertions(+)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index bb6bad169831b03879527ef9f676ff99b955a6fd..38ef55727678855591bf41cecca76947434381e8 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -50,6 +50,7 @@ config ARCH_IMX_TZASC
 	bool
 	depends on ARCH_IMX6 || ARCH_IMX8M
 	default y if PBL_OPTEE
+	select ARM_EXCEPTIONS_PBL
 
 #
 # PMIC configuration found on i.MX51 Babbadge board
diff --git a/arch/arm/mach-imx/tzasc.c b/arch/arm/mach-imx/tzasc.c
index ed20ad8803a2e91b67b5d8c3ab1a4265c4228ec7..0fe7f6eb7f4ac67b6db63ee78b5fc867d17df9cc 100644
--- a/arch/arm/mach-imx/tzasc.c
+++ b/arch/arm/mach-imx/tzasc.c
@@ -13,6 +13,8 @@
 #include <linux/sizes.h>
 #include <mach/imx/imx8m-regs.h>
 #include <io.h>
+#include <abort.h>
+#include <asm/barebox-arm.h>
 
 /*******************************************************************************
  *                         TZC380 defines
@@ -329,6 +331,17 @@ bool imx6ul_tzc380_is_bypassed(void)
 	return !(readl(&gpr[9]) & MX6_GPR_TZASC1_EN);
 }
 
+bool imx6_can_access_tzasc(void)
+{
+	arm_pbl_init_exceptions();
+
+	data_abort_mask();
+
+	readl(IOMEM(MX6_TZASC1_BASE));
+
+	return !data_abort_unmask();
+}
+
 void imx8m_tzc380_init(void)
 {
 	u32 __iomem *gpr = IOMEM(MX8M_IOMUXC_GPR_BASE_ADDR);
diff --git a/include/mach/imx/tzasc.h b/include/mach/imx/tzasc.h
index 0fbcdc2150e63864366a8dddeed2d1b97685903d..ca85704a8f459ab6e0cdc975940d855929f3d6f7 100644
--- a/include/mach/imx/tzasc.h
+++ b/include/mach/imx/tzasc.h
@@ -10,6 +10,7 @@ void imx6q_tzc380_early_ns_region1(void);
 void imx6ul_tzc380_early_ns_region1(void);
 bool imx6q_tzc380_is_bypassed(void);
 bool imx6ul_tzc380_is_bypassed(void);
+bool imx6_can_access_tzasc(void);
 void imx8m_tzc380_init(void);
 bool imx8m_tzc380_is_enabled(void);
 

-- 
2.39.5



