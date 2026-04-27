Delivery-date: Mon, 27 Apr 2026 18:23:45 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wHOkL-00H0XN-0G
	for lore@lore.pengutronix.de;
	Mon, 27 Apr 2026 18:23:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wHOkK-0006uq-G3
	for lore@pengutronix.de; Mon, 27 Apr 2026 18:23:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=A1/kqnJ2X2E6OHuxGo7t7B9R27amcMcUH48iZLttz3U=; b=IEczz0jmVg45Cix+GKD0xGN9te
	tJ/TQnhlakY6GUoHQNJW+Vp8O2gmF2XXA9nv5lZEJGD1pBQYJFR5TpmAVuWtgado6rWeWa+372nlL
	KAfkxT9r/fFeXGlk5mRVQnXkLEtikYsQx0seMCeCnKxok2aAh76NfKW3IDSjCjyo6d4fnO3swpHon
	9OWTS40OhU9CRQbDwnD4Pl+z6eaiQcxpTXbXVJJnv1kuEyFk8e/V3DTGzd7dE/LkyiFoHj8ctwMyT
	WwdS9qyy1xXX5SPOvQyUqbYkWFNsFdRwQTqDEZwxTETFMVHJGU2ldeXDE30D5ZEM/pXZtyGwgD5A4
	U1uJAemA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHOjh-0000000HMJV-2jqW;
	Mon, 27 Apr 2026 16:23:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHOjf-0000000HMIR-1LxQ
	for barebox@lists.infradead.org;
	Mon, 27 Apr 2026 16:23:04 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1wHOjb-0006h6-R0; Mon, 27 Apr 2026 18:22:59 +0200
From: Fabian Pflug <f.pflug@pengutronix.de>
Date: Mon, 27 Apr 2026 18:22:55 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260427-v2026-04-0-topic-csf_fixup-v1-1-a7178ecb1b6e@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIAF6N72kC/x2M0QpAMBRAf0X32a2ZmfgVSTYX94W1IbX8u/F2T
 qdOhECeKUCbRfB0ceB9S1LkGdh13BZCnpKDFFILJWu8PkKhUOCxO7ZowzzMfJ8OTdNUptKlpqm
 GNHCeUvjnXf88L0iDukhsAAAA
X-Change-ID: 20260427-v2026-04-0-topic-csf_fixup-b995b5636ed7
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Fabian Pflug <f.pflug@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260427_092303_364315_940258E0 
X-CRM114-Status: GOOD (  10.67  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] arm: i.mx: fix error in field return configuration
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In the previous version, the newly declared variable had the same name
as the HAB-env variable, resulting in precedence for the HAB-env
variable, resulting in included quotes, when substituting
CONFIG_HABV4_CSF_UNLOCK_UID with the value from defconfig.

The csf tool in turn can't handle the string and replaces it with a
single byte 0x60, which leads to non-bootable images.

Previous:
hab UID = "0x00, 0x11, 0x22, ..., 0xAA"

Now:
hab UID = 0x00, 0x11, 0x22, ..., 0xAA

The variables have to be different and removing the CONFIG_ at the
beginning fulfills this, even though it now looks a bit confusing.

Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
---
 include/mach/imx/habv4-imx6-gencsf-template.h | 2 +-
 include/mach/imx/habv4-imx8-gencsf.h          | 2 +-
 scripts/Makefile.lib                          | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/include/mach/imx/habv4-imx6-gencsf-template.h b/include/mach/imx/habv4-imx6-gencsf-template.h
index a793496d49..c24bf84b85 100644
--- a/include/mach/imx/habv4-imx6-gencsf-template.h
+++ b/include/mach/imx/habv4-imx6-gencsf-template.h
@@ -43,7 +43,7 @@ hab Features = SETUP_HABV4_FEATURES
 hab [Unlock]
 hab Engine = OCOTP
 hab Features = FIELD RETURN
-hab UID = CONFIG_HABV4_CSF_UNLOCK_UID
+hab UID = HABV4_CSF_UNLOCK_UID
 #endif
 
 hab [Install Key]
diff --git a/include/mach/imx/habv4-imx8-gencsf.h b/include/mach/imx/habv4-imx8-gencsf.h
index d3fe3e34c6..480f88fa95 100644
--- a/include/mach/imx/habv4-imx8-gencsf.h
+++ b/include/mach/imx/habv4-imx8-gencsf.h
@@ -46,7 +46,7 @@ hab Features = SRK REVOKE
 hab [Unlock]
 hab Engine = OCOTP
 hab Features = FIELD RETURN
-hab UID = CONFIG_HABV4_CSF_UNLOCK_UID
+hab UID = HABV4_CSF_UNLOCK_UID
 #endif
 
 hab [Install Key]
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 0dbaa071cf..6708802477 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -592,7 +592,7 @@ imxcfg_cpp_flags  = -Wp,-MD,$(depfile) -nostdinc -x assembler-with-cpp \
       $(call overwrite-hab-env,CONFIG_HABV3_IMG_CRT_DER) \
       $(call overwrite-hab-env,CONFIG_HABV4_TABLE_BIN) \
       $(call overwrite-hab-env,CONFIG_HABV4_CSF_CRT_PEM) \
-      -DCONFIG_HABV4_CSF_UNLOCK_UID=$(CONFIG_HABV4_CSF_UNLOCK_UID) \
+      -DHABV4_CSF_UNLOCK_UID=$(CONFIG_HABV4_CSF_UNLOCK_UID) \
       $(call overwrite-hab-env,CONFIG_HABV4_IMG_CRT_PEM) \
 
 dcd-tmp = $(subst $(comma),_,$(dot-target).dcd.tmp)

---
base-commit: c3e3a36f1511a7b4f34061b7be118085b80f7165
change-id: 20260427-v2026-04-0-topic-csf_fixup-b995b5636ed7

Best regards,
-- 
Fabian Pflug <f.pflug@pengutronix.de>



