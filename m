Delivery-date: Wed, 20 Jul 2022 15:33:14 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oE9pC-00Fdg1-P1
	for lore@lore.pengutronix.de; Wed, 20 Jul 2022 15:33:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oE9p9-0004Ym-Tt
	for lore@pengutronix.de; Wed, 20 Jul 2022 15:33:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J8xyzQBKtGB1iD1K5GSplbz1GqvULG9mYPqoiKiYfmY=; b=gxwu0gPEMfM2lq
	ubIHl87YMSZIxRasUqS0sE5KXNyI2RqRcvCojliAzEMMAFOO92+irkkPfVDU3q+lD6JfqI/miNkIN
	wRpaJq0b+w7xMniBHx47oo81KrH5zFQEQo7BOL9Sc1zMAA2OSuTnAArxwy7UrtzKDqZozwvzvdj/Q
	hzLaZ6imsWd6gSLYviV7FTllI/fTCyJkYyKzAw/zYK/WFfmh5bUmoRRoKyG9kmPSdUlcnIlm41Jer
	xOigjBeeTFGPCEAGtx+jDp/HIsie4Ao6CpNHSVjX1Rd09zSHueq8DrqVjPnww/+73ltEVRyKh7OXZ
	kio10YS/aTX1lqEsvZTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oE9nm-0064Oq-Bm; Wed, 20 Jul 2022 13:31:46 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oE9nI-00648j-Af
	for barebox@lists.infradead.org; Wed, 20 Jul 2022 13:31:17 +0000
Received: by mail-lf1-x136.google.com with SMTP id t1so30178910lft.8
        for <barebox@lists.infradead.org>; Wed, 20 Jul 2022 06:31:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=J8xyzQBKtGB1iD1K5GSplbz1GqvULG9mYPqoiKiYfmY=;
        b=fb1zKnwJn59tuX3ZPc985e/e2LoLe1f7gN7ZBmG2kmOMEMUhM0xyR99qmL/dTG4g30
         BW3x7fYe7UFUtAVOxz22CpdlESZJB6oFN8hw+GvxC87kEjqPGTXY8YqtA8m8A4spcCGk
         Vi6mYm0rShElz9rId36xzdiCfeNy6cTgB04T3FMDxmVu7Hr6M6e3fjw9r4sZWFROE9iv
         UwMGUH06zAG0/I7G3K1N9Snn6ckuSRRZJ7ktg9i/8/dpsxMtD6Mbv9ai3Pi6rLRsQOl/
         ycYYqkiH3ZgZRc7AcGP5yR0hMWN/0UJNu4N22l4vHXoQCnnirGx4ou75TLilQvwTHQEE
         ndvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=J8xyzQBKtGB1iD1K5GSplbz1GqvULG9mYPqoiKiYfmY=;
        b=yASEQvTFOjc1s7sG2tjLPayIv5WDuDiWCdrI+vSJp/zUYweHv6wdwBV7r1hB+omVKb
         9zAswSiMU7zvB2CmRblME92xjGIV+sbSH/CAGxbqCKzVpWklEFn4ds8xjERTWe1NONkw
         /2LAcLHKs7edOtKU/kvElzyV16G9884uyh5Tvj37iG33Bcs8BGiuhSbK/3DtZiJ7oCjd
         gCynVR7Y7K5BFF5beE1JgN9gUbImvjvQITaQvXK8QlfcmpH+srSofuFOI+ZDK6yzZ8Nh
         9hRI+XyiCZ9QAdox0Hr1nh+NC11gX/w8KszBGuQJXRWriOTkgc05s6fyTIMGHOC7EEua
         4/4A==
X-Gm-Message-State: AJIora9z9K9j93E7DDigCh11woBZWsAIjs5hUYrXNeii0iJk+1IQkoxr
	QhlKogoiMk9ptdIPg+6JOnOa5n1XBGFCfGLQ
X-Google-Smtp-Source: AGRyM1sxrTVVuGyfMRKLKF1midcwQS/lBNSOaCNooS0JVcDtYLEpq6nT52xo3DWtsTawDe+M1eMx8Q==
X-Received: by 2002:a05:6512:4022:b0:48a:2c31:f26a with SMTP id br34-20020a056512402200b0048a2c31f26amr11459529lfb.94.1658323873900;
        Wed, 20 Jul 2022 06:31:13 -0700 (PDT)
Received: from localhost.localdomain ([193.232.173.109])
        by smtp.gmail.com with ESMTPSA id k8-20020a2eb748000000b0025dd85da157sm237378ljo.5.2022.07.20.06.31.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Jul 2022 06:31:13 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Wed, 20 Jul 2022 16:30:59 +0300
Message-Id: <20220720133100.13580-7-denorl2009@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220720133100.13580-1-denorl2009@gmail.com>
References: <20220720133100.13580-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220720_063116_388667_DB584D9A 
X-CRM114-Status: UNSURE (   9.23  )
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
Subject: [PATCH 6/7] net: rtl8169: enable pci device bus mastering on ifup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Otherwise, the board hangs on doing ifup after ifdown as the latter
disables bus mastering for the device in rtl8169_eth_halt().

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 drivers/net/rtl8169.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/rtl8169.c b/drivers/net/rtl8169.c
index e78cc40ffe..4b40c539dd 100644
--- a/drivers/net/rtl8169.c
+++ b/drivers/net/rtl8169.c
@@ -293,6 +293,8 @@ static int rtl8169_eth_open(struct eth_device *edev)
 	struct rtl8169_priv *priv = edev->priv;
 	int ret;
 
+	pci_set_master(priv->pci_dev);
+
 	rtl8169_init_ring(priv);
 	rtl8169_hw_start(priv);
 
-- 
2.20.1



