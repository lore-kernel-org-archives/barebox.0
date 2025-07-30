Delivery-date: Wed, 30 Jul 2025 07:59:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ugzqd-005AUy-1T
	for lore@lore.pengutronix.de;
	Wed, 30 Jul 2025 07:59:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ugzqc-0003H0-QM
	for lore@pengutronix.de; Wed, 30 Jul 2025 07:59:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zpKWfzspGYGK1uvqZZKVRcKCKUKOiCsifKfw0Spl2tg=; b=OiVGB13J1bx/0ItwCPeP35bBRg
	cClhHQl7dyUAXOdFtMCwqw6hf2PomBOZcso4Qp/Z9PWjtpbm25VfODsLsD1dzyDZ8+7ricM71JURv
	1IEaBad1DL5H2em3ENLdPXdFwGX74OdXvE9qKNfuIb9pnT9XYlUv0ryAwT5dN+d0O8IR75FqBJTGv
	JbuoZ9XVzWFtYWOEBNlQAhwT/ntxE27oYhSOuHa1Zvz7LnaZDYaMNR9UHirsc/hjKpoB6tCTyFgJX
	xulI6dO1lwHu9AgY4J+g/ECBVnTXT/GgA/ZPVkCbSa4MrSw7JBb+S3KqYiZ8VNhche1Z3Spb07ugs
	KYYheTPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugzq2-00000000kwV-0qWt;
	Wed, 30 Jul 2025 05:58:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugzoy-00000000kgp-2aTc
	for barebox@lists.infradead.org;
	Wed, 30 Jul 2025 05:57:51 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1ugzov-0002zI-7v; Wed, 30 Jul 2025 07:57:45 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: chalianis1@gmail.com,
	Ahmad Fatoum <a.fatoum@barebox.org>
Date: Wed, 30 Jul 2025 07:57:42 +0200
Message-Id: <20250730055743.922932-3-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250730055743.922932-1-a.fatoum@barebox.org>
References: <20250730055743.922932-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250729_225748_673873_0063F997 
X-CRM114-Status: UNSURE (   9.01  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/4] ARM: configs: multi: configure CONFIG_CONSOLE_ACTIVATE_ALL_FALLBACK
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To be more robust against regressions and to allow use for EFI payload,
where nothing yet enables a default console, have barebox activate all
consoles if none have been registered normally.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/configs/multi_v5_v6_defconfig | 2 +-
 arch/arm/configs/multi_v7_defconfig    | 2 +-
 arch/arm/configs/multi_v8_defconfig    | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/configs/multi_v5_v6_defconfig b/arch/arm/configs/multi_v5_v6_defconfig
index 91d3a63e85ab..c3739be1020d 100644
--- a/arch/arm/configs/multi_v5_v6_defconfig
+++ b/arch/arm/configs/multi_v5_v6_defconfig
@@ -27,7 +27,7 @@ CONFIG_BOOTM_VERBOSE=y
 CONFIG_BOOTM_INITRD=y
 CONFIG_BOOTM_OFTREE=y
 CONFIG_BLSPEC=y
-CONFIG_CONSOLE_ACTIVATE_NONE=y
+CONFIG_CONSOLE_ACTIVATE_ALL_FALLBACK=y
 CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
 CONFIG_RESET_SOURCE=y
 CONFIG_LONGHELP=y
diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
index 726afe8ce6c5..334a1b951902 100644
--- a/arch/arm/configs/multi_v7_defconfig
+++ b/arch/arm/configs/multi_v7_defconfig
@@ -109,7 +109,7 @@ CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_BOOTM_AIMAGE=y
 CONFIG_BOOTM_FITIMAGE=y
 CONFIG_BLSPEC=y
-CONFIG_CONSOLE_ACTIVATE_NONE=y
+CONFIG_CONSOLE_ACTIVATE_ALL_FALLBACK=y
 CONFIG_CONSOLE_ALLOW_COLOR=y
 CONFIG_PBL_CONSOLE=y
 CONFIG_CONSOLE_RATP=y
diff --git a/arch/arm/configs/multi_v8_defconfig b/arch/arm/configs/multi_v8_defconfig
index 5c295cd58269..37642be19b22 100644
--- a/arch/arm/configs/multi_v8_defconfig
+++ b/arch/arm/configs/multi_v8_defconfig
@@ -58,7 +58,7 @@ CONFIG_BOOTM_OFTREE_UIMAGE=y
 CONFIG_BOOTM_AIMAGE=y
 CONFIG_BOOTM_FITIMAGE=y
 CONFIG_BLSPEC=y
-CONFIG_CONSOLE_ACTIVATE_NONE=y
+CONFIG_CONSOLE_ACTIVATE_ALL_FALLBACK=y
 CONFIG_CONSOLE_ALLOW_COLOR=y
 CONFIG_PBL_CONSOLE=y
 CONFIG_CONSOLE_RATP=y
-- 
2.39.5



