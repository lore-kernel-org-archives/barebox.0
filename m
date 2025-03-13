Delivery-date: Thu, 13 Mar 2025 07:46:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tscKq-00DSOO-2J
	for lore@lore.pengutronix.de;
	Thu, 13 Mar 2025 07:46:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tscKp-0006qP-Dn
	for lore@pengutronix.de; Thu, 13 Mar 2025 07:46:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=mUUvNdZINRHc6J2Un/uTcNZdTEbjCpLrbaUDtptAVKg=; b=Q54pTSFY1cWyV9wawyFuv/eUqL
	b+e9d+MWEzHoUutkixxPUDKiE5LkkkZ247432EPGaPF3633s33w50SXftjMwHuVpkCAc37da62tAb
	H59ophuCFlXPaVw4W09KWGmmrqJlwvV3Xcc0svNr7uKxK/BxLfl/Wkdzxr6R374cVwCshhW6M6e6q
	/lgjPHMr3XMhyiL+zqUsfHoi+T5IP3rFtN3XWWDpPuOzgxBYpP5PCXp6M9P/L1MTLrSzzSPoI8WTe
	CEROdQuvGuo2JdZJWy8R75H1yYPrqufmE5l2VgKsAYIz3a2weatGVoFWcXEDAHpxjAbRES+MmNE2N
	MZXWsB9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tscKQ-0000000AFjw-3jZm;
	Thu, 13 Mar 2025 06:46:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tscKN-0000000AFhh-1oWU
	for barebox@lists.infradead.org;
	Thu, 13 Mar 2025 06:46:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tscKM-0006Vi-4s; Thu, 13 Mar 2025 07:45:58 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tscKL-005UJ8-32;
	Thu, 13 Mar 2025 07:45:57 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tscKL-000K8j-2k;
	Thu, 13 Mar 2025 07:45:57 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 13 Mar 2025 07:45:52 +0100
Message-Id: <20250313064557.77398-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250312_234559_467101_7A807DCB 
X-CRM114-Status: UNSURE (   8.55  )
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
Subject: [PATCH 1/6] arch: move promptless options to end of Kconfig file
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Later commits will move many more promptless arch symbols into the file,
so prepare for that by moving the current ones to the end and leave the
options, which either have a prompt or are not boolean at the start.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/Kconfig | 32 ++++++++++++++++----------------
 1 file changed, 16 insertions(+), 16 deletions(-)

diff --git a/arch/Kconfig b/arch/Kconfig
index aee5375dc70c..21175b90a076 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -9,19 +9,6 @@
 #
 source "arch/$(SRCARCH)/Kconfig"
 
-config ARCH_HAS_CTRLC
-	bool
-
-#
-# Select this option if the architecture assumes DMA devices are coherent
-# by default.
-#
-config ARCH_DMA_DEFAULT_COHERENT
-	bool
-
-config ARCH_HAS_ASAN_FIBER_API
-	bool
-
 config ARCH_LINUX_NAME
 	string
 	default "$(SRCARCH)"
@@ -30,9 +17,6 @@ config ARCH_MKIMAGE_NAME
 	string
 	default "invalid"
 
-config HAVE_ARCH_BOARD_GENERIC_DT
-	bool
-
 menu "General architecture-dependent options"
 
 config BOARD_GENERIC_DT
@@ -64,3 +48,19 @@ config BOARD_GENERIC_FIT
 	  installed on the build host.
 
 endmenu
+
+config ARCH_HAS_CTRLC
+	bool
+
+#
+# Select this option if the architecture assumes DMA devices are coherent
+# by default.
+#
+config ARCH_DMA_DEFAULT_COHERENT
+	bool
+
+config ARCH_HAS_ASAN_FIBER_API
+	bool
+
+config HAVE_ARCH_BOARD_GENERIC_DT
+	bool
-- 
2.39.5



