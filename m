Delivery-date: Wed, 28 May 2025 13:46:41 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKFF3-001Anr-1N
	for lore@lore.pengutronix.de;
	Wed, 28 May 2025 13:46:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKFF1-0002zu-DH
	for lore@pengutronix.de; Wed, 28 May 2025 13:46:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MWz/06w0ljKnRwdLx4WvFYCAdUGmZVTXviRUZ5jJpuI=; b=EOKSFiKTZeSMtL2Xk8iimIz89M
	V6H3nuHR37cfvbuUTKrTu4GwX6+ImFu/8J7UBx61iHVEi1Ic9nYzZhuU0wxT2X1chaPGz/Qz0Gh/A
	BYKK+SddTyZ96v0VTUafFGWGNs+j/++6AUNB9NL8tPDT1iGIt6qj37nZtJhBrVq01AmtyEA6y+rLd
	ZBwZZRdm41okLFFooup9uvj3AwgpkTxvheBGrUH8/DdohDDrRNhTTDXRZaAY5n3eCJFX+uDrqxOz4
	9gy0K0nDzQY46CTd3ihFPjUZ1inK1MMHhaAMIvym9y35BGR+tzwJV42/0UWOhybWJp31xe5Xdw1xi
	q4aZQE5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKFEB-0000000D0CF-1ytP;
	Wed, 28 May 2025 11:45:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKFE4-0000000D07g-0VD5
	for barebox@lists.infradead.org;
	Wed, 28 May 2025 11:45:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uKFE3-00021a-0a; Wed, 28 May 2025 13:45:39 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uKFE2-000a7I-20;
	Wed, 28 May 2025 13:45:38 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uKFE2-00CB0R-1X;
	Wed, 28 May 2025 13:45:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 28 May 2025 13:45:20 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250528-arm-k3-am62l-v1-8-3f88e6d10d99@pengutronix.de>
References: <20250528-arm-k3-am62l-v1-0-3f88e6d10d99@pengutronix.de>
In-Reply-To: <20250528-arm-k3-am62l-v1-0-3f88e6d10d99@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1748432738; l=3712;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=t0Awgz7X5fWJBfLjUDQgiFTVgszRcaMTtiau82rYiuA=;
 b=bYOaTzLKbtiVAyAWOH9N+NeprFsg6M98vZPaivO0ie832L3w+Pp5l6oFSo5rzDGDwmKqx1t0Z
 4QqiWZocZRlA05AgWTlJuIjqGTOuRhOUSB67kJhO7nao2ZlkcAWE8EL
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_044540_165833_A413A074 
X-CRM114-Status: GOOD (  10.46  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 08/31] ARM: k3: rename yaml files from am625 to am62x
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The yaml files for the board configuration are named 'am625', but they
seem to work on other am62x variants as well, so rename them.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-k3/Makefile                              | 18 +++++++++---------
 .../{board-cfg-am625.yaml => board-cfg-am62x.yaml}     |  0
 .../mach-k3/{pm-cfg-am625.yaml => pm-cfg-am62x.yaml}   |  0
 .../mach-k3/{rm-cfg-am625.yaml => rm-cfg-am62x.yaml}   |  0
 .../mach-k3/{sec-cfg-am625.yaml => sec-cfg-am62x.yaml} |  0
 images/Makefile.k3                                     |  4 ++--
 6 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/arch/arm/mach-k3/Makefile b/arch/arm/mach-k3/Makefile
index 050d12a32a6720170a007931fee8a621a0326dd2..b05d90da4b3ad468cdfcdcb286c004f5e9e72925 100644
--- a/arch/arm/mach-k3/Makefile
+++ b/arch/arm/mach-k3/Makefile
@@ -5,18 +5,18 @@ obj-pbl-$(CONFIG_MACH_K3_CORTEX_R5) += r5.o
 obj-pbl-y += ddrss.o
 obj-$(CONFIG_BAREBOX_UPDATE) += bbu.o
 
-extra-$(CONFIG_MACH_K3_CORTEX_R5) += combined-dm-cfg-am625.k3cfg combined-sysfw-cfg-am625.k3cfg
+extra-$(CONFIG_MACH_K3_CORTEX_R5) += combined-dm-cfg-am62x.k3cfg combined-sysfw-cfg-am62x.k3cfg
 
