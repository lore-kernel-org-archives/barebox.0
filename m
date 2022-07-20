Delivery-date: Wed, 20 Jul 2022 15:33:26 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oE9pO-00Fdgb-No
	for lore@lore.pengutronix.de; Wed, 20 Jul 2022 15:33:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oE9pK-0004dV-TW
	for lore@pengutronix.de; Wed, 20 Jul 2022 15:33:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BH2YDNOf8LQfxiinJnLx+3tP4xJXCO5+/g5I56nV9Hw=; b=1QWlh54aTf7vbS
	j2IsvcNZxOPEmgrf9HjYPdWi8ktIlWlUFZunv/sIuoBmoGzfpGSrjGuISRLnlRBKw4QI8AQetz/ta
	sVAmPxaGMvE/MnArrwvbArHk2XS3FmlOsJo3XcbgAeepnCBZuGncArN6hKdSgR9nhI7qncQXQ6ATd
	AB7KZ0ErcmFgxKb/lbFyYzMUOXcxlR26HLXvQ6UV2XebW1FQ3z7X47cDLzbiY1in7HGDY7LdVrggP
	w7WcoshfffVNunSOKn87PBK7iBg+HAD31BWXwkmczIp/kF2T4OyZc5ztCCeZmBF+zOiZcptjxQRnc
	p4TzOEe99kBe+CjZ8+qA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oE9o0-0064YX-B7; Wed, 20 Jul 2022 13:32:00 +0000
Received: from mail-lf1-x12d.google.com ([2a00:1450:4864:20::12d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oE9nJ-006463-AU
	for barebox@lists.infradead.org; Wed, 20 Jul 2022 13:31:18 +0000
Received: by mail-lf1-x12d.google.com with SMTP id n18so30293740lfq.1
        for <barebox@lists.infradead.org>; Wed, 20 Jul 2022 06:31:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=BH2YDNOf8LQfxiinJnLx+3tP4xJXCO5+/g5I56nV9Hw=;
        b=JESgurq1gqfa+B7+e6Qp2FgLpnqS04A7cgEFFFoME9IjrFZzalgo7fet5rdiqyvcoX
         vbKzeck7QatFwSStdT9NVIEjNdAnDtopR0brEQRZaawbtQA23ySf/N6f/IVUbfxK7bmx
         8KX8oe/6h0szTRbCL+mKFALmaEjC6V+hzJLgyO+TeQZbsIjW+CfwslK1/qLLAvw336zq
         YcxxW8cwxdhfmO3Lbim6NCp0uMJJu8sS2Wi2U/bhhc0Wf0WQcmyyiXVlqtnrL5XO7Key
         vqW4MfRB+lDE02eVpGhzIicPjfMXih8vZTz7O0wXobJWrruOB79nnt9+AhE2Cx52B5Cp
         uTlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=BH2YDNOf8LQfxiinJnLx+3tP4xJXCO5+/g5I56nV9Hw=;
        b=E87QI1/p6fPBxPOhzITX5ewCrZCHfeBTHO3vUvUJsVQcpBnI8DmBExSPsfagtfhbmM
         mn59pVoTv/dL1AqqDO1s/UOo+aQyOZvvel2J16ufr/sk5kv8rJOO4QmKtBxx34TpKdhU
         OilIeLcqRyihIeQKsCNuPzdxOzYu8zzN6w3gueORGC/G4MMYJ+BHJ8hGV63FOa8WvkqU
         lO6fmsEFQ/SJzGUzBQROykaeeLi8Tka20i/esQHwXIGC4Me/EvsiADsIATzWyY7/rluf
         pipciZ52xWTXQ5bSdWCzKzIvKGyDcnBIdfvJUXed8QOcBkDuOifnDBGtlY77PSoBtlm4
         lAGA==
X-Gm-Message-State: AJIora+VqUQeZaTGPttCGhsYgVIJcbStEmRnyJaYQNAdttPpzSnP+Tzu
	Z3knPKvrDqErBTN71gI9slQUQ4VTDQjLVGka
X-Google-Smtp-Source: AGRyM1tqL9gLvYeqpcgLbTEs33CSTGBO2WhpEdhrsyfua0KW7usyAgnYN76srqD7A+bmOqcCHnyEmA==
X-Received: by 2002:a05:6512:230f:b0:489:676f:2705 with SMTP id o15-20020a056512230f00b00489676f2705mr19374082lfu.419.1658323875014;
        Wed, 20 Jul 2022 06:31:15 -0700 (PDT)
Received: from localhost.localdomain ([193.232.173.109])
        by smtp.gmail.com with ESMTPSA id k8-20020a2eb748000000b0025dd85da157sm237378ljo.5.2022.07.20.06.31.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Jul 2022 06:31:14 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Wed, 20 Jul 2022 16:31:00 +0300
Message-Id: <20220720133100.13580-8-denorl2009@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220720133100.13580-1-denorl2009@gmail.com>
References: <20220720133100.13580-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220720_063117_386251_48188AED 
X-CRM114-Status: UNSURE (   8.29  )
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
Subject: [PATCH 7/7] net: rtl8169: free allocated memory on halt()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Otherwise it just leaks.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 drivers/net/rtl8169.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/net/rtl8169.c b/drivers/net/rtl8169.c
index 4b40c539dd..e923e179bf 100644
--- a/drivers/net/rtl8169.c
+++ b/drivers/net/rtl8169.c
@@ -478,6 +478,18 @@ static void rtl8169_eth_halt(struct eth_device *edev)
 	RTL_W32(priv, RxMissed, 0);
 
 	pci_clear_master(priv->pci_dev);
+
+	dma_unmap_single(&edev->dev, priv->tx_buf_phys, NUM_TX_DESC * PKT_BUF_SIZE,
+			 DMA_TO_DEVICE);
+	free(priv->tx_buf);
+	dma_free_coherent((void *)priv->tx_desc, priv->tx_desc_phys,
+			  NUM_TX_DESC * sizeof(struct bufdesc));
+
+	dma_unmap_single(&edev->dev, priv->rx_buf_phys, NUM_RX_DESC * PKT_BUF_SIZE,
+			 DMA_FROM_DEVICE);
+	free(priv->rx_buf);
+	dma_free_coherent((void *)priv->rx_desc, priv->rx_desc_phys,
+			  NUM_RX_DESC * sizeof(struct bufdesc));
 }
 
 static int rtl8169_probe(struct pci_dev *pdev, const struct pci_device_id *id)
-- 
2.20.1



