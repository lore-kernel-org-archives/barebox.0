Delivery-date: Wed, 03 Jul 2024 19:20:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sP3f8-001F1X-1h
	for lore@lore.pengutronix.de;
	Wed, 03 Jul 2024 19:20:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sP3f7-0007QP-KH
	for lore@pengutronix.de; Wed, 03 Jul 2024 19:20:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SBB/Es9Uq+5amQB72oDHCUVB6zVGgob+sX3MKVvn2t8=; b=1u40yHLlcC+F2LeUIktuXBVzhV
	N3RhvwTC/Z1OcvnD1yCHgPPr3Gnts+YB14dno3+bVOcxeZUACTUWAkrfiNtV0hrR0JBtv3072Hjb3
	9KD4h5ceEBn2l/kJ2ORok2rmEb5AcT6oZboKqc4SG6PPhI+YkT6Y5HN5WLYwPRaKcpT5YAqhiKJin
	lom0lziTbWnPfBUbdtTjwtgPvw7mMjaVNFqLHnedn1Drrhubvn3ndkFrwN9OPpRo3RqudtHS1i+wK
	4AhbIYe9xIZX0x+14+fu2zT8t4UnHE4D+cAb/QH8OdlWEuR8O4UjyY4KQ4Wj3b54OZWwD/hV3kizO
	fdr0BQxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sP3ec-0000000Ayal-2k5N;
	Wed, 03 Jul 2024 17:20:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sP3eW-0000000AyXD-3QZQ
	for barebox@lists.infradead.org;
	Wed, 03 Jul 2024 17:20:23 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1sP3eU-00073M-T1; Wed, 03 Jul 2024 19:20:18 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Wed, 03 Jul 2024 19:20:25 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240703-v2024-05-0-topic-hab-v2-8-17419aa5d3a3@pengutronix.de>
References: <20240703-v2024-05-0-topic-hab-v2-0-17419aa5d3a3@pengutronix.de>
In-Reply-To: <20240703-v2024-05-0-topic-hab-v2-0-17419aa5d3a3@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240703_102021_236484_3DE4C122 
X-CRM114-Status: GOOD (  13.38  )
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
Subject: [PATCH v2 8/9] i.MX8M: HABv4: add option to allow burning the
 field-return fuse
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds the required Kconfig options which need to be enabled and
correctly set to build a custom device specific barebox image which can
be used to burn the FIELD_RETURN fuse.

The CST tool can't handle quoted UID strings so we need to define it on
the cmdline by using the -D switch. This removes the quotes within the
CSF file and the CST is happy.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig            | 25 +++++++++++++++++++++++++
 include/mach/imx/habv4-imx8-gencsf.h |  7 +++++++
 scripts/Makefile.lib                 |  1 +
 3 files changed, 33 insertions(+)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 68f55971506b..8bbde38e0d9a 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -843,6 +843,31 @@ config HABV4_CSF_UNLOCK_SRK_REVOKE
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
 config HAB_CERTS_ENV
 	depends on HAB
 	bool "Specify certificates in environment"
diff --git a/include/mach/imx/habv4-imx8-gencsf.h b/include/mach/imx/habv4-imx8-gencsf.h
index 56d9ef2de92f..3106facc511f 100644
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
index 6b1f0ccbc003..ffbd5360cba0 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -566,6 +566,7 @@ imxcfg_cpp_flags  = -Wp,-MD,$(depfile) -nostdinc -x assembler-with-cpp \
       $(call overwrite-hab-env,CONFIG_HABV4_TABLE_BIN) \
       $(call overwrite-hab-env,CONFIG_HABV4_CSF_CRT_PEM) \
       $(call overwrite-hab-env,CONFIG_HABV4_IMG_CRT_PEM) \
+      -DHABV4_CSF_UNLOCK_UID=$(CONFIG_HABV4_CSF_UNLOCK_UID) \
       $(call overwrite-fit-env,CONFIG_BOOTM_FITIMAGE_PUBKEY) \
 
 dcd-tmp = $(subst $(comma),_,$(dot-target).dcd.tmp)

-- 
2.39.2



