Delivery-date: Tue, 13 Aug 2024 14:45:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sdqu7-009CGK-0i
	for lore@lore.pengutronix.de;
	Tue, 13 Aug 2024 14:45:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sdqu6-0004FQ-IE
	for lore@pengutronix.de; Tue, 13 Aug 2024 14:45:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VaemaDfaasvmX9w0kJDXiZgEE9GxgVhH6t9B2Skxfv0=; b=idH9s1DreyxafJ1H198N96ilub
	0GrfELKouJiZVoAdFnaObZOTO4ExJ0rzPD6rd2AO9vLgxEbx/Ec+EDn/63fdswDxRsO8co9WVFJGy
	z9X5GcSDXpn2RsC0GpwuMtVYHFGeXqtseIvNelbFL1EXGyQjnFD0TpUzfD7/k4Vf50KDqBYppqvKC
	xmg5u1fCXWZGZwaGM8HgNsAuMbUSnietaiPtmGKxyPkjMMh9kBVrHRSz36KBJCooi07IRUvqo9UKO
	ZKavTU6WDldYhuffJykae+VnSofdZdHIqFD8rONbd2FoRZcIIeGcieeblXVmoZbzvxvz8OkKkfsfR
	CMiyplEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdqtS-00000003kD4-31G1;
	Tue, 13 Aug 2024 12:44:55 +0000
Received: from smtpout43.security-mail.net ([85.31.212.43])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdqtL-00000003k8O-15UM
	for barebox@lists.infradead.org;
	Tue, 13 Aug 2024 12:44:51 +0000
Received: from localhost (fx303.security-mail.net [127.0.0.1])
	by fx303.security-mail.net (Postfix) with ESMTP id E3CCF30F255
	for <barebox@lists.infradead.org>; Tue, 13 Aug 2024 14:44:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalrayinc.com;
	s=sec-sig-email; t=1723553082;
	bh=0oln/USqoGZklSelAELCKrNVRLIni1qO8UT7uANpQWg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=W5N7SMNlXq8onij3w+1TuzFd3LzP+rR2STLCXrUpLP48ygdYvTtIZ39hUD8MUvzXs
	 7cqm89UUEn5j5R2IZLA+bxQUdVnDDU2MjvsV6QkI/NdhplgQQwvsT3zZp8NpWbh08C
	 ZX1jTYHbokecd16u3X/6wTDtcYFR1kJpKs3YfAgM=
Received: from fx303 (fx303.security-mail.net [127.0.0.1]) by
 fx303.security-mail.net (Postfix) with ESMTP id A267B30F02A; Tue, 13 Aug
 2024 14:44:42 +0200 (CEST)
Received: from srvsmtp.lin.mbt.kalray.eu (unknown [217.181.231.53]) by
 fx303.security-mail.net (Postfix) with ESMTPS id 0182530ED08; Tue, 13 Aug
 2024 14:44:41 +0200 (CEST)
Received: from junon.lan.kalrayinc.com (unknown [192.168.37.161]) by
 srvsmtp.lin.mbt.kalray.eu (Postfix) with ESMTPS id B977E40349; Tue, 13 Aug
 2024 14:44:41 +0200 (CEST)
X-Quarantine-ID: <mi5dJcHiKLIw>
X-Secumail-id: <8219.66bb5539.f2d89.0>
From: Yann Sionneau <ysionneau@kalrayinc.com>
To: barebox@lists.infradead.org
Cc: jvetter@kalrayinc.com, jborne@kalrayinc.com, Yann Sionneau
 <ysionneau@kalrayinc.com>
Date: Tue, 13 Aug 2024 14:44:08 +0200
Message-ID: <20240813124408.2569-3-ysionneau@kalrayinc.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240813124408.2569-1-ysionneau@kalrayinc.com>
References: <20240813124408.2569-1-ysionneau@kalrayinc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset=utf-8
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240813_054448_047605_3CCDABC0 
X-CRM114-Status: GOOD (  10.31  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 3/3] ci: add support for running basic tests on kvx arch
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add support for running tests on qemu for kvx port of Barebox.

Signed-off-by: Yann Sionneau <ysionneau@kalrayinc.com>
---
v1 -> v2:
  - use `dtb` key in kvx test yaml config instead of extra_args
  - add `-semihosting` as extra qemu arg to make qemu exit properly upon executing "scall 0xfff" from poweroff driver.

 .github/workflows/test-labgrid-pytest.yml |  4 ++++
 test/kvx/qemu@generic_defconfig.yaml      | 20 ++++++++++++++++++++
 2 files changed, 24 insertions(+)
 create mode 100644 test/kvx/qemu@generic_defconfig.yaml

diff --git a/.github/workflows/test-labgrid-pytest.yml b/.github/workflows/test-labgrid-pytest.yml
index 2e038e371f..f4ef1b3a00 100644
--- a/.github/workflows/test-labgrid-pytest.yml
+++ b/.github/workflows/test-labgrid-pytest.yml
@@ -23,6 +23,10 @@ jobs:
             lgenv: test/arm/multi_v8_defconfig.yaml
             defconfig: multi_v8_defconfig
 
+          - ARCH: kvx
+            lgenv: test/kvx/qemu@generic_defconfig.yaml
+            defconfig: generic_defconfig
+
           - ARCH: mips
             lgenv: test/mips/qemu-malta_defconfig.yaml
             defconfig: qemu-malta_defconfig
diff --git a/test/kvx/qemu@generic_defconfig.yaml b/test/kvx/qemu@generic_defconfig.yaml
new file mode 100644
index 0000000000..97f5d8689a
--- /dev/null
+++ b/test/kvx/qemu@generic_defconfig.yaml
@@ -0,0 +1,20 @@
+targets:
+  main:
+    drivers:
+      QEMUDriver:
+        qemu_bin: qemu-system-kvx
+        machine: mppa-coolidge
+        cpu: kv3-1
+        memory: 2G
+        kernel: barebox
+        extra_args: '-semihosting'
+        dtb: qemu.dtb
+      BareboxDriver:
+        prompt: 'barebox:/ '
+        bootstring: 'commandline:'
+      BareboxTestStrategy: {}
+images:
+  barebox: !template "$LG_BUILDDIR/barebox"
+  qemu.dtb: !template "$LG_BUILDDIR/arch/kvx/dts/qemu.dtb"
+imports:
+  -  ../strategy.py
-- 
2.34.1







