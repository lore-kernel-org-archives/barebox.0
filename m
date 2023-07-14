Delivery-date: Fri, 14 Jul 2023 07:17:08 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qKBAz-00Acau-4o
	for lore@lore.pengutronix.de; Fri, 14 Jul 2023 07:17:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qKBAw-0000Dj-O9
	for lore@pengutronix.de; Fri, 14 Jul 2023 07:17:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wd94csyfTf3R+/xTGe6TNbwbN6prUrIsB2TK2B8umck=; b=CuioIQGjVVlPRaI8gDpST68LTU
	DRqTXfgdDXJtLBv4DyVPw1GaD5sApjUtaH5a7hP0HJ96p3VaLfA9pe517ukIZ4KRt5NaAL75qkTzJ
	+aZCrGH/XoJ3/yjJCVWbYbz92qAnenGA7jO104yDEnVDVAhEZNmVYsdR7R6JKnQ+ho1dcj/FrhS3N
	982wWlM1D4gL/lOXW/v32EOWYP0IjktAOKPefdXnfS8rzVxEOPr8dwntLjZ/IQntte7u6Y6iP13Y8
	gNJllcBz6ogSMoQmvdpyXt8cyu9uSTj7RJfOffXu0WDOgX+L8sRO93LyO6vMJD2KxK6YOaKeD9gX2
	7gu3hNVA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qKB9a-0052sN-1g;
	Fri, 14 Jul 2023 05:15:42 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qKB9U-0052qW-2s
	for barebox@lists.infradead.org;
	Fri, 14 Jul 2023 05:15:39 +0000
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-4fb7589b187so2567886e87.1
        for <barebox@lists.infradead.org>; Thu, 13 Jul 2023 22:15:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689311723; x=1691903723;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wd94csyfTf3R+/xTGe6TNbwbN6prUrIsB2TK2B8umck=;
        b=kF8I1m8sMyJ45SLkH4lLspGNT8y8N7pUiruB4rj5AJV2JTVdsQieHrWey5438tYq7G
         rpCpkOzHIjfdh39Z4OrTzqaHe/eEqg2c22PyRBpHHP/YQpY3o6gu1sxDfU6XC9XOQMUi
         OIdIL7NzXAsiDtAMRsit1Bsxj8TqGxm8k29SY24PWhQ1Mb+4pa7uPWdZXxGYizlfqIW9
         hYnHc5EY4SqcK5D7028L14hJj7fFgbbkA2D64MPIcmEHdJjAWe+OLCDnoKs4EaV2LRfx
         YA/fKm6PKYfSyDooi9BZB5vNlw0K/rn+lCqiEuQHHPVR08C/91+G3V4OiYv4xJ2hrUal
         RGhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689311723; x=1691903723;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wd94csyfTf3R+/xTGe6TNbwbN6prUrIsB2TK2B8umck=;
        b=G3ozBR8rkFCd+7EQj3HUigrT35R/SYwG3iNSe8SL5UdHqMefVzn6QSDCJBbW7H9M9L
         Pu0MsbjXV5C9ZFHoQ6heZ8CDcavtcTD9m19yR8aEPey3Gsb8LyrLrY2kl4W6xjyTp0Rf
         W9BNtWMKgNTzQGVFEYZTi2xLpGJfhYRxCRRnMiPkdA8aRRzF2dXwG0+9JKZ8gjYmiQZN
         CrsIbZpGs4eYtMyESPVK+4ZnnBt3Dthg3Y8yjBPFtMSZeUpD0e7h28DhOMrOlrh3HlK9
         c+owtBBMc/3CS5e21jf8zFKSbKJ768rp3q5Ea7BGCgSRbRRPj0t8AByCmPXfuC/9q7Jh
         4Tkg==
X-Gm-Message-State: ABy/qLbEhe5O4Oad+xm5Gkgpdoz7vnoQY1Jl99d/AxKuDpPYyZjzOXrp
	3wInV/z/l0STV3y5mrfjFj9gv8D/p95afg==
X-Google-Smtp-Source: APBJJlGl02NasnY6L55/HKrUerREMMVvIxNFzUtQM/w4sxoBY7ldM1HjfmhavY/YeaRpUv24HRBOEw==
X-Received: by 2002:a05:6512:ba3:b0:4f9:5718:70b0 with SMTP id b35-20020a0565120ba300b004f9571870b0mr3272313lfv.41.1689311723380;
        Thu, 13 Jul 2023 22:15:23 -0700 (PDT)
Received: from localhost.localdomain ([188.243.23.53])
        by smtp.gmail.com with ESMTPSA id d15-20020ac25ecf000000b004fa52552c7csm1335893lfq.151.2023.07.13.22.15.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jul 2023 22:15:23 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri, 14 Jul 2023 08:15:10 +0300
Message-Id: <20230714051510.2304-4-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230714051510.2304-1-eagle.alexander923@gmail.com>
References: <20230714051510.2304-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230713_221536_926774_EC003589 
X-CRM114-Status: GOOD (  10.74  )
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
Subject: [PATCH 2/2] i2c: rockchip: Get I2C bus number from devicetree alias
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 drivers/i2c/busses/i2c-rockchip.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/i2c/busses/i2c-rockchip.c b/drivers/i2c/busses/i2c-rockchip.c
index 23bf4a55d7..e8061fe540 100644
--- a/drivers/i2c/busses/i2c-rockchip.c
+++ b/drivers/i2c/busses/i2c-rockchip.c
@@ -432,7 +432,7 @@ static int rk_i2c_probe(struct device *dev)
 		return dev_err_probe(dev, PTR_ERR(i2c->clk), "Can't get bus clk\n");
 
 	i2c->adapter.master_xfer = rockchip_i2c_xfer;
-	i2c->adapter.nr = dev->id;
+	i2c->adapter.nr = -1;
 	i2c->adapter.dev.parent = dev;
 	i2c->adapter.dev.of_node = np;
 
-- 
2.38.2



