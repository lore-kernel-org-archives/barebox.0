Delivery-date: Wed, 24 Sep 2025 08:09:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v1IhH-000SvV-2S
	for lore@lore.pengutronix.de;
	Wed, 24 Sep 2025 08:09:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v1IhH-00049Z-8M
	for lore@pengutronix.de; Wed, 24 Sep 2025 08:09:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=pI9mv9brr6ePqvvEE/r7b458xM6g9rvNdVFIADSTwcM=; b=vbLJgkO+FJbFlMhpQxFqLOeVsL
	eTbQT64Eu6HA4veSdHfS6K0Awzjpscv4HfV3a/Rc01aMR/mKOKdIaiAPsWAE132Tg9ygkANAkvTwO
	RaFbD5aljrq5ZRW/3rWIHLT4ueQNXDuYf7nkXqQK2xj+nT0+VxAmc8R8wQg8xryvBKJxIkFEJ8O8N
	QdSFoVBtfuiBbT3GnLSiLduEWG8DDLv0kfIG1RcbOzrew0kse4akXkOc3HaQ51aB5SkESB69HsFln
	ilMKXAIoXysRNM186G30K4F2FdM3ostSemMs7mYnRgqxjBBU6RLGJvwvVPR6xqwXOFamtvXe5wsG+
	nk635BTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1Igs-0000000Fd77-2Vmb;
	Wed, 24 Sep 2025 06:09:22 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v1Igp-0000000Fd6f-2td1
	for barebox@lists.infradead.org;
	Wed, 24 Sep 2025 06:09:20 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-57ea78e0618so2903985e87.0
        for <barebox@lists.infradead.org>; Tue, 23 Sep 2025 23:09:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758694157; x=1759298957; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=pI9mv9brr6ePqvvEE/r7b458xM6g9rvNdVFIADSTwcM=;
        b=DCTPw9PRCUedRrdv9JDhGfQg435s4SS9Pt6Xy7TGCmLTR3LAjYltNFvSbuUCEoEsSF
         jRy6rf4IHlKbItnQ8BvsYaQu12r0ZStXVweP5JPGkmbBPJhOJyIVcqEuGb9hA9swQliI
         noHigYnJBxLp6DqPS4WWZmVtJUBLqIa4OfEmOXaIF0zyIOLpust5RCnvCoE/p70G4o6A
         LGSz/yhe/JhBmu/eV5TVWtAew1dZVYxQZXCvkVw3//34HqC/w89huG0sx3fp5VBAIPRj
         AVqt7uuuGzs+ShlauYrDRLsqyygCiymYvLTHztejNB24WPbLjhuCqwb5K7Js1qmEG2z5
         +eyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758694157; x=1759298957;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pI9mv9brr6ePqvvEE/r7b458xM6g9rvNdVFIADSTwcM=;
        b=Fyw1RDO2k8BXuSr0NFGMlxx8RlnP/O8f1ZTT5TGujDBSKwMyqbMpWraw4PGaJ0ObYM
         fUfJ4OGgsqZ3HqLVxR9qG2aAGRYRNNwHpe5T+2/9lRzCscKKdu/C2JCsnxjk8mv7lM58
         NvbQynx4lJE/7xIqU8x14OiSAJVVeNj3Te9RoO1HF8RIUMIhVmNA7HaeV+chKYXVua+8
         OFPJPToWZii/CAD9+HOwMLDI4FqR0N9KIBQ11YvoyIucClzj5raaKTTiI8W3gDBrG9QW
         29CqfL17e34V5J+LEDDSRHm6Ntv5m3K1W1+Dtd5RyoGNxWtdzEYTeL0ORihu2h5/T1iD
         HI1Q==
X-Gm-Message-State: AOJu0YxQyc1/Ope/jQgEUqyJ190MKF+VLxbvhNXyBfRo+FrAve9/H6/Q
	gJV2Jb4jB5lEzJtDT1SbGJKYV2B0jYomiDwUuE46j9G21K1l1dDrBLIaQdWu3A==
X-Gm-Gg: ASbGnct73LCsL0Rqh+cRks8cLZes1WK31a5G/kS+r3Lu9etHr0DbBtYwbO0i1fg4rWv
	wjbVP35emM/zvEE+6wO9wbu7hniDu7MFJdaf52DtNQbapVCBk1m8btJI0/pzlyvU9lLDW9H9TZx
	4svP1s6eq3MtY7IGylM70MOApXseiLGeYuZvQ2LU6dOBNOYUEKAVwQwdT+XCEtld0wDp20xcydx
	kVNk5S8bZt/DxIbxhiBCVeVdXRn248A2eLh8eTB1rqpiLmwOBS4VSRFbW7+bbYGTQlUi/0D4+6p
	dMIh84m4qnbNvdcoXrHHHesicWzrnVaVBOmxvPtLEWz2tTHOkEJGyvl5kuffjVDedfjgrBEVcX/
	6OmADcXtf+CbdN2sTHAlVXV0P9niGOH0PeJUR7y2l+CEZ
X-Google-Smtp-Source: AGHT+IGehBrbOAtbe2wC4EL58JCw0lV6mM4kriY5rJ8M5Zjoq2Hk5PlRo9/yph+i3/EvAK81T10+Cw==
X-Received: by 2002:a05:6512:616:10b0:57a:de0d:d9ce with SMTP id 2adb3069b0e04-58072efee43mr1438601e87.44.1758694156463;
        Tue, 23 Sep 2025 23:09:16 -0700 (PDT)
Received: from localhost.localdomain ([188.243.23.53])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-578a5f44b29sm4760825e87.24.2025.09.23.23.09.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Sep 2025 23:09:15 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Wed, 24 Sep 2025 09:09:06 +0300
Message-Id: <20250924060906.6791-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250923_230919_737321_3E333E66 
X-CRM114-Status: GOOD (  10.49  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] clk: rockchip: rk3588: Add PLL rate for 1500 MHz
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

At least one RK3588 clock (CPLL) uses 1.5 GHz, so let's add
that frequency to the PLL table.
This change is taken from the mainline Linux kernel.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 drivers/clk/rockchip/clk-rk3588.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/clk/rockchip/clk-rk3588.c b/drivers/clk/rockchip/clk-rk3588.c
index f6d16ed0cf..5aecfb3b1b 100644
--- a/drivers/clk/rockchip/clk-rk3588.c
+++ b/drivers/clk/rockchip/clk-rk3588.c
@@ -88,6 +88,7 @@ static struct rockchip_pll_rate_table rk3588_pll_rates[] = {
 	RK3588_PLL_RATE(1560000000, 2, 260, 1, 0),
 	RK3588_PLL_RATE(1536000000, 2, 256, 1, 0),
 	RK3588_PLL_RATE(1512000000, 2, 252, 1, 0),
+	RK3588_PLL_RATE(1500000000, 2, 250, 1, 0),
 	RK3588_PLL_RATE(1488000000, 2, 248, 1, 0),
 	RK3588_PLL_RATE(1464000000, 2, 244, 1, 0),
 	RK3588_PLL_RATE(1440000000, 2, 240, 1, 0),
-- 
2.39.1



