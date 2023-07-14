Delivery-date: Fri, 14 Jul 2023 07:17:16 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qKBB7-00AccF-LR
	for lore@lore.pengutronix.de; Fri, 14 Jul 2023 07:17:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qKBB4-0000HV-MM
	for lore@pengutronix.de; Fri, 14 Jul 2023 07:17:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=b7H8gi+1zWcU/nH+Cdd5+gOBqlHXe0jgkzBWykd47/A=; b=L8zL/h8rVY1zdvH0a3jZu+fMaP
	uWkFm4UMg0HiFybfO2lBda8H+8YQaK8fXLTlJSkLATZlgQaGpRCUet8oa98n/DOPfH2EQ6UaPjTie
	kEi/SE9UnjdKGLqWMHZR3A0H7uT5np33StAuIFwaLEYl3hVzWh8N5qKmvFBV8M8ga9TePadxfLxdW
	rZf5DkoN0/FxmxLU/hrFVrW8RTkOJsNQX6BgM+2pH1fY7q7qToZzmJrsYqJUTZvX5MHPFwHrd0alb
	eJJT8y6EPcaUHfBoACbufKU97+RZALQLHbSfb/vs88b/T0y9KyMNECaQ3RFSRNYtIpR208gZ9IKzM
	52OMHIfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qKB9b-0052sV-0K;
	Fri, 14 Jul 2023 05:15:43 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qKB9U-0052qT-2o
	for barebox@lists.infradead.org;
	Fri, 14 Jul 2023 05:15:40 +0000
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-4fb73ba3b5dso2597624e87.1
        for <barebox@lists.infradead.org>; Thu, 13 Jul 2023 22:15:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689311722; x=1691903722;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=b7H8gi+1zWcU/nH+Cdd5+gOBqlHXe0jgkzBWykd47/A=;
        b=AFqXpJwyxhLFSojvRyrdiZEO54t+5mDv6ObWwG1Ph3ZCn14g4UWgfsx9h/5VH/lQeh
         4gLNRaPZ4JyXY+4DtwI5CF7v06RweTUP97ahfueqHRZdkUUEUqGCY+txXJrGdCFvZcnp
         RsVLWretW8oIeOn53QveSOEY/8XICgVYIriQT6twG8Io6/wD8cVImC64J1yDcb9vCtZg
         JLf57QwDzEvi/abqvN2Mm7+sO2QIaTUOzzEpy5DYDDIKLz18aqJMShmPof/c/2qI72c3
         rtO38lVHNmxivI8/Nfu2eeEzwGA4jlKT1snbtzq+Jzk0IfggtKBsLBp46NwUI2wgxc9s
         m8DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689311722; x=1691903722;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=b7H8gi+1zWcU/nH+Cdd5+gOBqlHXe0jgkzBWykd47/A=;
        b=D1fAclPoZtYapojR18UdNjFRCDQokg2nJ0JRZNyUop+fQXzMZVeA0fmdMZnIEvQi93
         9BMtzZ159BZO0yNwwsfndj/bGFxZxPjhhkLRaBatp9etfahhprzHN438Vaqf5Lkg+i+J
         EFz1xPWGngMb1cZN7IaWAN00W8Cfw2N5WnYulI1qEsg49PoTROz+qKtNdzwUaiBIngIK
         hcLQqGQyZUtRhv1jjlaRzyFqgNiGDr9VYTRBd156ERGIyXKjACCMLymknjqjKo/J3S9c
         stP/xTmqbl/mJD+u6KYfGJenqYhfOQLCtzd00hxIaYUdpwVrleCBIBgdLx32nfuH9ajH
         J6eg==
X-Gm-Message-State: ABy/qLYE7nTYSSPFQkQJfWBIdKKTb7zeJbpQkdTA3gKjlwPkvofJAACe
	UCthPD60pf7lddu5lLTiMQW0SXC4fNl9Gg==
X-Google-Smtp-Source: APBJJlG2HR/uB1C6SVhWlowtVYQwgNofrJ8byI5jLQJJZD8cPyX3SVZTVt5tlNRw29mnRyCWTXW5fw==
X-Received: by 2002:a05:6512:3143:b0:4f8:67a5:94df with SMTP id s3-20020a056512314300b004f867a594dfmr2629682lfi.15.1689311722057;
        Thu, 13 Jul 2023 22:15:22 -0700 (PDT)
Received: from localhost.localdomain ([188.243.23.53])
        by smtp.gmail.com with ESMTPSA id d15-20020ac25ecf000000b004fa52552c7csm1335893lfq.151.2023.07.13.22.15.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jul 2023 22:15:21 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri, 14 Jul 2023 08:15:08 +0300
Message-Id: <20230714051510.2304-2-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230714051510.2304-1-eagle.alexander923@gmail.com>
References: <20230714051510.2304-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230713_221536_916955_095ACB28 
X-CRM114-Status: GOOD (  11.85  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] i2c: Added feature to get bus number from alias
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

For the correct assignment of the I2C bus number, let's use an alias
from the devicetree.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 drivers/i2c/i2c.c | 20 ++++++++++++--------
 1 file changed, 12 insertions(+), 8 deletions(-)

diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
index 300365bd1f..df3b968a4b 100644
--- a/drivers/i2c/i2c.c
+++ b/drivers/i2c/i2c.c
@@ -701,17 +701,21 @@ int i2c_add_numbered_adapter(struct i2c_adapter *adapter)
 	int ret;
 
 	if (adapter->nr < 0) {
-		int nr;
+		if (!adapter->dev.of_node) {
+			int nr = adapter->dev.id;
 
-		for (nr = 0;; nr++)
-			if (!i2c_get_adapter(nr))
-				break;
-		adapter->nr = nr;
-	} else {
-		if (i2c_get_adapter(adapter->nr))
-			return -EBUSY;
+			for (nr = 0;; nr++)
+				if (!i2c_get_adapter(nr))
+					break;
+			adapter->nr = nr;
+		} else
+			adapter->nr =
+				of_alias_get_id(adapter->dev.of_node, "i2c");
 	}
 
+	if (i2c_get_adapter(adapter->nr))
+		return -EBUSY;
+
 	adapter->dev.id = adapter->nr;
 	dev_set_name(&adapter->dev, "i2c");
 
-- 
2.38.2



