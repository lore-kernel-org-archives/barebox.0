Delivery-date: Fri, 19 Dec 2025 11:39:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWXtB-00DAlR-1y
	for lore@lore.pengutronix.de;
	Fri, 19 Dec 2025 11:39:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWXsx-000772-0s
	for lore@pengutronix.de; Fri, 19 Dec 2025 11:39:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vx4iRdMM+645ZVxBgLu4AFCfMjW9YSBg5n+iSVlU2+E=; b=BCHFPxGEzEsuyt
	95POfERCxJgHJXVwcYiJlJE8c0tSlJpwbloGkYj9pfdaA4TuWuuchuzKNo3/6MoVPyb+VATy0od9+
	f1R/Ykpic7x5KC/n2zBPeyo3u2Dy8LmMDmxBk+l2qOwO/SpOl8t47swX6Iq5lNdTDFfqjrdx1UQD6
	uyrmOcae3i9bmrQT/hC6WTMR+8ScMm3chDcT3eLboCrjA1bqehj6eD5Rw2ZvimhYi/4VVJxj0zSHT
	jI45VkVh/SDbwHJR1ylk23WUBWBKvqQvWfQamldmsYr2cDAtQ6t6lB/yL1t6cIBW+h26/x5RDYOdk
	quM8/1K3WM+tsY9rOGyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXrj-0000000A78z-01c1;
	Fri, 19 Dec 2025 10:37:43 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXr4-0000000A6DF-3oIh
	for barebox@bombadil.infradead.org;
	Fri, 19 Dec 2025 10:37:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=vx4iRdMM+645ZVxBgLu4AFCfMjW9YSBg5n+iSVlU2+E=; b=Rke2/aFApqFqD48vSMXEznZnDP
	TItSEisiJzKap/2rtYxGDh2vTn8C0Gc6+5HQiw2yDjRBhE6yoSZxKXEwapNmDJ684Cb4fzWiKt+gr
	v1jWTq4yaF3AjxNYEvlhPhSUMMFqxK14XNmMWc2qsf7b0GQBm0nCqAJUIBq83OBXfs+Hc3VMajOkS
	BCOC4dw15Og31ueXNgWC1XZPnMvAQd6nS9rBlXNRbOAV7xLfIM912xrUY0I8ONuibWHu3hye6sdeJ
	mZjexMZc2KuKuJHepnwxZZ5EtQgJOGEmjr6JCXMJfTrJKnUrBuj/pcgr9ogJqCoST/oj9Xlnf0/uE
	troFXBCQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXr1-00000007RVv-07CX
	for barebox@lists.infradead.org;
	Fri, 19 Dec 2025 10:37:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXqs-0004gE-Al; Fri, 19 Dec 2025 11:36:50 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXqs-006RVp-0I;
	Fri, 19 Dec 2025 11:36:50 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXVi-0000000320L-1SRv;
	Fri, 19 Dec 2025 11:14:58 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 19 Dec 2025 10:21:16 +0100
Message-ID: <20251219101453.2806980-41-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251219101453.2806980-1-a.fatoum@pengutronix.de>
References: <20251219101453.2806980-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251219_103659_071235_634D9CAE 
X-CRM114-Status: UNSURE (   7.88  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2025.09.y 40/49] ARM: k3: make some firmware files SoC specific
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Sascha Hauer <s.hauer@pengutronix.de>

On AM625 SYSFWDATA and DMDATA are really SoC specific, so drop the
possibility to overwrite them per board.

On AM62L TFA, SYSFW, SYSFWDATA, INNERDATA and the signing key are really
SoC specific, so drop the possibility to overwrite them per board.

Link: https://lore.barebox.org/20251202-k3-deps-v1-2-68404d3b2c70@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
(cherry picked from commit e7189c9722ab64be703044d24d243a7bb7f1e4ad)
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 images/Makefile.k3 | 40 +++++++++++-----------------------------
 1 file changed, 11 insertions(+), 29 deletions(-)

diff --git a/images/Makefile.k3 b/images/Makefile.k3
index 190ada2c40f2..992d1557275c 100644
--- a/images/Makefile.k3
+++ b/images/Makefile.k3
@@ -34,8 +34,6 @@ INNERDATA_am625=$(FIRMWARE_DIR)/ti-linux-firmware/ti-sysfw/ti-fs-firmware-am62x-
 
 ## TI am625(sip)-SK ##
 SYSFW_start_am625_sk_r5.pblb.k3_am62x_img=$(SYSFW_am625_hs_fs)
-SYSFWDATA_start_am625_sk_r5.pblb.k3_am62x_img=$(SYSFWDATA_am625)
-DMDATA_start_am625_sk_r5.pblb.k3_am62x_img=$(DMDATA_am625)
 INNERDATA_start_am625_sk_r5.pblb.k3_am62x_img=$(INNERDATA_am625)
 KEY_start_am625_sk_r5.pblb.k3_am62x_img=$(KEY_custmpk)
 
@@ -44,8 +42,6 @@ FILE_barebox-am625-sk-r5.img = start_am625_sk_r5.pblb.k3_am62x_img
 image-$(CONFIG_MACH_AM625_SK) += barebox-am625-sk-r5.img
 
 SYSFW_start_am625sip_sk_r5.pblb.k3_am62x_img=$(SYSFW_am625_hs_fs)
-SYSFWDATA_start_am625sip_sk_r5.pblb.k3_am62x_img=$(SYSFWDATA_am625)
-DMDATA_start_am625sip_sk_r5.pblb.k3_am62x_img=$(DMDATA_am625)
 INNERDATA_start_am625sip_sk_r5.pblb.k3_am62x_img=$(INNERDATA_am625)
 KEY_start_am625sip_sk_r5.pblb.k3_am62x_img=$(KEY_custmpk)
 
@@ -55,8 +51,6 @@ image-$(CONFIG_MACH_AM625_SK) += barebox-am625sip-sk-r5.img
 
 ## BeaglePlay ##
 SYSFW_start_beagleplay_r5.pblb.k3_am62x_img=$(SYSFW_am625_gp)
-SYSFWDATA_start_beagleplay_r5.pblb.k3_am62x_img=$(SYSFWDATA_am625)
-DMDATA_start_beagleplay_r5.pblb.k3_am62x_img=$(DMDATA_am625)
 KEY_start_beagleplay_r5.pblb.k3_am62x_img=$(KEY_degenerate)
 
 pblb-$(CONFIG_MACH_BEAGLEPLAY) += start_beagleplay_r5
@@ -68,18 +62,10 @@ endif
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
@@ -96,37 +82,33 @@ quiet_cmd_k3_am62x_image = K3_am62x_IMG   $@
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



