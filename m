Delivery-date: Mon, 13 Mar 2023 11:55:05 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pbfpY-004zx4-8D
	for lore@lore.pengutronix.de; Mon, 13 Mar 2023 11:55:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pbfpX-00039C-Oo
	for lore@pengutronix.de; Mon, 13 Mar 2023 11:55:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zeTXgQM6E82G552Tcn6yJiu+zshw08TmenhIDl6XAjE=; b=CZSkD+Kzg15oaT
	0eRVKyy4cy2JrN70DNxnx1kF/350nfRuEqsJsNVLbEftW4H1Tjb3kS8Sj9nZCPhq2QYcGoPyM89IS
	m+bPj2Zlhzqu6ci1tNyVO8oonTxG933+0/UitwpIeNj6/+u+m7yKl1NAHv3CZgRl8J8BKkCU+E1uB
	zmUGS1qhxLc2cU8/sqtP28sm2m1ICmNIRTNGCF3jOXrWcW6vH8cSBeyBT9oWv/Tz4QHsrTOukVK9U
	mt3CaTHHFqhEyMT+jp3S3P/xRLnI+uIMH4+T1mk6JkRXAPk/9fCefzKfydoGNhCMiO0qnpy29Rm5g
	hdhdTHGVW1CT9/wnqcIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbfoG-005H8t-07; Mon, 13 Mar 2023 10:53:44 +0000
Received: from mail-lj1-x232.google.com ([2a00:1450:4864:20::232])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbfnw-005H3g-Bi
	for barebox@lists.infradead.org; Mon, 13 Mar 2023 10:53:30 +0000
Received: by mail-lj1-x232.google.com with SMTP id a32so12151645ljq.1
        for <barebox@lists.infradead.org>; Mon, 13 Mar 2023 03:53:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678704801;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zeTXgQM6E82G552Tcn6yJiu+zshw08TmenhIDl6XAjE=;
        b=bwwn35wJI+MaVGfEay3t7yEUDmpUkUQ4M7xfRAlJP42/7Lh0izcVnnhZ0WyAuq3cbl
         RGZzZuwaaT2f0TlOGlc5+ta/70xS5QsH3rclyPDnkRINYYLMXgBdDOaYN1+MYT9MjgFQ
         9/I8wNZEc8woOBUc0rqiQPVIdYjJow2lIFrZNPBESuzplWSHwcGPHVSu/ikTF8Lmk2zk
         79Gqram0kPEKg5OruF9XXKLgbl7pxuYJuPVw6octCfT7YIPaPKir/Yb5+1kUdaWG2Snr
         PsEoPpZ/V/aIyk+uipLcqsu4d+F0JhAU/RxRbFDS5TirAmcQjdZVgkOdjdkAg6YVaGrS
         zZKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678704801;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zeTXgQM6E82G552Tcn6yJiu+zshw08TmenhIDl6XAjE=;
        b=40j3KEJBaUvrWcpAQktMfJs+OM2VkpyBcUYg9TRuWxPWu8x37yyG2l2JJ0AgC2WaAl
         nmT50TRlh5MeKu8jqKZIGSEmTVlccmtSyYvRpK1OXB1trhRSCOqSrJDIvW25XjqoghR7
         774ccronxr+evJ5Qs8nq8IoSFikf+CheToyRlqCyTWP2IyD1WPVd9Qjwa0QS/GCqsJsZ
         UPCEF4tcnRI2+FMzCpipdpbH4IPHruBvVodD3iJczCqM73hFbIufxaFuy7iIp7qYRQ3G
         07a+EFFg9GnGwMFqdnedY6n2A8TNg1g/pawjfpeiP3uror76FvyGTLIM9CYxfh8r4wOi
         iBUg==
X-Gm-Message-State: AO0yUKXhepvAvFVdw9wJ7QreWst08m4x6y/5TIbY8tRF1EIVevbvjZOw
	qVY5I1+xhN+uJVLQwQMv5g+5kGUzQOjM9KKXODM=
X-Google-Smtp-Source: AK7set97AWhBm0BYtWZVDrT6gXHs2N1f+RHrbBfeFumjNDsSw+3WTUVMMyb/4cXPb49zJGoy0CPTLw==
X-Received: by 2002:a2e:3808:0:b0:295:a207:5378 with SMTP id f8-20020a2e3808000000b00295a2075378mr10041623lja.9.1678704800941;
        Mon, 13 Mar 2023 03:53:20 -0700 (PDT)
Received: from localhost.localdomain ([193.232.173.109])
        by smtp.gmail.com with ESMTPSA id 2-20020a05651c008200b002983bdf7d71sm938766ljq.106.2023.03.13.03.53.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Mar 2023 03:53:20 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Mon, 13 Mar 2023 13:53:07 +0300
Message-Id: <20230313105308.3108127-3-denorl2009@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230313105308.3108127-1-denorl2009@gmail.com>
References: <20230313105308.3108127-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230313_035324_464237_E5777E20 
X-CRM114-Status: UNSURE (   9.22  )
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
Cc: Denis Orlov <denorl2009@gmail.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] MIPS: dma-default: use virtual addresses when flushing caches
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Cache flushing functions expect virtual addresses, so make sure those
are properly converted from the physical ones in dma_sync_single_for_*.
QEMU doesn't care as it ignores cache instructions, but without such
change this code would result in TLB exceptions on real hardware.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 arch/mips/lib/dma-default.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/arch/mips/lib/dma-default.c b/arch/mips/lib/dma-default.c
index 48176e5d28..f6c750b8ac 100644
--- a/arch/mips/lib/dma-default.c
+++ b/arch/mips/lib/dma-default.c
@@ -30,11 +30,15 @@ static inline void __dma_sync_mips(unsigned long addr, size_t size,
 void dma_sync_single_for_cpu(dma_addr_t address, size_t size,
 			     enum dma_data_direction dir)
 {
-	__dma_sync_mips(address, size, dir);
+	unsigned long virt = (unsigned long)phys_to_virt(address);
+
+	__dma_sync_mips(virt, size, dir);
 }
 
 void dma_sync_single_for_device(dma_addr_t address, size_t size,
 				enum dma_data_direction dir)
 {
-	__dma_sync_mips(address, size, dir);
+	unsigned long virt = (unsigned long)phys_to_virt(address);
+
+	__dma_sync_mips(virt, size, dir);
 }
-- 
2.30.2



