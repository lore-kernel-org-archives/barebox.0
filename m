Delivery-date: Wed, 08 Jun 2022 07:14:53 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nyo1t-0079XC-2o
	for lore@lore.pengutronix.de; Wed, 08 Jun 2022 07:14:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nyo1r-0007aL-RC
	for lore@pengutronix.de; Wed, 08 Jun 2022 07:14:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IYeGu3DTdz0lVlWRSEmXzOS3dGHAtou4KIc78rx0SM8=; b=aLIJdO+mJ/HCxm
	ZyIw+BUooYF5g0c2YOVegxLVbvZ6XTdMdyZIpv82YXjVTzFbOm8y9SmtIQEHYkapNAI01KYOpryF8
	mhemshHfCydPQ0mmsEIbJ9TF3vjqPrjNfTrenmo6jvUJ4Z2oA6UnmwbaXCPDqEEvRk/SZQj8RGfoI
	37jyPswBi9Xe2gpjFbY28nQKm1gIU+1LWsS8OMws1udv7gj89kLXYXNqVzIbf+6rZgcaG8tl8EIo/
	yb6Buf8VQhaiGp2qLhC51UFPxanASULUQvaQj2nj1t/aFRbDSICx034lZfJskNE4nv4gOOJS2x0je
	lUN7MHWAPGV0y3GAdiQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyo09-00B7Vk-L7; Wed, 08 Jun 2022 05:13:05 +0000
Received: from mail-lj1-x22f.google.com ([2a00:1450:4864:20::22f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyo01-00B7UW-S0
	for barebox@lists.infradead.org; Wed, 08 Jun 2022 05:13:02 +0000
Received: by mail-lj1-x22f.google.com with SMTP id g25so21431510ljm.2
        for <barebox@lists.infradead.org>; Tue, 07 Jun 2022 22:12:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=n5coEDHR7ZoSm63dIqU9Un9pY3nTGRbSoN4Vg+iVyq4=;
        b=kwYevaCL/Ar65nkO76BcuqF4BKIiRqoyfsFrocctUS74rNI4hp9PO1f427rfKUGjtW
         EByxAQHAw2iRH0JPXgxfsXBRXUvfjLo2N3e7GKmXORA+3Y4B9A9qXuAuZcB0n5aPZSRQ
         bW9MlbaUoLNXXGSn+B+qp455DvSBoB5ANZhLInMdq/p2ygwEyicUXdlj2HVZ1yxVqN/q
         K9i05OLj8kR1Xz2DIyEddEJQ/3VttjyJKyHhBzD/rnUW65ZaxaH/dCeKPQb+kFb1qQne
         HVTlQP3gjMrVMPJUhocet1rM9d9CpgkL+/JMlD/Ps9zhU9LIpLYDEydLVP1MMIwtzWKL
         qrcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=n5coEDHR7ZoSm63dIqU9Un9pY3nTGRbSoN4Vg+iVyq4=;
        b=eFBFoFEPdkQ29XAto2Z05gzCu8X6Z85DngsQ0aIZE4W0CSB6UIzp8e5SoXZrVsR+Us
         IIcOjU1Jc1XEBtV40PrHFDVwOQ6erL1pi3hco0BuZNavlJ6CETsRCm34pC85goys70Hi
         J8a8MA+5e6E4CKtRoUQ2FJVYmNQtxDlfcS8g8A01Ag0hgRQBvr9bIgXMQj6b9M4iyki1
         LJfmUjAjaSnmEiiQ05nYqdCRm3zrGjdH09X8mZvgdpu2KNXKXNYeTplHS3wLpHOT5Muy
         sQRRQVkZHt4tHL9PiqOB8xg+G5LHxlbdrqd61UqYHi0KzmIoMbh9aMNw7APh8v6MhIYY
         lMzg==
X-Gm-Message-State: AOAM530SRPWxM9FKzfkVdAg2ge2Y6D0fHvBst1dSHa7ricVCEWF8DvGC
	rlQMgEPGscye7gbrxMmisCRH/wMJJAw=
X-Google-Smtp-Source: ABdhPJzhe3ExxMHK8Hk6EGkL7eOp3EctKLKc7oWR3OeqKhfgRcTzvvH+AJIMjdRsJecWfCbPXfFf0A==
X-Received: by 2002:a2e:9191:0:b0:255:7517:e73c with SMTP id f17-20020a2e9191000000b002557517e73cmr15609931ljg.393.1654665167854;
        Tue, 07 Jun 2022 22:12:47 -0700 (PDT)
Received: from shc.milas.spb.ru ([188.243.217.78])
        by smtp.gmail.com with ESMTPSA id z9-20020a056512308900b0047255d21142sm3541554lfd.113.2022.06.07.22.12.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jun 2022 22:12:46 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Wed,  8 Jun 2022 08:12:44 +0300
Message-Id: <20220608051244.2318-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220607_221257_946584_06E6632D 
X-CRM114-Status: GOOD (  10.48  )
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
X-Spam-Status: No, score=-2.9 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] common: reset_source: Remove of_get_reset_source_priority()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

of_get_reset_source_priority() has no users,
so it can be safely removed.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 common/reset_source.c  | 20 +++-----------------
 include/reset_source.h |  7 -------
 2 files changed, 3 insertions(+), 24 deletions(-)

diff --git a/common/reset_source.c b/common/reset_source.c
index 3554cbd0fb..dccb683231 100644
--- a/common/reset_source.c
+++ b/common/reset_source.c
@@ -76,7 +76,9 @@ EXPORT_SYMBOL(reset_source_set_prinst);
 
 void reset_source_set_device(struct device_d *dev, enum reset_src_type st)
 {
-	int priority = of_get_reset_source_priority(dev->device_node);
+	unsigned int priority = RESET_SOURCE_DEFAULT_PRIORITY;
+
+	of_property_read_u32(node, "reset-source-priority", &priority);
 
 	__reset_source_set(dev, st, priority, -1);
 }
@@ -92,19 +94,3 @@ static int reset_source_init(void)
 	return 0;
 }
 coredevice_initcall(reset_source_init);
-
-/**
- * of_get_reset_source_priority() - get the desired reset source priority from
- *                                  device tree
- * @node:	The device_node to read the property from
- *
- * return: The priority
- */
-unsigned int of_get_reset_source_priority(struct device_node *node)
-{
-	unsigned int priority = RESET_SOURCE_DEFAULT_PRIORITY;
-
-	of_property_read_u32(node, "reset-source-priority", &priority);
-
-	return priority;
-}
diff --git a/include/reset_source.h b/include/reset_source.h
index 023b1fe4a0..a98c61ae0e 100644
--- a/include/reset_source.h
+++ b/include/reset_source.h
@@ -32,8 +32,6 @@ void reset_source_set_device(struct device_d *dev, enum reset_src_type st);
 void reset_source_set_prinst(enum reset_src_type,
 			     unsigned int priority, int instance);
 
-unsigned int of_get_reset_source_priority(struct device_node *node);
-
 #else
 
 static inline enum reset_src_type reset_source_get(void)
@@ -69,11 +67,6 @@ static inline void reset_source_set_prinst(enum reset_src_type type,
 static inline void reset_source_set_instance(enum reset_src_type type, int instance)
 {
 }
-
-static inline unsigned int of_get_reset_source_priority(struct device_node *node)
-{
-	return 0;
-}
 #endif
 
 #define RESET_SOURCE_DEFAULT_PRIORITY 100
-- 
2.32.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

