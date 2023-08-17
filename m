Delivery-date: Thu, 17 Aug 2023 09:41:01 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qWXcs-007fuu-Hg
	for lore@lore.pengutronix.de; Thu, 17 Aug 2023 09:41:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qWXcq-0006rD-5G
	for lore@pengutronix.de; Thu, 17 Aug 2023 09:41:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=P76ymsOO45mhNaYdyc12GbL03a6pUWBkHaCG87TPrP0=; b=aV5ymjPVhr7bbLCQ4VOE4zoPD6
	qmtK1ynoj8e5Y3yEaZf1TUjPCiNcRHs+a1wx/VwkLJAzEO96rDm2rNpIVUb6/nHXUYeRn4UaIaYmb
	x/IfN7EwwV/idEKV2r3OUUFpAP8ugnw/DYHx5KCj+2eAmvV5WfQre0G0vcaaUIZMY53cn+eJOvJQv
	v18W4qBgucXTLmrQtblX5OBP8g6FQpb69hpBOXePo+nyiUcoscLXnYsApEYSfXUKw1Dec2OAZs8jK
	J+AN56GqxcF1ZIM2Mq9tITbvI/cLch3JX4pX4AGHdFw/1nfCAL1N3iUzxZCIYIFKw+M7d7y9zetpd
	BcN53Mkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qWXbm-005jsT-2N;
	Thu, 17 Aug 2023 07:39:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qWXbg-005jrJ-1m
	for barebox@lists.infradead.org;
	Thu, 17 Aug 2023 07:39:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qWXbc-0006U4-KR; Thu, 17 Aug 2023 09:39:44 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qWXbb-001Dfa-Ud; Thu, 17 Aug 2023 09:39:43 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qWXbb-005I8Z-2I;
	Thu, 17 Aug 2023 09:39:43 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 17 Aug 2023 09:39:40 +0200
Message-Id: <20230817073941.1261154-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230817073941.1261154-1-a.fatoum@pengutronix.de>
References: <20230817073941.1261154-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230817_003948_604797_4FCC3FA9 
X-CRM114-Status: GOOD (  10.21  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 2/3] test: arm: make multi_v8_defconfig.yaml a symlink to virt@
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

multi_v8_defconfig builds images for Virt, ZynqMP, Rockchip and i.MX.
Convention is for unadorned Labgrid environment file to be a symlink to
a file with a more telling name.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/arm/multi_v8_defconfig.yaml      | 23 +----------------------
 test/arm/virt@multi_v8_defconfig.yaml | 22 ++++++++++++++++++++++
 2 files changed, 23 insertions(+), 22 deletions(-)
 mode change 100644 => 120000 test/arm/multi_v8_defconfig.yaml
 create mode 100644 test/arm/virt@multi_v8_defconfig.yaml

diff --git a/test/arm/multi_v8_defconfig.yaml b/test/arm/multi_v8_defconfig.yaml
deleted file mode 100644
index d8f8ab5cbff3..000000000000
--- a/test/arm/multi_v8_defconfig.yaml
+++ /dev/null
@@ -1,22 +0,0 @@
-targets:
-  main:
-    drivers:
-      QEMUDriver:
-        qemu_bin: qemu-system-aarch64
-        machine: virt,highmem=off
-        cpu: cortex-a57
-        memory: 1024M
-        kernel: barebox-dt-2nd.img
-        extra_args: ''
-      BareboxDriver:
-        prompt: 'barebox@[^:]+:[^ ]+ '
-        bootstring: 'commandline:'
-      BareboxTestStrategy: {}
-    features:
-      - virtio-mmio
-    runner:
-      tuxmake_arch: arm64
-images:
-  barebox-dt-2nd.img: !template "$LG_BUILDDIR/images/barebox-dt-2nd.img"
-imports:
-  -  ../strategy.py
diff --git a/test/arm/multi_v8_defconfig.yaml b/test/arm/multi_v8_defconfig.yaml
new file mode 120000
index 000000000000..cbf4d40e3f0a
--- /dev/null
+++ b/test/arm/multi_v8_defconfig.yaml
@@ -0,0 +1 @@
+virt@multi_v8_defconfig.yaml
\ No newline at end of file
diff --git a/test/arm/virt@multi_v8_defconfig.yaml b/test/arm/virt@multi_v8_defconfig.yaml
new file mode 100644
index 000000000000..d8f8ab5cbff3
--- /dev/null
+++ b/test/arm/virt@multi_v8_defconfig.yaml
@@ -0,0 +1,22 @@
+targets:
+  main:
+    drivers:
+      QEMUDriver:
+        qemu_bin: qemu-system-aarch64
+        machine: virt,highmem=off
+        cpu: cortex-a57
+        memory: 1024M
+        kernel: barebox-dt-2nd.img
+        extra_args: ''
+      BareboxDriver:
+        prompt: 'barebox@[^:]+:[^ ]+ '
+        bootstring: 'commandline:'
+      BareboxTestStrategy: {}
+    features:
+      - virtio-mmio
+    runner:
+      tuxmake_arch: arm64
+images:
+  barebox-dt-2nd.img: !template "$LG_BUILDDIR/images/barebox-dt-2nd.img"
+imports:
+  -  ../strategy.py
-- 
2.39.2



