Delivery-date: Mon, 12 Aug 2024 16:42:42 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sdWFu-008t2k-2S
	for lore@lore.pengutronix.de;
	Mon, 12 Aug 2024 16:42:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sdWFu-0006Xq-60
	for lore@pengutronix.de; Mon, 12 Aug 2024 16:42:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BlmHumIw8VJFLFMnIOI73W8/ssqIIqvbpvkeKlXGfaQ=; b=fQaPHEgTCuHPZOunC3z1PJfr47
	8AL1KnK3iqLo2Ak5M/kIw2UNqZGQNRzSfnYh3g8GRCOhWGOsC4Xb+Yr7uAIuoklz+LMwEOirtcNin
	Ne995HrhPtuf25sS0xAutaBdHOErVz6EQS45++OKFGuFbN5ApePxnhs3pR4YmJEjkVxTeW0QA5K0Z
	7KJXeHu5ZFOE2dEp1A1lXMpb9eU/6kOKlY6wgSneiGHTPWHqT6CmbbJY1pixaGpDfc+IZ6vomTuZJ
	S7DnHpaY+8ufis5co5EQTQTLuEJMV9e1bMnX0j5yg2Sw4bHM+dATp51+9Nr5iZM3d0JShPaRkrhdJ
	TSMGJUrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdWFM-00000000cPx-0Kmo;
	Mon, 12 Aug 2024 14:42:08 +0000
Received: from smtpout35.security-mail.net ([85.31.212.35])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sdWFI-00000000cOK-3fjm
	for barebox@lists.infradead.org;
	Mon, 12 Aug 2024 14:42:06 +0000
Received: from localhost (fx305.security-mail.net [127.0.0.1])
	by fx305.security-mail.net (Postfix) with ESMTP id 534EF30F14A
	for <barebox@lists.infradead.org>; Mon, 12 Aug 2024 16:42:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalrayinc.com;
	s=sec-sig-email; t=1723473723;
	bh=Cq0RI7cBt70k3V9No+yNAgGqcu3/7sW83PXpBQulmUY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=HGRER9a3L1Cat+b7c3X/LolIm4ywjlOhLN/O+DUK8ULClpLxbVPPW6oRJsmd8Y6Vo
	 JShb5TcJ1WRS0hjAKbtZ+9hdBtCgronhdMToaQtIlypvV8x1ezIskD1EXcY35kDLe0
	 HZmXl17KfA2uH7Bai0wcwB1mDrHPu288tlU1DdVQ=
Received: from fx305 (fx305.security-mail.net [127.0.0.1]) by
 fx305.security-mail.net (Postfix) with ESMTP id E15FA30F0D8; Mon, 12 Aug
 2024 16:42:02 +0200 (CEST)
Received: from srvsmtp.lin.mbt.kalray.eu (unknown [217.181.231.53]) by
 fx305.security-mail.net (Postfix) with ESMTPS id AB86E30F0C1; Mon, 12 Aug
 2024 16:42:00 +0200 (CEST)
Received: from junon.lan.kalrayinc.com (unknown [192.168.37.161]) by
 srvsmtp.lin.mbt.kalray.eu (Postfix) with ESMTPS id 70340402CE; Mon, 12 Aug
 2024 16:42:00 +0200 (CEST)
X-Quarantine-ID: <ijtdyf1W1ZuS>
X-Secumail-id: <18341.66ba1f38.a6945.0>
From: Yann Sionneau <ysionneau@kalrayinc.com>
To: barebox@lists.infradead.org
Cc: jvetter@kalrayinc.com, jborne@kalrayinc.com, Yann Sionneau
 <ysionneau@kalrayinc.com>
Date: Mon, 12 Aug 2024 16:41:50 +0200
Message-ID: <20240812144150.27707-3-ysionneau@kalrayinc.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240812144150.27707-1-ysionneau@kalrayinc.com>
References: <20240812144150.27707-1-ysionneau@kalrayinc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain; charset=utf-8
X-ALTERMIMEV2_out: done
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240812_074205_070807_13A3B2E8 
X-CRM114-Status: UNSURE (   9.13  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 3/3] ci: add support for running basic tests on kvx arch
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Yann Sionneau <ysionneau@kalrayinc.com>
---
 .github/workflows/test-labgrid-pytest.yml |  4 ++++
 test/kvx/qemu@generic_defconfig.yaml      | 18 ++++++++++++++++++
 2 files changed, 22 insertions(+)
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
index 0000000000..bc15afb632
--- /dev/null
+++ b/test/kvx/qemu@generic_defconfig.yaml
@@ -0,0 +1,18 @@
+targets:
+  main:
+    drivers:
+      QEMUDriver:
+        qemu_bin: qemu-system-kvx
+        machine: mppa-coolidge
+        cpu: kv3-1
+        memory: 2G
+        kernel: barebox
+        extra_args: !template "-dtb $LG_BUILDDIR/arch/kvx/dts/qemu.dtb"
+      BareboxDriver:
+        prompt: 'barebox:/ '
+        bootstring: 'commandline:'
+      BareboxTestStrategy: {}
+images:
+  barebox: !template "$LG_BUILDDIR/barebox"
+imports:
+  -  ../strategy.py
-- 
2.34.1







