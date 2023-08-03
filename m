Delivery-date: Thu, 03 Aug 2023 12:52:18 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRVwJ-004wVy-7p
	for lore@lore.pengutronix.de; Thu, 03 Aug 2023 12:52:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRVwF-0002L2-PI
	for lore@pengutronix.de; Thu, 03 Aug 2023 12:52:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=r5tPTbWCOHW9CX9kI166PhCweSu3Z3xCgONmw0l6eQA=; b=zgXoLR9lktuwtXZz6lMcF+HazE
	+1+kZGzU0cwbu+bC+Nz1tjpkMOfjuvXJ3IHDE+mLgCdtFnfCLN3gg6kWWWxCCtGaWEvtETYkaz3DG
	MeK920ghMsyNp/U5UkmIu3A/JlOTle9s18BhXHl8qhgGleTXNGx3g4nUij3opy3ehmDTs6zgpV9In
	W8truL5OyNmY56xNrPmO6UcniaKXJQ85RPprycjgz437P1MFQbTBx/o4CfHpAPQIK5xeZtfymh7g8
	rqwNs0EMZj1niH3/026hYm9R9R59sPG47MshHXuYM+LLtdRs0eLaXeQvAfWnJgckwEBaX/4HUqgXc
	2h3BDSHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qRVv2-007VN3-2X;
	Thu, 03 Aug 2023 10:51:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qRVuL-007Uer-1F
	for barebox@lists.infradead.org;
	Thu, 03 Aug 2023 10:50:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qRVuC-0000vX-2O; Thu, 03 Aug 2023 12:50:08 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qRVuB-000ovP-9F; Thu, 03 Aug 2023 12:50:07 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qRVu8-00HB03-T4; Thu, 03 Aug 2023 12:50:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  3 Aug 2023 12:50:01 +0200
Message-Id: <20230803105003.4088205-21-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230803105003.4088205-1-s.hauer@pengutronix.de>
References: <20230803105003.4088205-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230803_035017_601884_A1E7A8EB 
X-CRM114-Status: GOOD (  14.68  )
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
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 20/22] ARM: k3: BeaglePlay: generate FIT image
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The K3 SoCs are currently not fully bareboxified, we still need
U-Boot to bring up the SoC. Only the last stage, u-boot.img can be
replaced by barebox. Create a FIT image to generate an image
suitable for replacing u-boot.img.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 images/Makefile                |  9 +++++++++
 images/Makefile.k3             |  4 ++++
 images/k3-am625-beagleplay.its | 29 +++++++++++++++++++++++++++++
 3 files changed, 42 insertions(+)
 create mode 100644 images/k3-am625-beagleplay.its

diff --git a/images/Makefile b/images/Makefile
index d8cb45dbc0..84ad79698a 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -111,6 +111,15 @@ $(obj)/%.pblb: $(obj)/%.pbl FORCE
 $(obj)/%.s: $(obj)/% FORCE
 	$(call if_changed,disasm)
 
+quiet_cmd_fit = FIT     $@
+cmd_fit = $(CPP) $(dtc_cpp_flags) -x assembler-with-cpp -o $(dtc-tmp) \
+	-D'$(subst -,_,$(*F))_dts=1' $(foreach f,$< $(2),-include '$(f)') /dev/null ; \
+	mkimage -f $(dtc-tmp) $@ -E \
+	cat $(depfile).pre $(depfile).dtc > $(depfile)
+
+$(obj)/%.fit: $(obj)/%.its FORCE
+	$(call if_changed,fit)
+
 $(obj)/piggy.o: $(obj)/barebox.z FORCE
 
 $(obj)/sha_sum.o: $(obj)/barebox.sha.bin FORCE
diff --git a/images/Makefile.k3 b/images/Makefile.k3
index 55d2e7ceeb..f7acd78014 100644
--- a/images/Makefile.k3
+++ b/images/Makefile.k3
@@ -7,3 +7,7 @@ pblb-$(CONFIG_MACH_BEAGLEPLAY) += start_beagleplay
 FILE_barebox-beagleplay.img = start_beagleplay.pblb
 image-$(CONFIG_MACH_BEAGLEPLAY) += barebox-beagleplay.img
 
+$(obj)/k3-am625-beagleplay.fit: $(obj)/barebox-beagleplay.img
+FILE_barebox-beagleplay-fit.img = k3-am625-beagleplay.fit
+image-$(CONFIG_MACH_BEAGLEPLAY) += barebox-beagleplay-fit.img
+
diff --git a/images/k3-am625-beagleplay.its b/images/k3-am625-beagleplay.its
new file mode 100644
index 0000000000..987d4d1660
--- /dev/null
+++ b/images/k3-am625-beagleplay.its
@@ -0,0 +1,29 @@
+
+/dts-v1/;
+
+/ {
+	description = "barebox for BeaglePlay board";
+
+	images {
+		barebox {
+			description = "barebox for BeaglePlay board";
+			type = "firmware";
+			os = "linux";
+			arch = "arm";
+			compression = "none";
+			load = <0x80800000>;
+			entry = <0x80800000>;
+			data = /incbin/("barebox-beagleplay.img");
+		};
+	};
+
+	configurations {
+		default = "conf-0";
+
+		conf-0 {
+			description = "barebox for BeaglePlay board";
+			firmware = "barebox";
+			loadables = "barebox";
+		};
+	};
+};
-- 
2.39.2



