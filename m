Delivery-date: Fri, 14 Jul 2023 07:17:08 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qKBAz-00Acb4-RA
	for lore@lore.pengutronix.de; Fri, 14 Jul 2023 07:17:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qKBAx-0000Eo-F6
	for lore@pengutronix.de; Fri, 14 Jul 2023 07:17:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=PpfLPKnNBPe+Ob00gsXrkEBfg/KnzYIGchFSQUdJTxM=; b=o3GujziSwCvrRPHYbBThYQVZMi
	KeFJJ46VkS6vFK6H/fFksdjSO6cNcfKi6n3fppWB8zC5xygSR2ao/VG0TjNcVWoUGcEt0/xsdDu90
	DSqw4+adkpLgKWDhlvlhgQdfWLuYsRXDSoJFi6qY2BOgl2jwA6xAc9FU12erfouekgYcKjHSp/OG3
	JhVJ9hvFjnI7srtWSfT1GdiNA3DPus4pUGkVRdrlpdrEfbMrOYWNb6hHrl28bDQJUNUqj2YrcQCSz
	BIW9BYdHmFokH0BADS0ea9D/kgHwxbrOBwf5bWrRYwl5ANrSxqCDqre3RRibidi/E3+itYS2j+ro2
	szZL0p0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qKB9Z-0052sF-2x;
	Fri, 14 Jul 2023 05:15:41 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qKB9U-0052qS-2s
	for barebox@lists.infradead.org;
	Fri, 14 Jul 2023 05:15:39 +0000
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-4fb8574a3a1so2540407e87.1
        for <barebox@lists.infradead.org>; Thu, 13 Jul 2023 22:15:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689311722; x=1691903722;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=PpfLPKnNBPe+Ob00gsXrkEBfg/KnzYIGchFSQUdJTxM=;
        b=Zpo46TYOGFeXo1F6h1IjSoyN6/cYni43w/AmAqDAwJnbTE0AA7yD3kDEdtnL6tg0Yb
         XFeaKLWNMv/jnFtYkHxehLfK1KKfypL9JbBw6RVYkhX27x7wBUhwERTOA2qPclx0KBPg
         9UKPpnP0xbtKs9dKOFmdb6ZKjqm+VFpsHAfMH8C0Y5rfdfUZNtoHezoIXpH3kNsX/GC8
         0FPoHT9ts8iyGhdbwmqnv3CH265T3W6LoxwT5uGhaHoLCOHjJ2AhjZQ6yjEofGMxjp93
         8lWEj+9N/FSyEK5w+XfMGlcpE0dOgrJF8nFJNxjdm3Pb22Yca6bqNkVCVu95de1S0VlQ
         zI1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689311722; x=1691903722;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PpfLPKnNBPe+Ob00gsXrkEBfg/KnzYIGchFSQUdJTxM=;
        b=BckSpNNwT6o2INQ7tI1i9ZaiB3zxhkUUmNeEAkBc21m2Ew5o8FR6hEODZRI89ddgX6
         Ix0qxmozO8VGGGrSkZKQAf+M+zwtWjk5V9zQanm2cNkubjRonJBfneg3LGPmgOJ1milj
         m+rk7Ah/Lcmp5sNEWP9eihl7k6ZkIzgvQrO6g1FAQNUDgjDV6RCZqB5SCBOlpob8JoL0
         yCrBZduftEyG2mAV7JbzUGp248RzKa9dlh3C6f6aqUWBKIuQd9B74aCOOs6q2UnRqSGb
         7gWzDIuDxj962iYnuFeXj1fBVKKw67JXnwdFLQrDjjH1+RHhocjYw4J3aHcoTEwgJxuc
         PFlA==
X-Gm-Message-State: ABy/qLZQ6xwQg012ApJN8++JRmMKyMEcdFXK1yk3v7sNWHqqw0KpWLce
	xR7D7COGFVvMtAV0Q9HfwV5cMkRURznyng==
X-Google-Smtp-Source: APBJJlEGqx02J26W7Gk513hnRyMEGle2fLDNVKDiiDasjeFARM0PmTbxSs6hKyqLxJME1rllXkaI5g==
X-Received: by 2002:a05:6512:b0f:b0:4fb:5dd5:715c with SMTP id w15-20020a0565120b0f00b004fb5dd5715cmr3035181lfu.4.1689311721366;
        Thu, 13 Jul 2023 22:15:21 -0700 (PDT)
Received: from localhost.localdomain ([188.243.23.53])
        by smtp.gmail.com with ESMTPSA id d15-20020ac25ecf000000b004fa52552c7csm1335893lfq.151.2023.07.13.22.15.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jul 2023 22:15:20 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri, 14 Jul 2023 08:15:07 +0300
Message-Id: <20230714051510.2304-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230713_221536_927128_37249E64 
X-CRM114-Status: UNSURE (   7.71  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] .gitignore: Add generated scripts/rkimage to .gitignore
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 scripts/.gitignore | 1 +
 1 file changed, 1 insertion(+)

diff --git a/scripts/.gitignore b/scripts/.gitignore
index 3ca742ac6e..36b60ad56b 100644
--- a/scripts/.gitignore
+++ b/scripts/.gitignore
@@ -32,6 +32,7 @@ omap3-usb-loader
 omap3-usb-loader-target
 rk-usb-loader
 rk-usb-loader-target
+rkimage
 mips-relocs
 rsatoc
 stm32image
-- 
2.38.2



