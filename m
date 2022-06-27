Delivery-date: Mon, 27 Jun 2022 12:26:52 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o5lxA-00GGNn-Jm
	for lore@lore.pengutronix.de; Mon, 27 Jun 2022 12:26:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o5lxC-0001Ih-1O
	for lore@pengutronix.de; Mon, 27 Jun 2022 12:26:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yhig+dJ2hxJOtVfDZpQI2mVG1REAhyg2/hIel0h8yhY=; b=AOszHkh515dP9Qy3oW5ax3Fzdr
	/DLH2hd/K+/W/XdHallPzw9/KagvStUXFNcnRFkLzQPW7rCsA5MC9WTzzJ9CL9WjAOOVthEg3xjtT
	4k0EOPYtTl2bekCKOrLyIilucj7kv4N4p36htmDKiUI2pB6EZJKI1rSGN+wufRtC0MLM4NqsxOzSE
	oy9MghOqBgnM4svvTS/z/OxmAAdY8vdCfgLTKJk/Kh66Xkkb+Ox/e75pAYr5jml6WUEuG/Hqd2nUz
	jPDsE6UDw7UO7yF5qgUV2vnybs9x0QRZI7tAVIsxCIR73QaztFCLThxsOoH6Dm4BUr4AjveUcosCM
	RTCk56Mg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o5lvo-0005hO-5D; Mon, 27 Jun 2022 10:25:24 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o5lvd-0005b8-1j
	for barebox@lists.infradead.org; Mon, 27 Jun 2022 10:25:15 +0000
Received: by mail-lf1-x130.google.com with SMTP id a4so2212620lfm.0
        for <barebox@lists.infradead.org>; Mon, 27 Jun 2022 03:25:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=yhig+dJ2hxJOtVfDZpQI2mVG1REAhyg2/hIel0h8yhY=;
        b=Gj9Si8dDxptKGHmUevzBE8UclFyAhtfR+3/XL/Z/L5W954MKLon5fADVmJSRFhSzo9
         mYmbkvRXOwlvVy6THRwTQVWnYmg4bF0fqHYbeVPOmTPlXmN4Km68Ygee2ZYnUKhIHeVK
         DEwYpRSfrtt1o9plMQ/jjbTNIDSPnmRqSCbsdsmQ78LiPABq8G1vNJMaN6PBehfIjWMd
         saaVnKP9HqkcuBCEPjF685I+sd9H5ORTewz9E1X0MyuuYrD809twDepK5vvAcBJZotLk
         UtVc8RbNy5ateuHrhkSFNABz4mNhCWXaIQQsImolxkupF7OnZ1/hEQGQYY1SSlrzKpom
         wDWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=yhig+dJ2hxJOtVfDZpQI2mVG1REAhyg2/hIel0h8yhY=;
        b=RSXFaFeIBvPQDFwtHsUKFskmEl6qdLLCUR+6XTK7ETbn4ZYt4K8Ews9/vEKMVGf4kj
         JvhE+aFJZs+IlP6btZV/nafuaI/lYuwe/77QihZnf6mGqgRK7UXk8ev8EbtvehvvP4M/
         BF4npwWghPY0hmvkKU5iOMdS4d6u2cFRqFyXu1c/rDmIoog9NrHHzXqUIa2zhX/CrSc5
         F+O9aUaIg7MoPNuLvRbiG8XMOzmRODNbgJzD7+ejPSAmZ/nEm9QPhpqSKdufS7XTCKa5
         BYwrkhr+Zp0tOcdQNd8sAFSGOuc7EoHLRlUoiWMHU3UZBYT3tSW1dVTJDEBdI6ATq5Tm
         iYvg==
X-Gm-Message-State: AJIora/G0fXAtcqbxXVkSzP6uHAP6U/RzfF/ClXIrBj59Ovwweun0lIa
	hsOOd1OXgwf4l7EqzhgXV3OEjjWcapg=
X-Google-Smtp-Source: AGRyM1vXbecYbx/l7mwdxhpOTZnv/IHfW4KPIerTSiqAwRm26gOhZNOVU3acF71K4j0xLCgPSM/TTg==
X-Received: by 2002:a19:9209:0:b0:47d:bb62:913b with SMTP id u9-20020a199209000000b0047dbb62913bmr7801227lfd.526.1656325509892;
        Mon, 27 Jun 2022 03:25:09 -0700 (PDT)
Received: from shc.milas.spb.ru ([188.243.217.78])
        by smtp.gmail.com with ESMTPSA id 7-20020ac25f07000000b0047f5d390926sm1745622lfq.94.2022.06.27.03.25.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jun 2022 03:25:09 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Mon, 27 Jun 2022 13:24:53 +0300
Message-Id: <20220627102500.18427-2-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220627102500.18427-1-eagle.alexander923@gmail.com>
References: <20220627102500.18427-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220627_032513_127042_DE666943 
X-CRM114-Status: GOOD (  10.82  )
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
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/8] ARM: vexpress: Simplify sysctl initialization
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/mach-vexpress/v2m.c | 13 +------------
 1 file changed, 1 insertion(+), 12 deletions(-)

diff --git a/arch/arm/mach-vexpress/v2m.c b/arch/arm/mach-vexpress/v2m.c
index 3535262848..c60e9dbd75 100644
--- a/arch/arm/mach-vexpress/v2m.c
+++ b/arch/arm/mach-vexpress/v2m.c
@@ -5,16 +5,8 @@
  */
 
 #include <common.h>
-#include <init.h>
 #include <io.h>
-
-#include <linux/clk.h>
-#include <linux/clkdev.h>
-#include <linux/amba/bus.h>
-
-#include <asm/hardware/arm_timer.h>
 #include <asm/hardware/sp810.h>
-
 #include <mach/devices.h>
 
 void __iomem *v2m_sysreg_base;
@@ -23,8 +15,7 @@ static void v2m_sysctl_init(void __iomem *base)
 {
 	u32 scctrl;
 
-	if (WARN_ON(!base))
-		return;
+	v2m_sysreg_base = base;
 
 	/* Select 1MHz TIMCLK as the reference clock for SP804 timers */
 	scctrl = readl(base + SCCTRL);
@@ -36,13 +27,11 @@ static void v2m_sysctl_init(void __iomem *base)
 void vexpress_a9_legacy_init(void)
 {
 	v2m_wdt_base = IOMEM(0x1000f000);
-	v2m_sysreg_base = IOMEM(0x10001000);
 	v2m_sysctl_init(IOMEM(0x10001000));
 }
 
 void vexpress_init(void)
 {
 	v2m_wdt_base = IOMEM(0x1c0f0000);
-	v2m_sysreg_base = IOMEM(0x1c020000);
 	v2m_sysctl_init(IOMEM(0x1c020000));
 }
-- 
2.32.0



