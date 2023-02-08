Delivery-date: Wed, 08 Feb 2023 09:31:01 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pPfr5-000NWa-D8
	for lore@lore.pengutronix.de; Wed, 08 Feb 2023 09:31:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pPfr2-0007lv-Mc
	for lore@pengutronix.de; Wed, 08 Feb 2023 09:31:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:Reply-To:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vA6TN3dAv6zF6XlHize8EZSnUsA0ukomoj7zxuTr1tI=; b=IHCsjV1XCZIGUS
	U1dKj5bycIO+IgxMsroXAFD0a11tYv41zHu+jwnKCEGilws+6BuqUrplW9CgIlcf+10qh1/vyLrve
	OVmJTvdQtc9y86t07MFmX34CAxVkziLbpzdpaZukXSvpzmfmEKk/5Ru58gBoCbPpiUSxBoDCPk+lV
	B3KFLCRbxfH6hRAd4spSZbRKBdQlhuUDu/goC0JZ1aLWsZgSB2Mz4xunqyzxqX59uKiJwCoOZntxw
	sffXrCHVFxPGh7pgRwKq9W/VIvlRDqtmXK0h+fckkL483QmmZd5kgmcj8ZRzDGhBvYZ0NwYdhAXTv
	lCJBHL5yPbcqBnAjS6lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPfpx-00Ebew-W7; Wed, 08 Feb 2023 08:29:54 +0000
Received: from mail-qt1-x82d.google.com ([2607:f8b0:4864:20::82d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPfps-00EbdD-P6
	for barebox@lists.infradead.org; Wed, 08 Feb 2023 08:29:49 +0000
Received: by mail-qt1-x82d.google.com with SMTP id h24so19876588qta.12
        for <barebox@lists.infradead.org>; Wed, 08 Feb 2023 00:29:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:reply-to:message-id:date
         :subject:cc:to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vA6TN3dAv6zF6XlHize8EZSnUsA0ukomoj7zxuTr1tI=;
        b=j0GXC1XDiSGiq6r7NDZxo8NH11f+0TxqPW62atl8/pC23YgZ2Ad97CBNustEus75l+
         MpELpB+4rrGZhdNpAvzYwBt6xG1BNLQOFuMLGTRJQ0i2MvihcSR+9CNpkOOxz7pNAv6o
         Htz70eSCwQphyUmXO74PsZIF6YMRauk1qQzmtn74gEK8ImDmpWtYKF0leIB6nCabm/19
         AdV9C6xqRAp/GgrvNLZNI8nXfKzdhxpAfgQSrOByu01qmIu+7o/Tn11RZmEalMHnRhgK
         8nIxvpxyliPS0d09mEDjIX6VUSs0mC0+d1LifigLLNGIIUMgli39DteGHE+07Z2wr037
         e7Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:reply-to:message-id:date
         :subject:cc:to:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vA6TN3dAv6zF6XlHize8EZSnUsA0ukomoj7zxuTr1tI=;
        b=P1a4K6+1hJB92cBKzuRegLSNcZdS8ozs08+iOh/ErC9DFjdumGH8HF7azpA3XNwJEk
         +M9W5CI/DOci9OZehvFU7sVDxWX6tcxo/Tkc53r5SKHxt6CMamYwwx2sGbHYIKP1tme7
         nuI+sl9O4tBbPgi+xJTi6jtSPuXAfSSvMrkVaZxqGscwtFxiWlaJvSAYyhmOC1bvZGK/
         eIxpTg+dJFBCdStvwS1y05cQO4xXkORqWrwtC9AxRxiPvmL+Rams+Vd8M7wH5DBis2uH
         d+SHbqRGLN8hzLrmBVnS3FH+2V6KbbUY27FwA1WWT5y/YNQw1idMw8PrRx0w8sPYG9H7
         qtsA==
X-Gm-Message-State: AO0yUKWXpM33Gmy6t23q7u7PoaAVQmTq7c2ZvHxoAjeVT8FvQOyPuX3U
	TAy8J8VjDUhMXZ7sif5NamCLqZQMftgxaTcTj/Y=
X-Google-Smtp-Source: AK7set+CQq9Leg4IaNMpuPistSlKZBDkH3ClPhf9ZiWZbCSb/XGCV8uVgmb9K5v7rllu1d8KykVBEg==
X-Received: by 2002:a05:622a:508:b0:3b8:6075:5d16 with SMTP id l8-20020a05622a050800b003b860755d16mr11672173qtx.56.1675844986164;
        Wed, 08 Feb 2023 00:29:46 -0800 (PST)
Received: from localhost.localdomain ([193.232.173.109])
        by smtp.gmail.com with ESMTPSA id fx9-20020a05622a4ac900b003b9bc00c2f1sm11014204qtb.94.2023.02.08.00.29.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Feb 2023 00:29:45 -0800 (PST)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Wed,  8 Feb 2023 11:29:40 +0300
Message-Id: <20230208082940.3190986-1-denorl2009@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230208_002948_827677_0EB60321 
X-CRM114-Status: UNSURE (   9.38  )
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
Reply-To: 20230208081307.3190117-2-denorl2009@gmail.com
Cc: Denis Orlov <denorl2009@gmail.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,FREEMAIL_REPLYTO_END_DIGIT,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! net: rtl8139: fix ifdown/ifup issues
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Fixes a typo.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 drivers/net/rtl8139.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/rtl8139.c b/drivers/net/rtl8139.c
index 1cd2ae14de..5c91c10fea 100644
--- a/drivers/net/rtl8139.c
+++ b/drivers/net/rtl8139.c
@@ -412,7 +412,7 @@ static void rtl8139_eth_halt(struct eth_device *edev)
 	dma_free_coherent((void *)priv->tx_bufs, priv->tx_bufs_dma,
 			  TX_BUF_TOT_LEN);
 	dma_free_coherent((void *)priv->rx_ring, priv->rx_ring_dma,
-			  TX_BUF_TOT_LEN);
+			  RX_BUF_TOT_LEN);
 
 	/* Green! Put the chip in low-power mode. */
 	RTL_W8(priv, Cfg9346, Cfg9346_Unlock);
-- 
2.30.2



