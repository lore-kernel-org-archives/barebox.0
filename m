Delivery-date: Wed, 08 Feb 2023 09:14:50 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pPfbQ-000Mzd-53
	for lore@lore.pengutronix.de; Wed, 08 Feb 2023 09:14:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pPfbN-0005C1-Gl
	for lore@pengutronix.de; Wed, 08 Feb 2023 09:14:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tznq9i09lZO9h8ZJ3hPf4Z3XnVODekBr7xumXKsiTLc=; b=QCY5YG3HWB5Bw1
	zD8obqrAa+ZiuteXWbVAIXFD7qwtIVW5GTrub5WdVvU7MivVJzYBV4glLP4pm/sC9YWV5OS1Lisxh
	15VpnDYqt6LCYx97j1igEsqQ4dpp1Pcm9bUsi+7TAT/k47u17rqR/LKi7UTUVcBzSz8vbIAodHj+h
	eBpp0hL59UPYzsvg5TNtjEf3nOPmHjcML/uOi50iP0xcQgnsPcARTaSecb74JtQEskhQqmvelVhzM
	daT/SDC4F5rRZ9toaYFwCWjWjDGtsqpGNZXWSUA3UkaJijTnuIj9lHEEFuXAURcdJsAAJ4MertrZr
	BfnEfGypTkY2rIbDsyaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPfaB-00EYHA-RB; Wed, 08 Feb 2023 08:13:35 +0000
Received: from mail-qv1-xf29.google.com ([2607:f8b0:4864:20::f29])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPfa5-00EYFD-No
	for barebox@lists.infradead.org; Wed, 08 Feb 2023 08:13:31 +0000
Received: by mail-qv1-xf29.google.com with SMTP id d7so5861325qvz.3
        for <barebox@lists.infradead.org>; Wed, 08 Feb 2023 00:13:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Tznq9i09lZO9h8ZJ3hPf4Z3XnVODekBr7xumXKsiTLc=;
        b=qNXVEDlDakBH4uh1i7v/DlYfN8D46/mjBVjte3hKIpyIJoCx7IGcSo7AP+hy7yA2Dy
         lUc9+IxhHRZSJdXLczPm+M0U12IU2p1Cd4UazY9o+5rKtMnHVTP/GMSeTbsYmrcxx4SS
         aAr4Lr/Abg6ihRCYihKGzuns02pEhbZ0MkSFYc6vMHqyWo2L4I7VyxHrvn8gGpdVpmBF
         LJ8JJPzHj/FFhCA92ESOT4ZLYRJWSwHRSAjMAdMcOWNozMlsK6Ovwqf7sbjbz/LsVPlP
         2zSNVOFfCrZ/wGSyRB9Ysp4iw5k4pcaNRFBTjs1LscTmHKpY+m8UOcrbc9qjjqhAm08N
         m9Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Tznq9i09lZO9h8ZJ3hPf4Z3XnVODekBr7xumXKsiTLc=;
        b=FS3QButgdAc0gy/pErmSYX25lk4ZPXw755Xffs4hn0UDOmiHB01cHT2Cbo/bWsKhlr
         MwY//v288rGng7UuUCBcUDmCxIhsc1oTyIhv+xt1RSbezK/PjlZpIjc4ZT1tlNTMI2Mg
         bwWQgGTMCCIeEMSZn2thw/1ns1JihIn3Ul8y/7UIfuaJnvX+feJ12f2ady5LTdOJUM2T
         QnbKxOoY2wgyp/a1NsigAbBPZlDo8dXUdF4q83vIuekS08KZS3zoRTrTLUbrYfrWlD26
         G7KSnM3WVJjZCAVRtDWqqlFXh25yO4Ottl9EmxtNjZ3g4nG18uBfV80idtcNGlAlr3TI
         9XjQ==
X-Gm-Message-State: AO0yUKUPar483ixKU1hN3JyhMkflf71aktYzUXejmHYyZqp60ejPyyJc
	AYY1C2oOz/9IWGX/tuUZ9qrpb0gI3x0VbV1oAdA=
X-Google-Smtp-Source: AK7set/cO+rc/rgY5dGODYqOxwKWMBsstRglAk5o7voLGR3Z02vJoZZGcif4LA5pKTps32ooEDVqlQ==
X-Received: by 2002:a05:6214:212c:b0:56c:10f:e961 with SMTP id r12-20020a056214212c00b0056c010fe961mr11502356qvc.43.1675844006356;
        Wed, 08 Feb 2023 00:13:26 -0800 (PST)
Received: from localhost.localdomain ([193.232.173.109])
        by smtp.gmail.com with ESMTPSA id bk42-20020a05620a1a2a00b006fa16fe93bbsm11527446qkb.15.2023.02.08.00.13.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Feb 2023 00:13:25 -0800 (PST)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Wed,  8 Feb 2023 11:13:07 +0300
Message-Id: <20230208081307.3190117-2-denorl2009@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230208081307.3190117-1-denorl2009@gmail.com>
References: <20230208081307.3190117-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230208_001329_793789_AE4361D6 
X-CRM114-Status: GOOD (  11.00  )
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
Subject: [PATCH 2/2] net: rtl8139: fix ifdown/ifup issues
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This moves PCI bus-mastering enable from 'init' to 'open', allowing to
bring an interface up after bringing it down. Also add corresponding
dma_free_coherent() calls into 'close', getting rid of memory leaks.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 drivers/net/rtl8139.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/net/rtl8139.c b/drivers/net/rtl8139.c
index 617a60bfcb..1cd2ae14de 100644
--- a/drivers/net/rtl8139.c
+++ b/drivers/net/rtl8139.c
@@ -373,7 +373,6 @@ static int rtl8139_init_dev(struct eth_device *edev)
 	struct rtl8139_priv *priv = edev->priv;
 
 	rtl8139_chip_reset(priv);
-	pci_set_master(priv->pci_dev);
 
 	return 0;
 }
@@ -390,6 +389,8 @@ static int rtl8139_eth_open(struct eth_device *edev)
 	rtl8139_init_ring(priv);
 	rtl8139_hw_start(priv);
 
+	pci_set_master(priv->pci_dev);
+
 	ret = phy_device_connect(edev, &priv->miibus, 0, NULL, 0,
 				 PHY_INTERFACE_MODE_NA);
 
@@ -408,6 +409,11 @@ static void rtl8139_eth_halt(struct eth_device *edev)
 
 	pci_clear_master(priv->pci_dev);
 
+	dma_free_coherent((void *)priv->tx_bufs, priv->tx_bufs_dma,
+			  TX_BUF_TOT_LEN);
+	dma_free_coherent((void *)priv->rx_ring, priv->rx_ring_dma,
+			  TX_BUF_TOT_LEN);
+
 	/* Green! Put the chip in low-power mode. */
 	RTL_W8(priv, Cfg9346, Cfg9346_Unlock);
 }
-- 
2.30.2



