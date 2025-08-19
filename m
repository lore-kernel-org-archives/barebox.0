Delivery-date: Tue, 19 Aug 2025 16:54:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uoNir-002IT1-08
	for lore@lore.pengutronix.de;
	Tue, 19 Aug 2025 16:54:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uoNip-0007oZ-UC
	for lore@pengutronix.de; Tue, 19 Aug 2025 16:54:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=b5sX2upE47o/j8D6IKcWb8tBW6a5FhFa4emV0S2Wvik=; b=gSptF5+2+RqoE+DFGp/C2xjR62
	c5kk4J+gBnXDAWPcHNMRqorxQPZQDiMKXdC/ereZKw/wwdn7xeIdBR1RNkSndkmYBP0pgk/wisRg0
	600MDbF3WhQs3Xmsr/KiE7YEJL8OUIn2FhTGHmn4Ip4tMXMm89cXiF3onupNxFvJQwvMasPnXfk57
	2e7QCAnjf0X+CDbCxQOd+osRkH9l8HbxQY8VcL/LHDTrhKtvK1wB47KCSBlBxqOkVC16Z41Idgidx
	DDZcrrC/QdMl7tS+CQvbF7AErsCGfV8lGxXQWLaS/qPZvfCNaClUI1jxY34ItZqiAg6RrlxBtSMpW
	MLJSk3ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoNi7-0000000AoFo-2hC6;
	Tue, 19 Aug 2025 14:53:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uoLEP-0000000AOeY-3uBm
	for barebox@lists.infradead.org;
	Tue, 19 Aug 2025 12:14:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uoLEN-00052Y-TG; Tue, 19 Aug 2025 14:14:23 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uoLEN-00148D-2L;
	Tue, 19 Aug 2025 14:14:23 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uoLEN-00GaHR-22;
	Tue, 19 Aug 2025 14:14:23 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 19 Aug 2025 14:14:22 +0200
Message-Id: <20250819121422.3952695-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250819_051425_965487_8256C317 
X-CRM114-Status: UNSURE (   8.26  )
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
Subject: [PATCH master] ARM: drop unused ARM_USE_COMPRESSED_DTB
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The new USE_COMPRESSED_DTB option is selected unconditionally for ARM,
so drop the stale selects to the old symbol.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig | 1 -
 arch/arm/mach-k3/Kconfig  | 1 -
 2 files changed, 2 deletions(-)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 92e43768c8b5..0d745ce23158 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -392,7 +392,6 @@ config MACH_EMBEST_RIOTBOARD
 config MACH_TORADEX_COLIBRI_IMX6
 	bool "Toradex Colibri iMX6"
 	select ARCH_IMX6
-	select ARM_USE_COMPRESSED_DTB
 
 config MACH_SABRELITE
 	bool "Freescale i.MX6 Sabre Lite"
diff --git a/arch/arm/mach-k3/Kconfig b/arch/arm/mach-k3/Kconfig
index 338421a8af17..65fa5f871374 100644
--- a/arch/arm/mach-k3/Kconfig
+++ b/arch/arm/mach-k3/Kconfig
@@ -24,7 +24,6 @@ config MACH_K3_CORTEX_R5
 	select FIP
 	select HAVE_FIRMWARE_VERIFY_NEXT_IMAGE
 	depends on 32BIT
-	select ARM_USE_COMPRESSED_DTB
 	select HAS_INSECURE_DEFAULTS if (!FIRMWARE_VERIFY_NEXT_IMAGE && !ARCH_K3_AUTHENTICATE_IMAGE)
 	default y
 
-- 
2.39.5



