Delivery-date: Wed, 28 May 2025 13:46:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKFF8-001Aok-1k
	for lore@lore.pengutronix.de;
	Wed, 28 May 2025 13:46:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKFF7-00034W-Km
	for lore@pengutronix.de; Wed, 28 May 2025 13:46:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GjMuYv0gqJVsDOb7EOprSYpLYI58hJW3bYY+nPPzQKI=; b=eCEIHCYSBMj1q8aKaX4Y+SVe5D
	H2WE39gXTo80nXv2TsUbZNp/lC19TtfAbEdyrMo9znm3KINmLZw9c7WvKTNCdju/NMBD/8MyjfJkA
	ZWEb5nv4IEl5nY8//Ki8aWD+iF59zUN1xQLoQMDVcyY/di/uvzR0OR5Ng554f8bznQjkr4hC5chVL
	SKvXmxPlT/M+ryfJwtxLBMYn5t6qN7OaJ94rA0CIiMlLtAJcj0ShReJZz4jLPOu969OIBx9ZO4EAZ
	GcZkuepQmPyaRMR6Z2N8AXZ4lv3SeyNwxqtTvRERtJhRC7j/rSuXiWgxRNcT4r3meWHGDFE+q7IXG
	JZql6BHg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKFEA-0000000D0BL-1bIG;
	Wed, 28 May 2025 11:45:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKFE4-0000000D07a-0LYe
	for barebox@lists.infradead.org;
	Wed, 28 May 2025 11:45:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uKFE2-00021U-PE; Wed, 28 May 2025 13:45:38 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uKFE2-000a7E-1l;
	Wed, 28 May 2025 13:45:38 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uKFE2-00CB0R-1R;
	Wed, 28 May 2025 13:45:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 28 May 2025 13:45:15 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250528-arm-k3-am62l-v1-3-3f88e6d10d99@pengutronix.de>
References: <20250528-arm-k3-am62l-v1-0-3f88e6d10d99@pengutronix.de>
In-Reply-To: <20250528-arm-k3-am62l-v1-0-3f88e6d10d99@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1748432738; l=6422;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=wuPZ77oF/+/2FAk1a0JPwUONGZFU8aLKqnwzAD0Tmtg=;
 b=ZSwDtSf79+3sv6DPtPp8hISRT2N3MqkDIKaP2oaj3DRIHHhtutlzsatFqctRu3A3Y69avIBGw
 5c2F+qdDdUbDY9w1PJa4IukWTMTPaEh8mV1JrBiOo69RRRiEkWIGIUw
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_044540_279138_84851FA5 
X-CRM114-Status: GOOD (  10.11  )
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
Subject: [PATCH 03/31] ARM: k3: make k3img destination addresses
 configurable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The destination addresses where the binaries in the image shall be
copied to varies across different K3 SoCs. Make the addresses
configurable. The options that previously took a filename now
additionally take the destination address separated by a double colon.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 images/Makefile.k3 | 51 +++++++++++++++++++++++++++------------------------
 scripts/k3img      | 20 ++++++++++++--------
 2 files changed, 39 insertions(+), 32 deletions(-)

diff --git a/images/Makefile.k3 b/images/Makefile.k3
index d9b0af8d67b49569283d35ce0ec1792897654c57..e31a5cd2dcdd4fdbe62f3084092b641499e404ff 100644
--- a/images/Makefile.k3
+++ b/images/Makefile.k3
@@ -28,47 +28,50 @@ KEY_custmpk=$(srctree)/arch/arm/mach-k3/custMpk.pem
 KEY_degenerate=$(srctree)/arch/arm/mach-k3/ti-degenerate-key.pem
 
 ## TI am625(sip)-SK ##
-SYSFW_start_am625_sk_r5.pblb.k3img=$(SYSFW_am625_hs_fs)
-SYSFWDATA_start_am625_sk_r5.pblb.k3img=$(SYSFWDATA_am625)
-DMDATA_start_am625_sk_r5.pblb.k3img=$(DMDATA_am625)
-INNERDATA_start_am625_sk_r5.pblb.k3img=$(INNERDATA_am625)
-KEY_start_am625_sk_r5.pblb.k3img=$(KEY_custmpk)
+SYSFW_start_am625_sk_r5.pblb.k3_am62x_img=$(SYSFW_am625_hs_fs)
+SYSFWDATA_start_am625_sk_r5.pblb.k3_am62x_img=$(SYSFWDATA_am625)
+DMDATA_start_am625_sk_r5.pblb.k3_am62x_img=$(DMDATA_am625)
+INNERDATA_start_am625_sk_r5.pblb.k3_am62x_img=$(INNERDATA_am625)
+KEY_start_am625_sk_r5.pblb.k3_am62x_img=$(KEY_custmpk)
 
 pblb-$(CONFIG_MACH_AM625_SK) += start_am625_sk_r5
