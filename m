Delivery-date: Fri, 13 Mar 2026 14:35:15 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12fb-000Da0-18
	for lore@lore.pengutronix.de;
	Fri, 13 Mar 2026 14:35:15 +0100
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12fI-0001Dj-NB
	for lore@pengutronix.de; Fri, 13 Mar 2026 14:35:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=h8f8igrjLAye3bR3aDQymUHDnhSjZ0SkCCI1ry+jaUU=; b=Qr5k5HB7dT4MP76VVJadp8/eku
	LTSLZNt2Va7qWRN39LmUW4dhrC4yuQCPWsd32wEtf2SDxPMHzvjWspTl8gndqmBWEOB3rkxo913ku
	Lq4bD1mDyAjwGhDvHX5QG9MtFkSt9qg6Cio9d5Ygm1kUEckhmHzC4Sf6RnKDIKOhO/1xk0VtiHVdI
	OxexyuLLIdd5qt+c659YDu1znFqMDiqgc9l8zneCzuMgbW2n6zQR7Mr/bZ0cirYuIE0sbHmR3XC9r
	ZHxMRVxBf1gQ29xM5l0aAcXJ6mgYtiLIubK92OtC+PkiOfplDLgXjV3O474dujOTKcxvWtELuL1rH
	j/vVnaQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12dh-00000000GWk-1jqs;
	Fri, 13 Mar 2026 13:33:17 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12dJ-00000000Fpq-1aFF
	for barebox@bombadil.infradead.org;
	Fri, 13 Mar 2026 13:32:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=h8f8igrjLAye3bR3aDQymUHDnhSjZ0SkCCI1ry+jaUU=; b=WX8AGZeM+ugFQNLIOiamn+FlnI
	XP7T/up8PPNORwKhHlfHhn57uDnou8k7LfJpcG61mKhN2gS0jytAgxBF0zQyp3rx4nioRXq7l7Npt
	MWczJPwGVohiAa7js1pGo1cLB4ubLkbkIjEPA3uKPwi4x3n4/Xztg+crHy5pd8w7f30xQlVUYq48o
	hE5FqMVbtNGOpBGXO7X44klFZ84h0hIO+yYBSgn66PaD9HyyIPkHqC2VaC0/keQr7AOvj4KdGkxry
	HCGclrxH1IGBVAlMFcqLXS7bv7k6gk9DlbbfCZgFBz+BVORwVN2pIwePFyK3c4O6uB/W31+wraBPv
	q5p+aQtw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12d6-00000003OSl-0upY
	for barebox@lists.infradead.org;
	Fri, 13 Mar 2026 13:32:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12d0-0006um-Kq; Fri, 13 Mar 2026 14:32:34 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12d0-0005Ue-1O;
	Fri, 13 Mar 2026 14:32:34 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12XK-00000009ULB-3fMD;
	Fri, 13 Mar 2026 14:26:42 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Fabian Pflug <f.pflug@pengutronix.de>
Date: Fri, 13 Mar 2026 14:24:58 +0100
Message-ID: <20260313132631.2257573-15-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
References: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_133241_847001_38684F8A 
X-CRM114-Status: GOOD (  15.34  )
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
X-SA-Exim-Connect-IP: 198.137.202.133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,RCVD_IN_VALIDITY_RPBL_BLOCKED,
	RCVD_IN_VALIDITY_SAFE_BLOCKED,SPF_HELO_NONE,SPF_NONE autolearn=no
	autolearn_force=no version=3.4.2
Subject: [PATCH v2025.09.y 14/58] i.MX: HAB: fix field return unlock fuse uid
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Fabian Pflug <f.pflug@pengutronix.de>

The HABV4_CSF_UNLOCK_UID is not dependendend on HAB_CERTS_ENV, but just
the HABV4_CSF_UNLOCK_FIELD_RETURN.

The CST tool can't handle quoted UID strings so we need to define it on
the cmdline by using the -D switch. This removes the quotes within the
CSF file and the CST is happy.

(cherry picked from commit 84515796f00d28a3d286ace56e69d89ee5751565)

Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
Link: https://lore.barebox.org/20251219-v2025-11-0-topic-imx6-field-return-v4-1-57eec237ceaf@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig            | 33 ++++++++++++++--------------
 include/mach/imx/habv4-imx8-gencsf.h |  2 +-
 scripts/Makefile.lib                 |  2 +-
 3 files changed, 19 insertions(+), 18 deletions(-)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 0d745ce23158..4290b5888078 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -847,6 +847,23 @@ config HABV4_CSF_UNLOCK_FIELD_RETURN
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
 config HAB_CERTS_ENV
 	depends on HAB
 	bool "Specify certificates in environment"
@@ -867,7 +884,6 @@ config HAB_CERTS_ENV
 
 	  CONFIG_HABV4_TABLE_BIN
 	  CONFIG_HABV4_CSF_CRT_PEM
-	  CONFIG_HABV4_CSF_UNLOCK_UID
 	  CONFIG_HABV4_IMG_CRT_PEM
 
 config HABV4_SRK_INDEX
@@ -902,21 +918,6 @@ config HABV4_CSF_CRT_PEM
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
-	  queried by Linux via:
-            - cat /sys/devices/soc0/serial_number
-	      7766554433221100
-
-	  So this value have to be set:
-	    - 0x00, 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77
-
 config HABV4_IMG_CRT_PEM
 	string "Path to IMG certificate"
 	default "../crts/IMG1_1_sha256_4096_65537_v3_usr_crt.pem"
diff --git a/include/mach/imx/habv4-imx8-gencsf.h b/include/mach/imx/habv4-imx8-gencsf.h
index 480f88fa9552..d3fe3e34c68e 100644
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
index 2128361b3ae3..1c8a5ed06c53 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -585,7 +585,7 @@ imxcfg_cpp_flags  = -Wp,-MD,$(depfile) -nostdinc -x assembler-with-cpp \
       $(call overwrite-hab-env,CONFIG_HABV3_IMG_CRT_DER) \
       $(call overwrite-hab-env,CONFIG_HABV4_TABLE_BIN) \
       $(call overwrite-hab-env,CONFIG_HABV4_CSF_CRT_PEM) \
-      $(call overwrite-hab-env,CONFIG_HABV4_CSF_UNLOCK_UID) \
+      -DCONFIG_HABV4_CSF_UNLOCK_UID=$(CONFIG_HABV4_CSF_UNLOCK_UID) \
       $(call overwrite-hab-env,CONFIG_HABV4_IMG_CRT_PEM) \
 
 dcd-tmp = $(subst $(comma),_,$(dot-target).dcd.tmp)
-- 
2.47.3



