Delivery-date: Thu, 05 May 2022 11:44:23 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmY23-002Zso-Ov
	for lore@lore.pengutronix.de; Thu, 05 May 2022 11:44:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmY22-0007Gc-GN
	for lore@pengutronix.de; Thu, 05 May 2022 11:44:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TpZcrqgla7kFrjghaHiyCWHSOQp0j2CehBd82FmddEg=; b=ix4cjRc8TAc+ch
	cAMY7y23KFIjIwzPFzUROgE04x/XVZ7SiSLCN2B3rdcQpxzvqN2Q8yz0MQPw6NsDAW2bgRdI5ac0C
	BnGUgihPhUobbmT43T2GRRoCYfeOU8LyTzugsXR39+0y05q/x8xBZrB5b4quxpl+/V91ulMulS3CX
	c5qUlLbuvz90Ry//eq+9qPOUYc3O4dV7DVDTmHe5amW6QRNLxRNYomFFC45zY4h1cSL4BPTlsWGFj
	a/0ODwU28pOwhhqjrXYZt4EgZ++GX5wbXP10X/wi1MS162XUPDK4H4A4cXyS/O8/5cHYUdyHiFVmW
	gJTp1CM18OegKorQGh4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmY0o-00F5gS-Gz; Thu, 05 May 2022 09:43:06 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmY0j-00F5fC-5R
 for barebox@lists.infradead.org; Thu, 05 May 2022 09:43:02 +0000
Received: by mail-lf1-x133.google.com with SMTP id w1so6555389lfa.4
 for <barebox@lists.infradead.org>; Thu, 05 May 2022 02:43:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YHZjUgpi1IfxlaKb3Nq1poV6OVJyhliD4aRKP8/rPWM=;
 b=dW7y4iYm1epj8tvCavT0jkJGDlyiBlrG78+Mk+/yx9/uWNElsjgoY+TyxBAxYLjeVY
 n5yHuYFLxdFTK9ehhyCWXl8XxmrWO3XMqv4AoLSar9dmXqFwnnDohSrmc1XbkEdwHhDm
 o3aevHj6nHRsTV+MEAhY1AC7Q66bfoyOXN+OBZ5+4A0zHcA3751kAVYZhhwzehzvpGrE
 0YL8WjkQbPJUdi1CZFdnK33OQel5KtJR+KP4ZThKh0M1VaZZyP8tDEcNZq3YwYY2N7ql
 HWpZokZtkManaGuSytcyEwoBOELwwGssvCwUEGtfFjnzduG4yhfNMY9SRmPK/CwSBMod
 4iAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=YHZjUgpi1IfxlaKb3Nq1poV6OVJyhliD4aRKP8/rPWM=;
 b=gGNYn1ck1vpy6CcKJo+CsHE7eayHtojm67ithTFW60X6sn8+x3PRvIMAreARVefsrR
 1kEwDebBrcZp+U5CaD1AfpeXcyh8d/B7PkIkT5xCTG7mpC+JLToAuMSCsf7vD71rBZFK
 F3T0ubPDjXGaChxfqDv7fX8X0pwj+LWCH7vtqCBbV/HjxgZDZXbXwOwk8nDlrZWwYGBv
 LVRY5oBCokIoF+7/3gw+URHT9ln5L7/oav4om2GZ0oeBxJBq5NS3U2uv/K6OYZ2p68f2
 xU2YaHXtilEbXC45C7DmWW6YQDB9dUr86IurAIUPo8nl6ymzExotFFHSQA2vBDP2vdJD
 V3sA==
X-Gm-Message-State: AOAM53333H9poL8y44goOhZReoJzmMiTuCN7vTPV60Rrbve3WnoWRK7d
 nSz5J55+v7uLbrBHZn+6BD6O+4AvZgwFdQ==
X-Google-Smtp-Source: ABdhPJxjVniFg5ChdMraZjocPXKwYCv7upUdSTlZf4cCEjXhWtA3eSsKYM7fF4Fkcg89wNGpGxjodg==
X-Received: by 2002:a05:6512:3042:b0:473:a8ff:513f with SMTP id
 b2-20020a056512304200b00473a8ff513fmr8117562lfb.246.1651743778308; 
 Thu, 05 May 2022 02:42:58 -0700 (PDT)
