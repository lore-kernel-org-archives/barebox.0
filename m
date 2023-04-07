Delivery-date: Fri, 07 Apr 2023 20:45:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pkr5k-00DRWK-1i
	for lore@lore.pengutronix.de; Fri, 07 Apr 2023 20:45:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pkr5j-0000nA-Kn
	for lore@pengutronix.de; Fri, 07 Apr 2023 20:45:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:MIME-Version:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=jBMmDqFd3djE0+TutjtTmjNJPTFAu30o2+e5imC7Hqo=; b=evIB4uDbwmgZI42NPxFQ80UK2p
	iaXXNXkYjB/WXMuo7zcvtm155MMo6EXSL+N/5G9rbClllIjXaWy/Wl+ggxXG5MkSR55vaAMAYQ1HH
	kl860+6sbLAwlTBdFvg5wsVnza4pomiRuML2CKg0z1aIhfMJn9w2lh1+z3/DjNBqpZa740frzrPFC
	Q52+9ehqnvkWIQ3uGZc2aj6QIL1THbzZEo3lKZ+5FcPa3TpblS4As/o461WQld7t4X3ILuIowinUJ
	6YIAGfc9m32G5bjVc4c7xH6V8/wvT6X4XrYRz5LBy3M17tsLaCXmU9tcwVmEP3ybqutXo2rJG9RdL
	ZPmMpb3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pkr4D-00Aucs-1Q;
	Fri, 07 Apr 2023 18:44:09 +0000
Received: from mailrelay5-1.pub.mailoutpod2-cph3.one.com ([2a02:2350:5:404::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pkr48-00Aubm-2C
	for barebox@lists.infradead.org;
	Fri, 07 Apr 2023 18:44:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ravnborg.org; s=rsa2;
	h=content-type:mime-version:message-id:subject:to:from:date:from;
	bh=jBMmDqFd3djE0+TutjtTmjNJPTFAu30o2+e5imC7Hqo=;
	b=b2Em/kg/Zbqh2WZ/KVOxvEUeG1RG6CfJSbLYdejF5W7G9SyHn/6J1P1Z+GOXeliLuDsEsUUst8SgW
	 tPdNDG1b5GBu2oV0pEbfdJILFdi96I2HOyARHhLDQBXWQS2UUeUm7EsGtHqdLLVtZqGfVrp4IzDgyH
	 5mV5hPMrBpnLK5CpFOCNdA2yNAxaq3k9C7rykicmhufEwqL5Wh4G0HsE1Y4j6mdNrX8sXg8SlI5oIK
	 rHJrWjiXPcnjx9duTd97pCkF35q5iUktq7O1lXWKfGsmzo12W/RNUZXoXD6z0NnsuCkUtBHmD45ES1
	 hQ/uZRfRgEjJhb8E1k22/fg+c8pVf1w==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
	d=ravnborg.org; s=ed2;
	h=content-type:mime-version:message-id:subject:to:from:date:from;
	bh=jBMmDqFd3djE0+TutjtTmjNJPTFAu30o2+e5imC7Hqo=;
	b=SfEHSaGlxJuEVPeKgiBr2lFfqicCpUdOOf/pOHMxESkKNLZR24d1twyDAP8wD1g8R1aXrcFVVTf5H
	 9paYqLcAA==
X-HalOne-ID: 26b33944-d574-11ed-8b7f-231b2edd0ed2
Received: from ravnborg.org (2-105-2-98-cable.dk.customer.tdc.net [2.105.2.98])
	by mailrelay5 (Halon) with ESMTPSA
	id 26b33944-d574-11ed-8b7f-231b2edd0ed2;
	Fri, 07 Apr 2023 18:43:57 +0000 (UTC)
Date: Fri, 7 Apr 2023 20:43:56 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20230407184356.GA1648837@ravnborg.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230407_114406_205329_352F59B8 
X-CRM114-Status: UNSURE (   8.51  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 1/2] ARM: sama5d4_wifx: fix build with moved mach files
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)


Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---
 arch/arm/boards/sama5d4_wifx/lowlevel.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/sama5d4_wifx/lowlevel.c b/arch/arm/boards/sama5d4_wifx/lowlevel.c
index 0c3529e659..c47b14c55b 100644
--- a/arch/arm/boards/sama5d4_wifx/lowlevel.c
+++ b/arch/arm/boards/sama5d4_wifx/lowlevel.c
@@ -2,8 +2,8 @@
 // SPDX-FileCopyrightText: 2022 Ahmad Fatoum, Pengutronix
 
 #include <debug_ll.h>
-#include <mach/barebox-arm.h>
-#include <mach/ddramc.h>
+#include <mach/at91/barebox-arm.h>
+#include <mach/at91/ddramc.h>
 
 SAMA5D4_ENTRY_FUNCTION(start_sama5d4_wifx_l1, r4)
 {
-- 
2.34.1



