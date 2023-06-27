Delivery-date: Tue, 27 Jun 2023 07:54:05 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qE1eR-005QXz-6A
	for lore@lore.pengutronix.de; Tue, 27 Jun 2023 07:54:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qE1eN-0007mr-Rs
	for lore@pengutronix.de; Tue, 27 Jun 2023 07:54:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Nb9WQ1iNX7cBvkM8suAhDB+r/H29RqC7BMBlkgTpPTk=; b=HePeTTlNtk07HJ
	SffWTvcfJaI1nSQ7BMy6i+Rda5NOU31a731n52RRWgF9J6w2MwllkgFAFeVBrHneYjPviVTPueJ7I
	M8zAX7WAy/laqmPiuuSuohmi2hj+hr1Ig3tkztgzZ77ZF02I41+DKMx58E3t4kloJ0l7EShf2kyzH
	O6G812jVFZFJfvn5Cn5hbT8Scg8vHws3Tsm8k8tRe25OLicIX+cWPKM68q58KvkN/gThdHaw2NxPj
	3/PC+GmnUZMo9oV9H1K1cKterbo5ng5MC44+eK42uJEWb2GFwIhMYulO0dGAerNEa8X2aeZAeBR/2
	6aeqn6ATf7S4FiriR1AQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qE1dD-00ByJS-2a;
	Tue, 27 Jun 2023 05:52:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qE1d7-00ByEC-0A
	for barebox@lists.infradead.org;
	Tue, 27 Jun 2023 05:52:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qE1d4-0007Lz-BB; Tue, 27 Jun 2023 07:52:42 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qE1d3-00ANDM-Ke; Tue, 27 Jun 2023 07:52:41 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qE1d2-00GOsy-0z;
	Tue, 27 Jun 2023 07:52:40 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 27 Jun 2023 07:52:34 +0200
Message-Id: <20230627055239.3908872-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230627055239.3908872-1-a.fatoum@pengutronix.de>
References: <20230627055239.3908872-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230626_225245_085375_C56BB8E1 
X-CRM114-Status: GOOD (  10.95  )
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
Cc: uol@pengutronix.de, Ahmad Fatoum <a.fatoum@pengutronix.de>
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
Subject: [PATCH master v2 2/7] firmware: mark firmware used in PBL as pbl-only
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Failing early on finding firmware that is only needed in PBL is a bit
unfortunate as there may be other entry points that don't require it.

In preparation for adding the option to turn missing PBL firmware into
warnings, mark all PBL firmware specially.

No functional change intended.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 firmware/Makefile | 31 ++++++++++++++++---------------
 1 file changed, 16 insertions(+), 15 deletions(-)

diff --git a/firmware/Makefile b/firmware/Makefile
index 80c498994cce..ef99f617cab8 100644
--- a/firmware/Makefile
+++ b/firmware/Makefile
@@ -1,35 +1,35 @@
 # SPDX-License-Identifier: GPL-2.0
 
-firmware-$(CONFIG_FIRMWARE_IMX_LPDDR4_PMU_TRAIN) += \
+pbl-firmware-$(CONFIG_FIRMWARE_IMX_LPDDR4_PMU_TRAIN) += \
 	lpddr4_pmu_train_1d_dmem.bin \
 	lpddr4_pmu_train_1d_imem.bin \
 	lpddr4_pmu_train_2d_dmem.bin \
 	lpddr4_pmu_train_2d_imem.bin
 
-firmware-$(CONFIG_FIRMWARE_IMX_DDR4_PMU_TRAIN) += \
+pbl-firmware-$(CONFIG_FIRMWARE_IMX_DDR4_PMU_TRAIN) += \
 	ddr4_dmem_1d.bin \
 	ddr4_dmem_2d.bin \
 	ddr4_imem_1d.bin \
 	ddr4_imem_2d.bin
 
