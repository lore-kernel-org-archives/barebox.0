Delivery-date: Sun, 15 May 2022 21:40:31 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nqK6R-00EWU2-QE
	for lore@lore.pengutronix.de; Sun, 15 May 2022 21:40:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nqK6O-0005wp-Rs
	for lore@pengutronix.de; Sun, 15 May 2022 21:40:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8F9fZMBxApe2YRkPzT2j0+sU23QSnqEjJzgv0sYXxIc=; b=KyxKiWlCWi5TRP
	rMNWtwaa7HEeSA+VTZaQBwVseA4h5tujq1PvH9sr4W8Bj0ZxRm3ZR8nU6/7wNymGkuxNKwckxghnl
	6yxkMny7bkYUWtHBOopjNLIkEMKu1tYpzWIESWsuqVw2ooOJzjLzsJ6loLL2TQM62d2sxvo5wVuok
	4XiKKz90d3Pk2ETpmn/0NJQcH/fH9EsmoXP9r+erkdId9uqRA7qO9qlX+sM1A9omtXEGQUo/udsXs
	mKPOGvWkzgbk/9sXZKZqFMbp58DOLD/2ImgtCe7Ggefx6VwynuwyZNqN9VHURBCwq6sDuZgOHwX28
	B6dB2gBZ+q/0v1pEe7NQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nqK4e-004nZP-9a; Sun, 15 May 2022 19:38:40 +0000
Received: from mailrelay2-1.pub.mailoutpod1-cph3.one.com ([46.30.210.183])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nqK4T-004nVs-Cz
 for barebox@lists.infradead.org; Sun, 15 May 2022 19:38:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ravnborg.org; s=rsa1;
 h=content-transfer-encoding:mime-version:references:in-reply-to:message-id:date:
 subject:cc:to:from:from;
 bh=NHMs9ytjDn0etmXTZTL4Nsdrd9/sLgViy/Jav9T2VTc=;
 b=ZyWpWOTqNjA1/itg/Oa62KbL0sZi17zqDmxtGlZgdnVGTFsJpsZIUyuPlnr5NVzNBCWkaP/sef7+g
 rTcjp/5ga7X+3p72y/R8+Cczt68BXgyagyAobmk6rDdSqbpkAlzN+6prbRGqYu5J39GaqIGOHJ/fje
 KLpV53X9R7BHyMgeKzCa7YsCV514ZI1Wxcebst0NAlcGDtnPjhMTE856EXOT58k4Z6NbwNIzElNa99
 gIPLKv4oji29Ey8cYOk6FZuS6u/pVnbEkX0Oz6/pCpJnzNSo9RF6h/Gql8sJf22Snz3jFI/5zgNr+8
 /9kOswzS+9q1qtDLwi068TjEv+xQjCQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
 d=ravnborg.org; s=ed1;
 h=content-transfer-encoding:mime-version:references:in-reply-to:message-id:date:
 subject:cc:to:from:from;
 bh=NHMs9ytjDn0etmXTZTL4Nsdrd9/sLgViy/Jav9T2VTc=;
 b=QKRoEMXEeDMAFfhRifMB6f4SkiYD4hzAoTjkmf7wD96GcZHgLdmzmXkYNlgj3/OKGEYJpNxwoRiCs
 nzHYINWAA==
X-HalOne-Cookie: f4b8b7e89f766178adc8e108da64313c64568fda
X-HalOne-ID: 97acb584-d486-11ec-a908-d0431ea8a290
Received: from mailproxy4.cst.dirpod4-cph3.one.com
 (80-162-45-141-cable.dk.customer.tdc.net [80.162.45.141])
 by mailrelay2.pub.mailoutpod1-cph3.one.com (Halon) with ESMTPSA
 id 97acb584-d486-11ec-a908-d0431ea8a290;
 Sun, 15 May 2022 19:38:27 +0000 (UTC)
