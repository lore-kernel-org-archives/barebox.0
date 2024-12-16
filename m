Delivery-date: Mon, 16 Dec 2024 12:37:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tN9PV-008ntU-0r
	for lore@lore.pengutronix.de;
	Mon, 16 Dec 2024 12:37:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tN9PU-0003QD-Qs
	for lore@pengutronix.de; Mon, 16 Dec 2024 12:37:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HfYCjiiT90fuCO7bYaufp4mgsAC2qDTFJ0GwYPYPspM=; b=lSpZXW5TCgZ1X/BJwX+S2f5Ci0
	WWSWwnjffHXGkmRyJGWzy3kd5ZXlDy3lv7JlRai1DpdVlHYpyfZuctFo0c2Dp6Ov0wIgIBOaj5lW5
	1Af2L1HuOBfrCT19eTyW3pU083JWVJBrv6usUX95gTupKxkpR21Ok2qnlNyHPztYI7H5oLuTABd7/
	arkSz+6VsA4yocL8uPWckSDLkaYvLV6kZGIxndaPY85ZFGUp76XBLrcrgk+0Ba46JDf9v2xmLFrOd
	DtekUnImQKno+uJLiCn9P/MuBi6Q3T2ZSojqAPKELYEnxAOMJBzVEIGSc39plHfpnQd8tJuY8eVMt
	Mja2VMww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tN9P4-00000009r8w-1i48;
	Mon, 16 Dec 2024 11:36:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tN9P1-00000009r6j-0H4q
	for barebox@lists.infradead.org;
	Mon, 16 Dec 2024 11:36:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tN9Oz-0003AQ-Oq; Mon, 16 Dec 2024 12:36:41 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tN9Oy-003ghU-2Z;
	Mon, 16 Dec 2024 12:36:41 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tN9Oz-001hq4-1Z;
	Mon, 16 Dec 2024 12:36:41 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 16 Dec 2024 12:36:39 +0100
Message-Id: <20241216113640.403845-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241216113640.403845-1-a.fatoum@pengutronix.de>
References: <20241216113640.403845-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241216_033643_101512_88FD8D85 
X-CRM114-Status: GOOD (  10.34  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/4] sandbox: move CONFIG_ASAN to architecture Kconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

KASAN is the bare-metal AddressSanitizer, which we currently only
support on ARM. The hosted variant ASAN will only be supported for
sandbox, so it makes sense to move it out of common/Kconfig.debug
into the sandbox-specific Kconfig.debug.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/sandbox/Kconfig.debug | 10 +++++++++-
 common/Kconfig.debug       | 10 ----------
 2 files changed, 9 insertions(+), 11 deletions(-)

diff --git a/arch/sandbox/Kconfig.debug b/arch/sandbox/Kconfig.debug
index 295942fe3fd5..4a754e389964 100644
--- a/arch/sandbox/Kconfig.debug
+++ b/arch/sandbox/Kconfig.debug
@@ -1,2 +1,10 @@
 # SPDX-License-Identifier: GPL-2.0-only
-# dummy file, do not delete
+
+config ASAN
+	bool "ASAN: runtime memory debugger"
+	help
+	  Enables ASAN (AddressSANitizer) - runtime memory debugger,
+	  designed to find out-of-bounds accesses and use-after-free bugs.
+
+	  This is the hosted implementation for sandbox as opposed to
+	  KASAN, which is the bare-metal implementation.
diff --git a/common/Kconfig.debug b/common/Kconfig.debug
index c4d1313ef866..9c70555eb83c 100644
--- a/common/Kconfig.debug
+++ b/common/Kconfig.debug
@@ -124,16 +124,6 @@ config PRINTF_FULL
 source "lib/Kconfig.ubsan"
 source "lib/kasan/Kconfig"
 
-config ASAN
-	bool "ASAN: runtime memory debugger"
-	depends on SANDBOX
-	help
-	  Enables ASAN (AddressSANitizer) - runtime memory debugger,
-	  designed to find out-of-bounds accesses and use-after-free bugs.
-
-	  This is the hosted implementation for sandbox as opposed to
-	  KASAN, which is the bare-metal implementation.
-
 config COMPILE_TEST
 	bool "compile-test drivers of other platforms"
 	default n
-- 
2.39.5



