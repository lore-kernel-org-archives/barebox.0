Delivery-date: Wed, 20 Jul 2022 15:33:00 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oE9oz-00Fdds-4I
	for lore@lore.pengutronix.de; Wed, 20 Jul 2022 15:33:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oE9ow-0004Uc-Q6
	for lore@pengutronix.de; Wed, 20 Jul 2022 15:32:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qb88MZfaixnH0MVxjzVXDAP6f3lvHuYTvdlpuCzzQhQ=; b=Hnj5BqDDhGuICA
	afbU8CVUYxPsZryHrGI9JgME928Og+mDeeC6RwtrnNO6+0Crhte0tglDMoGrSYanyhUcHkFGMrbFC
	6g5e6sKflj5pJi9tY5U4wrWBGrrXYA78cDQdZRgRuZyjWiDZ7UznrjCJAqW2nR9VaVUVaCC3vSP67
	kFKnGPkzr4WvDQ1hGs+t9FAYU1Xe5OfFEKV/ugCEsvrjQwqA4VwXSQHlGYKC/wAVW/HJ9h6fWO1Lt
	maLMX0tBe7Ru9cZc2bose1IQEqO9fl7vszyK5DW5jlZS1Jddqz8xXPDCHV4KB6AJ6hXoGmyAFn0DM
	N5VKleUhc9RoD7EWkv2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oE9nL-0064AD-Go; Wed, 20 Jul 2022 13:31:19 +0000
Received: from mail-lj1-x22f.google.com ([2a00:1450:4864:20::22f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oE9nC-00646F-UI
	for barebox@lists.infradead.org; Wed, 20 Jul 2022 13:31:12 +0000
Received: by mail-lj1-x22f.google.com with SMTP id m9so18479890ljp.9
        for <barebox@lists.infradead.org>; Wed, 20 Jul 2022 06:31:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=qb88MZfaixnH0MVxjzVXDAP6f3lvHuYTvdlpuCzzQhQ=;
        b=H6yWUS/OaotZ/hT3rp4+aSz06a4yUVbJw8ZjgZmkFYqS+3nBjX6xKovwBOfBjJGSuu
         +Ee5+PbZ4B/abhJOj498vFplZ1ylPsp7h9iK20WlZzWqKKSTxR29Ga7C0VnCHG1ykCo5
         WMeRLtnju266yu3V4jeQh7GwcqKtGQHI3lbaiPivx4ZUtchLVMjf/KSaS+nUGSHi/Wd6
         RjVsaraV4hMRWmFpolCMJW9VPKG61rCzdGoo1NGGR1scP/jQUcoFKOxdLnonAIe4utGN
         tSd5uaXaVI0mlTd69tOOSopsq0M98gR8vLN9d51i8RTc8OFg547/pzSH9Lp16TMO2+WK
         PjmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=qb88MZfaixnH0MVxjzVXDAP6f3lvHuYTvdlpuCzzQhQ=;
        b=eMQAGo7UkOnsLwpbVXY069IBZr1hXv9Zjt84Ci1Tw0b+DTJTuQUYEF/hmaGl68lDR6
         iWhyvDHBibd4edZiGpIycqFkIO7GtvR9J5Z4XFKtGbJ8x6YmIhUZMbJcxqCZ3XSjgzQW
         ImmsUqlHTyjptpXqpSAmpCTAGJRSkPDZp8+whS8wHAF/DpfmYPwtex/qaIrTugxughpJ
         +vaZs82GH/Yz6MymIB5Eqp6c32FRIW7hK4ltkvvjbEpT9aVUHrRhlvoByvBg0Vj717At
         8mFOuoVB+KFSkPGDH5H3qBqhi7M8fgcP/fEIs5ZK4OO2uV9/GnvP7lM9kPpWg1PGwzf3
         PH6g==
X-Gm-Message-State: AJIora86PqPDc56GIbSAEr4tVTg8MoBrWqI79MsOD0mB5AOa2nOx0+Fa
	Xt+aaUULV7ZTVKJU0+LViYlOrN5oJEv0hwkn
X-Google-Smtp-Source: AGRyM1sMtagEG501WxvHT68UrKdLkvCmY+mj56+XtmKj5ALguUzJuzWkkcSE63/If8Lx19jkBWcQkw==
X-Received: by 2002:a2e:8707:0:b0:25d:bbd5:c2f with SMTP id m7-20020a2e8707000000b0025dbbd50c2fmr6039936lji.464.1658323868271;
        Wed, 20 Jul 2022 06:31:08 -0700 (PDT)
Received: from localhost.localdomain ([193.232.173.109])
        by smtp.gmail.com with ESMTPSA id k8-20020a2eb748000000b0025dd85da157sm237378ljo.5.2022.07.20.06.31.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Jul 2022 06:31:07 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Wed, 20 Jul 2022 16:30:54 +0300
Message-Id: <20220720133100.13580-2-denorl2009@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220720133100.13580-1-denorl2009@gmail.com>
References: <20220720133100.13580-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220720_063110_995665_D3900A35 
X-CRM114-Status: UNSURE (   8.63  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/7] net: e1000: remove superfluous allocation check
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

dma_alloc() calls xmemalign which panics if unable to allocate memory,
so there is no need to check the returned pointer for validity.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 drivers/net/e1000/main.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/net/e1000/main.c b/drivers/net/e1000/main.c
index f67c5d867b..bfb8d8ff2f 100644
--- a/drivers/net/e1000/main.c
+++ b/drivers/net/e1000/main.c
@@ -3575,9 +3575,6 @@ static int e1000_probe(struct pci_dev *pdev, const struct pci_device_id *id)
 	edev->priv = hw;
 
 	hw->packet = dma_alloc(PAGE_SIZE);
-	if (!hw->packet)
-		return -ENOMEM;
-
 	hw->packet_dma = dma_map_single(hw->dev, hw->packet, PAGE_SIZE,
 					DMA_FROM_DEVICE);
 	if (dma_mapping_error(hw->dev, hw->packet_dma))
-- 
2.20.1