From: Sam Ravnborg <sam@ravnborg.org>
To: barebox@lists.infradead.org
Cc: Sam Ravnborg <sam@ravnborg.org>
Date: Sun, 15 May 2022 21:38:05 +0200
Message-Id: <20220515193807.354903-7-sam@ravnborg.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220515193807.354903-1-sam@ravnborg.org>
References: <20220515193807.354903-1-sam@ravnborg.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220515_123829_622781_E21B46FC 
X-CRM114-Status: UNSURE (   8.49  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v1 6/8] ARM: at91: Make sdramc.h useable in multi image builds
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

There is no need to ifdef out all the static inlines as the headers
no longer conflicts. Drop the ifdefs so we can now use the header
in multi image builds.

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---
 .../mach-at91/include/mach/at91sam9_sdramc.h  | 45 ++-----------------
 1 file changed, 4 insertions(+), 41 deletions(-)

diff --git a/arch/arm/mach-at91/include/mach/at91sam9_sdramc.h b/arch/arm/mach-at91/include/mach/at91sam9_sdramc.h
index c34668d7b..fe76f60b0 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9_sdramc.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9_sdramc.h
@@ -177,6 +177,10 @@
 
 #ifndef __ASSEMBLY__
 #include <io.h>
+#include <mach/at91sam9260.h>
+#include <mach/at91sam9261.h>
+#include <mach/at91sam9263.h>
+
 static inline u32 at91_get_sdram_size(void *base)
 {
 	u32 val;
@@ -203,14 +207,11 @@ static inline u32 at91_get_sdram_size(void *base)
 	return size;
 }
 
-
 static inline bool at91_is_low_power_sdram(void *base)
 {
 	return readl(base + AT91_SDRAMC_MDR) & AT91_SDRAMC_MD_LOW_POWER_SDRAM;
 }
 
-#ifdef CONFIG_SOC_AT91SAM9260
-#include <mach/at91sam9260.h>
 static inline u32 at91sam9260_get_sdram_size(void)
 {
 	return at91_get_sdram_size(IOMEM(AT91SAM9260_BASE_SDRAMC));
@@ -220,20 +221,7 @@ static inline bool at91sam9260_is_low_power_sdram(void)
 {
 	return at91_is_low_power_sdram(IOMEM(AT91SAM9260_BASE_SDRAMC));
 }
-#else
-static inline u32 at91sam9260_get_sdram_size(void)
-{
-	return 0;
-}
-
-static inline bool at91sam9260_is_low_power_sdram(void)
-{
-	return false;
-}
-#endif
 
-#ifdef CONFIG_SOC_AT91SAM9261
-#include <mach/at91sam9261.h>
 static inline u32 at91sam9261_get_sdram_size(void)
 {
 	return at91_get_sdram_size(IOMEM(AT91SAM9261_BASE_SDRAMC));
@@ -243,20 +231,7 @@ static inline bool at91sam9261_is_low_power_sdram(void)
 {
 	return at91_is_low_power_sdram(IOMEM(AT91SAM9261_BASE_SDRAMC));
 }
-#else
-static inline u32 at91sam9261_get_sdram_size(void)
-{
-	return 0;
-}
-
-static inline bool at91sam9261_is_low_power_sdram(void)
-{
-	return false;
-}
-#endif
 
-#ifdef CONFIG_SOC_AT91SAM9263
-#include <mach/at91sam9263.h>
 static inline u32 at91sam9263_get_sdram_size(int bank)
 {
 	switch (bank) {
@@ -280,18 +255,6 @@ static inline bool at91sam9263_is_low_power_sdram(int bank)
 		return false;
 	}
 }
-#else
-static inline u32 at91sam9263_get_sdram_size(int bank)
-{
-	return 0;
-}
-
-static inline bool at91sam9263_is_low_power_sdram(void)
-{
-	return false;
-}
-#endif
 
 #endif
-
 #endif
-- 
2.34.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

