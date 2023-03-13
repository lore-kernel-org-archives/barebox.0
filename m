Delivery-date: Mon, 13 Mar 2023 11:55:13 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pbfpg-00500e-0U
	for lore@lore.pengutronix.de; Mon, 13 Mar 2023 11:55:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pbfpf-0003ER-OP
	for lore@pengutronix.de; Mon, 13 Mar 2023 11:55:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5pm+wAv6hMxE4zBHAp+ar1GFg5uz75pzqJQMX26QjGA=; b=qhJYiwhYEFate3
	tHFDNZ7uHjnmMGYmZmJftLCcorFmcLDX6mQ6tIKdhKmxNfOh9WJmkbCX2xXy/tcacx7kNStzlTMnn
	WGKnjmorkaLraXjAOHbEJBELodXwba6L1tCEPA7PuV6pE8w2Hv+CP17MIGO0xScOeAi3V+7AStgBJ
	H/yWhd77v76CoxGtQ1QlcCvTR7VYkZQE/LH/IGCxjuUXWcnsH0GMyQx9AAGuC0AdbKeJM/PTO6dFE
	VmzFKMqCcaCKy0cGof1FJ9ER6ijbQ/WqYltPIQphpOgqbQPAz1gOfHYnX3+Z41SUPTQODC07zANN3
	KnKB7HH+exih8UWZndVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbfoC-005H7f-28; Mon, 13 Mar 2023 10:53:40 +0000
Received: from mail-lj1-x230.google.com ([2a00:1450:4864:20::230])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbfnw-005H48-8t
	for barebox@lists.infradead.org; Mon, 13 Mar 2023 10:53:29 +0000
Received: by mail-lj1-x230.google.com with SMTP id by8so12130352ljb.7
        for <barebox@lists.infradead.org>; Mon, 13 Mar 2023 03:53:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678704802;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5pm+wAv6hMxE4zBHAp+ar1GFg5uz75pzqJQMX26QjGA=;
        b=IK6C9UblqZZyd4EYIWApOvZcHTsl54QHtdu43Y9kvWPaSI7QpfwgsJLCpPQIK0D9fJ
         Lms3TROfDx8hf3vQ0Rhe4Mmha0LZKBwhS7JKhaiZN0oDznd7q+afK/fIs6pQRUNThbNW
         ibLuwN5CuzdpoFCPKOggdq5SULI2R0vPTdsrZBHjz6xxPuI38aNAhRC1aM0bLpAwnhyZ
         nXfz9ThpFbiD1C4wVXG1q1WmeSJ3Y1iS/shH0m3BeNx9qfHxJ9KYvNa1tkbNf6dZ+8Ll
         bze/BMgmM457KV4qvd6zscTwPjmmBkJ1LINNC4gPm/vGFK/UjSZ7RsoAIebGXEWIgixJ
         tz7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678704802;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=5pm+wAv6hMxE4zBHAp+ar1GFg5uz75pzqJQMX26QjGA=;
        b=Lko3GdFCuaLnf0MCE4Tl1v/L7UqwPPoGbeEvkrq8phY9AaaN8G7DS0QHnlG+P/S/Kz
         vEM2VtsGxCOgqlPku4AfScbZB7mZ83+2c9jJdMqL/9fLdaOTLFTPMm2uMj0pfNPW96cp
         9nj3li+75HTA2ZSBe/rp4wfamukuMx/PwxCbcmNYcbZX1fB3yQnjwk2jeYkYPdT7rArs
         Rh25k9L49rVGfBe/qomVdhdntxh6HzE4iMH98nU50HDj8JLE65nt7N70yr6o1VHOmAob
         F5vuOUKEFrxbGxpBMJ4s9VPL1ty8DeWDmQbs6q2LYOqqpEzOtmGGI5uqG9FdC7MuenIt
         jkjg==
