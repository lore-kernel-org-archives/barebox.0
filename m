Delivery-date: Mon, 18 May 2026 14:56:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wOxWk-0018aj-2M
	for lore@lore.pengutronix.de;
	Mon, 18 May 2026 14:56:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wOxWj-0000Ep-Vq
	for lore@pengutronix.de; Mon, 18 May 2026 14:56:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=5BnINH4HgAGHdJb6oUIAfiMOWyuS0fokMMeaZo5CKCQ=; b=mQFcjBAR9qejcDr30dUZ4Lwb8y
	f6CjN7MMXAtJCkllO/Pr94UjdxkkLQi+2bMHJrynpBmVlHiYm8udu9cOOaCJdKvjx0HlAh2cQnrrN
	ed/gSwUCiO+L+Wz6CYTb1W3Z7ncBoDM0HoqjCPnr4qp5n0euE51pUR6Y+83YJAZiZ7ryT0KUa7HG+
	4snayhT8PZ1TowXWYTRWvJ9X37EYml9G40KU1bZlWykQ1ShfKdk07D69gnCV8LQ/B0z+Z52Cgv4rW
	QRKFjWdSDRwdkXmhxDKerkcwHyplATkoySEhChhQWf2OjBiYvhfhnQkHCNda6VLr2uBi8Eqxv5Y/9
	hRHCe/OQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOxVi-0000000FimZ-0C9j;
	Mon, 18 May 2026 12:55:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wOxVg-0000000Fikx-1cjN
	for barebox@lists.infradead.org;
	Mon, 18 May 2026 12:55:53 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pfitzner@pengutronix.de>)
	id 1wOxVe-0008T0-4V; Mon, 18 May 2026 14:55:50 +0200
From: Fabian Pfitzner <f.pfitzner@pengutronix.de>
Date: Mon, 18 May 2026 14:55:48 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260518-fpf-fast-auth-v1-1-eb795aedf999@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIAFMMC2oC/x3MQQqAIBBA0avErBtQwYyuEi2sxpyNiVYE4t2Tl
 m/xf4FMiSnD1BVI9HDmMzTIvoPN23AQ8t4MSqhBaDmiiw6dzRfa+/JoBanNkJbCrNCamMjx+//
 mpdYPR3/We18AAAA=
X-Change-ID: 20260518-fpf-fast-auth-a0e2c7e5107b
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Fabian Pfitzner <f.pfitzner@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260518_055552_430880_1EA0EC56 
X-CRM114-Status: GOOD (  10.97  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: i.MX: add support for fast authentication
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Integrate support for fast authentication on i.MX8 SoCs.
Fast authentication is only supported for HAB version >= 4.1.2

>From the NXP manual it says:

"It provides the option to use the SRK to verify the CSF data and Image data directly,
instead of using the CSF and IMG keys.
This reduces the number of key pair authentications that must occur during the ROM/HAB boot stage.
The typical boot time for an image smaller than 1MB can be reduced from 25 ms to 12 ms."

Introduce a variable called `HABV4_FAST_AUTH` that ignores the CSF and IMG
certificates during the CSF file generation and only considers one of the SRK instead.

---
Signed-off-by: Fabian Pfitzner <f.pfitzner@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig            | 15 +++++++++++++++
 include/mach/imx/habv4-imx8-gencsf.h |  8 ++++++++
 scripts/Makefile.lib                 |  1 +
 3 files changed, 24 insertions(+)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 2dc4eb3e79a410daa8bf1cb495a508f63f1f14d4..7f78e5282f7d040d71ac36b9e61fb66b79ed2eb9 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -968,6 +968,21 @@ config HAB_CERTS_ENV
 	  CONFIG_HABV4_CSF_CRT_PEM
 	  CONFIG_HABV4_IMG_CRT_PEM
 
+	  For HABv4 with fast authentication:
+
+	  CONFIG_HABV4_TABLE_BIN
+	  CONFIG_HABV4_SRK_CRT_PEM
+
+config HABV4_FAST_AUTH
+	depends on HABV4
+	bool "Fast authentication"
+	help
+	  Use the SRK to verify the CSF and image data.
+	  This reduces the number of key pair authentications
+	  that occur during the ROM/HAB boot state, resulting in a decreased boot time.
+
+	  Requires HAB version >= 4.1.2
+
 config HABV4_SRK_INDEX
 	depends on HABV4
 	int "SRK index"
diff --git a/include/mach/imx/habv4-imx8-gencsf.h b/include/mach/imx/habv4-imx8-gencsf.h
index 480f88fa9552c51fd94e8f11a1ddc03a544f8081..337f2fab40d02703c8a3be7726528f5ac0db956b 100644
--- a/include/mach/imx/habv4-imx8-gencsf.h
+++ b/include/mach/imx/habv4-imx8-gencsf.h
@@ -8,6 +8,7 @@
  * CONFIG_HABV4_TABLE_BIN
  * CONFIG_HABV4_CSF_CRT_PEM
  * CONFIG_HABV4_IMG_CRT_PEM
+ * CONFIG_HABV4_SRK_CRT_PEM
  */
 #if defined(CONFIG_HABV4) && defined(CONFIG_CPU_64)
 #if defined(CONFIG_HABV4_QSPI)
@@ -26,9 +27,14 @@ hab File = CONFIG_HABV4_TABLE_BIN
 hab # SRK index within SRK-Table 0..3
 hab Source index = CONFIG_HABV4_SRK_INDEX
 
+#if defined(CONFIG_HABV4_FAST_AUTH)
+hab [Install NOCAK]
+hab File = CONFIG_HABV4_SRK_CRT_PEM
+#else
 hab [Install CSFK]
 /* target key index in keystore 1 */
 hab File = CONFIG_HABV4_CSF_CRT_PEM
+#endif
 
 hab [Authenticate CSF]
 
@@ -49,12 +55,14 @@ hab Features = FIELD RETURN
 hab UID = HABV4_CSF_UNLOCK_UID
 #endif
 
+#if !defined(CONFIG_HABV4_FAST_AUTH)
 hab [Install Key]
 /* verification key index in key store (0, 2...4) */
 hab Verification index = 0
 /* target key index in key store (2...4) */
 hab Target index = 2
 hab File = CONFIG_HABV4_IMG_CRT_PEM
+#endif
 
 hab [Authenticate Data]
 /* verification key index in key store (2...4) */
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 6708802477deca5cac9263e8d6ebe7f916cf951b..26d5266f9fe101a5ba9b5d1921982578631c8214 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -594,6 +594,7 @@ imxcfg_cpp_flags  = -Wp,-MD,$(depfile) -nostdinc -x assembler-with-cpp \
       $(call overwrite-hab-env,CONFIG_HABV4_CSF_CRT_PEM) \
       -DHABV4_CSF_UNLOCK_UID=$(CONFIG_HABV4_CSF_UNLOCK_UID) \
       $(call overwrite-hab-env,CONFIG_HABV4_IMG_CRT_PEM) \
+      $(call overwrite-hab-env,CONFIG_HABV4_SRK_CRT_PEM) \
 
 dcd-tmp = $(subst $(comma),_,$(dot-target).dcd.tmp)
 

---
base-commit: 2f4fcbef2c6cb70c5a0aa2b6ab3590fc62c229b9
change-id: 20260518-fpf-fast-auth-a0e2c7e5107b

Best regards,
-- 
Fabian Pfitzner <f.pfitzner@pengutronix.de>



