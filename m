Delivery-date: Thu, 05 Jun 2025 14:45:41 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN9yX-0040wV-1k
	for lore@lore.pengutronix.de;
	Thu, 05 Jun 2025 14:45:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN9yW-0005nl-Q0
	for lore@pengutronix.de; Thu, 05 Jun 2025 14:45:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SdDkDaswZla1uENgrqTvoUrVxKBc9tv00nvwZuWmBuM=; b=Qywq6RlwSWMmrgi3YUWibWh+oq
	h7BUVNgUnUqQWNc4+broKHcka4cKCfnGcdHBdjWs7JjXvOnHduyEFc65IAfkeNbRmDtqK5sinhuAW
	wTS9pXYGBrY2PdWCEmYGOH24dPLqacqg3Cm9pZ2H37b93vCEx69dberKdYnzMFE83oXef/zRjsN8L
	YwLDo+BAfeFPRkCs+WgndPOxl/K4kOIct0IeFAluxrdU2D+xbOfmd1+iOlDNduyBAID1HW5ujxmhk
	j2Yp0bhuE8eyv4DCrSAC6jCs9UWHP57KWvy14ROj6bGdiZ35p+MtIAylDR5p+Rv7oSh75MEbQrJfi
	Mm4yd0sA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN9xw-0000000FVK1-173i;
	Thu, 05 Jun 2025 12:45:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN9vU-0000000FV3O-0MjR
	for barebox@lists.infradead.org;
	Thu, 05 Jun 2025 12:42:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uN9vS-0003Mt-RV; Thu, 05 Jun 2025 14:42:30 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uN9vS-001xgO-1n;
	Thu, 05 Jun 2025 14:42:30 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uN9vS-0024bQ-1R;
	Thu, 05 Jun 2025 14:42:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 05 Jun 2025 14:42:27 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250605-arm-k3-am62l-v2-2-53257d4b2dd2@pengutronix.de>
References: <20250605-arm-k3-am62l-v2-0-53257d4b2dd2@pengutronix.de>
In-Reply-To: <20250605-arm-k3-am62l-v2-0-53257d4b2dd2@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1749127350; l=3785;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=24yrVFtyN6rbFajwYCeZXwUJH5IRmrQApvuyZ6OuCz4=;
 b=l9UFKTdd0Hel75PC0Q84VD3jGI+IanmBXIh+W2Zcn/KMWaLvhV2ZKkoUw1I9nmVGL2D6nK7ek
 NA/fBxCOiS4AialDgPzaRH0U5t2yCvLs4pAP0G9YR7RRJvR/yY3f9cP
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_054232_144839_728C0C8B 
X-CRM114-Status: UNSURE (   8.63  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 02/33] images: K3: rename %.k3img target to
 %.k3_am62x_img
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For upcoming AM62L support we'll need AM62L specific image targets, so
rename the current generic k3img target to a name including the SoC.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 images/Makefile.k3 | 42 +++++++++++++++++++++---------------------
 1 file changed, 21 insertions(+), 21 deletions(-)

diff --git a/images/Makefile.k3 b/images/Makefile.k3
index c03ce7acc3152bacfcd7c3c8bf953c2214aaa42a..b754202650f9c6178695c868af8bd2101012f203 100644
--- a/images/Makefile.k3
+++ b/images/Makefile.k3
@@ -28,40 +28,40 @@ KEY_custmpk=$(srctree)/arch/arm/mach-k3/custMpk.pem
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
 			inner="$(INNERDATA_$(@F)):3:0:0:00000000";		\
 		fi;								\
@@ -74,5 +74,5 @@ quiet_cmd_k3_image = K3IMG   $@
 			$(DMDATA_$(@F)):17:16:0:43c3a800			\
 			--key $(KEY_$(@F)) --out $@
 
-$(obj)/%.k3img: $(obj)/% scripts/k3img FORCE
-	$(call if_changed,k3_image)
+$(obj)/%.k3_am62x_img: $(obj)/% scripts/k3img FORCE
+	$(call if_changed,k3_am62x_image)

-- 
2.39.5



