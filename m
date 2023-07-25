Delivery-date: Tue, 25 Jul 2023 07:08:07 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOAHI-008ztf-O3
	for lore@lore.pengutronix.de; Tue, 25 Jul 2023 07:08:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOAHF-0004Gz-8M
	for lore@pengutronix.de; Tue, 25 Jul 2023 07:08:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VoXyaZpG8toDnVnYZ3ibnKbgb+iU8ML7QhZP7jva/PY=; b=3+mS9hb9/7EpP4
	J3Wp25E0U2bTXJ+pHXW51qap6f19/Ed0FGuhYrm9c63w7/aUbP2n4CDwNGGUtKejuQxds5+R/ln3C
	Fj3Z/FDdyaoT1IpdqX73Glk5lJYkuo2lQLL6kqiERx8VS+jFfWXToqInO/Q0Yek1tfJDZTL8GMgT6
	TufNtWcYm6b/uuQfJiAop0HHcK5cpKrOqrqtQkLl2AlyMM+WTEdNVkxAr3WH0qVXhgfJ5aoC5fuYh
	uQ9vp4sM2aYrvRmjpoZQKDDqYtJjtUzcAfbg7BgocBMx/ZgBBBSIOcqCcqMcC8B4FDVsvj0SodZ8B
	3e/ywD9gqAgZ0mPWTzdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOAFp-006FGP-33;
	Tue, 25 Jul 2023 05:06:37 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qOAFm-006FEo-2A
	for barebox@lists.infradead.org;
	Tue, 25 Jul 2023 05:06:36 +0000
Received: by mail-ed1-x532.google.com with SMTP id 4fb4d7f45d1cf-51bece5d935so7685470a12.1
        for <barebox@lists.infradead.org>; Mon, 24 Jul 2023 22:06:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690261591; x=1690866391;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VoXyaZpG8toDnVnYZ3ibnKbgb+iU8ML7QhZP7jva/PY=;
        b=qUNfCju53QUVDEvjDJagSsFZhHKxAazn97tZIpnfa/Nkl6WtH+61djOWg5MxO1x7Dh
         Rer2FZjPVAcPlmhWo58eQS3xrLoI8KaVy4VL94YZ4aGgE89J0mUlFK205O1NKLkVLRUa
         7SNsPg6eun1xykMfARv+1nmUZyRWJlozZFvY6T0ysBhwSR+Y3gaTDccr790V+K9xuuHA
         DVVAZv/IRy03ih4zUE2PpHdW4aMYPHXl33eZmskc5OUx1Fy2eGSHNpdC3cz2NqxDbFuQ
         ORmU5KyhqV2xyk81uf89C6d53qb0wKPg1hvYHxk9yXJ7niOH1IYcUqyC3c2zabiK+Dli
         v6gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690261591; x=1690866391;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VoXyaZpG8toDnVnYZ3ibnKbgb+iU8ML7QhZP7jva/PY=;
        b=UcE8RuH0HpYvlWenkBRh0+t4cXqLOQ3ZMk0M9LBbnBzdwW8CU9oIx3jidYnTxPo11y
         IbCMQ//wztknbx67vgL40xKi/JuhY4rlgl0LucHX3y8dGJCvuKWGlw5fSUS5n0J97WQW
         dgyef3No0NtqZju/DmNpq/cdxIZ53msFg2Pl9kU6doocXzUr9omlklxz9ExcSxPEUldA
         +o9UsLZMeDIEDb4Mu9FLZsrx1IiT4afdOYcEd8zXrX6G5OPDzzMgGtYTE5v0j5iOupNg
         GSyGTXSb5/2YL86q0G4TX2pPMqBmMTwq3Wmpgl6HZENXqz+YX3cTws9DMrJjns+M+yEu
         sSNQ==
X-Gm-Message-State: ABy/qLa3hCds5Q+EaeInOeAQkjv/mRMb5B4tP7soWPdgf/EPLU59N93w
	WECh5qTXXsAGEaBiIKInCAPskfvJCrUz7wTIHGuTkg==
