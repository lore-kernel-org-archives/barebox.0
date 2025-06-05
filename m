Delivery-date: Thu, 05 Jun 2025 14:45:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN9ya-0040xG-1V
	for lore@lore.pengutronix.de;
	Thu, 05 Jun 2025 14:45:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN9yY-0005oZ-Hm
	for lore@pengutronix.de; Thu, 05 Jun 2025 14:45:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3k40YxUFAhxsnUfM/WoyQWMhhGhzAr6TNp/BZMduDiE=; b=PJdsHa1B7sxfMPM3XeloKtFnQE
	ySw9dOJbb7+ZYhxaAabGJUfEh7T5HEhgyZC0wUH+Tdnkkt6uZDxOtKrhHzDyIqWZHOToh6DFISeO4
	5j2k+WdOxiIMii30lfJvLoWfrnG7uYkeZe5A8c4ODAAczVBnRFozypPtNzk2V8UwDMffgabnsYRxq
	5br07nMM4ZFB99etUom6eqlambTb71oYX5NLmBcHbUPQQHg0W9yBy4jhwQM0JGr4djzePukDxmSB2
	Vmaan9bhf6Ge4WmniMQqag9B+ttlFZUdnAAEQcFdlCqwCHdLj4ncRyya6D70Zr0SLAiEjLU2SyxFW
	kyLE6mTw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN9xx-0000000FVKO-1YXK;
	Thu, 05 Jun 2025 12:45:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN9vU-0000000FV3T-0gFh
	for barebox@lists.infradead.org;
	Thu, 05 Jun 2025 12:42:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uN9vT-0003Mx-0x; Thu, 05 Jun 2025 14:42:31 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uN9vS-001xgT-1u;
	Thu, 05 Jun 2025 14:42:30 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uN9vS-0024bQ-1W;
	Thu, 05 Jun 2025 14:42:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 05 Jun 2025 14:42:32 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250605-arm-k3-am62l-v2-7-53257d4b2dd2@pengutronix.de>
References: <20250605-arm-k3-am62l-v2-0-53257d4b2dd2@pengutronix.de>
In-Reply-To: <20250605-arm-k3-am62l-v2-0-53257d4b2dd2@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1749127350; l=1291;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=WYekz0N5EwIPAbUYjmAh1GOG1g7XCKyEi2afSy8Z5Qc=;
 b=V5MQ2Uk83G+lENtO45LJBVz1UiBUtiWfB5xXNDTRLaS3GMjiDod0o0elOCPVD3xqEmbjWD7fI
 9M5D95ekp3AB0NnCXPHY11G0/FexDH5Kd0t1fcpwQjsDB8zFCPeg0is
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_054232_226900_E0AB4C25 
X-CRM114-Status: GOOD (  10.86  )
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
Subject: [PATCH v2 07/33] ARM: Makefile: descend into mach-* for cleaning
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When you run "make clean" for arm, it never visits mach-* directories
because machine-y is just empty. With this files generated with extra-y
like the .k3cfg files are not cleaned.

When cleaning, all machine directories are accumulated to machine-, so
let's pass them to common- to clean up those directories.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Makefile | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index e4041cf715c4b7f7c62e86941c94b9cd549573b7..eb71c84f587a583eb306483d3aa554273e827ddd 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -99,7 +99,6 @@ machine-$(CONFIG_ARCH_MVEBU)		+= mvebu
 machine-$(CONFIG_ARCH_OMAP)		+= omap
 machine-$(CONFIG_ARCH_PXA)		+= pxa
 machine-$(CONFIG_ARCH_ROCKCHIP)		+= rockchip
-machine-$(CONFIG_ARCH_SAMSUNG)		+= samsung
 machine-$(CONFIG_ARCH_SOCFPGA)		+= socfpga
 machine-$(CONFIG_ARCH_STM32MP)		+= stm32mp
 machine-$(CONFIG_ARCH_SUNXI)		+= sunxi
@@ -139,6 +138,9 @@ common-y += arch/arm/boards/ $(MACH)
 common-y += arch/arm/cpu/
 common-y += arch/arm/crypto/
 
+# For cleaning
+common- += $(patsubst %,arch/arm/mach-%/,$(machine-))
+
 ifeq ($(CONFIG_CPU_64), y)
 common-y += arch/arm/lib64/
 else

-- 
2.39.5