-FILE_barebox-am625-sk-r5.img = start_am625_sk_r5.pblb.k3img
+FILE_barebox-am625-sk-r5.img = start_am625_sk_r5.pblb.k3_am62x_img
 image-$(CONFIG_MACH_AM625_SK) += barebox-am625-sk-r5.img
 
-SYSFW_start_am625sip_sk_r5.pblb.k3img=$(SYSFW_am625_hs_fs)
-SYSFWDATA_start_am625sip_sk_r5.pblb.k3img=$(SYSFWDATA_am625)
-DMDATA_start_am625sip_sk_r5.pblb.k3img=$(DMDATA_am625)
-INNERDATA_start_am625sip_sk_r5.pblb.k3img=$(INNERDATA_am625)
-KEY_start_am625sip_sk_r5.pblb.k3img=$(KEY_custmpk)
+SYSFW_start_am625sip_sk_r5.pblb.k3_am62x_img=$(SYSFW_am625_hs_fs)
+SYSFWDATA_start_am625sip_sk_r5.pblb.k3_am62x_img=$(SYSFWDATA_am625)
+DMDATA_start_am625sip_sk_r5.pblb.k3_am62x_img=$(DMDATA_am625)
+INNERDATA_start_am625sip_sk_r5.pblb.k3_am62x_img=$(INNERDATA_am625)
+KEY_start_am625sip_sk_r5.pblb.k3_am62x_img=$(KEY_custmpk)
 
 pblb-$(CONFIG_MACH_AM625_SK) += start_am625sip_sk_r5
-FILE_barebox-am625sip-sk-r5.img = start_am625sip_sk_r5.pblb.k3img
+FILE_barebox-am625sip-sk-r5.img = start_am625sip_sk_r5.pblb.k3_am62x_img
 image-$(CONFIG_MACH_AM625_SK) += barebox-am625sip-sk-r5.img
 
 ## BeaglePlay ##
-SYSFW_start_beagleplay_r5.pblb.k3img=$(SYSFW_am625_gp)
-SYSFWDATA_start_beagleplay_r5.pblb.k3img=$(SYSFWDATA_am625)
-DMDATA_start_beagleplay_r5.pblb.k3img=$(DMDATA_am625)
-KEY_start_beagleplay_r5.pblb.k3img=$(KEY_degenerate)
+SYSFW_start_beagleplay_r5.pblb.k3_am62x_img=$(SYSFW_am625_gp)
+SYSFWDATA_start_beagleplay_r5.pblb.k3_am62x_img=$(SYSFWDATA_am625)
+DMDATA_start_beagleplay_r5.pblb.k3_am62x_img=$(DMDATA_am625)
+KEY_start_beagleplay_r5.pblb.k3_am62x_img=$(KEY_degenerate)
 
 pblb-$(CONFIG_MACH_BEAGLEPLAY) += start_beagleplay_r5
-FILE_barebox-beagleplay-r5.img = start_beagleplay_r5.pblb.k3img
+FILE_barebox-beagleplay-r5.img = start_beagleplay_r5.pblb.k3_am62x_img
 image-$(CONFIG_MACH_BEAGLEPLAY) += barebox-beagleplay-r5.img
 
 endif
 
-quiet_cmd_k3_image = K3IMG   $@
-      cmd_k3_image = \
+quiet_cmd_k3_am62x_image = K3_am62x_IMG   $@
+      cmd_k3_am62x_image = \
 		if [ -n "$(INNERDATA_$(@F))" ]; then				\
 			inner="--innerdata $(INNERDATA_$(@F))";			\
 		fi;								\
 										\