X-Gm-Message-State: AO0yUKXP5A9O5/Fb373jsgz7T24XFRVkeiHAugZyziCQ5DFSpeu8Cyze
	sC4VV2/MvBrsfv01cBR31V/xviZuDNQkYiqnQWU=
X-Google-Smtp-Source: AK7set9VMAXXZ3f6qz3PxIiqIgBI6ap21qyeWFV9XiJyAAFPRga0fFu6LHloiwPd/WnKWeS73/TfBw==
X-Received: by 2002:a2e:2d11:0:b0:293:53bd:b6f with SMTP id t17-20020a2e2d11000000b0029353bd0b6fmr9375957ljt.16.1678704802460;
        Mon, 13 Mar 2023 03:53:22 -0700 (PDT)
Received: from localhost.localdomain ([193.232.173.109])
        by smtp.gmail.com with ESMTPSA id 2-20020a05651c008200b002983bdf7d71sm938766ljq.106.2023.03.13.03.53.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Mar 2023 03:53:21 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Mon, 13 Mar 2023 13:53:08 +0300
Message-Id: <20230313105308.3108127-4-denorl2009@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230313105308.3108127-1-denorl2009@gmail.com>
References: <20230313105308.3108127-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230313_035324_458428_D90AE87D 
X-CRM114-Status: GOOD (  10.85  )
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
Subject: [PATCH 3/3] MIPS: dma-default: do not flush caches in dma_sync_single_* excessively
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Change the logic to be different depending on whether we are doing
synchronization for a cpu or a device. This gets rid of unnecessary
cache flushing in some cases. While at it, also simplify code a bit,
collapsing two cases with the same code in a switch statement in
dma_sync_single_for_device().

The functional change itself is taken from Linux commit
'MIPS: make dma_sync_*_for_cpu a little less overzealous'
(hash: cbf1449ba5aec9cf4c68b69f899391a8d42e9b8f).

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 arch/mips/lib/dma-default.c | 36 +++++++++++++++++-------------------
 1 file changed, 17 insertions(+), 19 deletions(-)

diff --git a/arch/mips/lib/dma-default.c b/arch/mips/lib/dma-default.c
index f6c750b8ac..0347d7a7db 100644
--- a/arch/mips/lib/dma-default.c
+++ b/arch/mips/lib/dma-default.c
@@ -6,39 +6,37 @@
 #include <dma.h>
 #include <asm/io.h>
 
-static inline void __dma_sync_mips(unsigned long addr, size_t size,
-				   enum dma_data_direction direction)
+void dma_sync_single_for_cpu(dma_addr_t address, size_t size,
+			     enum dma_data_direction dir)
 {
-	switch (direction) {
+	unsigned long virt = (unsigned long)phys_to_virt(address);
+
+	switch (dir) {
 	case DMA_TO_DEVICE:
-		dma_flush_range(addr, addr + size);
 		break;
-
 	case DMA_FROM_DEVICE:
-		dma_inv_range(addr, addr + size);
-		break;
-
 	case DMA_BIDIRECTIONAL:
-		dma_flush_range(addr, addr + size);
+		dma_inv_range(virt, virt + size);
 		break;
-
 	default:
 		BUG();
 	}
 }
 
-void dma_sync_single_for_cpu(dma_addr_t address, size_t size,
-			     enum dma_data_direction dir)
-{
-	unsigned long virt = (unsigned long)phys_to_virt(address);
-
-	__dma_sync_mips(virt, size, dir);
-}
-
 void dma_sync_single_for_device(dma_addr_t address, size_t size,
 				enum dma_data_direction dir)
 {
 	unsigned long virt = (unsigned long)phys_to_virt(address);
 
-	__dma_sync_mips(virt, size, dir);
+	switch (dir) {
+	case DMA_FROM_DEVICE:
+		dma_inv_range(virt, virt + size);
+		break;
+	case DMA_TO_DEVICE:
+	case DMA_BIDIRECTIONAL:
+		dma_flush_range(virt, virt + size);
+		break;
+	default:
+		BUG();
+	}
 }
-- 
2.30.2



