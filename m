Delivery-date: Tue, 18 Mar 2025 08:44:30 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuRcl-000wzR-0t
	for lore@lore.pengutronix.de;
	Tue, 18 Mar 2025 08:44:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tuRcj-0007N3-VP
	for lore@pengutronix.de; Tue, 18 Mar 2025 08:44:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PKwXXaq5Xsuz+5+tIl7TWYB3946k1qNmBLcI1FU0atU=; b=P2xcPCw2IEvBLMaquW2Du1JvUL
	NDar8QBL6ue7oS/rAIKIy16X90qHxQgs2p57zMVz2Pl5tT1mauXbd0SO1VsDaTeobMGwxYnqslTAA
	65QGOG9ZcvQdlrZ6VPXx1HSUtyHqHxfMYik6EOFN7vIbOkh8yPf1FMOlOlGWz5QQU9ASdH+nJ9SwB
	q76Eqke1ZbaUbHxgAlKORQJRgSNVuOkSYf7xuaSl6yN7nbdphAxf6E9MMOFl851Q5kYHi66ZkJ/Wt
	H5b/Ib8pEcAyrQTuCu0btMgmr9FhJ0etu5dc/yvMCx9j8zA6D4rOsJDEqtVFEGAfsveKm3LRn98+L
	dtRiTGuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuRc5-00000004yww-2Uca;
	Tue, 18 Mar 2025 07:43:49 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tuRc2-00000004yvu-3tEx
	for barebox@lists.infradead.org;
	Tue, 18 Mar 2025 07:43:48 +0000
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-548409cd2a8so6227801e87.3
        for <barebox@lists.infradead.org>; Tue, 18 Mar 2025 00:43:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1742283825; x=1742888625; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PKwXXaq5Xsuz+5+tIl7TWYB3946k1qNmBLcI1FU0atU=;
        b=AEs1kFYvInKWpheUeO0OOFhHX7tX+rUxh3f2OTacidy68M6qJlYR+myCB8OMVcm0i1
         ASVNYuIjhnlQ+VvQLmlQEoLL74bFYmSRIm2oVHXTI2cH1iw+zUdDIOTL6qmAqvWGpGps
         LjDBCGdU6iCp4+x2Rth+yhlloWLxvHmeFjInkpEPTsbqfL29az5/XhSkEbbcRi8eYgX2
         hJfA+bmMKBTH8A8nEPVqnJwFlurz6P21kNTq6aD39G8nr8SUKTPf1IpSThFBl1TdfKTb
         HTFCMw8DKZ+zNpzhpT9R9XeThjCb1GHbOTFafTlTyc7opz4fFb8p6uA+h2HXkdrw7Ry3
         xGgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742283825; x=1742888625;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PKwXXaq5Xsuz+5+tIl7TWYB3946k1qNmBLcI1FU0atU=;
        b=s/bBesQDLx3XgWCe151lK4Ch4yE/UYkM8s1lfCiAxukn2styNlbntL/E0BIvpk+Ddm
         gkj3B4PQif2vPxUxd6B8rsdqFbVA0btUFiYJnDGxTfCAPoYmI9l1FV1EegztHmARwal4
         oE0scvXul1GGL9Yf2niLexqwLHlUariUqNl4LBQjlQtyuriB34/YvzT/2J16EOiWyhMB
         WC66/eJ7/phttG3NyVkFWVoR4CC7X5XysooiD7x4WlGnvYk1+n9rcvFrvO9NWgUXtvMl
         lc0yYNDmHGnovVKM/5r9Ok7/slFEbWsL0ed0541TT4vl5tXTcIJxf6oa66OkC6SuzaBk
         ftrQ==
X-Gm-Message-State: AOJu0Ywsj9YOMKCOUr7eBn1B79DeaIP3cv0T5ysFj0B2uy/1Jj3hbM5t
	K6nmmGvXf6fo1LTu+JszzeFMzCZWUhbPJuJZfrQDPk5wLVUGM7T4xyMzKw==
X-Gm-Gg: ASbGncv3S3kB1SIMmGfGNJatrNfrXgo3U+ZTlgPITn0BnjRLVIhMMJ9ZwpkAeaM+4f2
	h3iL3y7UHBBcVI3D5zbn/ocBE4FfyBACIw/lETj8cYWpe+pYWb1H/rFz4GMvhv3I+4EGw09Aqjh
	T0+OYa3dMvdO7+4HaZX7nku3pcMpRvQ2BN17dqCo+kkFtwjgr4JTjIRF9bm8VL7FqgvvXXZ4y2R
	i+mcEdTuS6+p+SHrtFYFFHKKsVbBZqnqCXV4wBBYoPPC0nH/nUeuZH8bNU5JtNzoz1+jeWdEP6X
	G2yvF+bGHyr3IL/mSYQ369n/ZHU2VTDQiKCxehyv87VqDliSoOuOnxpb+SC3QJjs63ma
X-Google-Smtp-Source: AGHT+IHj+bxawZHR5JIlK7c6V/uYCP3Mz8oNoJxXqnVW0ic/tv8pYwXkTR8kKhiwhWW6YUma2xO1Ng==
X-Received: by 2002:a05:6512:31c3:b0:549:86c8:1132 with SMTP id 2adb3069b0e04-549c38f1278mr8458792e87.17.1742283824434;
        Tue, 18 Mar 2025 00:43:44 -0700 (PDT)
Received: from localhost.localdomain ([188.243.23.53])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-549ba8a9525sm1571286e87.238.2025.03.18.00.43.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Mar 2025 00:43:43 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Tue, 18 Mar 2025 10:43:24 +0300
Message-Id: <20250318074327.37730-2-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20250318074327.37730-1-eagle.alexander923@gmail.com>
References: <20250318074327.37730-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250318_004346_962554_C6B121D3 
X-CRM114-Status: UNSURE (   9.91  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/5] ARM: at91: Merge sama5_boot_xload() asm code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This merges the sama5_boot_xload() assembler code to prevent
the r4 register from being used in the second line of asm volatile().

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 include/mach/at91/sama5_bootsource.h | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/include/mach/at91/sama5_bootsource.h b/include/mach/at91/sama5_bootsource.h
index 2fb65ce10f..aeda1b4114 100644
--- a/include/mach/at91/sama5_bootsource.h
+++ b/include/mach/at91/sama5_bootsource.h
@@ -56,8 +56,13 @@ extern unsigned long at91_bootsource;
 
 static inline void __noreturn sama5_boot_xload(void __noreturn (*bb)(void), u32 r4)
 {
-	asm volatile("mov r4, %0" : : "r"(r4) : );
-	asm volatile("bx  %0"     : : "r"(bb) : );
+	asm volatile (
+		"mov r4, %0\n"
+		"bx  %1\n"
+		:
+		: "r"(r4), "r"(bb)
+		: "r4"
+	);
 	__builtin_unreachable();
 }
 
-- 
2.39.1



