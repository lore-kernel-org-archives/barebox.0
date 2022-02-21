Delivery-date: Mon, 21 Feb 2022 11:54:54 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nM6LG-005vUn-7z
	for lore@lore.pengutronix.de; Mon, 21 Feb 2022 11:54:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nM6LE-0007Mt-AU
	for lore@pengutronix.de; Mon, 21 Feb 2022 11:54:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tuLzNyVA+Xmhg/2XND+5QcIrWxTlSRCAHN5M+HGMlRc=; b=kiOOtcIk1O9hKv
	tNy4fpww6PTdi6tPRIJSLZJtTxx1NynGM8EOzyoTgqVOZbxPnsX0DPXA/+RqyGFgkt92bmqHNTChn
	iFLEeNXB/CZG/BO3k1DmErwz3cxZAhYRpUmNZ+I1SV5lKqIph9CKu07JT5KwEW9LyOj3GbEGeEd6V
	3Q8J5sBw6v8wVPfDW2/feauRrnxN/fN5cvQfMvAwW4P8cN4KD0nxlayR76QIz1aUjkDvQ0CFXET6x
	pP4+R6+c7O/5kK0eDrDXQsVKLFFJLK33ae5HrIIVelo31tyTLHRvUMj4maISuFGGKwkPtegxDX4oE
	1QcOuiym0qRlma7xVQxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nM6JU-0058H1-BX; Mon, 21 Feb 2022 10:53:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nM62E-004zW3-Qb
 for barebox@lists.infradead.org; Mon, 21 Feb 2022 10:35:16 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nM62D-0004fA-3S; Mon, 21 Feb 2022 11:35:13 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nM62C-00FdV2-GR; Mon, 21 Feb 2022 11:35:12 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 21 Feb 2022 11:35:09 +0100
Message-Id: <20220221103509.3726607-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220220124736.3052502-8-a.fatoum@pengutronix.de>
References: <20220220124736.3052502-8-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220221_023514_890371_5B7892C5 
X-CRM114-Status: UNSURE (   9.44  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] fixup! ARM: stm32mp: build extra
 barebox-stm32mp-generic-bl33.img
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Otherwise, this image is built even for non-STM32MP machines.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 images/Makefile.stm32mp | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/images/Makefile.stm32mp b/images/Makefile.stm32mp
index 862e955dbc59..fa79e09f952f 100644
--- a/images/Makefile.stm32mp
+++ b/images/Makefile.stm32mp
@@ -26,9 +26,9 @@ endef
 # --------------------------------------
 
 # For use as --nt-fw (BL33) in FIP images
-pblb-y += start_stm32mp_bl33
+pblb-$(CONFIG_ARCH_STM32MP) += start_stm32mp_bl33
 FILE_barebox-stm32mp-generic-bl33.img  = start_stm32mp_bl33.pblb
-image-y += barebox-stm32mp-generic-bl33.img
+image-$(CONFIG_ARCH_STM32MP) += barebox-stm32mp-generic-bl33.img
 
 $(call build_stm32mp_image, CONFIG_MACH_STM32MP15XX_DKX, start_stm32mp15xx_dkx, stm32mp15xx-dkx)
 $(call build_stm32mp_image, CONFIG_MACH_STM32MP15X_EV1, start_stm32mp15x_ev1, stm32mp15x-ev1)
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

