Delivery-date: Thu, 23 Jan 2025 16:01:52 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tayiN-003UUd-30
	for lore@lore.pengutronix.de;
	Thu, 23 Jan 2025 16:01:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tayiJ-00033U-Hh
	for lore@pengutronix.de; Thu, 23 Jan 2025 16:01:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mgI63x6bf5k5yZIxTvVF24n54lGLuhLSKhv/aei9pvM=; b=liBDWedgHCzWRSubbSD2C+gazh
	md+mU/QHzJuCltVhF2w+6g9C0JpodNVMBhm9rAthE1z3Lq9UJdRqO1wVhoWwYWy4i/JPvuAPA2UTc
	/7+U0ey9F1EUIwgEDju1yRmQFcA9Zfs5Y1vhP4pozc24D3rX4SwyLx/2A6Y63FkDXebfHHfed56UL
	k4FNwo1r2fjpXAwEz4NGSBJYi3PB43nsNuqWYTWRBZpZPw7BRrNS9FiB6VpYtDqyJopCgm2wZVKnw
	+3DqznswyF+3qP8mY13uUGTeuKE/xKvELvQozcddyyeMHK/BCLgf8OjDdA0pHkeemMwRJBT8+UawQ
	WwPoh4gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tayhm-0000000Ceg9-1dJJ;
	Thu, 23 Jan 2025 15:01:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tayhi-0000000CecE-02ip
	for barebox@lists.infradead.org;
	Thu, 23 Jan 2025 15:01:11 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1tayhY-0002I4-MO; Thu, 23 Jan 2025 16:01:00 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1tayhY-001Thr-0b;
	Thu, 23 Jan 2025 16:01:00 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1tayhY-006Chv-06;
	Thu, 23 Jan 2025 16:01:00 +0100
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Thu, 23 Jan 2025 15:56:12 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250123-v2024-05-0-topic-hab-v3-7-e90d0e43c2de@pengutronix.de>
References: <20250123-v2024-05-0-topic-hab-v3-0-e90d0e43c2de@pengutronix.de>
In-Reply-To: <20250123-v2024-05-0-topic-hab-v3-0-e90d0e43c2de@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>, 
 Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250123_070110_053360_B2EF9EC4 
X-CRM114-Status: GOOD (  15.20  )
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
X-Spam-Status: No, score=-7.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 07/10] i.MX8M: HABv4: add option to allow burning the
 field-return fuse
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Marco Felsch <m.felsch@pengutronix.de>

This adds the required Kconfig options which need to be enabled and
correctly set to build a custom device specific barebox image which can
be used to burn the FIELD_RETURN fuse.

The CST tool can't handle quoted UID strings so we need to define it on
the cmdline by using the -D switch. This removes the quotes within the
CSF file and the CST is happy.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig            | 26 ++++++++++++++++++++++++++
 include/mach/imx/habv4-imx8-gencsf.h |  7 +++++++
 scripts/Makefile.lib                 |  1 +
 3 files changed, 34 insertions(+)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index c8a439b8a0b11fa168419ce77d7ee83fa86f2298..779b986b872cac0126a006a592d72a462b46b5db 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -838,6 +838,16 @@ config HABV4_CSF_SRK_REVOKE_UNLOCK
 	  the SRK_REVOKE_LOCK sticky bit. This is required for key
 	  revocation. Don't enable this if you are unsure.
 
+config HABV4_CSF_UNLOCK_FIELD_RETURN
+	depends on HABV4
+	bool "Unlock field return"
+	help
+	  Enable this option to instruct the HAB code to not lock
+	  the FIELD_RETURN_LOCK sticky bit. This is required to be
+	  able to fuse the FIELD_RETURN fuse. It is also required
+	  that the CONFIG_HABV4_CSF_UNLOCK_UID is set correct as
+	  well.
+
 config HAB_CERTS_ENV
 	depends on HAB
 	bool "Specify certificates in environment"
@@ -858,6 +868,7 @@ config HAB_CERTS_ENV
 
 	  CONFIG_HABV4_TABLE_BIN
 	  CONFIG_HABV4_CSF_CRT_PEM
+	  CONFIG_HABV4_CSF_UNLOCK_UID
 	  CONFIG_HABV4_IMG_CRT_PEM
 
 config HABV4_SRK_INDEX
@@ -892,6 +903,21 @@ config HABV4_CSF_CRT_PEM
 	  This file will be inserted into the Command Sequence File
 	  (CSF) when using the CSF template that comes with barebox.
 
+config HABV4_CSF_UNLOCK_UID
+	depends on HABV4 && HABV4_CSF_UNLOCK_FIELD_RETURN
+	string "CSF Unlock UID"
+	help
+	  Device specific 64-bit UID Required to unlock the field-return
+          feature. This value must match the per device UNIQUE_ID fuses.
+
+	  The below example shows the expected format. The UNIQUE_ID is
+	  queried by Linux via:
+            - cat /sys/devices/soc0/serial_number
+	      7766554433221100
+
+	  So this value have to be set:
+	    - 0x00, 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77
+
 config HABV4_IMG_CRT_PEM
 	string "Path to IMG certificate"
 	default "../crts/IMG1_1_sha256_4096_65537_v3_usr_crt.pem"
diff --git a/include/mach/imx/habv4-imx8-gencsf.h b/include/mach/imx/habv4-imx8-gencsf.h
index b3d29f5896881ba2abeaa6d4b297a031240fac99..480f88fa9552c51fd94e8f11a1ddc03a544f8081 100644
--- a/include/mach/imx/habv4-imx8-gencsf.h
+++ b/include/mach/imx/habv4-imx8-gencsf.h
@@ -42,6 +42,13 @@ hab Engine = OCOTP
 hab Features = SRK REVOKE
 #endif
 
+#if defined(CONFIG_HABV4_CSF_UNLOCK_FIELD_RETURN)
+hab [Unlock]
+hab Engine = OCOTP
+hab Features = FIELD RETURN
+hab UID = HABV4_CSF_UNLOCK_UID
+#endif
+
 hab [Install Key]
 /* verification key index in key store (0, 2...4) */
 hab Verification index = 0
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 0f4e7307cb41dfe938a0bcef4117b396c1ae469f..5616acf3413d9709d703ac8ed90b0d72885603ce 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -565,6 +565,7 @@ imxcfg_cpp_flags  = -Wp,-MD,$(depfile) -nostdinc -x assembler-with-cpp \
       $(call overwrite-hab-env,CONFIG_HABV3_IMG_CRT_DER) \
       $(call overwrite-hab-env,CONFIG_HABV4_TABLE_BIN) \
       $(call overwrite-hab-env,CONFIG_HABV4_CSF_CRT_PEM) \
+      $(call overwrite-hab-env,CONFIG_HABV4_CSF_UNLOCK_UID) \
       $(call overwrite-hab-env,CONFIG_HABV4_IMG_CRT_PEM) \
       $(call overwrite-fit-env,CONFIG_BOOTM_FITIMAGE_PUBKEY) \
 

-- 
2.39.5



