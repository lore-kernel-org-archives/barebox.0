Delivery-date: Wed, 17 Sep 2025 08:20:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uylWK-003yEv-11
	for lore@lore.pengutronix.de;
	Wed, 17 Sep 2025 08:20:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uylWJ-0006td-NN
	for lore@pengutronix.de; Wed, 17 Sep 2025 08:20:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=kcRSC231m3iiQQsyiAnGQaK59+s5Jv2HonKSVsrSuPU=; b=0L+ZOZb313HFjLt2X6tvk2a5ZQ
	yA6pbaLx8Y/KnScw/cUAVBVq97CSdO8CROJu4k1yiLEbM5eRF4jILT6vgwu0MK2GjyeSFX9TqXe6+
	PDdFj5Q3gg1rzMrFzkw58uyUzOHOQ8/oQ92ttChCmF33Oc7ZuaWl3wOKp423DZ2EM3HKWOlLTVQKw
	UMMolzusz3CauDP4l1w2YIrx2yTBczmtky1V1yQzkWkaXKyHMC9gpy8Hltatsn9BAjSuJJEkb3u/3
	peU20Wcz72enn77BxPQWyEBCvZd6eH0/8mj7KCE2wJRTgjLLhOXdSoChmA7FsDh0CmEpST+9Hk3w6
	mIZr96/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uylVZ-0000000AJF6-4ARJ;
	Wed, 17 Sep 2025 06:19:13 +0000