Received: from shc.milas.spb.ru ([188.243.217.78])
 by smtp.gmail.com with ESMTPSA id
 n11-20020a2eb78b000000b0024f812282a4sm138443ljo.131.2022.05.05.02.42.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 May 2022 02:42:57 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu,  5 May 2022 12:42:54 +0300
Message-Id: <20220505094254.23759-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220505_024301_240900_401A2B10 
X-CRM114-Status: GOOD (  11.77  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [RFC] ARM: OMAP: debug_ll: Add support for PBL console
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/boards/myirtech-x335x/lowlevel.c  | 10 ++++------
 arch/arm/mach-omap/include/mach/debug_ll.h | 20 ++++++++++++++------
 2 files changed, 18 insertions(+), 12 deletions(-)

diff --git a/arch/arm/boards/myirtech-x335x/lowlevel.c b/arch/arm/boards/myirtech-x335x/lowlevel.c
index 1a883da203..f9f3ec4ddf 100644
--- a/arch/arm/boards/myirtech-x335x/lowlevel.c
+++ b/arch/arm/boards/myirtech-x335x/lowlevel.c
@@ -95,12 +95,10 @@ ENTRY_FUNCTION(start_am33xx_myirtech_sram, bootinfo, r1, r2)
 		am335x_sdram_init(0x18b, &ddr3_cmd_ctrl, &ddr3_regs, &ddr3_data);
 	}
 
-	if (IS_ENABLED(CONFIG_DEBUG_LL)) {
-		am33xx_uart_soft_reset(IOMEM(AM33XX_UART0_BASE));
-		am33xx_enable_uart0_pin_mux();
-		omap_uart_lowlevel_init(IOMEM(AM33XX_UART0_BASE));
-		putc_ll('>');
-	}
+	am33xx_uart_soft_reset(IOMEM(AM33XX_UART0_BASE));
+	am33xx_enable_uart0_pin_mux();
+	omap_uart_lowlevel_init(IOMEM(AM33XX_UART0_BASE));
+	pr_debug("MYIR MYC-AM335X\n");
 
 	am335x_barebox_entry(fdt);
 }
diff --git a/arch/arm/mach-omap/include/mach/debug_ll.h b/arch/arm/mach-omap/include/mach/debug_ll.h
index 25ddd485be..018171d112 100644
--- a/arch/arm/mach-omap/include/mach/debug_ll.h
+++ b/arch/arm/mach-omap/include/mach/debug_ll.h
@@ -17,6 +17,7 @@
 #ifndef __MACH_DEBUG_LL_H__
 #define   __MACH_DEBUG_LL_H__
 
+#include <console.h>
 #include <io.h>
 #include <mach/omap3-silicon.h>
 #include <mach/omap4-silicon.h>
@@ -34,6 +35,16 @@
 #define MCR		(4 << 2)
 #define MDR		(8 << 2)
 
+static inline void omap_uart_putc(void *base, int c)
+{
+	/* Wait until there is space in the FIFO */
+	while ((readb(base + LSR) & LSR_THRE) == 0);
+	/* Send the character */
+	writeb(c, base + THR);
+	/* Wait to make sure it hits the line, in case we die too soon. */
+	while ((readb(base + LSR) & LSR_THRE) == 0);
+}
+
 static inline void omap_uart_lowlevel_init(void __iomem *base)
 {
 	writeb(0x00, base + LCR);
@@ -46,6 +57,8 @@ static inline void omap_uart_lowlevel_init(void __iomem *base)
 	writeb(0x03, base + MCR);
 	writeb(0x07, base + FCR);
 	writeb(0x00, base + MDR);
+
+	pbl_set_putc(omap_uart_putc, base);
 }
 
 #ifdef CONFIG_DEBUG_LL
@@ -68,12 +81,7 @@ static inline void PUTC_LL(char c)
 	void __iomem *base = (void *)OMAP_UART_BASE(OMAP_DEBUG_SOC,
 			CONFIG_DEBUG_OMAP_UART_PORT);
 
-	/* Wait until there is space in the FIFO */
-	while ((readb(base + LSR) & LSR_THRE) == 0);
-	/* Send the character */
-	writeb(c, base + THR);
-	/* Wait to make sure it hits the line, in case we die too soon. */
-	while ((readb(base + LSR) & LSR_THRE) == 0);
+	omap_uart_putc(base, c);
 }
 #endif
 
-- 
2.32.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

