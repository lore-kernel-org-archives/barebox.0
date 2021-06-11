Delivery-date: Fri, 11 Jun 2021 08:51:25 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lrb0n-0007vG-DL
	for lore@lore.pengutronix.de; Fri, 11 Jun 2021 08:51:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lrb0m-0006Ys-6U
	for lore@pengutronix.de; Fri, 11 Jun 2021 08:51:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=u+i+2Gft5ezpEHqLyrZb8gpCRvqzO69lk4ncW1Vr9+0=; b=p3kmTdmUlnugvS
	/3p3NCJek3leO0IOGPuO+e8hM1tfvmvabUqDDACrzz+2ghLB0UOlLaZfQ41A3q9ZnGsietHbeAhnn
	snp8YBW2Zo2LyeNzsyRNF+l9qBCgoHD0dEldFghwZg7MyByWP2adaf7fgy+QvKSXU5ouGqRFC2fhh
	rgN+hdDvZkCy7kUY5eV8HccLiqphyJ7pid4XpmoHHTKv38L/wGzOOwxevHV5CQ/czfeDj67fxU7Xh
	RIK/+J0oDXJ4v1fyv+s6AACujeh614coGVqyYEWQavrGEgIU43cxWy6gVZRfI7pZ1/KFDe9TGoS/w
	SExfUHuUP3q/abav3fRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lrazI-003yV2-P3; Fri, 11 Jun 2021 06:49:52 +0000
Received: from mail-lj1-f175.google.com ([209.85.208.175])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lraq4-003vOP-JI
 for barebox@lists.infradead.org; Fri, 11 Jun 2021 06:40:21 +0000
Received: by mail-lj1-f175.google.com with SMTP id e11so8127105ljn.13
 for <barebox@lists.infradead.org>; Thu, 10 Jun 2021 23:40:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TKwemqTe5ozUtd/7VRROi7+db5BAm3qxyEeoAOkunVY=;
 b=gB554GYDNoiupKV6rwSnSBzlbxANKHTSi1Wz3Neh3GpDXAouMZdkgoTMMMCpTYpQoh
 OH+PiELHLI2NfTWbdaCTN9wH6Woc8wNgAaQd90tE0/TGWlC8ZZ5juygGbyvWgRjBP8Gq
 pkSKw5fJrBEimLjHU7xP/y/jgvtt8Q59Cv1wpo+t6NF+tvTf4gLlfTg/3dmy/my1hCQ7
 gXypfXw4T+47AAwKJAl/L9VDYmpEYtWykG9YYLr5c7S+xrUQQ4kQI2oB3+K+wb6lxFrs
 x2PRxMHx3LcSs9F3uG+StJpekSxxp5hZQpXPivA9O9rnYoHsj7Kif/pPFPyQc7GeTE/t
 UQOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TKwemqTe5ozUtd/7VRROi7+db5BAm3qxyEeoAOkunVY=;
 b=jiFNYvx4ySW5DK85wsibaHY3Rt8DyRMQhFX0/iAh55sw+sMTSkZ57JDOm/xsUzPO94
 +TiFE8u9ypFneXgA68aOxpW5f64XNEunVNOlYkcbEYYCGwD8Q2UiYpy0Nhg5qY98+pXU
 WXCQpD9AblPadALmtWA7JGFFKGHhUxqs10kRZvVFGq8kicS5HkKR5KvE//k1HzHBpIM6
 uraC2y6NauwBXizViokvS2YOrYoWMKrv9t2GTJdVJVse/nbUikOZhoXGSf5gQjrqbXL7
 R5z+8Ns3uHa1W7/AyJlPBO4sUhhwgTmAjuIgyE97N7uF08CMQejiYQf/8U4n8EYPbUE5
 Ykqg==
X-Gm-Message-State: AOAM530PJPn09wEK/N8x1460W9CRjS/sKzDekqyqHXK2RjIfcu8rzL9g
 wVIqoYWlV3kmOr/zfyD64uSiVrLq+dReEw==
X-Google-Smtp-Source: ABdhPJyAoIFrJtz+UhqVsi4xSlyV/PqOdL5k2o6ZA+4lqKBtuT50e/6uV3dxl6KiESAUEbK/XNWMaQ==
X-Received: by 2002:a05:651c:17a8:: with SMTP id
 bn40mr1843945ljb.288.1623393558240; 
 Thu, 10 Jun 2021 23:39:18 -0700 (PDT)
Received: from localhost.localdomain (109-252-203-17.dynamic.spd-mgts.ru.
 [109.252.203.17])
 by smtp.gmail.com with ESMTPSA id b6sm496692lfa.296.2021.06.10.23.39.17
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Jun 2021 23:39:17 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Fri, 11 Jun 2021 09:39:12 +0300
Message-Id: <20210611063914.155796-1-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.32.0.rc0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210610_234020_666930_2C72A6C7 
X-CRM114-Status: UNSURE (   6.06  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 0/2] mtd: core: fix use of uninitialized struct member
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Antony Pavlov (2):
  mtd: core: fix use of uninitialized struct member
  mtd: core: fix whitespaces

 drivers/mtd/core.c | 32 +++++++++++++++++---------------
 1 file changed, 17 insertions(+), 15 deletions(-)

-- 
2.32.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

