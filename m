Delivery-date: Mon, 05 Jun 2023 08:37:37 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q63qU-00BSGB-QN
	for lore@lore.pengutronix.de; Mon, 05 Jun 2023 08:37:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q63qR-0004CG-Uw
	for lore@pengutronix.de; Mon, 05 Jun 2023 08:37:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=K3hlZS5YYFzbDrmWGrP7fl16jDZFKdPlxVnZZVt/TV4=; b=SRdjxC+ITwNaMwh1fbaG7B9ll3
	sp88/qGXEwjShoCwvYVmpBEFvPQP+WjB7MHGyhHWE0GR0b/Qcxq+Xc6p4FUQ09TWaShPMJM4pxETa
	Ja/SDitbOf+I+F9cnXdbN+JxJmUGQU0sh1MtCS8a/K0Xp9K9ajWDsw7JgUOG5frs6ftbLJdWkYXMP
	YqFy1k7K1JcSWRwera+sEHD8ZTUAlOXYuOEDUt+lHr1y/RnxKGTvsFfIoGTXyJoej0rgaaw1XX0RC
	nDqZ3QSLcp0pXIMncRJ46y5BPz2St/W6GpcGGf4+LVCQZRbtFSLQUOgkUYOzesFvkU0R2xtNiKeYP
	aojf5irw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q63pU-00END1-0A;
	Mon, 05 Jun 2023 06:36:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q63pO-00EN7j-0g
	for barebox@lists.infradead.org;
	Mon, 05 Jun 2023 06:36:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q63pN-0003W5-0i; Mon, 05 Jun 2023 08:36:29 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q63pM-005CtN-9z; Mon, 05 Jun 2023 08:36:28 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q63pK-005pRC-Gw; Mon, 05 Jun 2023 08:36:26 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Jun 2023 08:36:22 +0200
Message-Id: <20230605063623.1254764-13-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230605063623.1254764-1-a.fatoum@pengutronix.de>
References: <20230605063623.1254764-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230604_233630_243461_F014B977 
X-CRM114-Status: UNSURE (   9.20  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 13/14] test: labgrid-env: rv64i: use QEmu built-in openSBI
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We have some magic "runner:" keys in our labgrid env YAMLs to paper over
quirks, like that Qemu v5.2.0 depends on OpenSBI 32-bit firmware for
Qemu Virt, but doesn't ship it.

Now that we have a blessed test/Containerfile, we should adopt that as
baseline and drop all quirks that are not needed for that system.

Qemu v5.2.0 in Debian bullseye still doesn't ship OpenSBI 32-bit
firmware, but it ships the 64-bit one, so there's no need to download
the latter.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 test/riscv/qemu-virt64@rv64i_defconfig.yaml | 5 -----
 test/riscv/sifive@rv64i_defconfig.yaml      | 5 -----
 2 files changed, 10 deletions(-)

diff --git a/test/riscv/qemu-virt64@rv64i_defconfig.yaml b/test/riscv/qemu-virt64@rv64i_defconfig.yaml
index fefbd20e5c99..ee121f153619 100644
--- a/test/riscv/qemu-virt64@rv64i_defconfig.yaml
+++ b/test/riscv/qemu-virt64@rv64i_defconfig.yaml
@@ -7,7 +7,6 @@ targets:
         cpu: rv64
         memory: 256M
         kernel: barebox-dt-2nd.img
-        bios: opensbi-riscv64-generic-fw_dynamic.bin
         extra_args: ''
       BareboxDriver:
         prompt: 'barebox@[^:]+:[^ ]+ '
@@ -15,12 +14,8 @@ targets:
       BareboxTestStrategy: {}
     features:
       - virtio-mmio
-    runner:
-      download:
-        opensbi-riscv64-generic-fw_dynamic.bin: https://github.com/qemu/qemu/blob/v5.2.0/pc-bios/opensbi-riscv64-generic-fw_dynamic.bin?raw=true
 images:
   barebox-dt-2nd.img: !template "$LG_BUILDDIR/images/barebox-dt-2nd.img"
-  opensbi-riscv64-generic-fw_dynamic.bin: !template "$LG_BUILDDIR/opensbi-riscv64-generic-fw_dynamic.bin"
 tools:
   qemu: /usr/bin/qemu-system-riscv64
 imports:
diff --git a/test/riscv/sifive@rv64i_defconfig.yaml b/test/riscv/sifive@rv64i_defconfig.yaml
index f7299453a499..303f96299766 100644
--- a/test/riscv/sifive@rv64i_defconfig.yaml
+++ b/test/riscv/sifive@rv64i_defconfig.yaml
@@ -7,18 +7,13 @@ targets:
         cpu: sifive-u54
         memory: 256M
         kernel: barebox-hifive-unleashed.img
-        bios: opensbi-riscv64-generic-fw_dynamic.bin
         extra_args: ''
       BareboxDriver:
         prompt: 'barebox@[^:]+:[^ ]+ '
         bootstring: 'commandline:'
       BareboxTestStrategy: {}
-    runner:
-      download:
-        opensbi-riscv64-generic-fw_dynamic.bin: https://github.com/qemu/qemu/blob/v5.2.0/pc-bios/opensbi-riscv64-generic-fw_dynamic.bin?raw=true
 images:
   barebox-hifive-unleashed.img: !template "$LG_BUILDDIR/images/barebox-hifive-unleashed.img"
-  opensbi-riscv64-generic-fw_dynamic.bin: !template "$LG_BUILDDIR/opensbi-riscv64-generic-fw_dynamic.bin"
 tools:
   qemu: /usr/bin/qemu-system-riscv64
 imports:
-- 
2.39.2



