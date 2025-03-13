Delivery-date: Thu, 13 Mar 2025 07:46:31 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tscKt-00DSPg-1b
	for lore@lore.pengutronix.de;
	Thu, 13 Mar 2025 07:46:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tscKs-0006t8-8E
	for lore@pengutronix.de; Thu, 13 Mar 2025 07:46:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hfDjzn3wu24L7zcg7eyxhESaW/ZX8PCGm8R92XQ+uKo=; b=3kk0lUQtVl2xvP3Kgu1MByIU5u
	S1ftkYyzS266abtseqI7o5FpBaAi5KE92ToWIw4k2HIvDjK+dVFhQU5bFQPy53cBVWeRwyUHojsw3
	lSi06GxZGFKaDysqspc166I9QAi8A4OYBEjHXybbpUtlbQCyFINmUwLo+7P9QqK0L007pbmreGmsj
	Qxv3CJC7ElWokllcVVA5yXYOYMUJUOE2daYQMC3jcjO9ecBm2i01weQdflkzTvNNRBgOSdlKgQwWC
	QNhqkrhfUTBsxMGaQjwqwCZ7Q8tvK4UNRG9Pfr8eTBAt/viS56LdW+Jkk7FjbVIUIvzsySWdr3FG6
	O+sTG6qQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tscKT-0000000AFmT-1JJt;
	Thu, 13 Mar 2025 06:46:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tscKN-0000000AFhl-2F2n
	for barebox@lists.infradead.org;
	Thu, 13 Mar 2025 06:46:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tscKM-0006Vo-Aj; Thu, 13 Mar 2025 07:45:58 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tscKM-005UJI-0P;
	Thu, 13 Mar 2025 07:45:58 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tscKM-000K8j-07;
	Thu, 13 Mar 2025 07:45:58 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 13 Mar 2025 07:45:56 +0100
Message-Id: <20250313064557.77398-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250313064557.77398-1-a.fatoum@pengutronix.de>
References: <20250313064557.77398-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250312_234559_582416_7C9E7F9E 
X-CRM114-Status: UNSURE (   7.94  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 5/6] arch: move PHYS_ADDR_T_64BIT definition to arch/Kconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Currently, every architecture with 64-bit support defines its own
PHYS_ADDR_T_64BIT symbol, except for x86.

Sync with what's done for ARCH_DMA_ADDR_T_64BIT and move
PHYS_ADDR_T_64BIT into arch/Kconfig as well.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/Kconfig         | 4 ++++
 arch/arm/cpu/Kconfig | 3 ---
 arch/kvx/Kconfig     | 3 ---
 arch/mips/Kconfig    | 3 ---
 arch/riscv/Kconfig   | 3 ---
 arch/sandbox/Kconfig | 3 ---
 6 files changed, 4 insertions(+), 15 deletions(-)

diff --git a/arch/Kconfig b/arch/Kconfig
index b1200184678f..dc5d1e454df5 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -89,6 +89,10 @@ config ARCH_HAS_SJLJ
 	help
 	  Architecture has support implemented for setjmp()/longjmp()/initjmp()
 
+
+config PHYS_ADDR_T_64BIT
+	bool
+
 config ARCH_DMA_ADDR_T_64BIT
 	bool
 
diff --git a/arch/arm/cpu/Kconfig b/arch/arm/cpu/Kconfig
index 84fe770b6da8..e61bcadc8c35 100644
--- a/arch/arm/cpu/Kconfig
+++ b/arch/arm/cpu/Kconfig
@@ -2,9 +2,6 @@
 
 comment "Processor Type"
 
-config PHYS_ADDR_T_64BIT
-	bool
-
 config CPU_32
 	bool
 	select HAS_MODULES
diff --git a/arch/kvx/Kconfig b/arch/kvx/Kconfig
index 5f325ca28358..9b733cd79201 100644
--- a/arch/kvx/Kconfig
+++ b/arch/kvx/Kconfig
@@ -23,9 +23,6 @@ config KVX
 	select RESET_SOURCE
 	default y
 
-config PHYS_ADDR_T_64BIT
-	bool
-
 config 64BIT
 	bool
 	select ARCH_DMA_ADDR_T_64BIT
diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
index 769949a91085..43c493978c8f 100644
--- a/arch/mips/Kconfig
+++ b/arch/mips/Kconfig
@@ -36,9 +36,6 @@ config GENERIC_LINKER_SCRIPT
 	bool
 	default y
 
-config PHYS_ADDR_T_64BIT
-	bool
-
 config ARCH_TEXT_BASE
 	hex
 	default 0xa0800000
diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index be2146b3facb..4d56e55b533f 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -59,9 +59,6 @@ config CPU_SUPPORTS_32BIT_KERNEL
 config CPU_SUPPORTS_64BIT_KERNEL
 	bool
 
-config PHYS_ADDR_T_64BIT
-	bool
-
 config 32BIT
 	bool
 	depends on CPU_SUPPORTS_32BIT_KERNEL
diff --git a/arch/sandbox/Kconfig b/arch/sandbox/Kconfig
index c1a51d4f021d..7c86511a2c61 100644
--- a/arch/sandbox/Kconfig
+++ b/arch/sandbox/Kconfig
@@ -32,9 +32,6 @@ config ARCH_TEXT_BASE
 
 menu "Sandbox specific settings"
 
-config PHYS_ADDR_T_64BIT
-	bool
-
 config CC_IS_64BIT
 	def_bool $(success,$(srctree)/scripts/gcc-64bitptr.sh $(CC))
 
-- 
2.39.5



