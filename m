Delivery-date: Tue, 24 May 2022 09:32:21 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ntP1h-007JEj-VW
	for lore@lore.pengutronix.de; Tue, 24 May 2022 09:32:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ntP1g-0005E3-Ui
	for lore@pengutronix.de; Tue, 24 May 2022 09:32:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fP37ObQJ86DdmgjEBGx+YRMnm+g7zqEcUJILffvWwkw=; b=pPlFnn2SYGg+gq
	6d7C8MG9wybG4kEJLyevXyw9D05vmW0HHZShi7kgcNqYhh25JObXzVekFSRO6krg/CyzUe5m2thUF
	yj1V7XkVDSFL4pHt+e8TUqUz3yIGuM7yV0ZwSN5zfZrBl7J1vrAWP2DuNgo8u+JaaILLlB59L05gw
	ZS9M1iNVUIIQ86KXt45mH/tGVsghr+RDtPFny8wYuWllY0lVCtUYbiPTEKOhVp0uZD/Pg5rQDqUeq
	amBHAnupPXg0pq/tvD9+g00OXyU0iUHm7yhkc9/jTuphMr84cV++DWcgSQrF+mZL55u/7fAwPUE77
	WW2YpxVpFnn5kp3t9xww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ntP0S-0075k9-EP; Tue, 24 May 2022 07:31:04 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ntP0H-0075gR-NO
 for barebox@lists.infradead.org; Tue, 24 May 2022 07:30:55 +0000
Received: by mail-lj1-x231.google.com with SMTP id r3so12980035ljd.7
 for <barebox@lists.infradead.org>; Tue, 24 May 2022 00:30:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5a68Ssfv0subu44yDV+0i6fZb0KAFmsXKK77E9xk/Bw=;
 b=ondU/INW1QuYf/tWepD0a1p8b9jzi5mnj0zfnhs66c/wpO7iMxjzQ/Xld970pnlRn9
 ZbM/Z1uZIArXeXiD+CTYUDajeo9jYgi5ngWZUdGrAPXGJ+sAbQDialdjsH1HCeCIeErq
 lRfeBPv+22HOdrkvBTz9e3GbcTHSLlRhoTLDS5/hmWM+qro6iQqnRngpQiOGNugWy7eA
 mqXpDDBDQjqpnVe/2+3rRgNXC+D9lVc5wM/Crc7lxnHYfGvefEpgrbToPUMkEqHGufVu
 mdEV/LGzUd/KfjognKJ4dN7yGBEb4PYtMrnipjASgfAWaB21t93rhzS1U84cXf5UrwJl
 ogAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5a68Ssfv0subu44yDV+0i6fZb0KAFmsXKK77E9xk/Bw=;
 b=bSOvov+FzWOpQe3WzfVX0swv1UUJm9LySVmKCFSZt4Z+O1GoNvH05nGUxyCnJz5hrA
 bIlAC3D0oSgELRXUIaTpe0gX4yNcpm+8ZKPgQjKrDwopLx0gQ7Zantyh4fhbWnAU8LsN
 JG4j2OG5NSdbb6zzPWgTBNbLuSNycMKgXNKYt9GGUpRKqeSlM4yUYD0GCqr/NpzXqdmJ
 o5pk88CKsZjOTEAc0Dj0jIxvJCUdN5u8hP1If4HV4LflLBPTeQwOKzMAsmFnf1REUsz0
 HhtDuw60H3dJ1f4n++g5Q2H330am/3m9cTejFrp6kJfFrZ/yFWPsU9mY+eepcc1+AJHa
 luDA==
X-Gm-Message-State: AOAM532TOnsMdX836N3sVM4CtG+OP87CbxM6Xbap9pExViJj9GbZgYlP
 l1kOGrUod6LXPK6fGFGYxjqaaRq0/5k=
X-Google-Smtp-Source: ABdhPJz4PKGuBeAqGkktOb7hMwhNDokN0GGOgBMGEtWD0YYRp3mewt4mrQGERkg7pYuwftoc7XIy3A==
X-Received: by 2002:a2e:8e78:0:b0:253:c31b:d059 with SMTP id
 t24-20020a2e8e78000000b00253c31bd059mr14607400ljk.393.1653377450459; 
 Tue, 24 May 2022 00:30:50 -0700 (PDT)
Received: from shc.milas.spb.ru ([188.243.217.78])
 by smtp.gmail.com with ESMTPSA id
 b9-20020a056512024900b0047255d21148sm2383734lfo.119.2022.05.24.00.30.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 May 2022 00:30:50 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Tue, 24 May 2022 10:30:48 +0300
Message-Id: <20220524073048.18467-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220524_003053_798208_4CC0548B 
X-CRM114-Status: UNSURE (   8.86  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: DTS: myir-x335x: Add GPIO aliases
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

For the correct work of GPIO driver, we need to define aliases.
Let's add them to the devicetree.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/dts/am335x-myirtech-myd.dts | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm/dts/am335x-myirtech-myd.dts b/arch/arm/dts/am335x-myirtech-myd.dts
index 6ec65e533d..1ea0f2a440 100644
--- a/arch/arm/dts/am335x-myirtech-myd.dts
+++ b/arch/arm/dts/am335x-myirtech-myd.dts
@@ -6,6 +6,13 @@
 #include <arm/am335x-myirtech-myd.dts>
 
 / {
+	aliases {
+		gpio0 = &gpio0;
+		gpio1 = &gpio1;
+		gpio2 = &gpio2;
+		gpio3 = &gpio3;
+	};
+
 	chosen {
 		environment {
 			compatible = "barebox,environment";
-- 
2.32.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

