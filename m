Delivery-date: Wed, 30 Jul 2025 05:51:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ugxqL-0058hN-21
	for lore@lore.pengutronix.de;
	Wed, 30 Jul 2025 05:51:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ugxqL-0002t3-2t
	for lore@pengutronix.de; Wed, 30 Jul 2025 05:51:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=OviPRJ/bJzUfP7Ooi51eSJcQtDXukw0Tq8/XOJ8TXOk=; b=VsFQ0W7ILHAMHZ9+7MjsoVQ1H2
	IS4fvFvWAYTU7ph1d+EcELf1UUHrOLeabq3rELv4xDiq773a2K7s9LGrRg3B2Ihp2/HLI5gxGzyQX
	j1YV58+rgqErFS7GnACq57ZGcR6OrBDl4bcq1FCHytDl6/QnfYmjIyd/Ay2OafiIxeAn0IT2EzKrr
	qwj+u0GWkuRd21HbhrKSFmE2QHfOo7XAvHduJOZEb0eGJQkkY3JgBgDr4U9ApPYh3NfD0djBEwTKa
	LBpDY/SAfcQpLyKJebNXOqhujz5IDmnw4GzSvLfdrNyNORWQCNM8uPvSZYFRLrvfuL6igIGzRLted
	tz8XzWoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugxpf-00000000e0P-1h7Y;
	Wed, 30 Jul 2025 03:50:23 +0000
Received: from mail-qt1-x832.google.com ([2607:f8b0:4864:20::832])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugxpc-00000000e06-3Z3v
	for barebox@lists.infradead.org;
	Wed, 30 Jul 2025 03:50:22 +0000
Received: by mail-qt1-x832.google.com with SMTP id d75a77b69052e-4ab814c4f2dso117927881cf.1
        for <barebox@lists.infradead.org>; Tue, 29 Jul 2025 20:50:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1753847419; x=1754452219; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=OviPRJ/bJzUfP7Ooi51eSJcQtDXukw0Tq8/XOJ8TXOk=;
        b=GHOs60bvaqRxq9PPSWV+9Xb9/jhtpwhOHRBgQyr+eZ8Hr5yh96qvIiypLB6RoJrdVG
         v69wsQuAmDm83WhTL+Sq09h57Z+WtTDqB3Z+cAEbwBdZ7MsSre3IWEuf1fvmiC3uiePh
         3DHTPWXY1VONajOpeVDXC1zkT7DeM3rXlTrTDaN6iEzDC/JgFwFTDzeIqimPGD4WLqz4
         co/TEaJVJYM/HV9F5DlE5jDsDi7C8gZHltO6l7b8H+Ggg6YVjCR3WEjOmPfrv/dSweSF
         XYv1z/j7JMuhWuZYLWZUANVbwzlauni7NEzU0Nwa2nRPM9iCJKdtkBK5im/WVs58PrdF
         zF8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753847419; x=1754452219;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OviPRJ/bJzUfP7Ooi51eSJcQtDXukw0Tq8/XOJ8TXOk=;
        b=AEsLnr5reZ36PifWwsaGhYx4gfqDTv6T0slxubivSY1dZZlr65WlzrND6PHHyWH43K
         0KfnqkzVptoYDk2bk0J0O+ULzQ7jittXJo/uMPAW+/DdgYjMQtqaQLQlzqJL6M4Moc88
         j81tz/mE+0g/+EgVWubRWm4L2gET5hn4aqOeFfVXA42H0TTzo7uYnRxjOqiZ+T4XBxXt
         1qkju/Bao3XqThrOwtqIHgWnBMhmznoK5+dPRJEPaVSAhORYkZhAlK7VV54GQSJcSVEI
         TIv735U91JO/+yfMqel3dh+ow5FhT8FgsN1Ga4f4r78/1Fu6JdKjqme5Dj7goSujS4s3
         oYGA==
X-Gm-Message-State: AOJu0Yzu95Og0efGG7qIDYb5N+AUYktafPjPY9zuPr+zcaCpti6eLfmO
	Zs3jcL9pg8n60nV/9FIV8TpmygfPAXfsSfifbhYMn4jhOf0dr/b2rpa2u35wyYgN
X-Gm-Gg: ASbGnct+ic24gB0nwgIskbDmcVKuUuOFo0x2f/yhGgSUrw6SY2uaE9e2AQg/0zS1Xnl
	8QTw0OwzUya8fATmnIxkx8z82SSw/Dqm80jYn/WpMGqEABdokzpjLK6ZE9XORJYpw0QBdkL8h0H
	bVUqS3pz1lzHkiYDIhov4sBofNqS31bYvdv+/VTYmPaxH4904HUJqQlTxAJVPlIUx45BZE5Q0b2
	23SHXGMFmoy5RANXtBJ6ImKOxpm9zT3PymnW70QZagj8z7w+CPT55xNHghOUAlXQ8Kkyzg7ZRzm
	n4DlUWx+NHvjQaTHMFrna7CaSR31D4YXoqBY5lVLzwhv/tF1QwGRc8BNvyEFY+OLWfsT5o6gyAZ
	1Ot4FdC2QbittaW6wfa3sTRZtRLKmwPLcOqkn/JM=
X-Google-Smtp-Source: AGHT+IH++Vk6KwhiVADf9OihBXka8sNiLgvtjMwsEc58pTMwXhy8Pm/gVoIDbEt1klHa9jmSlVfmSA==
X-Received: by 2002:a05:622a:b:b0:4ab:9551:3b4f with SMTP id d75a77b69052e-4aedbf9341cmr35669491cf.56.1753847418633;
        Tue, 29 Jul 2025 20:50:18 -0700 (PDT)
Received: from Latitude-7490.ht.home ([2607:fa49:8c41:2600:48c7:d1e:9673:22a2])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4ae99669e84sm57969111cf.47.2025.07.29.20.50.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Jul 2025 20:50:18 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>
Date: Tue, 29 Jul 2025 23:50:09 -0400
Message-Id: <20250730035010.3318600-1-chalianis1@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250729_205020_891941_7A5D72BE 
X-CRM114-Status: UNSURE (   8.92  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] clk: clk-fixed-factor: compile clk of provider only if it is enabled
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Chali Anis <chalianis1@gmail.com>

This permits to not compile when it's not used, fix undefined
reference error.

Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 drivers/clk/clk-fixed-factor.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/clk/clk-fixed-factor.c b/drivers/clk/clk-fixed-factor.c
index d2c808d40c63..ea04a4bf7f0f 100644
--- a/drivers/clk/clk-fixed-factor.c
+++ b/drivers/clk/clk-fixed-factor.c
@@ -97,6 +97,8 @@ struct clk_hw *clk_hw_register_fixed_factor(struct device *dev,
 						       flags, mult, div));
 }
 
+#ifdef CONFIG_COMMON_CLK_OF_PROVIDER
+
 /**
  * of_fixed_factor_clk_setup() - Setup function for simple fixed factor clock
  */
@@ -130,3 +132,4 @@ static int of_fixed_factor_clk_setup(struct device_node *node)
 }
 CLK_OF_DECLARE(fixed_factor_clk, "fixed-factor-clock",
 		of_fixed_factor_clk_setup);
+#endif
-- 
2.34.1



