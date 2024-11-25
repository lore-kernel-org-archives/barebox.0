Delivery-date: Mon, 25 Nov 2024 16:36:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFb86-000GJb-2N
	for lore@lore.pengutronix.de;
	Mon, 25 Nov 2024 16:36:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFb86-00054o-Ef
	for lore@pengutronix.de; Mon, 25 Nov 2024 16:36:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=B7r97ElaOvWxhKp/Z6HIyilzAqp6mZXYWPKe0uhrfw0=; b=Dec8pjRkEECuBHdCGLRbFnTQLG
	3O6kSRLc87yKESg6tSy/vOUgGiYjd+UbiFz4xx8OyafW5ZqshgQ1/KlfzTfMk80UxA5wf6XXDC729
	zOIgS03WHW06UHBufQHTG+OwZ7L/XzRNBJUYBoPV8R7HB26NnuCR1iP8ITcKQ8jhExzcXmVR9l2F4
	vSlghbnRwDiL4vnf4jORE3rurzAsHa/LQdx9Lfo0RfNDebDGDyOBoIrJPH0wkFWvQTMhJwTXPBvsq
	W6joXQk5M9s67WK1ZVFdlSUMlegN+vIePNwKrlY8SyxStNHszBImFrJzC4MxLgyDnUN71USnx0uIQ
	4BiowhBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFb7e-00000008W0V-2CJw;
	Mon, 25 Nov 2024 15:35:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFb7W-00000008Vsn-27p1
	for barebox@lists.infradead.org;
	Mon, 25 Nov 2024 15:35:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFb7V-0004YW-7Y; Mon, 25 Nov 2024 16:35:25 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFb7U-0006VM-0T;
	Mon, 25 Nov 2024 16:35:24 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFb7U-006GiN-0e;
	Mon, 25 Nov 2024 16:35:24 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 25 Nov 2024 16:35:20 +0100
Message-Id: <20241125153523.1411849-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241125153523.1411849-1-a.fatoum@pengutronix.de>
References: <20241125153523.1411849-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241125_073526_544701_308D9BCB 
X-CRM114-Status: GOOD (  11.32  )
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
Subject: [PATCH 6/9] sandbox: retire HAVE_ARCH_ASAN
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For non-sandbox platforms, the config option is CONFIG_KASAN, so there
will not be any further platforms make using of HAVE_ARCH_ASAN.

Replace it by SANDBOX instead.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/sandbox/Kconfig | 1 -
 common/Kconfig       | 3 ---
 common/Kconfig.debug | 5 ++++-
 3 files changed, 4 insertions(+), 5 deletions(-)

diff --git a/arch/sandbox/Kconfig b/arch/sandbox/Kconfig
index 4cc3b201c399..d4379c4d68db 100644
--- a/arch/sandbox/Kconfig
+++ b/arch/sandbox/Kconfig
@@ -7,7 +7,6 @@ config SANDBOX
 	select OFTREE
 	select GPIOLIB
 	select ARCH_HAS_UBSAN_SANITIZE_ALL
-	select HAVE_ARCH_ASAN
 	select HAS_DMA
 	select BLOCK
 	select BLOCK_WRITE
diff --git a/common/Kconfig b/common/Kconfig
index 9a63556378db..708caa6040a9 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -1312,9 +1312,6 @@ config DDR_SPD
 	bool
 	select CRC_ITU_T
 
-config HAVE_ARCH_ASAN
-	bool
-
 config ARCH_USE_SYM_ANNOTATIONS
 	bool
 	help
diff --git a/common/Kconfig.debug b/common/Kconfig.debug
index 989f3ccc2a20..ea6864ac4d91 100644
--- a/common/Kconfig.debug
+++ b/common/Kconfig.debug
@@ -126,11 +126,14 @@ source "lib/kasan/Kconfig"
 
 config ASAN
 	bool "ASAN: runtime memory debugger"
-	depends on HAVE_ARCH_ASAN
+	depends on SANDBOX
 	help
 	  Enables ASAN (AddressSANitizer) - runtime memory debugger,
 	  designed to find out-of-bounds accesses and use-after-free bugs.
 
+	  This is the hosted implementation for sandbox as opposed to
+	  KASAN, which is the bare-metal implementation.
+
 config COMPILE_TEST
 	bool "compile-test drivers of other platforms"
 	default n
-- 
2.39.5