-firmware-$(CONFIG_FIRMWARE_IMX8MM_ATF) += imx8mm-bl31.bin$(if $(CONFIG_FIRMWARE_IMX8MM_OPTEE),-optee,)
-firmware-$(CONFIG_FIRMWARE_IMX8MN_ATF) += imx8mn-bl31.bin$(if $(CONFIG_FIRMWARE_IMX8MN_OPTEE),-optee,)
-firmware-$(CONFIG_FIRMWARE_IMX8MP_ATF) += imx8mp-bl31.bin$(if $(CONFIG_FIRMWARE_IMX8MP_OPTEE),-optee,)
-firmware-$(CONFIG_FIRMWARE_IMX8MQ_ATF) += imx8mq-bl31.bin
+pbl-firmware-$(CONFIG_FIRMWARE_IMX8MM_ATF) += imx8mm-bl31.bin$(if $(CONFIG_FIRMWARE_IMX8MM_OPTEE),-optee,)
+pbl-firmware-$(CONFIG_FIRMWARE_IMX8MN_ATF) += imx8mn-bl31.bin$(if $(CONFIG_FIRMWARE_IMX8MN_OPTEE),-optee,)
+pbl-firmware-$(CONFIG_FIRMWARE_IMX8MP_ATF) += imx8mp-bl31.bin$(if $(CONFIG_FIRMWARE_IMX8MP_OPTEE),-optee,)
+pbl-firmware-$(CONFIG_FIRMWARE_IMX8MQ_ATF) += imx8mq-bl31.bin
 fw-external-$(CONFIG_FIRMWARE_IMX8MM_OPTEE) += imx8mm-bl32.bin
 fw-external-$(CONFIG_FIRMWARE_IMX8MN_OPTEE) += imx8mn-bl32.bin
 fw-external-$(CONFIG_FIRMWARE_IMX8MP_OPTEE) += imx8mp-bl32.bin
-firmware-$(CONFIG_ARCH_RK3568) += rk3568-bl31.bin
-firmware-$(CONFIG_ARCH_RK3568_OPTEE) += rk3568-op-tee.bin
-firmware-$(CONFIG_ARCH_RK3588) += rk3588-bl31.bin
-firmware-$(CONFIG_ARCH_RK3588_OPTEE) += rk3588-op-tee.bin
-firmware-$(CONFIG_ARCH_RK3399) += rk3399-bl31.bin
-firmware-$(CONFIG_ARCH_RK3399_OPTEE) += rk3399-op-tee.bin
+pbl-firmware-$(CONFIG_ARCH_RK3568) += rk3568-bl31.bin
+pbl-firmware-$(CONFIG_ARCH_RK3568_OPTEE) += rk3568-op-tee.bin
+pbl-firmware-$(CONFIG_ARCH_RK3588) += rk3588-bl31.bin
+pbl-firmware-$(CONFIG_ARCH_RK3588_OPTEE) += rk3588-op-tee.bin
+pbl-firmware-$(CONFIG_ARCH_RK3399) += rk3399-bl31.bin
+pbl-firmware-$(CONFIG_ARCH_RK3399_OPTEE) += rk3399-op-tee.bin
 firmware-$(CONFIG_DRIVER_NET_FSL_FMAN) += fsl_fman_ucode_ls1046_r1.0_106_4_18.bin
 
 firmware-$(CONFIG_ARCH_LAYERSCAPE_PPA) += ppa-ls1046a.bin
 
-firmware-$(CONFIG_FIRMWARE_CCBV2_OPTEE) += ccbv2_optee.bin
+pbl-firmware-$(CONFIG_FIRMWARE_CCBV2_OPTEE) += ccbv2_optee.bin
 
 # Create $(fwdir) from $(CONFIG_EXTRA_FIRMWARE_DIR) -- if it doesn't have a
 # leading /, it's relative to $(srctree).
@@ -37,6 +37,7 @@ fwdir := $(subst $(quote),,$(CONFIG_EXTRA_FIRMWARE_DIR))
 fwdir := $(addprefix $(srctree)/,$(filter-out /%,$(fwdir)))$(filter /%,$(fwdir))
 fwobjdir := $(objtree)/firmware
 
+pbl-y     := $(addsuffix .gen.o, $(pbl-firmware-y))
 obj-pbl-y := $(addsuffix .gen.o, $(firmware-y))
 
 FWNAME    = $(patsubst $(obj)/%.extgen.S,%,$(patsubst $(obj)/%.gen.S,%,$@))
@@ -87,10 +88,10 @@ clean-files += *.sha.bin *.sum
 $(patsubst %.gen.o,$(obj)/%.gen.o, $(obj-pbl-y)): $(obj)/%.gen.o: $(fwdir)/%
 
 # The same for pbl:
-$(patsubst %.gen.o,$(obj)/%.gen.pbl.o, $(obj-pbl-y)): $(obj)/%.gen.pbl.o: $(fwdir)/%
+$(patsubst %.gen.o,$(obj)/%.gen.pbl.o, $(obj-pbl-y) $(pbl-y)): $(obj)/%.gen.pbl.o: $(fwdir)/%
 $(patsubst %.gen.o,$(obj)/%.extgen.pbl.o, $(pbl-y)): $(obj)/%.extgen.pbl.o: $(fwdir)/%
 
-pbl-y := $(addsuffix .extgen.o, $(fw-external-y))
+pbl-y += $(addsuffix .extgen.o, $(fw-external-y))
 
 targets := $(patsubst $(obj)/%,%, \
                                 $(shell find $(obj) -name \*.gen.S 2>/dev/null))
-- 
2.39.2



