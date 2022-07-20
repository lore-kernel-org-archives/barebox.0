Delivery-date: Wed, 20 Jul 2022 15:33:01 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oE9p0-00FdeH-06
	for lore@lore.pengutronix.de; Wed, 20 Jul 2022 15:33:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oE9oy-0004V8-3x
	for lore@pengutronix.de; Wed, 20 Jul 2022 15:33:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZqZL0a1MqfFRZNgLorJnmgAjFWB9J9nMtjqpBWvkdjo=; b=z5j615lB7mNFW7
	GpIS8kz1Vn4wUJzgDH191j83QniCigdVUTaDnjTHhbIFYvSmlIJKv0s7SaDm4GPasVpOwaxSvfNsZ
	bSiR+1hHiow3aaifg+UnXuhQeYaNuH4KVRq9eDUCtENO3V/p+zqZMt4YZdNPeTIcaXGmMztDzkhjx
	kDWTyB3AxKXzdIehgacua21jXNeFi8uKRHvMpb2z/DOGIls8jauRYM047u5nT5mhCdCYTWnzyQMbS
	BsTH5Y0bt5wBv2+oJA64Rr2krrKOaQzwkWR/zLdJc88pcqGglbrjh+d8HCxRDokqKIaJa0NneF3XW
	iplPMuet+H9gAnnCBKgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oE9nT-0064ER-TO; Wed, 20 Jul 2022 13:31:28 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oE9nG-00647j-6U
	for barebox@lists.infradead.org; Wed, 20 Jul 2022 13:31:15 +0000
Received: by mail-lf1-x12b.google.com with SMTP id t1so30178683lft.8
        for <barebox@lists.infradead.org>; Wed, 20 Jul 2022 06:31:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ZqZL0a1MqfFRZNgLorJnmgAjFWB9J9nMtjqpBWvkdjo=;
        b=BGtY68EI73MKF81UZce+yzZ+9TuKk1+JY7XtxLQn3pm7QUhqBkTI19Jnp53HXhCyd1
         Qrh/lR936VMMSG5DXRXvNXE9wQliOiU64sI+QdE25lQBlTTsbODTRDYsNiVygJ8t+dSK
         hDxw1DW6OUn0y8yEkGBepuziEFRE5u8CMaZjr4pQ0B98EU/kjKKUK0MVtrtIK4fHJaJp
         c5XtRzRkfG388FYveJaFZuwHTGPND5GMT+P9hgzn/85Gxt1USiYtFmVhMYDnx63/3miL
         oV9j5FUpiTFZ0iIKWg8jlqSMseoKavDLd/7pHzVzolkUv+9o3MwrU0HycWWl4yRodeV4
         k5Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ZqZL0a1MqfFRZNgLorJnmgAjFWB9J9nMtjqpBWvkdjo=;
        b=dexrL9Xhca0ft27cacIiuLM5D5NyJ9Ez1ntfqMbdY/Zd41gI7OBpa4D3eTssyYbwQH
         twUeYYpmsNXNi28HR/bIWhytJtpRL992+FRW+4M/3fEfNUDh/Xfxmqo6pT+Xb2Syz0zb
         gZxwfRXJgMYypbIGbTYR2FQZG++BgCNLQBWJjDez/Cft86UDtWUQtxfgBAwCDvSEKtpz
         zyFB21tccOInuJlOO2qv5mIa33OYApImAALoSVSuwh+5dq/3uZLFbWkuX1TdR+LyTvNV
         vxkFTrLc8Agp45ovPKfBzfpAlKlSE9m2AGU6j3vJc/rwQomA0e01r5X5VU1ewuJe/zCE
         4TmA==
X-Gm-Message-State: AJIora+6Dmh3uqrgv1doj7wqAHcWgZxSSbOM0Rw61BPmEZRRgJVEOpTu
	6o1TAZiHD6/P4wrbPSr7qpRoX8vGQ2QUCdJB
X-Google-Smtp-Source: AGRyM1uY3aGpNXnoCJAO+GNrbsQ1g/OYNpLuBIf3vxLsH3TsrTKshTZRVWkZDzhwYrjjubhB2D2YyA==
X-Received: by 2002:a05:6512:3988:b0:48a:1624:742b with SMTP id j8-20020a056512398800b0048a1624742bmr16754012lfu.174.1658323871803;
        Wed, 20 Jul 2022 06:31:11 -0700 (PDT)
Received: from localhost.localdomain ([193.232.173.109])
        by smtp.gmail.com with ESMTPSA id k8-20020a2eb748000000b0025dd85da157sm237378ljo.5.2022.07.20.06.31.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Jul 2022 06:31:11 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Wed, 20 Jul 2022 16:30:57 +0300
Message-Id: <20220720133100.13580-5-denorl2009@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220720133100.13580-1-denorl2009@gmail.com>
References: <20220720133100.13580-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220720_063114_261265_13633061 
X-CRM114-Status: GOOD (  10.61  )
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
Subject: [PATCH 4/7] net: e1000: configure tx/rx and rctl in open() instead of init()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Otherwise, ifdowning the interface leads to a state in which trying to
ifup it again fails.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 drivers/net/e1000/main.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/net/e1000/main.c b/drivers/net/e1000/main.c
index 4ca598eb2f..363730de0a 100644
--- a/drivers/net/e1000/main.c
+++ b/drivers/net/e1000/main.c
@@ -62,7 +62,9 @@ static int32_t e1000_phy_hw_reset(struct e1000_hw *hw);
 static int e1000_phy_reset(struct e1000_hw *hw);
 static int e1000_detect_gig_phy(struct e1000_hw *hw);
 static void e1000_set_media_type(struct e1000_hw *hw);
-
+static void e1000_configure_tx(struct e1000_hw *hw);
+static void e1000_configure_rx(struct e1000_hw *hw);
+static void e1000_setup_rctl(struct e1000_hw *hw);
 
 static int32_t e1000_check_phy_reset_block(struct e1000_hw *hw);
 
@@ -811,6 +813,10 @@ static int e1000_open(struct eth_device *edev)
 		e1000_write_reg(hw, E1000_CTRL_EXT, ctrl_ext);
 	}
 
+	e1000_configure_tx(hw);
+	e1000_configure_rx(hw);
+	e1000_setup_rctl(hw);
+
 	return 0;
 }
 
@@ -3575,10 +3581,6 @@ static int e1000_init(struct eth_device *edev)
 	if (hw->mac_type == e1000_igb)
 		mdelay(15);
 
-	e1000_configure_tx(hw);
-	e1000_configure_rx(hw);
-	e1000_setup_rctl(hw);
-
 	return 0;
 }
 
-- 
2.20.1



