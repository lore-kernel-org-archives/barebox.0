Delivery-date: Tue, 19 Apr 2022 09:38:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ngiRX-007anC-RV
	for lore@lore.pengutronix.de; Tue, 19 Apr 2022 09:38:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ngiRU-0006ez-Bs
	for lore@pengutronix.de; Tue, 19 Apr 2022 09:38:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/FrO3aBDHLCtYtwrQdph0uPtmhoNzfm8ra24yRo+bQg=; b=kF6IEpJwPP8p9Z
	EwnsxdlX1ozFkIIr9er7CfUNiBz8NN80XwVR5v1sQaGBgj8Z64DNl5OBpYHP3gWnKMdMxoJuFHNHQ
	0SrTdU7nxFpZk0D8+nD1p1GOS+d7ocpIkf0Ffyumw+nnTe6CI5s9h/WBfVe5YLx0eKKNiJ+i91zR6
	aQ2AT7uF/injMgIdy1q7npPf/4j93vAUrkVrLE8RkX9W230gSsj2BPi1FIsLMfk7c0Rw5DvJwIkTX
	7c+xZswt6fo8UCJWtC2ILrPN/RVR8DgR5GWNxAsvqYn9BmtR/0W0fWH8MQzV+bY+7CHMQENEig2zk
	Ytos+iBYpIyElTDXQ0XA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ngiPw-00238p-0J; Tue, 19 Apr 2022 07:36:56 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ngiB2-001wXR-Ss
 for barebox@lists.infradead.org; Tue, 19 Apr 2022 07:21:34 +0000
Received: by mail-lf1-x130.google.com with SMTP id t25so27806933lfg.7
 for <barebox@lists.infradead.org>; Tue, 19 Apr 2022 00:21:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=REx72XeAWBe7W2LV82nk6/bJ+DuPAKFvW5FKQt4UYSo=;
 b=QJcDMvWocyki9LMl4fM4Q9VGzZ2QJ1vACo2qouf6X7z1KD4uIQ9bw1cQsbVhDbWMXI
 kJXY8cWAl9iCfulPa84XUU2I7yeZE6LlcMm3fQ8ABTZlaPmsrsi03hYMVrjDtOgcIGDT
 cEhkvjmlEomeI5ydYKBksa38B3yeHwmBDvU88keEm7T5OhMXYkVTdgbl6qpN8MMZelAM
 qpjNpsg0tqOUcHfPz9xf2gcWcWIFN2+aB3ucJzx5g2g9SPxEwVqinEY0EZ1MqOvZ2ISa
 mWc0v66ExUDxyn58zh5PTNffearlhk/2J1r/clTkWu+K3aQFsJXdy8YnmBGkHBQWRbge
 T4lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=REx72XeAWBe7W2LV82nk6/bJ+DuPAKFvW5FKQt4UYSo=;
 b=UNkQBbgNAVBqVD8lCFWbQe3Q/FX7Kq31KhZmm3CkSvadD7z/Gn69t3geOqc9Lxudu+
 xTKn+5otMSe5lYNTuDz2Cws0O+SudxWGa5Bxat1ZLczSFptnwhdrrDHxqb1DPCHYUeqY
 aARK5nPAxtQBW16bkYEAGOt9IjcXPmpYbwj3K60/LNcm8IA8VOAyj9P+KlgPHUDvK/qy
 f2q5aW4CiBg46q5ZlhHfBXvJYWXqllG6HoeUVhat0mW2+W2MoiKD+UYEKaDeaRS96mXN
 7WF2sBxmavvFZ7bTCoBCRxwfwKPfJlK7U4I5MXeFSTQpfL88OgbD6PQZ9Ym8sBfewMHB
 2Kgg==
X-Gm-Message-State: AOAM533tHJnb+7K7H1IMoEB5NiNV7/VbIwDCx/BXNAPiNSAcsSFWBugr
 fHZ+AeVegC1fFVzPeXoJnUJ/ehwMlJYERQ==
X-Google-Smtp-Source: ABdhPJx8pjPddW5gKyQpum36dsBxIDqJDOL4qxn/t0gkyQkffNrfiIWQSc1ofhqrOSZ5Myms3wqR5g==
X-Received: by 2002:a19:6f09:0:b0:46c:46af:c1b with SMTP id
 k9-20020a196f09000000b0046c46af0c1bmr9853364lfc.218.1650352890048; 
 Tue, 19 Apr 2022 00:21:30 -0700 (PDT)
Received: from shc.milas.spb.ru ([188.243.217.78])
 by smtp.gmail.com with ESMTPSA id
 a13-20020a2e88cd000000b0024db9dbf11fsm666178ljk.130.2022.04.19.00.21.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 19 Apr 2022 00:21:29 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Tue, 19 Apr 2022 10:21:22 +0300
Message-Id: <20220419072123.28590-2-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220419072123.28590-1-eagle.alexander923@gmail.com>
References: <20220419072123.28590-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220419_002132_965373_3B705F30 
X-CRM114-Status: GOOD (  11.73  )
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
Subject: [PATCH 2/3] ARM: CCMX51: Add support for low-level debug
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/boards/ccxmx51/lowlevel.c | 28 ++++++++++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/arch/arm/boards/ccxmx51/lowlevel.c b/arch/arm/boards/ccxmx51/lowlevel.c
index adcb30a7ff..367925e398 100644
--- a/arch/arm/boards/ccxmx51/lowlevel.c
+++ b/arch/arm/boards/ccxmx51/lowlevel.c
@@ -2,12 +2,37 @@
 /* Author: Alexander Shiyan <shc_work@mail.ru> */
 
 #include <common.h>
+#include <debug_ll.h>
+#include <mach/clock-imx51_53.h>
 #include <mach/esdctl.h>
 #include <mach/generic.h>
+#include <mach/iomux-mx51.h>
 #include <asm/barebox-arm.h>
 #include <asm/barebox-arm-head.h>
 #include <mach/imx51-regs.h>
 
+static inline void setup_uart(void)
+{
+	void __iomem *iomuxbase = IOMEM(MX51_IOMUXC_BASE_ADDR);
+	void __iomem *ccmbase = IOMEM(MX51_CCM_BASE_ADDR);
+
+	/*
+	 * Restore CCM values that might be changed by the Mask ROM
+	 * code.
+	 *
+	 * Source: RealView debug scripts provided by Freescale
+	 */
+	writel(MX5_CCM_CBCDR_RESET_VALUE,  ccmbase + MX5_CCM_CBCDR);
+	writel(MX5_CCM_CSCMR1_RESET_VALUE, ccmbase + MX5_CCM_CSCMR1);
+	writel(MX5_CCM_CSCDR1_RESET_VALUE, ccmbase + MX5_CCM_CSCDR1);
+
+	imx_setup_pad(iomuxbase, MX51_PAD_UART1_TXD__UART1_TXD);
+
+	imx51_uart_setup_ll();
+
+	putc_ll('>');
+}
+
 ENTRY_FUNCTION(start_ccxmx51, r0, r1, r2)
 {
 	extern char __dtb_imx51_ccxmx51_start[];
@@ -15,6 +40,9 @@ ENTRY_FUNCTION(start_ccxmx51, r0, r1, r2)
 
 	imx5_cpu_lowlevel_init();
 
+	if (IS_ENABLED(CONFIG_DEBUG_LL))
+		setup_uart();
+
 	arm_setup_stack(0x20000000);
 
 	fdt = __dtb_imx51_ccxmx51_start + get_runtime_offset();
-- 
2.32.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