Received: from mail-qv1-xf2d.google.com ([2607:f8b0:4864:20::f2d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uylVW-0000000AJEJ-3JJR
	for barebox@lists.infradead.org;
	Wed, 17 Sep 2025 06:19:11 +0000
Received: by mail-qv1-xf2d.google.com with SMTP id 6a1803df08f44-7748879b06aso34941016d6.3
        for <barebox@lists.infradead.org>; Tue, 16 Sep 2025 23:19:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758089949; x=1758694749; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=kcRSC231m3iiQQsyiAnGQaK59+s5Jv2HonKSVsrSuPU=;
        b=klcOiIzH5P7HK7pIclzdq950QOMUGDmkfWatB1qZ18p5/8iy5bEICEF9PFBy47YS19
         zuESPxv2OM9U1HuqcBgtHfgZ8966gyYauEKQR1Yp+jEzV3+k30zIXaaW11yck81fTq9a
         UEUvh2fR/3NM64YnMnJWnRm4E46OhfpL9f7xan5zzjXys20UpN/K5qNILasFukwmfAeJ
         p0i0br4tQUaHCgn5UqN0MyjNMwToKIjKHiM34yq0l2fKFVbBkIxwLIzR+SyK7zVHUG8I
         fA50GHagjcO7EC+nqnIuXqcpUWJaW7jq6WlPDDw1eOwZYsDooUo6+7Vfg9iz4Mf2SE+A
         FyVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758089949; x=1758694749;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kcRSC231m3iiQQsyiAnGQaK59+s5Jv2HonKSVsrSuPU=;
        b=lFr+pvtQSdLxCSYa/48+1Q4rlERnwen/fUlz4bKwzoV5y/yDIBBa7/oN2J22e/5Ibh
         Y6Zmkw2dhzFd6DFuO0BTvowH1eWqssAp/25Ibww3O5NdYmJFRNtd9Fpt2rRCKlKLcADA
         MmPyesrga5elTc3neUJDSmZGjVvMxJebKZ6/JIPw1zc8ko3K9RDKi12APJ7hY6YwzFVB
         qF0BDEMxlv88aLceWZOakTujR796cLw2iCvdGJT2kqTXpzkDQ2e6tWnoFXs+LKrJ+YY7
         C11wIPsal5oAWk/yOxn0O5WKBeOaJAlqJVA8+eobGyLSUIFl3+IVEj4Tvi/iaYTEVKK8
         tOfg==
X-Gm-Message-State: AOJu0Yz3v7l9G7nMp5YB1Bo6cDBJXnUOvjwkukW3taktquHI5bkVmj4W
	HqGqvdwPu52T/hjxE3d6+Wt7PRT/6GWNY2OTYkG/amvc9RNyKgPedTOC
X-Gm-Gg: ASbGnctOvx/B+rixnyR07GCLt+e7t1NBgTVTg4YECo+G1n1W5KAoMIbmpMIEMoeY8A9
	G1QRoFgIIDSF+TVVzIplbDHf224AriaIZ+lza4SALLdF3+EPTIPB9fmihcFubgQiDkx/UqLBZ0D
	grqEPQDh7o+fhtOcyC/E4LXlVChNZ8I893oLnqwP223kvZtrExrmkRj4KNWfWraKznjBG7znGSt
	uDRTYQzbN5lf4VUVxiLwlVmPtd6ijEC0D/Bcb2JZLcS7jb4G/AwMhgxUpLGUz/Z8v8YL5du+63U
	FdnRFGrBUxg6FQUb1jPw5s1rf1q4H2B+BPWnS5fcEwMzaY+UuzbbYxoIYCFpo0pvvxro5zCTXkr
	w6dJFZ4vXgQwL3tebZ+5RZT4/YFxsNRuF/jFKROcbNIgN2YHgVkucxV9f2u4LaA8CBYEHeGtYkp
	wQh7zBi8lv1hEeQ3vU5BYhkkDQnQ==
X-Google-Smtp-Source: AGHT+IHnewKK9CEkeiYIYcKKeNtgKyvPuUI/KLkZgSnn6B8NBcw2XhEXurP3Ws7w6PIymLvl3ZXV4Q==
X-Received: by 2002:ad4:5767:0:b0:778:9e9b:3fbb with SMTP id 6a1803df08f44-78eced22fa4mr8145436d6.50.1758089949106;
        Tue, 16 Sep 2025 23:19:09 -0700 (PDT)
Received: from Latitude-7490.ht.home ([2607:fa49:8c41:2600:619d:6d89:da16:63f8])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-773292c6357sm74241896d6.67.2025.09.16.23.19.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Sep 2025 23:19:08 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de,
	a.fatoum@barebox.org
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>
Date: Wed, 17 Sep 2025 02:19:04 -0400
Message-Id: <20250917061904.720116-1-chalianis1@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250916_231910_837992_28C5FC3C 
X-CRM114-Status: GOOD (  11.72  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] riscv: dma: rename dma_ops to dma_map_ops. 
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Chali Anis <chalianis1@gmail.com>

rename dma_ops to dma_map_ops for more consistence.

Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 arch/riscv/cpu/dma.c              | 6 +++---
 arch/riscv/include/asm/dma.h      | 4 ++--
 drivers/soc/starfive/jh7100_dma.c | 2 +-
 3 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/riscv/cpu/dma.c b/arch/riscv/cpu/dma.c
index b54b2fec1679..0a4b398c2e3c 100644
--- a/arch/riscv/cpu/dma.c
+++ b/arch/riscv/cpu/dma.c
@@ -30,14 +30,14 @@ static void __dma_free_coherent(struct device *dev,
 	free(vaddr);
 }
 
-static const struct dma_ops coherent_dma_ops = {
+static const struct dma_map_ops coherent_dma_ops = {
 	.alloc_coherent = __dma_alloc_coherent,
 	.free_coherent = __dma_free_coherent,
 	.flush_range = __dma_flush_range,
 	.inv_range = __dma_flush_range,
 };
 
-static const struct dma_ops *dma_ops = &coherent_dma_ops;
+static const struct dma_map_ops *dma_ops = &coherent_dma_ops;
 
 void *dma_alloc_coherent(struct device *dev,
 			 size_t size, dma_addr_t *dma_handle)
@@ -51,7 +51,7 @@ void dma_free_coherent(struct device *dev,
 	dma_ops->free_coherent(dev, vaddr, dma_handle, size);
 }
 
-void dma_set_ops(const struct dma_ops *ops)
+void dma_set_ops(const struct dma_map_ops *ops)
 {
 	dma_ops = ops;
 }
diff --git a/arch/riscv/include/asm/dma.h b/arch/riscv/include/asm/dma.h
index 190f8705e2ef..e3602b04397d 100644
--- a/arch/riscv/include/asm/dma.h
+++ b/arch/riscv/include/asm/dma.h
@@ -6,7 +6,7 @@
 
 struct device;
 
-struct dma_ops {
+struct dma_map_ops {
 	void *(*alloc_coherent)(struct device *dev, size_t size, dma_addr_t *dma_handle);
 	void (*free_coherent)(struct device *dev, void *vaddr, dma_addr_t dma_handle, size_t size);
 
@@ -15,7 +15,7 @@ struct dma_ops {
 };
 
 /* Override for SoCs with cache-incoherent DMA masters */
-void dma_set_ops(const struct dma_ops *ops);
+void dma_set_ops(const struct dma_map_ops *ops);
 
 #define DMA_ALIGNMENT 64
 
diff --git a/drivers/soc/starfive/jh7100_dma.c b/drivers/soc/starfive/jh7100_dma.c
index 1b1cafcba0fe..732dfacdb597 100644
--- a/drivers/soc/starfive/jh7100_dma.c
+++ b/drivers/soc/starfive/jh7100_dma.c
@@ -37,7 +37,7 @@ static inline void jh7100_free_coherent(struct device *dev,
 	free((void *)dma_handle);
 }
 
-static const struct dma_ops jh7100_dma_ops = {
+static const struct dma_map_ops jh7100_dma_ops = {
 	.alloc_coherent = jh7100_alloc_coherent,
 	.free_coherent = jh7100_free_coherent,
 	.flush_range = sifive_l2_flush64_range,
-- 
2.34.1



