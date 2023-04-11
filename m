Delivery-date: Tue, 11 Apr 2023 09:16:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pm8FN-00HI8F-Gp
	for lore@lore.pengutronix.de; Tue, 11 Apr 2023 09:16:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pm8FD-0001i1-4y
	for lore@pengutronix.de; Tue, 11 Apr 2023 09:16:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cW0MqQJHAmeL26CPQzLT1+shHzoM2i95IRz22EQRlFE=; b=JVdOnVmZWnLCqz
	I2bOUf1vk4p0Qc3liK+uqNTdOoEBEQIqi1HJkPgsCdGcRUcxCtB4VOZwl8s56idhMBneAsSjZDqpz
	sSYsnSPYpr4oGMjt1Spv1v+66zCPwaRjx2LsFOX5m3dFY9ur0uya2BMccR677wIKM7Q6vPUW0daCc
	sgVElnCDqeo63yl5noNektoYKH2QzSPCWzDxErhQzk18X02LDKCO8j3aqjSo7To0iIcl5igBgr6Gm
	NTG2KyBH9KtTFhsWxA7BoykOSnwtrR6G9farmvQZd5KtvS5cKNai6LHhZWHKXzKbgtAjiMPHcur53
	t/HimA8FluxEXM/vPMAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pm8DP-00Gg3n-3D;
	Tue, 11 Apr 2023 07:14:56 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pm8DH-00GfxT-2Z
	for barebox@lists.infradead.org;
	Tue, 11 Apr 2023 07:14:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pm8DF-0000rx-3l; Tue, 11 Apr 2023 09:14:45 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pm8DE-00ARva-Bw; Tue, 11 Apr 2023 09:14:44 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pm8DB-006qNM-NI; Tue, 11 Apr 2023 09:14:41 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 11 Apr 2023 09:14:23 +0200
Message-Id: <20230411071436.1630752-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230411071436.1630752-1-a.fatoum@pengutronix.de>
References: <20230411071436.1630752-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230411_001447_831651_F8BB4431 
X-CRM114-Status: UNSURE (   9.80  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 01/14] test: riscv: fix YAMLs after defconfig rename
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

With the recent consolidation of 64-bit RISC-V defconfigs into
a single rv64i_defconfig, the YAMLs for QEMUs become outdated.
Sync them with the new naming.

Fixes: 42089e3f532b ("RISC-V: squash 64bit defconfigs into rv64i_defconfig")
Reported-by: Antony Pavlov <antonynpavlov@gmail.com>
Link: https://lore.barebox.org/barebox/20221022105554.c9bbe152814a3c7a682df735@gmail.com/
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 ...mu@virt64_defconfig.yaml => qemu-virt64@rv64i_defconfig.yaml} | 0
 test/riscv/rv64i_defconfig.yaml                                  | 1 +
 .../riscv/{sifive_defconfig.yaml => sifive@rv64i_defconfig.yaml} | 0
 ...inyemu@virt64_defconfig.yaml => tinyemu@rv64i_defconfig.yaml} | 0
 test/riscv/virt64_defconfig.yaml                                 | 1 -
 5 files changed, 1 insertion(+), 1 deletion(-)
 rename test/riscv/{qemu@virt64_defconfig.yaml => qemu-virt64@rv64i_defconfig.yaml} (100%)
 create mode 120000 test/riscv/rv64i_defconfig.yaml
 rename test/riscv/{sifive_defconfig.yaml => sifive@rv64i_defconfig.yaml} (100%)
 rename test/riscv/{tinyemu@virt64_defconfig.yaml => tinyemu@rv64i_defconfig.yaml} (100%)
 delete mode 120000 test/riscv/virt64_defconfig.yaml

diff --git a/test/riscv/qemu@virt64_defconfig.yaml b/test/riscv/qemu-virt64@rv64i_defconfig.yaml
similarity index 100%
rename from test/riscv/qemu@virt64_defconfig.yaml
rename to test/riscv/qemu-virt64@rv64i_defconfig.yaml
diff --git a/test/riscv/rv64i_defconfig.yaml b/test/riscv/rv64i_defconfig.yaml
new file mode 120000
index 000000000000..46080baed60d
--- /dev/null
+++ b/test/riscv/rv64i_defconfig.yaml
@@ -0,0 +1 @@
+qemu-virt64@rv64i_defconfig.yaml
\ No newline at end of file
diff --git a/test/riscv/sifive_defconfig.yaml b/test/riscv/sifive@rv64i_defconfig.yaml
similarity index 100%
rename from test/riscv/sifive_defconfig.yaml
rename to test/riscv/sifive@rv64i_defconfig.yaml
diff --git a/test/riscv/tinyemu@virt64_defconfig.yaml b/test/riscv/tinyemu@rv64i_defconfig.yaml
similarity index 100%
rename from test/riscv/tinyemu@virt64_defconfig.yaml
rename to test/riscv/tinyemu@rv64i_defconfig.yaml
diff --git a/test/riscv/virt64_defconfig.yaml b/test/riscv/virt64_defconfig.yaml
deleted file mode 120000
index ab419d5e7fb4..000000000000
--- a/test/riscv/virt64_defconfig.yaml
+++ /dev/null
@@ -1 +0,0 @@
-qemu@virt64_defconfig.yaml
\ No newline at end of file
-- 
2.39.2



