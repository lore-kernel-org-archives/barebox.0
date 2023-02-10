Delivery-date: Fri, 10 Feb 2023 15:41:10 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pQUaN-0037d1-Vg
	for lore@lore.pengutronix.de; Fri, 10 Feb 2023 15:41:10 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pQUaL-0004oy-2s
	for lore@pengutronix.de; Fri, 10 Feb 2023 15:41:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zYhsREC7Iilc8tOnZ2QyN+R4rAGpYr8//hrd4KoTTcQ=; b=WP+bVcsjFiWCMg
	6/CJMtu4hfeoG0MjHqELkiCu2nkH6XPi/7GObQW+w/l9W8KUsi1EnVMGcY1HiE4KmpAdpIEQbkGYb
	hzKtg5glo9zdqL3LQj7RVJP7L1YFpC0lugaKavnukG0IslSLrfy963ahqLJP8V8peLdHBv901/HoM
	KsVVsziGf7mgZse89hVhwXD0aXK6tg+QQTSyehYBYomzzHDaUVxz4DDkQFqLSqZIYTVLoo+0YX42m
	k6E3deA4/JXDSRHv/3rDbW8zxz42fS8o8/HJoRdyPWlAl9sr3fa0S7vjr4bF/NCiqXkTkb3bGhFBR
	Dp621v5rjUhkFB+6fEdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pQUZ1-0064Pk-SG; Fri, 10 Feb 2023 14:39:47 +0000
Received: from mail-qt1-x82c.google.com ([2607:f8b0:4864:20::82c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pQUYx-0064O9-9X
	for barebox@lists.infradead.org; Fri, 10 Feb 2023 14:39:44 +0000
Received: by mail-qt1-x82c.google.com with SMTP id v17so5920205qto.3
        for <barebox@lists.infradead.org>; Fri, 10 Feb 2023 06:39:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zYhsREC7Iilc8tOnZ2QyN+R4rAGpYr8//hrd4KoTTcQ=;
        b=oRjkCVKxTubtum1X/ZeRRGsQWXyiH32xNmrSp4vJt1ikgIaoN/ANMi1fEt+2PG1Lqa
         CzbDT6q30BTMYT4/UXsGjVr4pc9rUDEE62szkAYDA1XhDyEGTeBsF4otTr6MU+/+i5fL
         zImAhVMipOXbh6nS2wN+A37d8EsATCJpHWO6AGUvvF+WWMnbx6cRiM2UB51/aNQnFf84
         Inoe5otTEHiygAUk/FjkosjbiIDrphUFc0y7bFlQPHsiEUo8QMdVQOmHMy3JBkQ1D7/N
         4epyE5Phw5BhWTLk1rI6Js+GeoIZUOVljmGJciFeqOsErSy8e1RW5zlkmSHgETcLhyRP
         G5Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zYhsREC7Iilc8tOnZ2QyN+R4rAGpYr8//hrd4KoTTcQ=;
        b=C9xzut1DvMHtxT5UG/FliRC+8UfocNSnWTgNJWFTzDRIpie5YqGo6gKADr00h6pxV6
         LvtcqRwwGliIik67VAGznrtiemZbT3BBU0U/oU9woGsFXnXxx10u4xt5h+xFi1xLwi9w
         BcTSzVdFGWJh2EFq51NWayZhRyLl+KCRd7jmC8oDr1scfzd5ym2xT4ZYxkcXVjv+XCtD
         mP1FMs2nLfl4KGsOO7jmvmsmz3/3zOq2yX9Kn5qk2o57JaNG87+KDV0zYpgdFe6GivpY
         VVA2vK5RAFtzNV6SGIJWXbG/C2MAqAjxhelNO2l9LDmrt7hySF7gP2S6nPWQn2gMmg3N
         0vFA==
X-Gm-Message-State: AO0yUKUG5VaStVhEYqh75ilWzb0WIwtSCEeqeXk3bhzQy1sw5PRh28OX
	ZKjdBeZhHEDQ4AGgr5RXaUEECXOFg1M7PjJkhmc=
X-Google-Smtp-Source: AK7set/xZpeM/ZyIN5AgC+Dv6WoyEIXZgEo94oCONez47kXt0oqnYg0OyOyhETvv3EhV5+IfmQKxxA==
X-Received: by 2002:a05:622a:15d6:b0:3b8:2602:9a35 with SMTP id d22-20020a05622a15d600b003b826029a35mr21523025qty.52.1676039980713;
        Fri, 10 Feb 2023 06:39:40 -0800 (PST)
Received: from localhost.localdomain ([193.232.173.109])
        by smtp.gmail.com with ESMTPSA id u1-20020ac83d41000000b003b643951117sm3442155qtf.38.2023.02.10.06.39.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Feb 2023 06:39:40 -0800 (PST)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Fri, 10 Feb 2023 17:39:24 +0300
Message-Id: <20230210143924.915149-3-denorl2009@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230210143924.915149-1-denorl2009@gmail.com>
References: <20230210143924.915149-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230210_063943_353935_C8405DB5 
X-CRM114-Status: GOOD (  10.99  )
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
Subject: [PATCH 2/2] dma: use virt/phys conversions when no dma_offset is specified
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The code was assuming that in such cases we can just use cpu addresses
as physical ones. This is incorrect on MIPS, the only platform that has
its own virt_to_phys/phys_to_virt functions defined.
This fixes issues with DMA mappings on MIPS, with e1000 PCI ethernet
card now working on Malta in QEMU.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 drivers/dma/map.c | 25 ++++++++++---------------
 1 file changed, 10 insertions(+), 15 deletions(-)

diff --git a/drivers/dma/map.c b/drivers/dma/map.c
index a00abf6421..13dbf2840f 100644
--- a/drivers/dma/map.c
+++ b/drivers/dma/map.c
@@ -3,25 +3,20 @@
 
 #include <dma.h>
 
-static inline dma_addr_t cpu_to_dma(struct device *dev,
-				    unsigned long cpu_addr)
+static inline dma_addr_t cpu_to_dma(struct device *dev, void *cpu_addr)
 {
-	dma_addr_t dma_addr = cpu_addr;
+	if (dev && dev->dma_offset)
+		return (unsigned long)cpu_addr - dev->dma_offset;
 
-	if (dev)
-		dma_addr -= dev->dma_offset;
-
-	return dma_addr;
+	return virt_to_phys(cpu_addr);
 }
 
-static inline unsigned long dma_to_cpu(struct device *dev, dma_addr_t addr)
+static inline void *dma_to_cpu(struct device *dev, dma_addr_t addr)
 {
-	unsigned long cpu_addr = addr;
-
-	if (dev)
-		cpu_addr += dev->dma_offset;
+	if (dev && dev->dma_offset)
+		return (void *)(addr + dev->dma_offset);
 
-	return cpu_addr;
+	return phys_to_virt(addr);
 }
 
 dma_addr_t dma_map_single(struct device *dev, void *ptr, size_t size,
@@ -31,13 +26,13 @@ dma_addr_t dma_map_single(struct device *dev, void *ptr, size_t size,
 
 	dma_sync_single_for_device(addr, size, dir);
 
-	return cpu_to_dma(dev, addr);
+	return cpu_to_dma(dev, ptr);
 }
 
 void dma_unmap_single(struct device *dev, dma_addr_t dma_addr, size_t size,
 		      enum dma_data_direction dir)
 {
-	unsigned long addr = dma_to_cpu(dev, dma_addr);
+	unsigned long addr = (unsigned long)dma_to_cpu(dev, dma_addr);
 
 	dma_sync_single_for_cpu(addr, size, dir);
 }
-- 
2.30.2



