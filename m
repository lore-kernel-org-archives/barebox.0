Delivery-date: Fri, 10 Jun 2022 07:42:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzXPy-009fMr-Kg
	for lore@lore.pengutronix.de; Fri, 10 Jun 2022 07:42:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzXPx-0007PS-9A
	for lore@pengutronix.de; Fri, 10 Jun 2022 07:42:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CfgkcSE1YQ5ZgeaDzgSTlpNMy4UQWJ03fXxTxHplMrU=; b=excPaNxufiRmJK
	0wGAwOGll5ne/UgK3lsge8ZtSUFJACe+szLRYs3KJW945Q0vTmKKGeoOwVz5CmmweDotyZiZrhsLz
	+HuJKZbX3mH59otfSZDq6WcPjy4c/8c1Gaw0gmufPVc15XanCQmVRbjhyqtEK/US/FEOF5Q4C938u
	OCzpGlMy9k5e/h+eSZmu7FxuoXGWs7nHajYdJe+kfyPFdzTleMAsn+w1TnPRIk3PMPKIOsLx9ohGM
	ZtgEdJWD0JZcRSp6Yus3A3tVxU2ismiQW3uHlq/9dZ2Dd/jSFr2+keadDzDkjc8E1QWbztaQHOKOo
	++w0UB8UHtl851pHhjKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzXOh-00605n-Jj; Fri, 10 Jun 2022 05:41:28 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzXOJ-005zsb-5u
	for barebox@lists.infradead.org; Fri, 10 Jun 2022 05:41:04 +0000
Received: by mail-lf1-x131.google.com with SMTP id y32so41164865lfa.6
        for <barebox@lists.infradead.org>; Thu, 09 Jun 2022 22:41:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=MIYtyLn5gphSC03mvs/zWwTSSlevNOtnWMLnAP6Kxag=;
        b=B+HCzcJF1Ua5y6D98BqDnkNGdPVZagE9FKqiseQfwUXU1WIJPVtKuGrcqCckdjsOmM
         uKTkeHU99MRfDLsDfOwluNhF1F7CYwHyO5/7MkHY9cBuJpZtOm9erbexE1RL5jgZ+o3H
         a/ZismuWUFol6H03FeMvNIsfQETvvDJ4egJaRArfbDj3SvD6NMAkD4jfC2xgi22Dg9L5
         t+sX4+5m9EAKwYGSE+LUhqX6fD7YVmqiDeD5U7B9pKCZry3IWOKoi/RdM9ZCLIp38Yov
         pKywfz57taVJeT7kM+T8lJT8cVphw8KTOK1OXKhcpN1jQvaPl/xKFZwDtqrjfkmxC9xj
         FHHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=MIYtyLn5gphSC03mvs/zWwTSSlevNOtnWMLnAP6Kxag=;
        b=khjZWIZBL6+QF5tMQCJXtWowZvM/JiU6Fn5BxO5HGh7eXOZBgbUT6ICx61iTgeJQrM
         PvT4wUiPKRDQFNy4+QP4z5IpdVqavIw+2F0NWRapeZFuU02JpVa7QAtwmkWH1Bo7LVJz
         VopH/Mqoc77VDYFMdhILWemQ+rOsvTaXObxhiQU/Su8KL8+NZ0kIdIFko5wfDGcKlJXY
         TUYTu9D0SQnk4ET5b3ALlCWoJXDzfaXhrnWwRri3jA0C4eFa5DGOiA2LlPiQ1UaKQHp6
         yc9IY3Ht99ZyiRKky/tVUrrkC0Mm2SQEEmFmRonwoWYZb5w+v4W52FRkvfkxz2objgPM
         J5NA==
X-Gm-Message-State: AOAM530bNF0R35b2h+SZPg2AWr8z2/lSpUE0SaDnKcdAKgbZ1XMniGJL
	K+IMyTKZjqTaCVhgZKnG9wFOvFD6HIA=
X-Google-Smtp-Source: ABdhPJyuVpZF5ixt19o4pTVCnZGFLX6+Y9JnJDJmH0e+/EA1pS5j4hhGAniROcRDqCOw759lE001FA==
X-Received: by 2002:a05:6512:1681:b0:477:a451:131a with SMTP id bu1-20020a056512168100b00477a451131amr26065257lfb.318.1654839660393;
        Thu, 09 Jun 2022 22:41:00 -0700 (PDT)
Received: from shc.milas.spb.ru ([188.243.217.78])
        by smtp.gmail.com with ESMTPSA id v21-20020a2e87d5000000b0024f3d1dae84sm4009770ljj.12.2022.06.09.22.40.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jun 2022 22:40:59 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri, 10 Jun 2022 08:40:49 +0300
Message-Id: <20220610054051.4911-8-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220610054051.4911-1-eagle.alexander923@gmail.com>
References: <20220610054051.4911-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220609_224103_258901_05770BC6 
X-CRM114-Status: GOOD (  12.18  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 7/8] mtd: nand: orion: Disallow driver compile for ARMv4T
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This fixes the following error (when ARMv4T and COMPILE_TEST are set):
{standard input}: Assembler messages:
{standard input}:197: Error: selected processor does not support "ldrd r2,[r4]" in ARM mode
CC      drivers/virtio/virtio.o
make[3]: *** [/home/ARM/barebox/scripts/Makefile.build:140: drivers/mtd/nand/nand_orion.o] Error 1

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 drivers/mtd/nand/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/nand/Kconfig b/drivers/mtd/nand/Kconfig
index 3bdfabb439..2cd52f3820 100644
--- a/drivers/mtd/nand/Kconfig
+++ b/drivers/mtd/nand/Kconfig
@@ -82,7 +82,7 @@ config MTD_NAND_OMAP_ELM
 config NAND_ORION
 	bool
 	prompt "Marvell Orion NAND driver"
-	depends on ARM && (ARCH_KIRKWOOD || COMPILE_TEST)
+	depends on (ARM && !CPU_32v4T) && (ARCH_KIRKWOOD || COMPILE_TEST)
 	help
 	  Support for the Orion NAND controller, present in Kirkwood SoCs.
 
-- 
2.32.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

