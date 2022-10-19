Delivery-date: Wed, 19 Oct 2022 15:55:04 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ol9XF-000l1Z-PB
	for lore@lore.pengutronix.de; Wed, 19 Oct 2022 15:55:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ol9XC-0003vW-U4
	for lore@pengutronix.de; Wed, 19 Oct 2022 15:55:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=fuu8e/E1nsEkZZMTdZ/5pRbJsh0VzbhFK4scRfpVREc=; b=IUlkbmiEC41C4LnApwkVz+wG0u
	yz2CfHR8klOZ0Qi9k75akINV0YMdn9mavmCcSIuEcMzZjeN1QUbyrByEt/mkYNPkNPiZ4onibDZLn
	SnU3hdKBqk9c0nLmSNHucNyaLkO2tI8kx2kMBmFZHdFy+rtwvIosYBMkbwEhzpQnQ6NsULlXsd89F
	9CTsRZCWSnHIk1qTMBHhJKyrsNxPdsILq9OaJ02fkO4EIJFLL/fsix0IkC6TautIa1Kz8b2Y/Qt1j
	8c4TGaFR0vttFthV2xM7YhEeuctbaBJJIp0B3RlZQn//4j2SL8nPOyHfLEHB3XcCAw0V7ySvYjxE/
	2sRTPKUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ol9Vm-002LfC-0C; Wed, 19 Oct 2022 13:53:34 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ol9Vd-002LcS-UA
	for barebox@lists.infradead.org; Wed, 19 Oct 2022 13:53:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1ol9Vc-0003cV-HC; Wed, 19 Oct 2022 15:53:24 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ol9Vb-0008Ec-Qu; Wed, 19 Oct 2022 15:53:23 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1ol9Vb-009akZ-0H; Wed, 19 Oct 2022 15:53:23 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 19 Oct 2022 15:53:22 +0200
Message-Id: <20221019135322.2283270-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221019_065325_992403_0391D438 
X-CRM114-Status: GOOD (  10.05  )
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
Subject: [PATCH master v2] Kbuild: disable ARM64 pointer authentication
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The aarch64 cross-compiler built with Yocto's kirkstone release
configures -mbranch-protection=standard as default.

The resulting PACIASP/AUTIASP instructions are interpreted as NOPs by
existing CPUs, but they increase image size and misalign the barebox
header in ENTRY_FUNCTION(). Also on ARMv8.3+, where they serve a
purpose, we wouldn't benefit from them as we don't setup any pointer
authentication keys. Thus disable it.

The misaligned barebox header caused is_barebox_arm_head to fail,
breaking all code that verified barebox' header, like i.MX8MM
imx-usb-loader barebox-side support and barebox_update for
some ARM64 SoCs without a SoC-specific header.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
This is a workaround. ENTRY_FUNCTION() should be rewritten for ARM64,
so we don't expect function prologue to be exactly two bytes long.
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

v1 -> v2:
  - revised commit message after understanding ramification better.
---
 Makefile | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Makefile b/Makefile
index 98da09f18523..3737265316e9 100644
--- a/Makefile
+++ b/Makefile
@@ -659,6 +659,11 @@ KBUILD_CFLAGS  += $(call cc-option,-fno-stack-check)
 # Platforms that have their setjmp appropriately implemented may override this
 KBUILD_CFLAGS += $(call cc-option,-fcf-protection=none)
 
+# We don't have the necessary infrastructure to benefit from ARMv8.3+ pointer
+# authentication. On older CPUs, they are interpreted as NOPs and blot the
+# code and break less portable code that expects a very specific code layout
+KBUILD_CFLAGS += $(call cc-option,-mbranch-protection=none)
+
 KBUILD_CFLAGS   += $(call cc-disable-warning, address-of-packed-member)
 
 # Align the bit size of userspace programs with the kernel
-- 
2.30.2



