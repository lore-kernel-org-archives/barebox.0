Delivery-date: Wed, 19 Mar 2025 17:08:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuvyB-001W2V-1T
	for lore@lore.pengutronix.de;
	Wed, 19 Mar 2025 17:08:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuvyA-0000Gj-BB
	for lore@pengutronix.de; Wed, 19 Mar 2025 17:08:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=7hIwp3SRhFhOr9Lf+Y7jhZ3PxH2B2awo7yQYJo32Cwg=; b=s2cCa0Px90ZVA3n+cwHN0MeA/h
	aCNCeyO5b6wJ5oftjlqpXv/TuTBmLp7p8xWocXkxUSihmqKHQ+QCBFkJd1HprN2dHAJ3YFVixmwoX
	sSvJx1seN63x6xbVE9l3gF4ZyvGlT+prmAxXQhaqwyLrRf9v6Qlw826yPTRhVNblYqOIoKxqVkEbB
	l8xmlfr3bC+l4ysi6QpeK3mlaFwQTYJRKWX/IX1UCC74ql7SqQ7vc5NXrCgDyeO0VqTOGzl1kUZDS
	5U7bhZ7wlRpZejaIDaZ2eGw5TGvKpUCrbwEsYA4S/Vv++Uc9P1/v7ApET0wiQOnNk/h+fahhXMjeJ
	9T4/fJjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuvxh-00000009Ugr-3DHn;
	Wed, 19 Mar 2025 16:08:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuvxe-00000009Uf4-0MEi
	for barebox@lists.infradead.org;
	Wed, 19 Mar 2025 16:08:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tuvxc-0008Uz-Kb; Wed, 19 Mar 2025 17:08:04 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tuvxc-000cZH-06;
	Wed, 19 Mar 2025 17:08:04 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tuvxc-008j38-1A;
	Wed, 19 Mar 2025 17:08:04 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 19 Mar 2025 17:08:01 +0100
Message-Id: <20250319160803.2079550-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250319_090806_120836_17D5F6DE 
X-CRM114-Status: UNSURE (   8.80  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 1/3] firmware: disable MISSING_FIRMWARE_ERROR for COMPILE_TEST builds
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

An allyes build will enable all options possible and thus usually fail
to build, because it enables CONFIG_MISSING_FIRMWARE_ERROR along with
DRIVER_NET_FSL_FMAN, which requires firmware to function at runtime.

Fix this by disabling MISSING_FIRMWARE_ERROR if COMPILE_TEST is enabled.
This works, because Kconfig encounters COMPILE_TEST first.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 firmware/Kconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/firmware/Kconfig b/firmware/Kconfig
index ba005976c5a1..9253bc14cb0c 100644
--- a/firmware/Kconfig
+++ b/firmware/Kconfig
@@ -9,6 +9,8 @@ config EXTRA_FIRMWARE_DIR
 config MISSING_FIRMWARE_ERROR
 	bool "Fail the build when required firmware is missing"
 	default y
+	# This prevents firmware errors from breaking allyesconfig builds
+	depends on !COMPILE_TEST
 	help
 	  In-tree Defconfigs that enable multiple boards with different firmware
 	  binary requirements would say y here, so you don't need unrelated firmware
-- 
2.39.5



