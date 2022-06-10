Delivery-date: Fri, 10 Jun 2022 07:42:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzXPq-009fLz-7H
	for lore@lore.pengutronix.de; Fri, 10 Jun 2022 07:42:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzXPo-0007MH-0z
	for lore@pengutronix.de; Fri, 10 Jun 2022 07:42:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gS1JO36Ggtc00i9do1l2TWNGBg6F9RtlV06MgpveEDQ=; b=CEv2Ktaq52hQhL
	ii5jgVZOF/vQe0kSqniQVhruImz6kLu5+5G6af1OG0rDJegz4+o7q7twD+wFKzI/enl8C0KXkSj4B
	X9r6AqSxwA9wo2euQVOMednJldnyWLJrDbZA3C23lbDX88d2obeyNNhUdd0ybNGYdmeYzthRm5Xo/
	aB5fze6TmUnohdeJ/KWQhXB1bfqIs+Avn+uf5OzZYmQzeWEOzUv5pzHrtX33BWK9vuAFyz6/MMg0u
	UJwXn+7wR08fgrr06t6bKJKvSPJbI1bzykp1siIPE9Oqr8LyfoQvbvqARekVzi5dU1cfdsVjpflLi
	is0iLuabd3VkHigZIDkA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzXOU-005zy1-Vr; Fri, 10 Jun 2022 05:41:15 +0000
Received: from mail-lj1-x22d.google.com ([2a00:1450:4864:20::22d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzXOG-005zr4-88
	for barebox@lists.infradead.org; Fri, 10 Jun 2022 05:41:01 +0000
Received: by mail-lj1-x22d.google.com with SMTP id d18so48288ljc.4
        for <barebox@lists.infradead.org>; Thu, 09 Jun 2022 22:40:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=369sb0mDnwUcm1rvqeA1cz5AJDPw/ukx5VETgWLcx2s=;
        b=Gnbmtq0y3nMRQyXsG1bhhrHKkwIR+4eQcS6gxSS2OJt9iLY4dLLo4wFZZc8iOrQDBC
         h/aa0UBXZR0YvmvdlScbjj/e5nE+Fza88zP53F9mKW6P0gKYZuwkNdhb5FauPlBIdmte
         PK9YlSVLx/J5yVlMkl/7fyvVSZlpcfoPsEMerjV6T+07Eb+xI+2QDKJOaDAXr95kaxEY
         bKAU6oBzAMKyfdqfKAlxgz4r2o21hbNB6QL1r+kZ3pUkX9kCk25OTS8JGbiHHD9q04KO
         VXqYJB1YOrfi1/P4428Yy1//CIj2uoIizbZv/2nH2/mr2Fh9G9Bg+AG2S+R+U0AKWNql
         LQ0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=369sb0mDnwUcm1rvqeA1cz5AJDPw/ukx5VETgWLcx2s=;
        b=hh9sk3Yy7dvbiEl+VT6fLO/xyE3yuOcAjtmqt1CG7ejYWQNjNYN+LkyCkVZ5NpmN3i
         8o0iitf35G5h5XJH53KpzkLNG5ShjNhE/ktT/i6/O5UF7T8efe6U8K+yn5F6Rs0aMaT2
         MJFPDMQEybh0O9N3O6eagv2DAcjiYjoFnH7dAaSCNwH3VLU8QyqFU2UEtBkKAqv+Ywry
         BXHaMIz3XFJoy5q56Di1B2/xw5z0OzMAhZaFV2MhbnUZUHQhECUELQM7J16YlgpGlbau
         16Azkz5DfgVRIdovqEi2ukdbE9TXu31ndNkiQS+jdGVG7FwViWAfsRRl3HrhgEUrdRaO
         T76g==
X-Gm-Message-State: AOAM531F+EWieKQj5zxpRE+feoW3dNTXr9wyEx+T5c4ms3HlPlVXRlxR
	Bdp1wuNb84Ye9/cInTuKhLJIpbCkHnk=
X-Google-Smtp-Source: ABdhPJx7/jkuJDgBG3S16zuYl86KqU66zmapnjgx2sk5TZZPfd8TXX3LveRPzrLtZchLh4E1XubghQ==
X-Received: by 2002:a05:651c:506:b0:255:bc1f:80b5 with SMTP id o6-20020a05651c050600b00255bc1f80b5mr7978630ljp.391.1654839657647;
        Thu, 09 Jun 2022 22:40:57 -0700 (PDT)
Received: from shc.milas.spb.ru ([188.243.217.78])
        by smtp.gmail.com with ESMTPSA id v21-20020a2e87d5000000b0024f3d1dae84sm4009770ljj.12.2022.06.09.22.40.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jun 2022 22:40:57 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri, 10 Jun 2022 08:40:46 +0300
Message-Id: <20220610054051.4911-5-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220610054051.4911-1-eagle.alexander923@gmail.com>
References: <20220610054051.4911-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220609_224100_335337_536613C0 
X-CRM114-Status: GOOD (  10.56  )
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
Subject: [PATCH 4/8] ARM: vexpress: Add missing "noreturn" attribute to restart function
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/mach-vexpress/reset.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-vexpress/reset.c b/arch/arm/mach-vexpress/reset.c
index 78e452936d..01cd01e6df 100644
--- a/arch/arm/mach-vexpress/reset.c
+++ b/arch/arm/mach-vexpress/reset.c
@@ -14,7 +14,7 @@
 
 void __iomem *v2m_wdt_base;
 
-static void vexpress_reset_soc(struct restart_handler *rst)
+static void __noreturn vexpress_reset_soc(struct restart_handler *rst)
 {
 	writel(LOAD_MIN, v2m_wdt_base + WDTLOAD);
 	writeb(RESET_ENABLE, v2m_wdt_base + WDTCONTROL);
-- 
2.32.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

