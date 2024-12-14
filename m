Delivery-date: Sat, 14 Dec 2024 09:49:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tMNq3-007vtv-2N
	for lore@lore.pengutronix.de;
	Sat, 14 Dec 2024 09:49:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tMNq3-00013O-KZ
	for lore@pengutronix.de; Sat, 14 Dec 2024 09:49:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=pV6Q6Am+GAhLOBsUrsv4w1c1fVGsWcY8dLLL16WYF9g=; b=Fhs0VvQJhZzdGDwkUNt4uYbIpl
	WGxf+RaDtBtO6pqtM6IbOJbkmkowhjM8Jakx0eVkb1Qr3htQXNsWC4RoxKG2Tpiy/qEBSMF4hA2Iy
	XRb2wBIiA4DeO+g9SKSdk5D0ozMut9gJnh35dnglPMGz4SjXXPV+C/vyPGIuMSiE7W4E+ESEX74PB
	MXANCbaN0VfX16MMfXmEStFhnUTtTzUjatZWEKLsCsLIPqz/gIwp6gbtV53ibVQCtRD0qDviAT11m
	rm9NDFX5/1UZq6+/TAFo7bEWLTiFFZ4YPifZwDZdTVhZsVl+WWrazyOXBJpqAUUEcu1VOy41+8SNY
	EmxfIUrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tMNpJ-000000063BV-2kad;
	Sat, 14 Dec 2024 08:48:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tMNpG-000000063Ay-34w1
	for barebox@lists.infradead.org;
	Sat, 14 Dec 2024 08:48:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tMNpD-0000pI-Da; Sat, 14 Dec 2024 09:48:35 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tMNpC-003L01-1V;
	Sat, 14 Dec 2024 09:48:35 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tMNpD-0041Zf-0Q;
	Sat, 14 Dec 2024 09:48:35 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sat, 14 Dec 2024 09:48:34 +0100
Message-Id: <20241214084834.959213-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241214_004838_795503_63E2F6B9 
X-CRM114-Status: UNSURE (   9.97  )
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
Subject: [PATCH master] optee: fix i.MX8M link error when loading OP-TEE without CONFIG_TEE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

CONFIG_TEE is not required for barebox to load OP-TEE, just for
communicating with it.

The Kconfig option for OF_FIXUP_OPTEE, which guards a symbol that is
used by imx8_soc_imx8m_init() whenever CONFIG_PBL_OPTEE is defined is
made conditional on CONFIG_TEE though, leading to alink error whenever
CONFIG_TEE is undefined:

  ld: ./drivers/soc/imx/soc-imx8m.c:219: undefined reference to
      `of_optee_fixup'

Fix this by making the symbol not depend on CONFIG_TEE again.

Fixes: 56535d9cb0fc ("optee: make OP-TEE OF fixup ARM-specific")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/tee/Kconfig       | 4 ----
 drivers/tee/optee/Kconfig | 5 +++++
 2 files changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/tee/Kconfig b/drivers/tee/Kconfig
index 6644ebce49d5..aa15f5e9cfb7 100644
--- a/drivers/tee/Kconfig
+++ b/drivers/tee/Kconfig
@@ -10,8 +10,4 @@ menuconfig TEE
 	  secure co-processor etc. See also:
 	  https://en.wikipedia.org/wiki/Trusted_execution_environment
 
-if TEE
-
 source "drivers/tee/optee/Kconfig"
-
-endif
diff --git a/drivers/tee/optee/Kconfig b/drivers/tee/optee/Kconfig
index 179b7c2ba8f3..045be3cca4e5 100644
--- a/drivers/tee/optee/Kconfig
+++ b/drivers/tee/optee/Kconfig
@@ -1,5 +1,8 @@
 # SPDX-License-Identifier: GPL-2.0-only
 # OP-TEE Trusted Execution Environment Configuration
+
+if TEE
+
 config OPTEE
 	tristate "OP-TEE communication"
 	select HAVE_OPTEE
@@ -28,6 +31,8 @@ config OPTEE_DEVFS
 	  but it's useful for compiling libteeclient + optee_tests for
 	  use inside barebox to verify proper operation of CONFIG_OPTEE.
 
+endif
+
 config OF_FIXUP_OPTEE
 	def_bool y
 	depends on HAVE_OPTEE && ARM
-- 
2.39.5



