Delivery-date: Thu, 14 Aug 2025 15:16:19 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umXoZ-000WE4-2D
	for lore@lore.pengutronix.de;
	Thu, 14 Aug 2025 15:16:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umXoY-00083e-H4
	for lore@pengutronix.de; Thu, 14 Aug 2025 15:16:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=j1/JdZ6mXCoLdYnmN/URT9Sefhlc2xFY+20dP9dM+N0=; b=D5FPGnhuIabDaQflh3sQDM/cqK
	uhZ9VHtspuceYgERYRW3ejdTkl6W6Zi3UcNtZtYocd1b/rvv+fRT3oNO1Ty6spgKz2WAfvXZE9/0n
	fnvoPgRYKKqi9RSdQCFpvSM5UmA1Bv4oIjuZkMyJCXd97zAvzlOqKIkyk/P0XmqIEIwRgxvvlSCS7
	1DLb5nKYQ889hrLUomUL8R2aEwG/LqGrPqy+QlXeFh4nt5GmOAI+GmUdb7EDVeh2A7J6eiQYd0l+c
	rcNf/xkXYEdAN4PIeHRfTLkWfZA+NisF9fYcQDcsbBsBC6WDAOdO+14yBfrkrjy84FzhA8A6bpaCx
	Sc2WWL/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umXo1-0000000GzJR-1Cmr;
	Thu, 14 Aug 2025 13:15:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umVUC-0000000Ge5B-3CUp
	for barebox@lists.infradead.org;
	Thu, 14 Aug 2025 10:47:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1umVTv-0000NY-Jp; Thu, 14 Aug 2025 12:46:51 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1umVTv-000Ewy-18;
	Thu, 14 Aug 2025 12:46:51 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1umVTv-004nMh-0v;
	Thu, 14 Aug 2025 12:46:51 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 14 Aug 2025 12:46:54 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250814-k3-am62l-updates-v1-6-9934277d8757@pengutronix.de>
References: <20250814-k3-am62l-updates-v1-0-9934277d8757@pengutronix.de>
In-Reply-To: <20250814-k3-am62l-updates-v1-0-9934277d8757@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755168411; l=1705;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=0Orl05dlyxHNHzNKUc+qZ/ouHsxGCyvXuThbWwNEnG0=;
 b=gTpDI2Qv+mTWkgDa5TTM2INNUyQRCYPE+elPBtCYomMQurPG2vJlLZylBGXloAVzxCWj386Wo
 KGDqXYi//HkBe1UayNoZUWOmfQpHmd94YhEwW1O+qdlMiRe+PS8roWk
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250814_034708_805671_023F4906 
X-CRM114-Status: UNSURE (   9.98  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 6/6] ARM: k3: use newer ti-linux-firmware
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In ti-linux-firmware 11.00.14 ti-fs-firmware-am62lx-hs-fs-enc.bin is
renamed to ti-fs-firmware-am62lx-hs-enc.bin and
ti-fs-firmware-am62lx-hs-fs-cert.bin is renamed to
ti-fs-firmware-am62lx-hs-cert.bin.

Switch to the newer firmware and update the submodule accordingly.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 firmware/ti-linux-firmware | 2 +-
 images/Makefile.k3         | 4 ++--
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/firmware/ti-linux-firmware b/firmware/ti-linux-firmware
index 10257543a029cc608c9df1c36c83e36ac3dd5b46..f59a711599249ecac75fea38b7a15ef9137d650d 160000
--- a/firmware/ti-linux-firmware
+++ b/firmware/ti-linux-firmware
@@ -1 +1 @@
-Subproject commit 10257543a029cc608c9df1c36c83e36ac3dd5b46
+Subproject commit f59a711599249ecac75fea38b7a15ef9137d650d
diff --git a/images/Makefile.k3 b/images/Makefile.k3
index 05b645f6d48b0594eec2af1208825c1d551a1dff..1a8bfe641a8efc7d4a4a89bb8cd9f6ee3b13adb1 100644
--- a/images/Makefile.k3
+++ b/images/Makefile.k3
@@ -66,8 +66,8 @@ image-$(CONFIG_MACH_BEAGLEPLAY) += barebox-beagleplay-r5.img
 endif
 
 SYSFWDATA_am62lx=$(objtree)/arch/arm/mach-k3/combined-sysfw-cfg-am62l.k3cfg
-SYSFW_am62lx_hs_fs=$(FIRMWARE_DIR)/ti-linux-firmware/ti-sysfw/ti-fs-firmware-am62lx-hs-fs-enc.bin
-INNERDATA_am62lx=$(FIRMWARE_DIR)/ti-linux-firmware/ti-sysfw/ti-fs-firmware-am62lx-hs-fs-cert.bin
+SYSFW_am62lx_hs_fs=$(FIRMWARE_DIR)/ti-linux-firmware/ti-sysfw/ti-fs-firmware-am62lx-hs-enc.bin
+INNERDATA_am62lx=$(FIRMWARE_DIR)/ti-linux-firmware/ti-sysfw/ti-fs-firmware-am62lx-hs-cert.bin
 
 ## TI am62lx-EVM ##
 SYSFW_start_am62lx_evm.pblb.k3_am62lx_img=$(SYSFW_am62lx_hs_fs)

-- 
2.39.5



