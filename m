Delivery-date: Fri, 19 Dec 2025 11:49:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWY3X-00DAvb-02
	for lore@lore.pengutronix.de;
	Fri, 19 Dec 2025 11:49:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWY3W-0000Wb-8H
	for lore@pengutronix.de; Fri, 19 Dec 2025 11:49:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CLfqCiHOfaGxCO6DXcReONBWfOEXIP73M+ZGUUCMCP8=; b=XAiBt+lRoYD2hNnPrDjtANhOZn
	8KFQr7YHHqrFSJJEyB+1HPeyNAi59uaIACQStHWsBTtVroKiT7/SXY/JFXhTe9pvb+ZNehhzV9HFY
	cczW9xrvkhKk4NSzysoawwn2cOe59ePbAgmtyvdAsYHJftXIfJkNOs5uOjw3bnJRCUIiOwsfD44Wg
	sgdrEhi+XeWdW+cKih20cdSu+zCqUCHte2dJJbeqdyPfWlyWyKfBD7Xnj4459ZVuafpF3p9tVqGeQ
	BbRdozcnkrRq6wX0mSkqGhWQRuhecHc4uT3LQ3YkfvbhCP0cTEnkzhP9CEawuJiXFBpXXC94eVIKl
	mBb2iUhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWY2u-0000000A9fS-1vQC;
	Fri, 19 Dec 2025 10:49:16 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWY2r-0000000A9dX-3BhB
	for barebox@bombadil.infradead.org;
	Fri, 19 Dec 2025 10:49:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Cc:To:In-Reply-To:References:Message-Id
	:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender
	:Reply-To:Content-ID:Content-Description;
	bh=CLfqCiHOfaGxCO6DXcReONBWfOEXIP73M+ZGUUCMCP8=; b=E02jt2twaBG7GAYiQcnRQNGPa8
	9n9uFjr9wQWTkZItgTme/3mVq6vhHTO6DvWQLqpIzbSvRLf6Gd5waGUFYjpOYqXAZp/NJoQNs39YE
	06SwXEIq1xqcdQcfiANGTMEoMPIP7O9ogGzr18zZLqmTst3DePshdNkcVJuvmLQVRYN6FUv23H4XJ
	cj6jkXozOMF/cipkZXUv0BSlqD+3XjABmeXfGHB0LU5L1/l4L0Lm8O+J9YHMo5Cx9cV0Ze3/Y9080
	F9CERFREBzICEQElDbLxx/WdM6l3kUp9RAbvVC+fAX7ZxRfmjHZuMU1UM6xljmbCH3ZT6NRANNlAP
	+WElivzQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWY2m-00000007SGf-2Zjz
	for barebox@lists.infradead.org;
	Fri, 19 Dec 2025 10:49:12 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1vWY2l-0000Cr-Sc; Fri, 19 Dec 2025 11:49:07 +0100
From: Fabian Pflug <f.pflug@pengutronix.de>
Date: Fri, 19 Dec 2025 11:49:03 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251219-v2025-11-0-topic-imx6-field-return-v3-5-690fdeb78978@pengutronix.de>
References: <20251219-v2025-11-0-topic-imx6-field-return-v3-0-690fdeb78978@pengutronix.de>
In-Reply-To: <20251219-v2025-11-0-topic-imx6-field-return-v3-0-690fdeb78978@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>, Lucas Stach <l.stach@pengutronix.de>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Fabian Pflug <f.pflug@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251219_104908_785825_F8F42458 
X-CRM114-Status: GOOD (  12.96  )
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
X-Spam-Status: No, score=-3.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v3 5/5] i.MX: HAB: fix field return unlock fuse uid
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The HABV4_CSF_UNLOCK_UID is not dependendend on HAB_CERTS_ENV, but just
the HABV4_CSF_UNLOCK_FIELD_RETURN.

The CST tool can't handle quoted UID strings so we need to define it on
the cmdline by using the -D switch. This removes the quotes within the
CSF file and the CST is happy.

Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig                     | 39 +++++++++++++--------------
 include/mach/imx/habv4-imx6-gencsf-template.h |  2 +-
 include/mach/imx/habv4-imx8-gencsf.h          |  2 +-
 scripts/Makefile.lib                          |  2 +-
 4 files changed, 22 insertions(+), 23 deletions(-)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 5fea0bbbca..7cc34fab95 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -863,6 +863,25 @@ config HABV4_CSF_UNLOCK_FIELD_RETURN
 	  that the CONFIG_HABV4_CSF_UNLOCK_UID is set correct as
 	  well.
 
