Delivery-date: Thu, 13 Mar 2025 07:46:30 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tscKs-00DSP9-2f
	for lore@lore.pengutronix.de;
	Thu, 13 Mar 2025 07:46:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tscKq-0006rd-Bq
	for lore@pengutronix.de; Thu, 13 Mar 2025 07:46:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jjSUgehUyQWMTBQTTYoYMXssyhZoXZvWqN6OZbwKq6M=; b=CDPLH4oGd5hz+yh3advskTOdiK
	xoSwLx7m4kIaHk8Yx6+VKnm0tONuEpzP+xG5rXh4hzH8E8JfFhw4TO/8vOl7CBtEi/y8sZfuxYCl5
	sazfdB/i/awSYk7Ai/+rIl9tBRhcaQKR9vnVU8n+RagRuJ7/AsqUHBjHHUKbtLj6GW07eBvuPmGy2
	YvkhYorNBJ4pie5x0l7S4DyoURKpXbogZKJ9dxVUwatYyR76XQPe5qDnE1veLWAcxODHXUGEbVtge
	yU4CB4TnqiHThBKtqFRFHn4IZT1xjfA+5nN5/tQsiFW58hs/6FJnyNbXNOFBKrLGmduFvapIbLOB8
	FtN4UH2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tscKQ-0000000AFje-1Nds;
	Thu, 13 Mar 2025 06:46:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tscKN-0000000AFhi-1obE
	for barebox@lists.infradead.org;
	Thu, 13 Mar 2025 06:46:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tscKM-0006Vj-5p; Thu, 13 Mar 2025 07:45:58 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tscKL-005UJ9-3B;
	Thu, 13 Mar 2025 07:45:57 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tscKL-000K8j-2t;
	Thu, 13 Mar 2025 07:45:57 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 13 Mar 2025 07:45:53 +0100
Message-Id: <20250313064557.77398-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250313064557.77398-1-a.fatoum@pengutronix.de>
References: <20250313064557.77398-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250312_234559_466358_0715D493 
X-CRM114-Status: GOOD (  10.83  )
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
Subject: [PATCH 2/6] RISC-V: rename HAS_CACHE to RISCV_ICACHE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

CONFIG_HAS_CACHE only serves a purpose on RISC-V to allow barebox to run
on softcores without fence.i instruction. Rename the symbol to reflect
that in preparation for removing HAS_CACHE altogether.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/riscv/Kconfig.socs        | 9 ++++++---
 arch/riscv/include/asm/cache.h | 2 +-
 2 files changed, 7 insertions(+), 4 deletions(-)

diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
index ccda688faf6d..4a3b56b5fff4 100644
--- a/arch/riscv/Kconfig.socs
+++ b/arch/riscv/Kconfig.socs
@@ -19,7 +19,7 @@ config SOC_VIRT
 	bool "QEMU Virt Machine"
 	select RISCV_S_MODE
 	select BOARD_GENERIC_DT
-	select HAS_CACHE
+	select RISCV_ICACHE
 	select HAS_DEBUG_LL
 	help
 	  Generates an image tht can be be booted by QEMU. The image is called
@@ -46,7 +46,7 @@ config BOARD_RISCVEMU
 
 config CPU_SIFIVE
 	bool
-	select HAS_CACHE
+	select RISCV_ICACHE
 
 config SOC_SIFIVE
 	bool "SiFive SoCs"
@@ -116,7 +116,7 @@ config SOC_ALLWINNER_SUN20I
 	bool "Allwinner Sun20i SoCs"
 	depends on ARCH_RV64I
 	select HAS_DEBUG_LL
-	select HAS_CACHE
+	select RISCV_ICACHE
 
 if SOC_ALLWINNER_SUN20I
 
@@ -130,6 +130,9 @@ endif
 
 comment "CPU features"
 
+config RISCV_ICACHE
+	bool
+
 config SIFIVE_L2
 	bool "SiFive L2 cache controller"
 	depends on CPU_SIFIVE
diff --git a/arch/riscv/include/asm/cache.h b/arch/riscv/include/asm/cache.h
index c787f890017e..8c3cde669c30 100644
--- a/arch/riscv/include/asm/cache.h
+++ b/arch/riscv/include/asm/cache.h
@@ -21,7 +21,7 @@ static inline void thead_local_flush_icache_all(void)
 
 static inline void local_flush_icache_all(void)
 {
-#ifdef CONFIG_HAS_CACHE
+#ifdef CONFIG_RISCV_ICACHE
 	switch(riscv_vendor_id()) {
 	case THEAD_VENDOR_ID:
 		thead_local_flush_icache_all();
-- 
2.39.5



