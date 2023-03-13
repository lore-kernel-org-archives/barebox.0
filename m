Delivery-date: Mon, 13 Mar 2023 11:55:06 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pbfpZ-004zxH-DJ
	for lore@lore.pengutronix.de; Mon, 13 Mar 2023 11:55:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pbfpY-00039M-HG
	for lore@pengutronix.de; Mon, 13 Mar 2023 11:55:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dl2CvvyEab/+phW5RKd2MuiNqaFcCLUgBO19u5xlSPQ=; b=pZd+HtlhZXAHs6
	ykXqPcEDTh+0HnOsHFOdRjyTSRFARspevIk4Tqa3gQKdoCW3fgoRcsYN5QFksP+9XPlqu3mDssnJ0
	CDS7E0HE5V6Up9bBb5aVDJn61GYw/y7/21nOgkDEenhMwBlXfW47Tbfv3Fp/4yi5eGYWL3MoB/ADM
	RBt247vDFcKJPri12yMX/jVxKnkGS6dUKGrLqEh8Iip4+U8/DWpwVWnyXxY28jQPYdBYG6FqXnPYs
	pr2K+ynDVGY+b1GF0G74Z9Y9ppDpGVRReGhIOlgPEuwol+/T3d5hUkSPAjrBWMmj3vzWTw6w0kJ4i
	tO+ZZrgkkPN2F408UWew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbfo8-005H6r-9B; Mon, 13 Mar 2023 10:53:36 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbfnv-005H32-W1
	for barebox@lists.infradead.org; Mon, 13 Mar 2023 10:53:29 +0000
Received: by mail-lf1-x12d.google.com with SMTP id g17so15142067lfv.4
        for <barebox@lists.infradead.org>; Mon, 13 Mar 2023 03:53:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678704799;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=dl2CvvyEab/+phW5RKd2MuiNqaFcCLUgBO19u5xlSPQ=;
        b=m91X2khFPNWM8qLvi5gJ3JO56IQXXZOl/XEN4v79APp4MJMFcgWo0TXbPAjHvTMMMN
         GgDjBskZJ6FlbCf4HytnM/4sIjhV8pteOU57TyrF1oKtjKw3/gJH9enhDYbvrjEVG9Gx
         fkUOqHuhH2PNjMF96x7a3XejYYoh4AjuiSOKE/jlBcrFBOStQFb8o/PVm0fpV3KLlHtr
         1VBPvITqshwVpsTt9zHWN67c9eAehWxieg+JZBW3q+/Y3INEpZRDGbhn54KVed5xoSXw
         OJgaYSGWtX5ZbpuXRfhmllx3sguSdIANnki1FGvCbb/AYuWY6DoajQjk4+lB8x/pPzis
         hZjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678704799;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dl2CvvyEab/+phW5RKd2MuiNqaFcCLUgBO19u5xlSPQ=;
        b=5DQlBtNe3QRkRjLqSMCaF5MtFJNgWOYMisoMf98pTVwXDE6tHCk/vVQ8M2Wlo/9Equ
         ZdrHKWttHdi45CbpWd2wtUQ2EdAAO+yVfSI1k1Yv5HkLC7FCYUtuKOIXaJEwNngGUcXX
         mc2O0ZdgwjQ124lmzhVzd5BQsVOoFdYbCLnx1tY51xcF7Zft06pGMat5kyCV1whiB/oZ
         MXjLnVZst4QscXPav5lEbEQLth/LShPvbCctuUmZP+DTX7qfU0WcM7YQZTlce/j9pfqH
         mo38HikDK3e2SN2KbRNVmgG0kA6vrI3ao26WrPBn4pMTxrzPzBRTPAaU5Vy/uGoeMVVZ
         b+2A==
X-Gm-Message-State: AO0yUKUEj4fU8IQsUbbzufoLHMKHDX5s7mYN8M8GsZMc5gDD5mFEXzOG
	Qs2hFqHYEWcUl4CQbZTufPePrg3u45TbvV55Pnw=
X-Google-Smtp-Source: AK7set/AvzjJFS/RBoOF+xoXfrI+hPE5yO7u+upNiJPHyZNI2TjJPCXis3ILyttiSkDvJUQ8v27/Xw==
X-Received: by 2002:ac2:446c:0:b0:4db:3e1a:fc7 with SMTP id y12-20020ac2446c000000b004db3e1a0fc7mr9831493lfl.31.1678704799178;
        Mon, 13 Mar 2023 03:53:19 -0700 (PDT)
Received: from localhost.localdomain ([193.232.173.109])
        by smtp.gmail.com with ESMTPSA id 2-20020a05651c008200b002983bdf7d71sm938766ljq.106.2023.03.13.03.53.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Mar 2023 03:53:17 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Mon, 13 Mar 2023 13:53:06 +0300
Message-Id: <20230313105308.3108127-2-denorl2009@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230313105308.3108127-1-denorl2009@gmail.com>
References: <20230313105308.3108127-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230313_035324_234861_C5549B18 
X-CRM114-Status: UNSURE (   9.57  )
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
Subject: [PATCH 1/3] dma: use dma/cpu conversions correctly in dma_map/unmap_single
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We should not treat dma handles as if they correspond one-to-one to the
virtual addresses in common code. So make sure that dma handles are
properly passed to the dma_sync_single_for_* functions. Otherwise, it
just doesn't make much sense, as dma_sync funcs will receive proper dma
handles when called directly, and a virtual address treated as one when
called from dma_map funcs.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 drivers/dma/map.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/dma/map.c b/drivers/dma/map.c
index 114c0f7db3..fea04c38a3 100644
--- a/drivers/dma/map.c
+++ b/drivers/dma/map.c
@@ -23,17 +23,15 @@ static inline void *dma_to_cpu(struct device *dev, dma_addr_t addr)
 dma_addr_t dma_map_single(struct device *dev, void *ptr, size_t size,
 			  enum dma_data_direction dir)
 {
-	unsigned long addr = (unsigned long)ptr;
+	dma_addr_t ret = cpu_to_dma(dev, ptr);
 
-	dma_sync_single_for_device(addr, size, dir);
+	dma_sync_single_for_device(ret, size, dir);
 
-	return cpu_to_dma(dev, ptr);
+	return ret;
 }
 
 void dma_unmap_single(struct device *dev, dma_addr_t dma_addr, size_t size,
 		      enum dma_data_direction dir)
 {
-	unsigned long addr = (unsigned long)dma_to_cpu(dev, dma_addr);
-
-	dma_sync_single_for_cpu(addr, size, dir);
+	dma_sync_single_for_cpu(dma_addr, size, dir);
 }
-- 
2.30.2



