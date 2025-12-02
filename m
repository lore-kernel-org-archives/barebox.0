Delivery-date: Tue, 02 Dec 2025 16:59:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQSmQ-007DFp-0P
	for lore@lore.pengutronix.de;
	Tue, 02 Dec 2025 16:59:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQSmP-0005RA-Ex
	for lore@pengutronix.de; Tue, 02 Dec 2025 16:59:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=scu+mi3Lr3JkkUPp4mTdaPwUFWfjJWm4UboS18NdCbY=; b=QUTkV2EmwdDwyE013RCcH1VboI
	4HBt575iH00rq4i7DW0tJiBmIjGMuhrgqGCH9kOOE3q/ewmg14AeaQek14UArTfS2g0f+yXDf7lw0
	ZXWb7GWbYJgNzbMGy31Dn52m3fFnVUiuNEpCp+Khb1g6BzZF0LSKXpcfMYoLcFtz3G/ZxclsmIM//
	Y7OksLCnqTaalK2RW9q8HMJywjjoFdRDfspbghP0gQWrbq297RF81xp6FCNVT2ahmU+JGjorzsYj5
	KtmRIN22KIO3dPu1LM0MCUuL/604Yu48Pri5U9RI1j+oKiY2OwP4UG69L3x5WzLdwcWsqfeGXamZL
	CBRI2JSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQSlr-00000005aMr-21hW;
	Tue, 02 Dec 2025 15:58:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQSln-00000005aKq-3YL0
	for barebox@lists.infradead.org;
	Tue, 02 Dec 2025 15:58:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQSlm-0005Bm-5J; Tue, 02 Dec 2025 16:58:26 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQSll-003dSx-2y;
	Tue, 02 Dec 2025 16:58:25 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQSll-00000006wsy-3ZmA;
	Tue, 02 Dec 2025 16:58:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 02 Dec 2025 16:58:26 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251202-k3-deps-v1-2-68404d3b2c70@pengutronix.de>
References: <20251202-k3-deps-v1-0-68404d3b2c70@pengutronix.de>
In-Reply-To: <20251202-k3-deps-v1-0-68404d3b2c70@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764691105; l=4878;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=u+E1pC4iyepCqE7E60fshogFNdq4KcUWH9jWh8jIhkk=;
 b=NPhsm91l5dlUpnh5X4PDURNdTlDukM/EqNJcgivnOrauHNmJ4VTVESS4nkYlQVN8CmV4k2Cvh
 lICyy/UEWltAyWOkBcbZRGaEtMEwb2x7yqfxq4X/KsTbY+VPWiUw+LL
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251202_075827_919854_9A067F9A 
X-CRM114-Status: UNSURE (   9.35  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/4] ARM: k3: make some firmware files SoC specific
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On AM625 SYSFWDATA and DMDATA are really SoC specific, so drop the
possibility to overwrite them per board.

On AM62L TFA, SYSFW, SYSFWDATA, INNERDATA and the signing key are really
SoC specific, so drop the possibility to overwrite them per board.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 images/Makefile.k3 | 40 +++++++++++-----------------------------
 1 file changed, 11 insertions(+), 29 deletions(-)

diff --git a/images/Makefile.k3 b/images/Makefile.k3
index 27ddb5d0b68ac6411165847f1fab18c38f48dc04..e0f79f1439f1340a09c09d236b5d7470caa4ad77 100644
--- a/images/Makefile.k3
+++ b/images/Makefile.k3
@@ -42,8 +42,6 @@ INNERDATA_am625=$(FIRMWARE_DIR)/ti-linux-firmware/ti-sysfw/ti-fs-firmware-am62x-
 
 ## TI am625(sip)-SK ##
 SYSFW_start_am625_sk_r5.pblb.k3_am62x_img=$(SYSFW_am625_hs_fs)
-SYSFWDATA_start_am625_sk_r5.pblb.k3_am62x_img=$(SYSFWDATA_am625)
-DMDATA_start_am625_sk_r5.pblb.k3_am62x_img=$(DMDATA_am625)
 INNERDATA_start_am625_sk_r5.pblb.k3_am62x_img=$(INNERDATA_am625)
 KEY_start_am625_sk_r5.pblb.k3_am62x_img=$(KEY_custmpk)
 
@@ -52,8 +50,6 @@ FILE_barebox-am625-sk-r5.img = start_am625_sk_r5.pblb.k3_am62x_img
 image-$(CONFIG_MACH_AM625_SK) += barebox-am625-sk-r5.img
 
 SYSFW_start_am625sip_sk_r5.pblb.k3_am62x_img=$(SYSFW_am625_hs_fs)
-SYSFWDATA_start_am625sip_sk_r5.pblb.k3_am62x_img=$(SYSFWDATA_am625)
-DMDATA_start_am625sip_sk_r5.pblb.k3_am62x_img=$(DMDATA_am625)
 INNERDATA_start_am625sip_sk_r5.pblb.k3_am62x_img=$(INNERDATA_am625)
 KEY_start_am625sip_sk_r5.pblb.k3_am62x_img=$(KEY_custmpk)
 
@@ -63,8 +59,6 @@ image-$(CONFIG_MACH_AM625_SK) += barebox-am625sip-sk-r5.img
 
 ## BeaglePlay ##
 SYSFW_start_beagleplay_r5.pblb.k3_am62x_img=$(SYSFW_am625_gp)
