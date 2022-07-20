Delivery-date: Wed, 20 Jul 2022 15:32:57 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oE9ow-00FddR-8v
	for lore@lore.pengutronix.de; Wed, 20 Jul 2022 15:32:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oE9ot-0004Tc-RI
	for lore@pengutronix.de; Wed, 20 Jul 2022 15:32:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vp3NNat2A7j+fBnUmldiKTc6vegeJcu+DTP9P5jsXk4=; b=rO79RtUOSClg1i
	GEEmmoQ4xp6YH+9QKnIBzEPJCJdcK3olxYOTHa7qYevDULT7mtqB6evO0FonZH7pBJF6d+2w8zfPf
	1pjjrTfBrEylFXILHIvy4tvnisUZ/dzeNn5WU+MbHq+uiZXjlaDOxhoyFYARdTIaJ3FVJ2kbfFweG
	l/+/0Fg23TwH+NSkLkxP0bDu9O0rR7VenWzd1uK4izZeBJPXFcezEK061bm6NEW7yPIy3MaYYZkva
	KjP6slQNAJJUp86LSvR3NKmUpkLJoTd9DIO3K3Hfq7bJEh+vb+SrS0qfoea66ErvS0tjxoLNQVwtz
	uMiHD6tVoQ2t/Lrpp/Vw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oE9nQ-0064DM-QL; Wed, 20 Jul 2022 13:31:24 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oE9nF-006478-0q
	for barebox@lists.infradead.org; Wed, 20 Jul 2022 13:31:14 +0000
Received: by mail-lf1-x12e.google.com with SMTP id e28so30207999lfj.4
        for <barebox@lists.infradead.org>; Wed, 20 Jul 2022 06:31:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Vp3NNat2A7j+fBnUmldiKTc6vegeJcu+DTP9P5jsXk4=;
        b=SMruBVdguBJFTvjQwix644hn9WUVjHNHt3WDtmi0UYOe9ZbAiv7ahsbnmtfegwPzBY
         pNpGwMYTTFluBuTaFFHLDD2JWbFgmh6q5m7Mxk4Uvw2JdgPjcF70JTy7ItC01a6BTy6A
         kI1PD60pXk5XzrE0G2fFMKbt0HrmPqJ1Z0UcBMU7yD5MmdJ7pETPQDFS36fGzaDsKtuR
         5Kj3rCRoGJVpJyLrPijD00ZLRS+aqBT8p55ulADsmzGUZBUj6Kz3SL5i2brrtg+aZnV6
         f30sBmzWVB3WUIh4GBLlkvTASougv0isp3o7MXFVrKddCQ9ptLT85A5UE4nCczaOnVfS
         yb9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Vp3NNat2A7j+fBnUmldiKTc6vegeJcu+DTP9P5jsXk4=;
        b=EkKYY0W5inM8Owv9gwVm2pwWtn+pPLo+zTNlGvXl3E5igw+VJkcN0nfEMSNiMXyH/c
         66Jxxs93Twn+h7rj9FcFRmDS6s1d5QZ/dWy2f/aLA3K7zpzQvhz4h/CCf8xcB5zlfWCN
         v9krGm2v7glBWm/RK/V6HjuFy9b9QLhD9ddWnbEvaHBQpRE+oSv1J5jw9bKK2o8vYRVB
         9zRFjUOJbZZpyBWYZ0SNbrjg1RMfNHMp18Sij8eklMdfxXWxf61h7yzghsLoEo3RndV6
         nNbjHc4RmrWVqhm/TySCTnHUk1U5pceh3JpHESmPlBL2E7cGVarrtVU70dXAhfB5gr2W
         RM7Q==
X-Gm-Message-State: AJIora+dj3h0dnvkWW8BH4I8pPwKfCPbGKOJPqEJIUl6gSo23dtfjiu9
	XIYrmt6qiWBNCTfEoVrX0SxghX+eI2EMhe17
X-Google-Smtp-Source: AGRyM1s0hWgoHTPxfussuJSse7QpTV2xyFBCdykmD7fwh/DpfsIvgHZu+Eu9wxP0uSWb7IgrJ7SgcA==
X-Received: by 2002:a05:6512:2588:b0:489:e8fe:5b91 with SMTP id bf8-20020a056512258800b00489e8fe5b91mr19966670lfb.336.1658323870533;
        Wed, 20 Jul 2022 06:31:10 -0700 (PDT)
Received: from localhost.localdomain ([193.232.173.109])
        by smtp.gmail.com with ESMTPSA id k8-20020a2eb748000000b0025dd85da157sm237378ljo.5.2022.07.20.06.31.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Jul 2022 06:31:09 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Wed, 20 Jul 2022 16:30:56 +0300
Message-Id: <20220720133100.13580-4-denorl2009@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20220720133100.13580-1-denorl2009@gmail.com>
References: <20220720133100.13580-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220720_063113_077546_A45C8DCB 
X-CRM114-Status: UNSURE (   8.32  )
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
Subject: [PATCH 3/7] net: e1000: do not actually acquire/put swfw_sync on 8254x cards
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

There is no Software-Firmware Synchronization register on these
controllers.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 drivers/net/e1000/main.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/net/e1000/main.c b/drivers/net/e1000/main.c
index 3b45fb3b51..4ca598eb2f 100644
--- a/drivers/net/e1000/main.c
+++ b/drivers/net/e1000/main.c
@@ -245,6 +245,10 @@ int32_t e1000_swfw_sync_acquire(struct e1000_hw *hw, uint16_t mask)
 	int32_t timeout = 200;
 
 	DEBUGFUNC();
+
+	if (hw->mac_type <= e1000_82547_rev_2)
+		return E1000_SUCCESS;
+
 	while (timeout) {
 		if (e1000_get_hw_eeprom_semaphore(hw))
 			return -E1000_ERR_SWFW_SYNC;
@@ -276,6 +280,9 @@ int32_t e1000_swfw_sync_release(struct e1000_hw *hw, uint16_t mask)
 {
 	uint32_t swfw_sync;
 
+	if (hw->mac_type <= e1000_82547_rev_2)
+		return E1000_SUCCESS;
+
 	if (e1000_get_hw_eeprom_semaphore(hw))
 		return -E1000_ERR_SWFW_SYNC;
 
-- 
2.20.1



