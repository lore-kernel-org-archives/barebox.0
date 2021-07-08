Delivery-date: Thu, 08 Jul 2021 10:32:30 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1m1PSQ-0006Lr-MC
	for lore@lore.pengutronix.de; Thu, 08 Jul 2021 10:32:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1m1PSP-0006wS-Pj
	for lore@pengutronix.de; Thu, 08 Jul 2021 10:32:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1LCESErgBrF7ARQR/YPLivjEKJmHZ5DRGIE2xmEkhHw=; b=vp+hpdQbiQPVrP
	/LwcGi3CXxj0tyZC/A2PLNguITJ+yuGWP6uOqwpaW8XFUYt7IuV83Cxp+xcHI34NXIX/jJX6Ihaqm
	jCefy6xeQvUY/S38nxlsuETKcvQ6ZsU4SRwyp/edUPzt/bFiMC3W8Bw3Q15rwCzlZIMZ945Nq+ZTJ
	pj1PGl64nMW1Gz6m1gkKDxihEwuHiR8gCC6xnB93DN68GP7eKH5U87qEE+GH2ZUhhUT+S/DMO+8XU
	aYMMiwiS1qWe+j3q9mCAar5QvhC09bJ1DdO4ebDCavJBlAXuQRawcOCXe6ByKVihNuxwYEz/Du9/M
	f3oJBdQtH2WpitkEFOmA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m1PQs-00GJx8-5z; Thu, 08 Jul 2021 08:30:54 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m1PQj-00GJvD-1v
 for barebox@lists.infradead.org; Thu, 08 Jul 2021 08:30:46 +0000
Received: by mail-lf1-x136.google.com with SMTP id c28so12796092lfp.11
 for <barebox@lists.infradead.org>; Thu, 08 Jul 2021 01:30:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2Rz61S1LHf0i2S1n7uWhxKiMnAkAcpjSe4voX/MRIEA=;
 b=S9WMWhVJPBrCHIAQdxqwo2BtpvzDGBmAT6RR1cvl9L2dQnTInAFcWebLy/pIo+PZEl
 rwqNk2P4NLr/St49iiKBrHj7zFATBrxTITwIGMBnOW+EMR91dfAOZf5J8HEWB6Vrn4w7
 7SILvZNjBbAFKDl5oaxlylWV27wOEAYDT2D94xXR4tb1L6d40lQKLhmTSIwcduUusAc3
 Ft3Ygs64R1daFD2ZfZcqO3zxuijUsukdP3LeMJL4reXPTgtTkqBYho6bgOjLd3HKB80K
 H0VQxlD0nJfp/j+Kcn+ZoVnH5kKed4LB0v4X+T8fxINXbhnpTqKjNSuYjndrxn7vb8o/
 wklA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2Rz61S1LHf0i2S1n7uWhxKiMnAkAcpjSe4voX/MRIEA=;
 b=lOPyyjQ1QY+ad5NgBCZ3axWjYmsi7R/+nhQqTGznYLQmf+Cp9k14U3SIPAAsheIuwy
 69aoF9gvwoN6PMthPo6YrryOOL4zkfhURf1+6KRreuEJx/YUP9L4/pM81vqj2bXaBqtp
 Gjf+G9Q+kz8KgLSgMQqG1lkHGKW3vO7yMIPWor54kkFZNcF2OW9OziavcOkTNurvwWOH
 u4WRS2HrKbBqpNOR0BdkWdxHG+5Rkz3ZpjnY4/ofpJY3kv/cbmINlXcBjBaL8fpG+Z63
 2X4Q5sEXWfivBaqhChIgkCpEVFDn1PFDrgmdMlwE0vGvmj9EfwxxdaLir1ltER289HmK
 3P7w==
X-Gm-Message-State: AOAM5317cJG3XEtibXzQymdXCaPfyR6VttBgwEkDuSBr/a9w61CDG6wA
 tmfkYqp0AvoFXL0bExJrGeizlR6Ydvk=
X-Google-Smtp-Source: ABdhPJyPHk0hAwdhAhRo7tW1r5VBK+1xjT+Nu4vK8IBZ8ST7QIRqxWPT1zivziGsXY3NjaJIvUKi2Q==
X-Received: by 2002:a2e:a40d:: with SMTP id p13mr19238118ljn.93.1625733042760; 
 Thu, 08 Jul 2021 01:30:42 -0700 (PDT)
Received: from localhost.localdomain ([176.59.43.199])
 by smtp.gmail.com with ESMTPSA id i21sm127364lfe.86.2021.07.08.01.30.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 08 Jul 2021 01:30:42 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Thu,  8 Jul 2021 11:30:34 +0300
Message-Id: <20210708083035.40814-3-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210708083035.40814-1-antonynpavlov@gmail.com>
References: <20210708083035.40814-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210708_013045_137221_B04B323A 
X-CRM114-Status: UNSURE (   9.84  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH next 2/3] RISC-V: boards: erizo: make it possible to use nmon
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/riscv/boards/erizo/lowlevel.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/riscv/boards/erizo/lowlevel.c b/arch/riscv/boards/erizo/lowlevel.c
index fc262ed61b..ab06634bdb 100644
--- a/arch/riscv/boards/erizo/lowlevel.c
+++ b/arch/riscv/boards/erizo/lowlevel.c
@@ -3,6 +3,7 @@
 #include <common.h>
 #include <asm/barebox-riscv.h>
 #include <debug_ll.h>
+#include <asm/riscv_nmon.h>
 
 ENTRY_FUNCTION(start_erizo_generic, a0, a1, a2)
 {
@@ -10,6 +11,7 @@ ENTRY_FUNCTION(start_erizo_generic, a0, a1, a2)
 	void *fdt;
 
 	debug_ll_init();
+	barebox_nmon_entry();
 	putc_ll('>');
 
 	/* On POR, we are running from read-only memory here. */
-- 
2.32.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

