Delivery-date: Fri, 10 Jun 2022 07:42:33 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzXPl-009fK3-Bh
	for lore@lore.pengutronix.de; Fri, 10 Jun 2022 07:42:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzXPj-0007KO-NL
	for lore@pengutronix.de; Fri, 10 Jun 2022 07:42:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7YMHf6q+t2/01aRgOuZRF4zC/O/oRpu9kOx7NAD3Bdo=; b=INbJrlSrsf1ZKb
	kQ3O+GpldyyK0E135JgeTaG9wujrNzBR05nGpDOsEXz4FSIdHTKcFAMZou0fxnB/7mtwSkpGiRFeg
	eCSOUoaMu9OFE4HAmTeQiLDjjECN1ybmBcbLdE/GYqEN4EHgFsXtIjWYP9uHXKdiEmHO4QG3Jflxh
	OBNfWO28qyFGhXKZPRRlXaZBb//9+zPU1mdyiVoN5cVMdZJ8n9QXH0JgtGtgikILresB3nEOXmk9j
	Iqfxk1MlTKmbwl79yINcYb60ru9dhhlND1KZJLWyxdhDjw/xrMxbOEG5SX4bq34jiWNQg5/ie/ALp
	hQNUR7MRmTLxFhYfbYfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzXOK-005zsl-Fj; Fri, 10 Jun 2022 05:41:04 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzXOC-005zpr-US
	for barebox@lists.infradead.org; Fri, 10 Jun 2022 05:40:58 +0000
Received: by mail-lf1-x12c.google.com with SMTP id a2so35051952lfg.5
        for <barebox@lists.infradead.org>; Thu, 09 Jun 2022 22:40:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=w0ugOOx3N6dWTY3xOgOKoh2jf1ptypLGQ62zHKXORRo=;
        b=cy9ZIOB6/7CIbGAtw94bPVlW0KK3syCNQe8wHoQ03uy38T/X11flRCYv1a/Y0RN4Dm
         /XDjM5QtVBFY9KIC4TBh9zy1nDTFOv6aKG32tZwFrfSE+A3p3VtihRGYIMnd/8gDVOiE
         KC1To/BnB1YYpR1sQIWa7K48eUjeKCMsQgQN57KVn4LAo5eNarAWO7L5+Ps8fGSsOOLH
         Imcj5CSkurhottQTKLR8jM3WmEhs7PA0G6Bj8NGiHmeRKu0T4F06hEwD6FOD8T+zR3hv
         qmZf5+TyFLdqI+2UmlIEolMnCFhVkA5nYFLAkaFuL71jvnOXJsL11aikslhxc6ua51aK
         qPOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=w0ugOOx3N6dWTY3xOgOKoh2jf1ptypLGQ62zHKXORRo=;
        b=J+GI75gOSBQH3c0C2tDdLL+m2V9nJdwMRexpVSi3oKox7/MZYO5WFy4NxSO3eqc7zm
         CtI10nbnHS+5yhXWqSMn56sLOkmLo9qevZCz7pDYbaasn9U0gPfYgynQjuzYZuWTwnQh
         fFlAxi4zUdnU4DnQhBC9tBTSMzkFLvHFodkGz1x+/GaYM5yc5ZcevK6xoOKXopSsCU8f
         ZFPmAC1/x1sjjwfBruBdiWblK7wD+769VmmG+jwZG5GqCMP5JmZSVpTTmstRYtX7GpK/
         ZQkA9kDZ+GLeNkW6czpdfac3KqlSZ44/rMmVhfipGr6axXiHSNA2ugYPlrFjB2iwt15z
         6r3g==
X-Gm-Message-State: AOAM530hA0tH0aVBykkG5BtJKJIxj5l8JJ4aqTOX5WwELWABowPcgChW
	4omOJ0mh2IXBfKqO9eU5Lr6rgXVlxoo=
X-Google-Smtp-Source: ABdhPJwb3QFWhrTtbsab6nOxweE75jvnG3GZwUPczCYjZ5JVdWYwg1w896bAqZ/AEl9kXOxSSOUISQ==
X-Received: by 2002:a19:ca0c:0:b0:479:46c:2917 with SMTP id a12-20020a19ca0c000000b00479046c2917mr20954094lfg.160.1654839655011;
        Thu, 09 Jun 2022 22:40:55 -0700 (PDT)
Received: from shc.milas.spb.ru ([188.243.217.78])
        by smtp.gmail.com with ESMTPSA id v21-20020a2e87d5000000b0024f3d1dae84sm4009770ljj.12.2022.06.09.22.40.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jun 2022 22:40:54 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri, 10 Jun 2022 08:40:43 +0300
Message-Id: <20220610054051.4911-2-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220610054051.4911-1-eagle.alexander923@gmail.com>
References: <20220610054051.4911-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220609_224057_049131_03CC52EF 
X-CRM114-Status: UNSURE (   8.77  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/8] ARM: optee-early: Fix 'memcpy' implicit declaration
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

arch/arm/lib32/optee-early.c: In function 'start_optee_early':
arch/arm/lib32/optee-early.c:26:2: error: implicit declaration of function 'memcpy' [-Werror=implicit-function-declaration]
memcpy((void *)hdr->init_load_addr_lo, tee + sizeof(*hdr), hdr->init_size);

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/lib32/optee-early.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/lib32/optee-early.c b/arch/arm/lib32/optee-early.c
index 197325b8a0..735d829c99 100644
--- a/arch/arm/lib32/optee-early.c
+++ b/arch/arm/lib32/optee-early.c
@@ -9,6 +9,7 @@
 #include <asm/setjmp.h>
 #include <tee/optee.h>
 #include <debug_ll.h>
+#include <string.h>
 
 static jmp_buf tee_buf;
 
-- 
2.32.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