-SYSFWDATA_start_beagleplay_r5.pblb.k3_am62x_img=$(SYSFWDATA_am625)
-DMDATA_start_beagleplay_r5.pblb.k3_am62x_img=$(DMDATA_am625)
 KEY_start_beagleplay_r5.pblb.k3_am62x_img=$(KEY_degenerate)
 
 pblb-$(CONFIG_MACH_BEAGLEPLAY) += start_beagleplay_r5
@@ -76,18 +70,10 @@ endif
 SYSFWDATA_am62lx=$(objtree)/arch/arm/mach-k3/combined-sysfw-cfg-am62l.k3cfg
 SYSFW_am62lx_hs_fs=$(FIRMWARE_DIR)/ti-linux-firmware/ti-sysfw/ti-fs-firmware-am62lx-hs-enc.bin
 INNERDATA_am62lx=$(FIRMWARE_DIR)/ti-linux-firmware/ti-sysfw/ti-fs-firmware-am62lx-hs-cert.bin
+TFA_BL31_am62lx=$(FIRMWARE_DIR)/am62lx-bl31.bin
 
 ## TI am62lx-EVM ##
-SYSFW_start_am62lx_evm.pblb.k3_am62lx_img=$(SYSFW_am62lx_hs_fs)
-SYSFWDATA_start_am62lx_evm.pblb.k3_am62lx_img=$(SYSFWDATA_am62lx)
-TFA_start_am62lx_evm.pblb.k3_am62lx_img=$(FIRMWARE_DIR)/am62lx-bl31.bin
-INNERDATA_start_am62lx_evm.pblb.k3_am62lx_img=$(INNERDATA_am62lx)
-KEY_start_am62lx_evm.pblb.k3_am62lx_img=$(KEY_custmpk)
-
-SYSFW_start_am62lx_evm.pblb.k3_am62lx_tiboot3_img=$(SYSFW_am62lx_hs_fs)
-INNERDATA_start_am62lx_evm.pblb.k3_am62lx_tiboot3_img=$(INNERDATA_am62lx)
 TFA_BL1_start_am62lx_evm.pblb.k3_am62lx_tiboot3_img=$(FIRMWARE_DIR)/am62lx-bl1.bin
-KEY_start_am62lx_evm.pblb.k3_am62lx_tiboot3_img=$(KEY_custmpk)
 
 pblb-$(CONFIG_MACH_AM62LX_EVM) += start_am62lx_evm
 FILE_barebox-am62lx-evm.img = start_am62lx_evm.pblb.k3_am62lx_img
@@ -104,37 +90,33 @@ quiet_cmd_k3_am62x_image = K3_am62x_IMG   $@
 		$(srctree)/scripts/k3img					\
 			$<:1:16:0:43c00000					\
 			$(SYSFW_$(@F)):2:0:0:00040000				\
-			$(SYSFWDATA_$(@F)):18:0:0:00067000			\
+			$(SYSFWDATA_am625):18:0:0:00067000			\
 			$$inner							\
-			$(DMDATA_$(@F)):17:16:0:43c3a800			\
+			$(DMDATA_am625):17:16:0:43c3a800			\
 			--key "$(KEY_$(@F))" --out $@
 
 quiet_cmd_k3_am62lx_image = K3_am62lx_IMG   $@
       cmd_k3_am62lx_image = \
-		if [ -n "$(INNERDATA_$(@F))" ]; then				\
-			inner="$(INNERDATA_$(@F)):3:0:0:00000000";		\
-		fi;								\
-										\
 		if [ -e "$(FIRMWARE_DIR)/am62lx-bl32.bin" ]; then		\
 			optee=$(FIRMWARE_DIR)/am62lx-bl32.bin:17:16:0:80200000;	\
 		fi;								\
 										\
 		$(srctree)/scripts/k3img					\
-			$(TFA_$(@F)):1:16:0:80000000				\
-			$(SYSFW_$(@F)):2:0:0:00040000				\
-			$(SYSFWDATA_$(@F)):18:0:0:0006c000			\
-			$$inner							\
+			$(TFA_BL31_am62lx):1:16:0:80000000			\
+			$(SYSFW_am62lx_hs_fs):2:0:0:00040000			\
+			$(SYSFWDATA_am62lx):18:0:0:0006c000			\
+			$(INNERDATA_am62lx):3:0:0:00000000			\
 			$$optee							\
 			$<:17:16:0:82000000					\
-			--key "$(KEY_$(@F))" --out $@
+			--key "$(KEY_custmpk)" --out $@
 
 quiet_cmd_k3_am62lx_tiboot3_image = K3_am62lx_tiboot3_IMG   $@
       cmd_k3_am62lx_tiboot3_image = \
 		$(srctree)/scripts/k3img					\
 			$(TFA_BL1_$(@F)):1:16:160:70800000			\
-			$(SYSFW_$(@F)):2:0:0:00040000				\
-			$(INNERDATA_$(@F)):3:0:0:00000000			\
-			--key "$(KEY_$(@F))"					\
+			$(SYSFW_am62lx_hs_fs):2:0:0:00040000			\
+			$(INNERDATA_am62lx):3:0:0:00000000			\
+			--key "$(KEY_custmpk)"					\
 			--out $@
 
 $(obj)/%.k3_am62x_img: $(obj)/% scripts/k3img FORCE

-- 
2.47.3



