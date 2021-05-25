Delivery-date: Tue, 25 May 2021 09:21:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1llRO3-0008DD-MI
	for lore@lore.pengutronix.de; Tue, 25 May 2021 09:21:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1llRO2-0003mD-CT
	for lore@pengutronix.de; Tue, 25 May 2021 09:21:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QfTjNn3OO6p+RedzWRIcyGBl4WA6eAZez0HZWQ5zabE=; b=yYuC5Lz0B0UbXO
	hwcsY7wYiYy/luUegjpIpsqgumDM1jHsOCoIA4+txxd5D/gY5Ks5XDAXvGop/y73hExvbnboNd62r
	LI4ONoCO3wF2Z+4Gjfnb8yCL6rn87aMRfft51oSxuwqsmVx4TCTbll0GJArqCOFT82OJGIPIjJ5r8
	6hyXrPuf1sl8VCLAzSM+XcVRTe9lJCda9HU3p+HzK+HB/hypLozmvesobiN+jN7Vdk7qNw6npxEqN
	Yxp/Bzr1U3iy0iMERHj/bn7ivdtxJFJW0om7OL3k68McpzwplbhIV1COZZPSP85dBv45t9rkr0zeb
	On2RNeFBU2P9Givm5f0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1llRMm-003q0X-Ns; Tue, 25 May 2021 07:20:41 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1llRMF-003pnj-J2
 for barebox@lists.infradead.org; Tue, 25 May 2021 07:20:09 +0000
Received: by mail-lf1-x130.google.com with SMTP id j6so41796003lfr.11
 for <barebox@lists.infradead.org>; Tue, 25 May 2021 00:20:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=rciFogSdCohPdYcJI0LHV1BEqBAM6gY8XQN7WjrsoIo=;
 b=VEH+e+3FXPfCfZD0Nl63d4c033Ykxed+B4PgDfYx0/7YhziIF/Gccr2JhAIxDj6fGA
 SbTStvx4dLS2xQOZH36f8tXkiLVYtSve7gRaaGxkcAjYxfggRPEcaCmSlua9M8AqrKCe
 aHBOS27GuEQ9FH9jxqfWFmj9GQ+1giIg6+tZmwVFBy7xDKLJrRrw1Y5qY2VoCN9tudF1
 2M6FK6eonAqGTbAeAS0I3wtbYsBKzcVckuld/WX26TfmyrYhkYY9zoCn76WSWDKa8puA
 G9IuNshrgYWOFmM1lwCTFFJAua/TYY+pALYPY7lvFqFDg+KyCZwCJ67sMFJZjbkPM3qP
 VWcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=rciFogSdCohPdYcJI0LHV1BEqBAM6gY8XQN7WjrsoIo=;
 b=LquJTfLswm4qsTeWsMXFh9ztmTNfR5gGyUFAQMigaqJ9ywEv5FZ4Q9fKmThWrNV1sK
 Hv1wnfqHEqsL1tQaQhZPAtHtZrBAYbs3IdybrBpTzmyLDc4l6dXbZ3CP9UIx/N9NszWJ
 Uo0A4/i3xv+dOfYt/g7w10mHAV+DhRfIwTwXu2SkMLf1/bpU4Xo2W+LuvYBBVkWW4ZrP
 CSvz0U2Siy4jtMUhSrsl1SbX769yfAabHDor+jD+OYogY+85huNTq3kkYzdaLRIn+5Rf
 J1CJvO8oYAxiF8ylC+esI1+ZuDdULPeR7Oy/P+WgzPFyFgrIwYXr7se4zqMZD3QmgoVM
 iaRw==
X-Gm-Message-State: AOAM533uckaFwnPNpsGLitGjhpANLcTkMnc4iOc/KBrjY4os5NlGNg5g
 fwUb0EpTvDi2q45ryDosBVdAQQyW8HrsJw==
X-Google-Smtp-Source: ABdhPJxzOuNX2TcNImdwUu73f0IxryJyD7/zau9gwjagKyeZWnBUiZVHJtbZoolQBaDTnmKD6dqs2g==
X-Received: by 2002:ac2:5f04:: with SMTP id 4mr12698551lfq.557.1621927205960; 
 Tue, 25 May 2021 00:20:05 -0700 (PDT)
Received: from localhost.localdomain (109-252-203-17.dynamic.spd-mgts.ru.
 [109.252.203.17])
 by smtp.gmail.com with ESMTPSA id f36sm1641387lfv.248.2021.05.25.00.20.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 May 2021 00:20:05 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Tue, 25 May 2021 10:19:45 +0300
Message-Id: <20210525071952.18045-4-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210525071952.18045-1-antonynpavlov@gmail.com>
References: <20210525071952.18045-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210525_002007_692623_FF89E299 
X-CRM114-Status: UNSURE (   9.46  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 03/10] RISC-V: boards: erizo: make it possible to use nmon
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/riscv/boards/erizo/lowlevel.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/riscv/boards/erizo/lowlevel.c b/arch/riscv/boards/erizo/lowlevel.c
index fc262ed61b..e75a87466a 100644
--- a/arch/riscv/boards/erizo/lowlevel.c
+++ b/arch/riscv/boards/erizo/lowlevel.c
@@ -3,6 +3,7 @@
 #include <common.h>
 #include <asm/barebox-riscv.h>
 #include <debug_ll.h>
+#include <asm/riscv_nmon.h>
 
 ENTRY_FUNCTION(start_erizo_generic, a0, a1, a2)
 {
@@ -10,6 +11,9 @@ ENTRY_FUNCTION(start_erizo_generic, a0, a1, a2)
 	void *fdt;
 
 	debug_ll_init();
+
+	barebox_nmon_entry();
+
 	putc_ll('>');
 
 	/* On POR, we are running from read-only memory here. */
-- 
2.31.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

