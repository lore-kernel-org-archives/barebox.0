Delivery-date: Fri, 10 Feb 2023 15:48:45 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pQUhi-00382N-M1
	for lore@lore.pengutronix.de; Fri, 10 Feb 2023 15:48:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pQUhg-0006DV-5M
	for lore@pengutronix.de; Fri, 10 Feb 2023 15:48:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QNj0kEFYxl/t28TEzVRDXIbuiVSuF4ijukZRc0Trk5s=; b=FPRQHKM4+gW9bV
	zEqR5fm9IB8i/8c9z2skF+H20blHu+E0MOt5NZY+HaoOrwQ7/XcYd827IhqVeAv/Cd1Qxc4pEu8oA
	Q6MsEZqWjIt+YJMrB9p3VItBmqIhYpUffzx3jV2TXXfOjPC6SGLQUrjGO2LjH7SEV/SpJR58+jHiO
	q5urRCXuuUldMhK5NXOM2YWXDoNdwgbIYB/FbdRsX6EKNsOFu0VwYvw2rptCT0+NCYqMVhvBaPW3L
	nkIgkXUQcy0HnJOk+Z69PjxS4hJz1qKH98dxe9xMg0a6NKpMyvCHpIP5P3m7rNZQHgnitK8K/+GK3
	EJTdhtOfXLqCcp6CIKxw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pQUh2-0066Ey-7N; Fri, 10 Feb 2023 14:48:04 +0000
Received: from mail-qt1-x82e.google.com ([2607:f8b0:4864:20::82e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pQUgx-0066Ct-16
	for barebox@lists.infradead.org; Fri, 10 Feb 2023 14:48:00 +0000
Received: by mail-qt1-x82e.google.com with SMTP id g8so5893704qtq.13
        for <barebox@lists.infradead.org>; Fri, 10 Feb 2023 06:47:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QNj0kEFYxl/t28TEzVRDXIbuiVSuF4ijukZRc0Trk5s=;
        b=ny45qONaifKc8jJ00iHL5vbl34OD7JqPvlqDO1XjeYJc2WOTsaI6JlsTblKI7FEqnQ
         OEzFCeydsRUxYa2cRUU5mR8fAcuojSnFfNiJ6sawyES2rM0by2AiVnrqJ9hi2GCNal4Q
         UeTNtEZQ6JV80uI1hezIFp+x4a2/WtyBQmn+W6p+/3cLxqmLk6ibtcdasGNxTy/GNtuA
         eXCkwFL66KaL0rH51vD0vMNtnA1XjZS7YK45rYyK7qXrikXHACMxDfclHHVZ/HCWwP7R
         swSffw2BuYctvIpP5TGPYHT83zWOjUZ0zzlF6nnMgCKkY0cvcd3FL/ofiUZZX63UQV0o
         BlyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QNj0kEFYxl/t28TEzVRDXIbuiVSuF4ijukZRc0Trk5s=;
        b=Y4iq3oCaZk6roKDXcE/zgmxrqZYbdDYsKoU/8rl80Eg/AnfHCnR8/pqVM47pjyfgGQ
         Da80LA4vD1zFZO5Y252WP+Ae3bSdr4u9sVC3FEe9GvbrGZjfxIm0WOPePKs5HZoGII3V
         qSvxM9eZSJwWqBh5IPEEVvEpmrzuguO9VpL3/h6apZFrNRc7kuHcJ0p2Y0wgUuhjccDn
         kV1yL4WoFWXykFzjtqSXiQcWeoK+vQHtS9a/Qb43Y2JOs/nf7pMetQGTM7rgazg1C1vo
         M35pRzc8H0k3V8YQ7EyPQ6en8hTUFfWRVpNXCJlKh3gLGaLrRqvoT/JQm1II7f5ioRtk
         7j8w==
X-Gm-Message-State: AO0yUKVBfOa3ZiGH9V3aTya0jvfkvLJ45lplFTCjdRBUSCvOi0G/sBvy
	UUz39yTbiX2TL5FoJUZuiRuZbAGB7EJ3bO81EYg=
X-Google-Smtp-Source: AK7set/Y0/ea7V3eAr27g/TOvEtSCR37SoWHamom4dP/eZ80TB8tNl+C1WNYh/QgWgFtuv8LYM6k7w==
X-Received: by 2002:a05:622a:4f08:b0:3b9:bc8c:c1f6 with SMTP id ei8-20020a05622a4f0800b003b9bc8cc1f6mr7544734qtb.1.1676040475246;
        Fri, 10 Feb 2023 06:47:55 -0800 (PST)
Received: from localhost.localdomain ([193.232.173.109])
        by smtp.gmail.com with ESMTPSA id u63-20020a379242000000b00731c30ac2e8sm3661703qkd.74.2023.02.10.06.47.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Feb 2023 06:47:54 -0800 (PST)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Fri, 10 Feb 2023 17:47:43 +0300
Message-Id: <20230210144745.915720-3-denorl2009@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230210144745.915720-1-denorl2009@gmail.com>
References: <20230210144745.915720-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230210_064759_087306_9CFC408E 
X-CRM114-Status: UNSURE (   8.87  )
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
Subject: [PATCH 2/4] MIPS: dma: remove unnecessary ifdefs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We do not support any MIPS CPUs that are not MIPS32/MIPS64, so there is
no reason to check for those.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 arch/mips/lib/dma-default.c | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/arch/mips/lib/dma-default.c b/arch/mips/lib/dma-default.c
index fbe627c24c..48176e5d28 100644
--- a/arch/mips/lib/dma-default.c
+++ b/arch/mips/lib/dma-default.c
@@ -6,8 +6,6 @@
 #include <dma.h>
 #include <asm/io.h>
 
-#if defined(CONFIG_CPU_MIPS32) || \
-	defined(CONFIG_CPU_MIPS64)
 static inline void __dma_sync_mips(unsigned long addr, size_t size,
 				   enum dma_data_direction direction)
 {
@@ -28,12 +26,6 @@ static inline void __dma_sync_mips(unsigned long addr, size_t size,
 		BUG();
 	}
 }
-#else
-static inline void __dma_sync_mips(void *addr, size_t size,
-	enum dma_data_direction direction)
-{
-}
-#endif
 
 void dma_sync_single_for_cpu(dma_addr_t address, size_t size,
 			     enum dma_data_direction dir)
-- 
2.30.2