X-Google-Smtp-Source: APBJJlEcxm6+4lzZMXwgKWGa0JATxxQwFhVPG0/+o41cVMQk6kArAjIvL8XGzJRUqPtfOPpZe0m/pA==
X-Received: by 2002:a05:6402:12c4:b0:51e:f83:6de6 with SMTP id k4-20020a05640212c400b0051e0f836de6mr10411060edx.16.1690261590928;
        Mon, 24 Jul 2023 22:06:30 -0700 (PDT)
Received: from localhost.localdomain ([188.123.230.211])
        by smtp.gmail.com with ESMTPSA id k17-20020a05640212d100b0052237dfa82fsm1730505edx.64.2023.07.24.22.06.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Jul 2023 22:06:30 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Tue, 25 Jul 2023 08:05:02 +0300
Message-ID: <20230725050618.3451-2-denorl2009@gmail.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230725050618.3451-1-denorl2009@gmail.com>
References: <20230725050618.3451-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230724_220634_708064_6E598F9F 
X-CRM114-Status: GOOD (  12.18  )
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
Subject: [PATCH 01/21] MIPS: addrspace: rectify ksseg segment naming
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

There was a slight confusion in macro definitions for various memory
segments. In the 64-bit mode, there was CKSEG2ADDR defined without a
corresponding CKSEG2 definition, which led to errors when trying to
actually use it. Instead there was a CKSSEG definition that stands for
exactly the same memory segment.

Change the name of this memory segment macro into KSSEG/CKSSEG for the
32/64-bit mode respectively and also rename the corresponding *ADDR
macros as this is how this segment is actually named in the MIPS
architecture specification. This makes the naming more consistent.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 arch/mips/include/asm/addrspace.h | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/mips/include/asm/addrspace.h b/arch/mips/include/asm/addrspace.h
index 11f10e5011..7a2006a8d1 100644
--- a/arch/mips/include/asm/addrspace.h
+++ b/arch/mips/include/asm/addrspace.h
@@ -67,7 +67,7 @@
 
 #define CKSEG0ADDR(a)		(CPHYSADDR(a) | CKSEG0)
 #define CKSEG1ADDR(a)		(CPHYSADDR(a) | CKSEG1)
-#define CKSEG2ADDR(a)		(CPHYSADDR(a) | CKSEG2)
+#define CKSSEGADDR(a)		(CPHYSADDR(a) | CKSSEG)
 #define CKSEG3ADDR(a)		(CPHYSADDR(a) | CKSEG3)
 
 /*
@@ -94,7 +94,7 @@
 
 #define CKSEG0ADDR(a)		(CPHYSADDR(a) | KSEG0)
 #define CKSEG1ADDR(a)		(CPHYSADDR(a) | KSEG1)
-#define CKSEG2ADDR(a)		(CPHYSADDR(a) | KSEG2)
+#define CKSSEGADDR(a)		(CPHYSADDR(a) | KSSEG)
 #define CKSEG3ADDR(a)		(CPHYSADDR(a) | KSEG3)
 
 /*
@@ -102,7 +102,7 @@
  */
 #define KSEG0ADDR(a)		(CPHYSADDR(a) | KSEG0)
 #define KSEG1ADDR(a)		(CPHYSADDR(a) | KSEG1)
-#define KSEG2ADDR(a)		(CPHYSADDR(a) | KSEG2)
+#define KSSEGADDR(a)		(CPHYSADDR(a) | KSSEG)
 #define KSEG3ADDR(a)		(CPHYSADDR(a) | KSEG3)
 
 /*
@@ -112,13 +112,13 @@
 #define KUSEG			0x00000000
 #define KSEG0			0x80000000
 #define KSEG1			0xa0000000
-#define KSEG2			0xc0000000
+#define KSSEG			0xc0000000
 #define KSEG3			0xe0000000
 
 #define CKUSEG			0x00000000
 #define CKSEG0			0x80000000
 #define CKSEG1			0xa0000000
-#define CKSEG2			0xc0000000
+#define CKSSEG			0xc0000000
 #define CKSEG3			0xe0000000
 
 #endif
-- 
2.41.0