-		$(srctree)/scripts/k3img --sysfw $(SYSFW_$(@F))			\
-		--sysfwdata $(SYSFWDATA_$(@F)) --dmdata $(DMDATA_$(@F))		\
-		--key $(KEY_$(@F)) $$inner --sbl $< --out $@
+		$(srctree)/scripts/k3img					\
+			--sysfw $(SYSFW_$(@F)):00040000				\
+			--sysfwdata $(SYSFWDATA_$(@F)):00067000			\
+			--dmdata $(DMDATA_$(@F)):43c3a800			\
+			--sbl $<:43c00000					\
+			--key $(KEY_$(@F)) $$inner --out $@
 
-$(obj)/%.k3img: $(obj)/% scripts/k3img FORCE
-	$(call if_changed,k3_image)
+$(obj)/%.k3_am62x_img: $(obj)/% scripts/k3_am62x_img FORCE
+	$(call if_changed,k3_am62x_image)
diff --git a/scripts/k3img b/scripts/k3img
index f622f877cb89ce5604b8cb7651b3c23d3a5459be..a9f7e513723b251c3605e81a97093e23850a8f4d 100755
--- a/scripts/k3img
+++ b/scripts/k3img
@@ -16,17 +16,20 @@ unset TEMP
 while true; do
         case "$1" in
         '--sysfw')
-		sysfw="$2"
+		sysfw=$(echo "$2" | cut -d ":" -f 1)
+		sysfw_addr=$(echo "$2" | cut -d ":" -f 2)
 		shift 2
 		continue
 	;;
         '--sysfwdata')
-		sysfwdata="$2"
+		sysfwdata=$(echo "$2" | cut -d ":" -f 1)
+		sysfwdata_addr=$(echo "$2" | cut -d ":" -f 2)
 		shift 2
 		continue
 	;;
         '--dmdata')
-		dmdata="$2"
+		dmdata=$(echo "$2" | cut -d ":" -f 1)
+		dmdata_addr=$(echo "$2" | cut -d ":" -f 2)
 		shift 2
 		continue
 	;;
@@ -36,7 +39,8 @@ while true; do
 		continue
 	;;
 	'--sbl')
-		sbl="$2"
+		sbl=$(echo "$2" | cut -d ":" -f 1)
+		sbl_addr=$(echo "$2" | cut -d ":" -f 2)
 		shift 2
 		continue
 	;;
@@ -140,7 +144,7 @@ dm_data=SEQUENCE:dm_data
 compType = INTEGER:1
 bootCore = INTEGER:16
 compOpts = INTEGER:0
-destAddr = FORMAT:HEX,OCT:43c00000
+destAddr = FORMAT:HEX,OCT:$sbl_addr
 compSize = INTEGER:$sblsize
 shaType  = OID:2.16.840.1.101.3.4.2.3
 shaValue = FORMAT:HEX,OCT:$shasbl
@@ -149,7 +153,7 @@ shaValue = FORMAT:HEX,OCT:$shasbl
 compType = INTEGER:2
 bootCore = INTEGER:0
 compOpts = INTEGER:0
-destAddr = FORMAT:HEX,OCT:00040000
+destAddr = FORMAT:HEX,OCT:$sysfw_addr
 compSize = INTEGER:$sysfwsize
 shaType  = OID:2.16.840.1.101.3.4.2.3
 shaValue = FORMAT:HEX,OCT:$shasysfw
@@ -158,7 +162,7 @@ shaValue = FORMAT:HEX,OCT:$shasysfw
 compType = INTEGER:18
 bootCore = INTEGER:0
 compOpts = INTEGER:0
-destAddr = FORMAT:HEX,OCT:00067000
+destAddr = FORMAT:HEX,OCT:$sysfwdata_addr
 compSize = INTEGER:$sysfwdatasize
 shaType  = OID:2.16.840.1.101.3.4.2.3
 shaValue = FORMAT:HEX,OCT:$shasysfwdata
@@ -175,7 +179,7 @@ $innercert
 compType = INTEGER:17
 bootCore = INTEGER:16
 compOpts = INTEGER:0
-destAddr = FORMAT:HEX,OCT:43c3a800
+destAddr = FORMAT:HEX,OCT:$dmdata_addr
 compSize = INTEGER:$dmdatasize
 shaType  = OID:2.16.840.1.101.3.4.2.3
 shaValue = FORMAT:HEX,OCT:$shadmdata

-- 
2.39.5