-$(obj)/combined-dm-cfg-am625.k3cfg: $(srctree)/arch/arm/mach-k3/schema.yaml \
-				    $(obj)/pm-cfg-am625.yaml \
-				    $(obj)/rm-cfg-am625.yaml \
+$(obj)/combined-dm-cfg-am62x.k3cfg: $(srctree)/arch/arm/mach-k3/schema.yaml \
+				    $(obj)/pm-cfg-am62x.yaml \
+				    $(obj)/rm-cfg-am62x.yaml \
 				    FORCE
 	$(call if_changed,k3_cfg)
 
-$(obj)/combined-sysfw-cfg-am625.k3cfg: $(srctree)/arch/arm/mach-k3/schema.yaml \
-				       $(obj)/board-cfg-am625.yaml \
-				       $(obj)/sec-cfg-am625.yaml \
-				       $(obj)/pm-cfg-am625.yaml \
-				       $(obj)/rm-cfg-am625.yaml \
+$(obj)/combined-sysfw-cfg-am62x.k3cfg: $(srctree)/arch/arm/mach-k3/schema.yaml \
+				       $(obj)/board-cfg-am62x.yaml \
+				       $(obj)/sec-cfg-am62x.yaml \
+				       $(obj)/pm-cfg-am62x.yaml \
+				       $(obj)/rm-cfg-am62x.yaml \
 				       FORCE
 	$(call if_changed,k3_cfg)
diff --git a/arch/arm/mach-k3/board-cfg-am625.yaml b/arch/arm/mach-k3/board-cfg-am62x.yaml
similarity index 100%
rename from arch/arm/mach-k3/board-cfg-am625.yaml
rename to arch/arm/mach-k3/board-cfg-am62x.yaml
diff --git a/arch/arm/mach-k3/pm-cfg-am625.yaml b/arch/arm/mach-k3/pm-cfg-am62x.yaml
similarity index 100%
rename from arch/arm/mach-k3/pm-cfg-am625.yaml
rename to arch/arm/mach-k3/pm-cfg-am62x.yaml
diff --git a/arch/arm/mach-k3/rm-cfg-am625.yaml b/arch/arm/mach-k3/rm-cfg-am62x.yaml
similarity index 100%
rename from arch/arm/mach-k3/rm-cfg-am625.yaml
rename to arch/arm/mach-k3/rm-cfg-am62x.yaml
diff --git a/arch/arm/mach-k3/sec-cfg-am625.yaml b/arch/arm/mach-k3/sec-cfg-am62x.yaml
similarity index 100%
rename from arch/arm/mach-k3/sec-cfg-am625.yaml
rename to arch/arm/mach-k3/sec-cfg-am62x.yaml
diff --git a/images/Makefile.k3 b/images/Makefile.k3
index e31a5cd2dcdd4fdbe62f3084092b641499e404ff..801ffe42ca221b53ca0221e75eaa089bdf07b2b7 100644
--- a/images/Makefile.k3
+++ b/images/Makefile.k3
@@ -19,8 +19,8 @@ endif
 
 ifdef CONFIG_MACH_K3_CORTEX_R5
 
-SYSFWDATA_am625=$(objtree)/arch/arm/mach-k3/combined-sysfw-cfg-am625.k3cfg
-DMDATA_am625=$(objtree)/arch/arm/mach-k3/combined-dm-cfg-am625.k3cfg
+SYSFWDATA_am625=$(objtree)/arch/arm/mach-k3/combined-sysfw-cfg-am62x.k3cfg
+DMDATA_am625=$(objtree)/arch/arm/mach-k3/combined-dm-cfg-am62x.k3cfg
 SYSFW_am625_hs_fs=$(FIRMWARE_DIR)/ti-fs-firmware-am62x-hs-fs-enc.bin
 SYSFW_am625_gp=$(FIRMWARE_DIR)/ti-fs-firmware-am62x-gp.bin
 INNERDATA_am625=$(FIRMWARE_DIR)/ti-fs-firmware-am62x-hs-fs-cert.bin

-- 
2.39.5



