Delivery-date: Tue, 25 Jul 2023 07:08:05 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOAHH-008zsu-0T
	for lore@lore.pengutronix.de; Tue, 25 Jul 2023 07:08:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOAHD-0004FP-Ty
	for lore@pengutronix.de; Tue, 25 Jul 2023 07:08:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O3WI15Cjk7mGtwRY8/UNKt51QhEzsQY49IMPM+A9AA4=; b=Yu1adRn5JFzVyP
	ge9qGHaSMF6IUefOEcEzxCKBTqYAge5Go5NeOMiWokWYrN3wFil7yQ6FB3NFBy7PdeYz2OoRprYzb
	abRMIjdp5NuIeqxrHqZTfKagjS/nSyZPw1YEmcBB6qhWvUepxX8S2FqIWweRXxdsbHX1UoT8YvQEn
	WAn+mI3A8S8z7pvpDWOibgAmkstCF8WC20JN4AGrj8vesp3mhW+ZQs2uhQo0QLsaxWi3mXzY8dt3H
	caZnDc1vqYoORRvoTWPnBi2L6ghOWPX8NiSP9W1xhjd8z2l7/Re8MJ8DH+UUkkV696WV8slE/U6gh
	SV2l0gsAFz08nMW4IuaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOAFw-006FJU-0M;
	Tue, 25 Jul 2023 05:06:44 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qOAFr-006FGy-2l
	for barebox@lists.infradead.org;
	Tue, 25 Jul 2023 05:06:41 +0000
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-522294c0d5bso2617781a12.2
        for <barebox@lists.infradead.org>; Mon, 24 Jul 2023 22:06:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690261598; x=1690866398;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O3WI15Cjk7mGtwRY8/UNKt51QhEzsQY49IMPM+A9AA4=;
        b=Magyt4JhOeRb9418HJMUEmtR6QsfbAqS6dJu1MWtvCWSmQRH51rGS/CCa8Vq5LdOgE
         ZF7k4VGPDdFuRtBgyANwLQSJ3WoCWBfs2Xrd6VjSFS+RGCNa72cGUew8SHYMUqxt5CmG
         oh1xu+fo9qnUN2IoDjTWzZCIZOLeZj+s1TIX7F528dvhk/4p0Do++lbD9F4Zj1JqsA2D
         e7ON82NCQC6GbKgIhxUpcvCewS1+5lmDIdP53JuqntNC2rrduj80V7EqgtXVNuXLCKYo
         zNuZHEmx9sMmmlScSrkeFJQv3oYrmmovxs4dipcpqXrSxnPqcraX2wh8Ge5CYrUsfyYb
         t5kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690261598; x=1690866398;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=O3WI15Cjk7mGtwRY8/UNKt51QhEzsQY49IMPM+A9AA4=;
        b=Yig3V3rwvtu73i+9dgElG1a6rZ4RI3R/0KUg6RLSKBciNnY2CnZ8fpuv4JSV6bt65w
         l7lbwrrADfbcZSRQO4CxTMXOIf/zr9XeGsGYbzGFHFrxLTy8l0zPzPKw3UBolZH0roxL
         N3zB0ShJZiazgzsV4A1YeSeHrfJNL9Gsp9xgZ+yIHFRQNiFBS7JJKpr3gzTMHcmXw9am
         8Krsddp7Twxx3exWRwmhshvLBBLCDbcRsSa1eP5hRnPPA2Muy0Q01wZfp0JZj8btuLSh
         iQxp3JY5nZvWMUiSPBFvwUsxPB0xg/UYODAcTZWF1VTXMvP9oWw3ordQDO6HkKavmX9o
         3dgQ==
X-Gm-Message-State: ABy/qLbAwZBqPeCTmzedi9l44Q7SsTw18hRHnl0hwZQ0USTfc3y+o/zX
	XPW0F9m8fU3o/C948MzVZXQ6kN2dNfr7R/TqnbvLkA==
X-Google-Smtp-Source: APBJJlFldEnbQmtAxllSWnj/3cMB85WekAlUDBoW0dtXOfce7Ku7n4ou5tFsPN2Yy12BEq1uCY9tXg==
X-Received: by 2002:a05:6402:782:b0:522:216a:28cd with SMTP id d2-20020a056402078200b00522216a28cdmr5696362edy.7.1690261598054;
        Mon, 24 Jul 2023 22:06:38 -0700 (PDT)
Received: from localhost.localdomain ([188.123.230.211])
        by smtp.gmail.com with ESMTPSA id k17-20020a05640212d100b0052237dfa82fsm1730505edx.64.2023.07.24.22.06.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Jul 2023 22:06:37 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Tue, 25 Jul 2023 08:05:08 +0300
Message-ID: <20230725050618.3451-8-denorl2009@gmail.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230725050618.3451-1-denorl2009@gmail.com>
References: <20230725050618.3451-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230724_220639_900355_D76FB906 
X-CRM114-Status: GOOD (  10.36  )
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
Cc: Denis Orlov <denorl2009@gmail.com>, Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 07/21] MIPS: print BadVAddr CP0 register on exception
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This register contains the failing address on Address Error and some
TLB-related exceptions, and is useful for debugging purposes.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 arch/mips/include/asm/stackframe.h | 4 ++++
 arch/mips/lib/traps.c              | 3 ++-
 2 files changed, 6 insertions(+), 1 deletion(-)

diff --git a/arch/mips/include/asm/stackframe.h b/arch/mips/include/asm/stackframe.h
index 2295d7f02f..64ec37478a 100644
--- a/arch/mips/include/asm/stackframe.h
+++ b/arch/mips/include/asm/stackframe.h
@@ -89,8 +89,10 @@
 #endif
 		LONG_S	v1, PT_EPC(sp)
 		LONG_S	$25, PT_R25(sp)
+		MFC0	v1, CP0_BADVADDR
 		LONG_S	$28, PT_R28(sp)
 		LONG_S	$31, PT_R31(sp)
+		LONG_S	v1, PT_BVADDR(sp)
 		.set	pop
 		.endm
 
@@ -157,11 +159,13 @@
 		MTC0	v1, CP0_EPC
 		LONG_L	$31, PT_R31(sp)
 		LONG_L	$28, PT_R28(sp)
+		LONG_L	v1, PT_BVADDR(sp)
 		LONG_L	$25, PT_R25(sp)
 #ifdef CONFIG_64BIT
 		LONG_L	$8, PT_R8(sp)
 		LONG_L	$9, PT_R9(sp)
 #endif
+		MTC0	v0, CP0_BADVADDR
 		LONG_L	$7,  PT_R7(sp)
 		LONG_L	$6,  PT_R6(sp)
 		LONG_L	$5,  PT_R5(sp)
diff --git a/arch/mips/lib/traps.c b/arch/mips/lib/traps.c
index 45694fe7ef..638a511fee 100644
--- a/arch/mips/lib/traps.c
+++ b/arch/mips/lib/traps.c
@@ -153,7 +153,8 @@ static void show_regs(const struct pt_regs *regs)
 
 	printf("Status: %08x\n", (uint32_t)regs->cp0_status);
 	printf("Cause : %08x\n", (uint32_t)regs->cp0_cause);
-	printf("Config: %08x\n\n", read_c0_config());
+	printf("Config: %08x\n", read_c0_config());
+	printf("BadVA : %0*lx\n\n", field, regs->cp0_badvaddr);
 }
 
 void barebox_exc_handler(struct pt_regs *regs)
-- 
2.41.0