+config HABV4_CSF_UNLOCK_UID
+	depends on HABV4 && HABV4_CSF_UNLOCK_FIELD_RETURN
+	string "CSF Unlock UID"
+	help
+	  Device specific 64-bit UID required to unlock the field-return
+	  feature. This value must match the per device UNIQUE_ID fuses.
+
+	  The below example shows the expected format. The UNIQUE_ID is
+	  printed during boot by barebox:
+	    i.MX___ unique ID: 7766554433221100
+	  or it can be queried by Linux via:
+	    - cat /sys/devices/soc0/serial_number
+	      7766554433221100
+
+	  So this value have to be set:
+	    - 0x00, 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77
+
+	  Afterwards, the `hab -p -r` command can be used to burn the fuse.
+
 config HAB_CERTS_ENV
 	depends on HAB
 	bool "Specify certificates in environment"
@@ -883,7 +902,6 @@ config HAB_CERTS_ENV
 
 	  CONFIG_HABV4_TABLE_BIN
 	  CONFIG_HABV4_CSF_CRT_PEM
-	  CONFIG_HABV4_CSF_UNLOCK_UID
 	  CONFIG_HABV4_IMG_CRT_PEM
 
 config HABV4_SRK_INDEX
@@ -918,25 +936,6 @@ config HABV4_CSF_CRT_PEM
 	  This file will be inserted into the Command Sequence File
 	  (CSF) when using the CSF template that comes with barebox.
 
-config HABV4_CSF_UNLOCK_UID
-	depends on HABV4 && HABV4_CSF_UNLOCK_FIELD_RETURN
-	string "CSF Unlock UID"
-	help
-	  Device specific 64-bit UID Required to unlock the field-return
-          feature. This value must match the per device UNIQUE_ID fuses.
-
-	  The below example shows the expected format. The UNIQUE_ID is
-	  printed during boot by barebox:
-	    i.MX___ unique ID: 7766554433221100
-	  or it can be queried by Linux via:
-            - cat /sys/devices/soc0/serial_number
-	      7766554433221100
-
-	  So this value have to be set:
-	    - 0x00, 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77
-
-	  Afterwards, the `hab -p -r` command can be used to burn the fuse.
-
 config HABV4_IMG_CRT_PEM
 	string "Path to IMG certificate"
 	default "../crts/IMG1_1_sha256_4096_65537_v3_usr_crt.pem"
diff --git a/include/mach/imx/habv4-imx6-gencsf-template.h b/include/mach/imx/habv4-imx6-gencsf-template.h
index c24bf84b85..a793496d49 100644
--- a/include/mach/imx/habv4-imx6-gencsf-template.h
+++ b/include/mach/imx/habv4-imx6-gencsf-template.h
@@ -43,7 +43,7 @@ hab Features = SETUP_HABV4_FEATURES
 hab [Unlock]
 hab Engine = OCOTP
 hab Features = FIELD RETURN
-hab UID = HABV4_CSF_UNLOCK_UID
+hab UID = CONFIG_HABV4_CSF_UNLOCK_UID
 #endif
 
 hab [Install Key]
diff --git a/include/mach/imx/habv4-imx8-gencsf.h b/include/mach/imx/habv4-imx8-gencsf.h
index 480f88fa95..d3fe3e34c6 100644
--- a/include/mach/imx/habv4-imx8-gencsf.h
+++ b/include/mach/imx/habv4-imx8-gencsf.h
@@ -46,7 +46,7 @@ hab Features = SRK REVOKE
 hab [Unlock]
 hab Engine = OCOTP
 hab Features = FIELD RETURN
-hab UID = HABV4_CSF_UNLOCK_UID
+hab UID = CONFIG_HABV4_CSF_UNLOCK_UID
 #endif
 
 hab [Install Key]
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index e05fef843c..66e690fbfd 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -592,7 +592,7 @@ imxcfg_cpp_flags  = -Wp,-MD,$(depfile) -nostdinc -x assembler-with-cpp \
       $(call overwrite-hab-env,CONFIG_HABV3_IMG_CRT_DER) \
       $(call overwrite-hab-env,CONFIG_HABV4_TABLE_BIN) \
       $(call overwrite-hab-env,CONFIG_HABV4_CSF_CRT_PEM) \
-      $(call overwrite-hab-env,CONFIG_HABV4_CSF_UNLOCK_UID) \
+      -DCONFIG_HABV4_CSF_UNLOCK_UID=$(CONFIG_HABV4_CSF_UNLOCK_UID) \
       $(call overwrite-hab-env,CONFIG_HABV4_IMG_CRT_PEM) \
 
 dcd-tmp = $(subst $(comma),_,$(dot-target).dcd.tmp)

-- 
2.47.3



