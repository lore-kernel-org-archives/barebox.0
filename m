Delivery-date: Tue, 11 Jun 2024 08:58:45 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGvSv-0046zE-13
	for lore@lore.pengutronix.de;
	Tue, 11 Jun 2024 08:58:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sGvSu-0005kR-OO
	for lore@pengutronix.de; Tue, 11 Jun 2024 08:58:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZSXac4EQGYbrRv84sDogF9ysiIhwc0oFdYdbmrNUNjg=; b=QLDIDtjv3TTyIUtvfW4ZMGH29O
	PngeclLnIAZhuSnDeD3zqx0AQ5WCt35ycqukvqmHyvxTsBzDMoCJ4up/55e1RnXRk16dNiXvEAghP
	wlxXhM98XgTo+GpWJqMIshzbA7tdBV5JGYwIKSGJ7wAqwMnTY6GK4WvLKTIBrnNnloy/cGw9KM99T
	D1/pTwTntNJEUUSITRnDKSEdWzZ4QwSoedUHb1cuX/j0XH4uoPAD0I2n6RgmzKFZbAI3ofUxbxCFJ
	L4/yVzNxSPOpTbim4MgXGo3pzbt0pzpbPcKFyHlTGRSYAttBslv5csiKBu6BOVWde21VtcYazK6qq
	ccZKh1MQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGvST-00000007mUH-21x4;
	Tue, 11 Jun 2024 06:58:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sGvSP-00000007mSL-2eZ3
	for barebox@lists.infradead.org;
	Tue, 11 Jun 2024 06:58:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sGvSO-0005Y1-C5; Tue, 11 Jun 2024 08:58:12 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sGvSN-001UCy-SY; Tue, 11 Jun 2024 08:58:11 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sGvSN-00CAQx-2a;
	Tue, 11 Jun 2024 08:58:11 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 11 Jun 2024 08:58:11 +0200
Message-Id: <20240611065811.2900029-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240611065811.2900029-1-a.fatoum@pengutronix.de>
References: <20240611065811.2900029-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240610_235813_786049_5907E12F 
X-CRM114-Status: GOOD (  12.26  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/2] test: arm: describe Qemu Raspberry Pi 3b labgrid environment
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The Raspberry Pi 3b has multiple non-secure UARTs, which can be useful
for debugging.

The existing Qemu ARM64 Virt platform can already gain multiple UARTs
via virtio, but PL011/8250 UARTs may be easier to use from secure monitors
or EFI runtime services.

The second console can be connected to with:

  microcom -t localhost:2302

But requires the Bluetooth serdev node to be removed manually for now.

All tests run successfully, but the default heartbeat throws errors,
presumably, because the VideoCore firmware used with Qemu doesn't
implement GPIO control as expected by the gpio-raspberrypi-exp driver
used for heartbeat. This doesn't bother us in CI and can be solved
later on though.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/arm/qemu-raspi3b@multi_v8_defconfig.yaml | 20 +++++++++++++++++++
 1 file changed, 20 insertions(+)
 create mode 100644 test/arm/qemu-raspi3b@multi_v8_defconfig.yaml

diff --git a/test/arm/qemu-raspi3b@multi_v8_defconfig.yaml b/test/arm/qemu-raspi3b@multi_v8_defconfig.yaml
new file mode 100644
index 000000000000..4f591ba21596
--- /dev/null
+++ b/test/arm/qemu-raspi3b@multi_v8_defconfig.yaml
@@ -0,0 +1,20 @@
+targets:
+  main:
+    drivers:
+      QEMUDriver:
+        qemu_bin: qemu-system-aarch64
+        machine: raspi3b
+        cpu: cortex-a53
+        memory: 1G
+        kernel: barebox-raspberry-pi.img
+        extra_args: "\
+          -serial chardev:serial2 \
+          -chardev socket,id=serial2,host=localhost,port=2302,nodelay=on,server=on,wait=off"
+      BareboxDriver:
+        prompt: 'barebox@[^:]+:[^ ]+ '
+        bootstring: 'commandline:'
+      BareboxTestStrategy: {}
+images:
+  barebox-raspberry-pi.img: !template "$LG_BUILDDIR/images/barebox-raspberry-pi.img"
+imports:
+  -  ../strategy.py
-- 
2.39.2



