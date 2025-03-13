Delivery-date: Thu, 13 Mar 2025 08:55:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsdPH-00DTop-2u
	for lore@lore.pengutronix.de;
	Thu, 13 Mar 2025 08:55:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsdPG-00026d-Ju
	for lore@pengutronix.de; Thu, 13 Mar 2025 08:55:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7vPi6njTUaAhqbUdOd/kRuEg6ThQufr062i83H+c26Y=; b=wC6n7mL3xpzWUlAOqeBlBaIWEe
	3+tHxoYVBqX+Feq5/2TfD8CVshvyzB0h2CiSOVJc08M5iuKkKffl4N1Y1LpDwhFvQcJbKIyKA0ihc
	AEuQZP/nkBwLzsenjX0nMWmtvi8yKDh3FpwguAC89jRtYMprXa3fhnJ/mR1TicVbXWaYdYKCpYSUn
	6EqMOtzIvpGAKziQTXkdzkjuhH9s/5maz8boLMJv8yf2yiNOKy0wQ6bfwoITXlLL/6LncEVdjCHmY
	1HuXhQBWd9FY+PmULV0qNFQVummDgUSOsaFay04dwvstONBM+70F+b/BOUeO1/hRJt/LnAa9Twh8I
	hjkJw1BA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsdOt-0000000ATGO-2C7W;
	Thu, 13 Mar 2025 07:54:43 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsdOY-0000000ATAB-1Dnn
	for barebox@lists.infradead.org;
	Thu, 13 Mar 2025 07:54:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tsdOX-0001k7-1v; Thu, 13 Mar 2025 08:54:21 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tsdOW-005Uyz-2g;
	Thu, 13 Mar 2025 08:54:20 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tsdOW-00DRHH-2M;
	Thu, 13 Mar 2025 08:54:20 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 13 Mar 2025 08:54:16 +0100
Message-Id: <20250313075416.3202194-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250313075416.3202194-1-a.fatoum@pengutronix.de>
References: <20250313075416.3202194-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250313_005422_368609_71B424E6 
X-CRM114-Status: GOOD (  10.05  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 6/6] x86: move CONFIG_PHYS_ADDR_T_64BIT setting into Kconfig
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

sizeof(phys_addr_t) depends on whether CONFIG_PHYS_ADDR_T_64BIT is
enabled, which we so far defined depending on __x86_64__ in a header
file.

Given that we have a 64BIT symbol already in Kconfig that's selected
when building for 64-bit, let's have it select PHYS_ADDR_T_64BIT.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - drop CONFIG_PHYS_ADDR_T_64BIT assignment in header file
  - reword commit message accordingly
---
 arch/x86/Kconfig             | 1 +
 arch/x86/include/asm/types.h | 6 ------
 2 files changed, 1 insertion(+), 6 deletions(-)

diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
index cea8e25b81f0..b453890f022b 100644
--- a/arch/x86/Kconfig
+++ b/arch/x86/Kconfig
@@ -28,6 +28,7 @@ menu "ARCH specific settings"
 config 64BIT
 	def_bool y if X86_EFI
 	select ARCH_DMA_ADDR_T_64BIT
+	select PHYS_ADDR_T_64BIT
 	help
 	  Say yes to build a 64-bit binary - formerly known as x86_64
 	  Say no to build a 32-bit binary - formerly known as i386.
diff --git a/arch/x86/include/asm/types.h b/arch/x86/include/asm/types.h
index 52a6e51fd4b1..feb5843b9c92 100644
--- a/arch/x86/include/asm/types.h
+++ b/arch/x86/include/asm/types.h
@@ -14,12 +14,6 @@
  */
 #define INTERNAL_SIZE_T unsigned long
 
-/*
- * This is a Kconfig variable in the Kernel, but we want to detect
- * this during compile time, so we set it here.
- */
-#define CONFIG_PHYS_ADDR_T_64BIT
-
 #endif
 
 #endif
-- 
2.39.5



