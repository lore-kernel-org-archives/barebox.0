Delivery-date: Wed, 10 Jun 2026 14:50:36 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wXIOC-004LEP-1I
	for lore@lore.pengutronix.de;
	Wed, 10 Jun 2026 14:50:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wXIOB-0003ls-Oa
	for lore@pengutronix.de; Wed, 10 Jun 2026 14:50:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=r+9R9QxYmkhrGTnj+Sn10PPqVkf3NAS9zeUMhPDKTn0=; b=YDEJ8te6LfKHayLJB41NyXFdWA
	zjQKoptnNIsu805pbao/Ea/x3Om2soKTF19NJXSLbwb2uaKDSJvFGx/7aimAfJdUhxMw6r/mEwVdO
	BYWpsIHn9TitZt9lrfFiGFwu4oC15p8Jnt1zDediXycZTDfVRaWRnkOM7a1QrElSQ4l+ilACCPKa5
	DyfoPMo/vAZ1BxovFLRalnN+Wqf4xbK6ZA9SVRz5Y3NQsabi3+6sa7h+HCk8x+Viph5M8SOyWe2MK
	uQebT6jIMxEn3ycKqdfzuSRnEwmfPnZsabaSPJ2E9kk96KJmk/jkpV2awxIh3KYOHkXM8g6t96UCU
	zzhHzylw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXIN2-00000007fOl-3808;
	Wed, 10 Jun 2026 12:49:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wXIMz-00000007fMl-0Kie
	for barebox@lists.infradead.org;
	Wed, 10 Jun 2026 12:49:23 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=localhost.localdomain)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wXIMw-0003Y6-RS; Wed, 10 Jun 2026 14:49:18 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: mtr@pengutronix.de,
	Ahmad Fatoum <a.fatoum@barebox.org>
Date: Wed, 10 Jun 2026 14:49:12 +0200
Message-ID: <20260610124916.2629105-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260610_054921_115420_73753A8E 
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH RFT] defaultenv: boot/devboot: add a devboot boot target
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Executing devboot without arguments instructs it to use
"$global.boot.default" and thus leaves no way to use devboot as default
boot target easily.

Address this by adding a new devboot boot target that internally uses
${global.boot.devboot_default} instead of the default
${global.boot.default}.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 Documentation/user/devboot.rst            | 11 +++++++++++
 defaultenv/defaultenv-2-base/boot/devboot | 10 ++++++++++
 2 files changed, 21 insertions(+)
 create mode 100755 defaultenv/defaultenv-2-base/boot/devboot

diff --git a/Documentation/user/devboot.rst b/Documentation/user/devboot.rst
index 550ab9120576..f8b2c8ec684e 100644
--- a/Documentation/user/devboot.rst
+++ b/Documentation/user/devboot.rst
@@ -200,6 +200,17 @@ script is loaded. Make them persistent with:
 ``global.hostname`` is typically derived from the device tree, but can be
 overridden.
 
+devboot boot target
+^^^^^^^^^^^^^^^^^^^
+
+Using the ``devboot`` boot target, the ``devboot`` script can be set
+as default boot target.  Example usage:
+
+.. code-block:: sh
+
+   nv boot.devboot_default=system0
+   nv boot.default=devboot
+
 Forwarding a remote build directory over the internet
 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
 
diff --git a/defaultenv/defaultenv-2-base/boot/devboot b/defaultenv/defaultenv-2-base/boot/devboot
new file mode 100755
index 000000000000..ec75cf2f274c
--- /dev/null
+++ b/defaultenv/defaultenv-2-base/boot/devboot
@@ -0,0 +1,10 @@
+#!/bin/sh
+
+if [ "${global.boot.devboot_default}" = "" ] ||
+   [ "${global.boot.devboot_default}" = "devboot" ] ||
+   [ "${global.boot.devboot_default}" = "/env/boot/devboot" ]; then
+    echo "Set global.boot.devboot_default to your eventual boot target!"
+    exit 1
+fi
+
+devboot "${global.boot.devboot_default}"
-- 
2.47.3



