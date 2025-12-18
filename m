Delivery-date: Thu, 18 Dec 2025 15:50:31 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWFKp-00CrYI-2W
	for lore@lore.pengutronix.de;
	Thu, 18 Dec 2025 15:50:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWFKp-0005Wd-4v
	for lore@pengutronix.de; Thu, 18 Dec 2025 15:50:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XEb/Vm3l8MQwZtH7x+fRzSws26Kxz565Uvbyn7fBfqk=; b=WlQfgeWBtPW0qMkO+G/yApqcBx
	k6inXWzMzcb80JepUMAHhAMn9oEvI6h7W/kmncYlWUupS8tk/eumCUQslpoPsAUh4UNRaW9JmS70U
	2mG25y2psKkpsTIaVdE1oVurtZU6XIin4hVznw0gM6uD9+6KTXmYi9v7ClJi58Xkmlp3Cv3+YL1gX
	aeUrFosbiqzmZpss6kFuR1158pTGsJPymXIlwPoyO8tQwGZGa7/TwYK6aJnTEv1el99hj7Em1HiLE
	rwztAVKYppJaHyDGAukzUjAX36LlkhNDKcNfCBOTNmp7vf749+klVTGpQqmtsXzBMsbvOZTr/b5YZ
	6sZ7xBvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWFKH-00000008dYk-0BfQ;
	Thu, 18 Dec 2025 14:49:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWFKD-00000008dWa-34Pd
	for barebox@lists.infradead.org;
	Thu, 18 Dec 2025 14:49:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWFKB-0005Ip-IM; Thu, 18 Dec 2025 15:49:51 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWFKB-006Icd-1B;
	Thu, 18 Dec 2025 15:49:51 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWFKB-0000000E9lv-17vu;
	Thu, 18 Dec 2025 15:49:51 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 18 Dec 2025 15:48:47 +0100
Message-ID: <20251218144950.3068179-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251218144950.3068179-1-a.fatoum@pengutronix.de>
References: <20251218144950.3068179-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251218_064953_767452_75FE2130 
X-CRM114-Status: GOOD (  10.44  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 4/4] test: arm: add Labgrid env YAML for multi_v8_efiloader_defconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For basic testing of the EFI loader support, add a Labgrid environment
capable of booting through barebox into Debian.

This is intentionally not wired into CI as I don't want to hit Debian
infra on every test run. Github Actions supports caching for that, but
until this is done, we expect the file to be manually downloaded from:

https://cloud.debian.org/images/cloud/trixie/latest/debian-13-nocloud-arm64.raw

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/arm/multi_v8_efiloader_defconfig.yaml | 33 ++++++++++++++++++++++
 1 file changed, 33 insertions(+)
 create mode 100644 test/arm/multi_v8_efiloader_defconfig.yaml

diff --git a/test/arm/multi_v8_efiloader_defconfig.yaml b/test/arm/multi_v8_efiloader_defconfig.yaml
new file mode 100644
index 000000000000..2aba23f3c0c1
--- /dev/null
+++ b/test/arm/multi_v8_efiloader_defconfig.yaml
@@ -0,0 +1,33 @@
+targets:
+  main:
+    drivers:
+      QEMUDriver:
+        qemu_bin: qemu-system-aarch64
+        machine: virt,highmem=off
+        cpu: cortex-a57
+        memory: 1024M
+        kernel: barebox-dt-2nd.img
+        display: qemu-default
+        extra_args: >
+          -drive if=virtio,format=raw,snapshot=on,file=debian-13-nocloud-arm64.raw
+          -device virtio-rng
+      BareboxDriver:
+        prompt: 'barebox@[^:]+:[^ ]+ '
+        autoboot: 'stop autoboot'
+        bootstring: 'commandline:|Starting EFI payload at'
+      ShellDriver:
+        prompt: '\x1b\[\?2004hroot@[^:]+:[^ ]+'
+        login_prompt: ' login: '
+        login_timeout: 300
+        await_login_timeout: 20
+        username: 'root'
+      BareboxTestStrategy: {}
+    features:
+      - virtio-mmio
+      - smbios
+      - bootable
+      - efi
+images:
+  barebox-dt-2nd.img: !template "$LG_BUILDDIR/images/barebox-dt-2nd.img"
+imports:
+  -  ../strategy.py
-- 
2.47.3



