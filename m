Delivery-date: Sun, 04 Jun 2023 23:51:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q5vdb-00AwtE-Jz
	for lore@lore.pengutronix.de; Sun, 04 Jun 2023 23:51:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q5vdY-0004pi-VE
	for lore@pengutronix.de; Sun, 04 Jun 2023 23:51:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ltMEA+suhLNfKH+Sit6q7p7mWwbI88dDh9CEqVpJ+qE=; b=eapsibnxFv7G6Z
	oOfXmLv1g4DUp5gTDo6d8+rjKy0JzsJ+0A9Ay1qUnTgtfb2iCb5XR5SYQXx2lTdsqGYL4WmejUG42
	aOlKMfDZ0r/CWnmoneMK+P9BHMnE/oZ9Z0zf8CWxQHHG3LzuAEYkWbIIVQWJjOTpUpXDUD6YyB2Dh
	2rgbVPEbtVhSxI0Q4tIbMVTpeyaNRdl3mJbmtOYeJLjN7ZvBOid6UaF38EtyaIi0qz+0qlnYX8ffD
	ugfM/9gXr/okCcxUFMxyyVsc1VnKpTimd0jSBxHk5LYLsiBP18JR/U7Rnxxxl14VK1vBrzXCgU3cQ
	nd1GIY/mxEwq8YkTWBuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q5vcV-00DEI7-2p;
	Sun, 04 Jun 2023 21:50:39 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q5vcS-00DEEo-18
	for barebox@lists.infradead.org;
	Sun, 04 Jun 2023 21:50:37 +0000
Received: by mail-lj1-x229.google.com with SMTP id 38308e7fff4ca-2b1af9ef7a9so30810431fa.1
        for <barebox@lists.infradead.org>; Sun, 04 Jun 2023 14:50:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685915433; x=1688507433;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ltMEA+suhLNfKH+Sit6q7p7mWwbI88dDh9CEqVpJ+qE=;
        b=YmfTBRlyz9+v4+Jy3z5cFyAee24EJzUn3gx2uC3uK8gkDHIkQ5Vlx3ZpmJxWQ+WkqY
         Gsb4vITZuwCWioSBitJTaFTTC+2TK14xYya9bIjFm6sLjmeymZRZU6PTFxD2zYmoxkc+
         ihzEM80teJraSfIZn3bbaqrU8MZlJacT5MEs5YCyzPBtyHWQIUCA6hpqJvFPw7jswbGi
         ka0jqM8TiKhLRxfGaz8qOpKApQqL9RfZW7PbO9UnvxmmFftv3Ht/BGCkxVnejyaOZB5n
         woA2b+4I1vXGJdrB9YI22O8Kdn5Dp8SZ/xv5PpGBRR34cRP+T1yfYQ8E4F3nwx3wGJym
         3odw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685915433; x=1688507433;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ltMEA+suhLNfKH+Sit6q7p7mWwbI88dDh9CEqVpJ+qE=;
        b=kTUprwR5Q/1Gma4mMDpUZJ99GV33BS2KRAaY5HDc8mJN7updPnduqfQSnY8BG7o1AA
         irBAfxMpstBD26gZlLFXtu4tKJyo/grpElOJtxlOj8aWVJVAD90maIIlVxMIzQOuPMGd
         /GJ17Ryzg3PZQC4785gNBrAXWmcGSF9BY8pIPN8YvRS30RZkLFIvGMMXpuJJlAGQV6Qr
         cB3BMW7ltb5PQ96Zv1PTx1i15NvZpZaaoYOVg11LFJ24r2Iy+W0FkogEbi3+0Ds00jd5
         kJfSEIyEraxU3AUHN9Qon4+UtRdrEjur2N01iNtBQIinNx2dAn2lnoa15A1g+UquLvj3
         iqxg==
X-Gm-Message-State: AC+VfDwP5Wr0EDkq2rAS0I9bp91kQULfBoyP4SrYlHfpDoslU9KVjQVf
	EajnMaztphn7dU3uwET2G1qWcPMlT7soPw==
X-Google-Smtp-Source: ACHHUZ7bf+1Df0A3dZivL5Bs1jTtQPPnVQTQSiO2SQQJpMuPFCTPnSCkSvn+rA0tl9M6SnZJdMM3PQ==
X-Received: by 2002:a2e:8883:0:b0:2ad:b9e0:cea with SMTP id k3-20020a2e8883000000b002adb9e00ceamr2714857lji.24.1685915433178;
        Sun, 04 Jun 2023 14:50:33 -0700 (PDT)
Received: from localhost.localdomain ([188.123.230.237])
        by smtp.gmail.com with ESMTPSA id 7-20020a05651c00c700b002adc6c2cb3bsm1173561ljr.5.2023.06.04.14.50.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 Jun 2023 14:50:32 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Mon,  5 Jun 2023 00:45:02 +0300
Message-ID: <20230604215002.20240-3-denorl2009@gmail.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230604215002.20240-1-denorl2009@gmail.com>
References: <20230604215002.20240-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230604_145036_388654_119A93DB 
X-CRM114-Status: GOOD (  11.15  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, Denis Orlov <denorl2009@gmail.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] net: macb: remove const from dev pointer in macb_device
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Otherwise, it leads to a bunch of warnings on passing those pointers to
dma_*() functions. As every other driver seem to be having non-const dev
pointers in their private structs, do the same here.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 drivers/net/macb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index 4b89c59580..128ada7268 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -75,7 +75,7 @@ struct macb_device {
 	int			phy_addr;
 
 	struct clk		*pclk, *hclk, *txclk, *rxclk;
-	const struct device	*dev;
+	struct device		*dev;
 	struct eth_device	netdev;
 
 	phy_interface_t		interface;
-- 
2.41.0



