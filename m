Delivery-date: Mon, 26 May 2025 16:39:02 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uJYyk-000Y7J-2A
	for lore@lore.pengutronix.de;
	Mon, 26 May 2025 16:39:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uJYyj-0000zk-Hi
	for lore@pengutronix.de; Mon, 26 May 2025 16:39:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lB1y2c+fbMVwHUAY03Qcz3YB6lwA9dDz0HlcUPGlOFc=; b=CbH2WkpVy2NdSeMhUETiwPYptC
	6b+EqKnBSsK143zaady3eJnv+50pXOfe/0dAw+hAGq1t/3ydoOJq2I8H7KT41K1v9EoxeciChtGTV
	Sk26ZdYnggNlp6LxHD/6XjmfzkDK0KwM6pIpD6Lv4XUr1pY/jKHlfgK7Nphd9zBQiJdMMweM9lVrB
	3ZKJHiJ+VZ2lBAaGR5ejGGul/5NltNTVVQ0oLidnFdznXRphIWFMUTA7pKVrd0rxR23EcJg1zl6JI
	L5wz03A89flmrkjtRlk1DbjDkMgrtV0iOuJptKPkJRIZgcnfLjnRsQBl4uMzaKjnnr1B+N/gjbnkO
	SMgc2tyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJYyF-000000092Nt-3AzG;
	Mon, 26 May 2025 14:38:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJYyA-000000092Jo-1T6H
	for barebox@lists.infradead.org;
	Mon, 26 May 2025 14:38:29 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1uJYy7-0000OJ-U4; Mon, 26 May 2025 16:38:23 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Mon, 26 May 2025 16:38:11 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250526-rk3588-optee-v1-5-5004995cbd03@pengutronix.de>
References: <20250526-rk3588-optee-v1-0-5004995cbd03@pengutronix.de>
In-Reply-To: <20250526-rk3588-optee-v1-0-5004995cbd03@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250526_073826_459277_D0CA4E72 
X-CRM114-Status: GOOD (  10.82  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 5/9] PBL: fdt: make minimum fdt size configurable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Adding or modifying nodes in the fdt may change the size of the fdt.
This needs some reserved space in the fdt to avoid overriding memory
that comes after the fdt and is already used.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 pbl/Kconfig          | 11 +++++++++++
 scripts/Makefile.lib |  2 ++
 2 files changed, 13 insertions(+)

diff --git a/pbl/Kconfig b/pbl/Kconfig
index 6e3581829d589c7b06ed878b09bf74e16a0c3086..489b2001a855d62e11a2159311332b0e67f3a754 100644
--- a/pbl/Kconfig
+++ b/pbl/Kconfig
@@ -60,6 +60,17 @@ config PBL_VERIFY_PIGGY
 config PBL_CLOCKSOURCE
 	bool
 
+config PBL_FDT_MIN_SIZE
+	hex
+	default 0x0
+	prompt "Minimum size of the FDT blob"
+	help
+	  The TF-A or OP-TEE may modify the FDT or add nodes to the FDT. This
+	  may increases the size of the device tree. This may override the
+	  barebox binary.
+
+	  The minimum size should be at least CFG_DTB_MAX_SIZE for OP-TEE.
+
 config BOARD_GENERIC_DT
 	bool
 	select LIBFDT
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index b10119797686ea31fe927d29a7849ad525c8c835..f50006f57200a76a86c7e29175dd7e35ab138e26 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -396,6 +396,8 @@ ifeq ($(CONFIG_OF_OVERLAY_LIVE), y)
 DTC_FLAGS.dtb += -@
 endif
 
+DTC_FLAGS.dtb += --space $(CONFIG_PBL_FDT_MIN_SIZE)
+
 DTC_FLAGS.dtbo += -Wno-avoid_default_addr_size -Wno-reg_format
 
 # Generate an assembly file to wrap the output of the device tree compiler

-- 
2.39.5



