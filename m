Delivery-date: Tue, 28 Jun 2022 22:40:54 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6I0x-000bKk-CV
	for lore@lore.pengutronix.de; Tue, 28 Jun 2022 22:40:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6I0z-0004Fc-6o
	for lore@pengutronix.de; Tue, 28 Jun 2022 22:40:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HUQ+XsSDPFuFlliAY8OAtkRsj0h05qwFswyVapQMDd0=; b=qgiPHORnwy+WX3qqKH3sKLfX48
	GfJPT+fHRPJTfQCqM/sG760oOcb4nH9Fa1C9uGFmJoYRsCKWXshOEuwMp2PvWo1MSQW6QCe7xzQMy
	6bjU6FO3cycsW6qia0Tp5kgiDjkmLzLMA4mfktntwzbB7tmQsL48y9dWcGdS0Crr3O8a5UNEqcZtN
	Mc4wQopGgNDzYOK6eqq0HjfyKsPDzp3Yjqg8m/rTXBtq+w2u1D07c2t1xHyw6IhWZidePv5fUr2gZ
	7HR6e26dESRrBo/K0ZUJ+I39biyheciol8qbaJSVJ83AMdpcRW0Lee/7N2bCCkd9DJz+TEC8rwAHF
	fFr68/CA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6HzM-0084jN-5f; Tue, 28 Jun 2022 20:39:12 +0000
Received: from mailrelay3-1.pub.mailoutpod1-cph3.one.com ([46.30.210.184])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6HzF-0084gd-5e
	for barebox@lists.infradead.org; Tue, 28 Jun 2022 20:39:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ravnborg.org; s=rsa1;
	h=content-transfer-encoding:mime-version:references:in-reply-to:message-id:date:
	 subject:cc:to:from:from;
	bh=HUQ+XsSDPFuFlliAY8OAtkRsj0h05qwFswyVapQMDd0=;
	b=jC7Xn9tynfW4+b+6qEJOMJeblLpaRRxUw1vLEO8dxXZS2TwlfG5SEl5GzwdkTul1uarXB3C1fSjzt
	 oFLnpVmqLU4Qhmfziu3RnSKxIj7EP0pMbnxDv6HTWD5U3lpRejIT+kZNhrT15TyuqN2WZqXcMhdZ0I
	 UJatxBR11GRPajoDwtCdHRAg+e2Xt/MmMSgbbym9rdvRvQ3fEHAw2vG5x9c+ojSAB9oLB63lBZ2SbI
	 mJuq4osj9+97VvaUwk6tdYebJcxfZ+So8cVBK2Szg7jSsFh1QN5gdUCM/YP3m4YHJoNCzF6xfTyVGI
	 qDrjhJLZzZctNsfaGI3NlttXWh8y7OA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
	d=ravnborg.org; s=ed1;
	h=content-transfer-encoding:mime-version:references:in-reply-to:message-id:date:
	 subject:cc:to:from:from;
	bh=HUQ+XsSDPFuFlliAY8OAtkRsj0h05qwFswyVapQMDd0=;
	b=4Wc/IUQs7AYMijrVOJltUIaH2tsb5OX2tjMe3F74BH2sTEffPMhQy3/LG5+/uRYuzr+8JPhr/Jick
	 rOyxsWaBg==
X-HalOne-Cookie: ab42c38a8abdacaeb094e04aa90c2582d5744cb6
X-HalOne-ID: 58dca66c-f722-11ec-be7c-d0431ea8bb03
Received: from mailproxy3.cst.dirpod4-cph3.one.com (80-162-45-141-cable.dk.customer.tdc.net [80.162.45.141])
	by mailrelay3.pub.mailoutpod1-cph3.one.com (Halon) with ESMTPSA
	id 58dca66c-f722-11ec-be7c-d0431ea8bb03;
	Tue, 28 Jun 2022 20:39:03 +0000 (UTC)
From: Sam Ravnborg <sam@ravnborg.org>
To: barebox@lists.infradead.org,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Sam Ravnborg <sam@ravnborg.org>
Date: Tue, 28 Jun 2022 22:38:40 +0200
Message-Id: <20220628203849.2785611-3-sam@ravnborg.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220628203849.2785611-1-sam@ravnborg.org>
References: <20220628203849.2785611-1-sam@ravnborg.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220628_133905_977492_537264CC 
X-CRM114-Status: UNSURE (   8.94  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 02/11] ARM: at91: Make sdramc.h useable in multi image builds
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
index 80effe214..3cda10165 100644
--- a/arch/arm/mach-at91/include/mach/at91sam9_sdramc.h
+++ b/arch/arm/mach-at91/include/mach/at91sam9_sdramc.h
@@ -81,6 +81,10 @@
 
 #ifndef __ASSEMBLY__
 #include <io.h>
+#include <mach/at91sam9260.h>
+#include <mach/at91sam9261.h>
+#include <mach/at91sam9263.h>
+
 static inline u32 at91_get_sdram_size(void *base)
 {
 	u32 val;
@@ -107,14 +111,11 @@ static inline u32 at91_get_sdram_size(void *base)
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
@@ -124,20 +125,7 @@ static inline bool at91sam9260_is_low_power_sdram(void)
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
@@ -147,20 +135,7 @@ static inline bool at91sam9261_is_low_power_sdram(void)
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
@@ -184,18 +159,6 @@ static inline bool at91sam9263_is_low_power_sdram(int bank)
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



