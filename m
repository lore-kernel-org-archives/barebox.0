Delivery-date: Tue, 08 Apr 2025 10:45:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u24aF-009uie-2z
	for lore@lore.pengutronix.de;
	Tue, 08 Apr 2025 10:45:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u24aF-0005MI-DG
	for lore@pengutronix.de; Tue, 08 Apr 2025 10:45:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=FrSzTgFRBYhYyOtxOxbZbC1Gl4I8CMggcOcpBYiRD7I=; b=ConniEC8M15bBJI0TNohxASRij
	/LDhB4mYKu0JkkuRfNsk2CeKbR8mVj4z+CZPDX1Ak+H33bhMZBUS/7DZdwi2q6Fyf6+JopMU2xW6C
	riuVY/04okZOTptr3Ilvb7j256Xgk3I+BdXWQDLOlqlfDXf5xclYEs3Q53QwgiGSQG7NaDhBPknqn
	HXlTJeL1MOZuSXdRbT3pZfwnnv9K99Di2ZxuDukG7mQ/NCLCxZTnGZ5xgn2UZV1hKYbFSg0+sFvqq
	z4k4NspwjwBqDIwbTxiDIIFFLZisZ1x0IfBZbFDqNyAqeVUcgJl+IPjwNR/a0fSeL0tTYua4nMpgm
	ezhjLnwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u24Zb-00000003IO8-49It;
	Tue, 08 Apr 2025 08:44:47 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u24Tt-00000003HQF-0rHY
	for barebox@lists.infradead.org;
	Tue, 08 Apr 2025 08:38:58 +0000
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-54954fa61c9so3170089e87.1
        for <barebox@lists.infradead.org>; Tue, 08 Apr 2025 01:38:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744101531; x=1744706331; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=FrSzTgFRBYhYyOtxOxbZbC1Gl4I8CMggcOcpBYiRD7I=;
        b=S9w9UHPf2yyN6gPDgxHE4l34OMqIBXIgJBJqQyZAZ0eNgES++gFKKZFdTXOHxMqH+H
         bpWDBjaI9bEZwkbztISpugA8daIq9+u1byIZCPOIStUpiahxAU4duTLl5De3s9d2K+YF
         tAX0V/P2dAunYuIJmBikJE/DES+8Mekza/lUSDJrEy0JX8HQChroSw1Lc0wt4+4io9KQ
         nBxZnuXGcJQN9VlVxc4Bd6kuk+iMQxzZSsTSuLu9I+rSranhf+uLsXEdq/Oto1sUxrkY
         GjQk6t4Jvq9i+Rzvvi9dV35gQVNpY7U617ayJnwTDFFFzO0zTSGA3/3ure5nN8sxyziC
         +a6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744101531; x=1744706331;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=FrSzTgFRBYhYyOtxOxbZbC1Gl4I8CMggcOcpBYiRD7I=;
        b=WyNWAenyKq8mzKBqOOrSsC24vbI1DCavfoXprmeeQJXyumpmCCtvFWg2vm8Ihqb3l8
         cY8u6r1JZUN9J+0Uw/YJHS+qNFE1CVJzVbl9ZDnxsnd4eNwUeKaYHdPe3T6tJ/DuOKbt
         K+Pgxs+2csD4ie2zgXkeLkIeGL4K1YIHCmrCd29bR1AqSFNwB99Yd7jvhxt/U39XW+VM
         qm9dJbGSHrQ/dvVIKLqbTnf7SyOlju7F/y59hP/HZ9P0tqovV6JGI7jbfXShuDAeQ6ry
         j17HR3SG3ooLiulfaQNZcaC8ZHDtxQrwz0UByb0wfViAI4PC6CRQiS7gBNxum2ttMXyp
         lGtw==
X-Gm-Message-State: AOJu0Yxlz0PyDJx0xYzS8Mmrpm2HqykArn/izC1tWHzDiayBhCdCiH7A
	XujGCOPWHkjVMMCS7gGLOveAPjKJGUMBPFeAozq/G0gMiLpPA07rfKWHrQ==
X-Gm-Gg: ASbGncsLrdv1A2/xNPOBMtNT3oRgUeZFycDjFvI3wZsu4WTS0nLO8coknDBwmypghhg
	IcP1U8JNLj1xO4g2YM2covS50t7WujY7izj/Cr+ynXqp453zCGhmnnXlWZ8T4ip5aXbycHdtVqS
	gNPqbv+2SAfxGpDokm6Jq3nLKJJi7Hn0TOMka1YXJby/kZqpizmWOb6C/arePpsXeT/WnNdW9wD
	j8YQHFV/JdxWYoDnTur+WY5Q5L0RCBqpDcSpqB2FK5K2v+JRCtE9e7OQ2J2fdmQVkZwgojYSQOn
	eHyS710O/e2abo9yA0RemIyEl06hE7o4Nq5b2kVqDIzA/YVeS61TANbz6Vgaa8wITo8=
X-Google-Smtp-Source: AGHT+IGTktOu2cWo+qWet10aR783xl/MwQIdTov+neGrLYMCoA2XsBqGG7jkmYj8pbsSkbsNgSi9tg==
X-Received: by 2002:ac2:4e0d:0:b0:54b:117c:1355 with SMTP id 2adb3069b0e04-54c2280957amr4210132e87.55.1744101530476;
        Tue, 08 Apr 2025 01:38:50 -0700 (PDT)
Received: from localhost.localdomain ([188.243.23.53])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54c1e65d725sm1451535e87.197.2025.04.08.01.38.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Apr 2025 01:38:49 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Tue,  8 Apr 2025 11:38:40 +0300
Message-Id: <20250408083840.72085-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250408_013853_257296_1F8128AC 
X-CRM114-Status: UNSURE (   7.74  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] firmware: .gitignore: Add *.sum generated file
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 firmware/.gitignore | 1 +
 1 file changed, 1 insertion(+)

diff --git a/firmware/.gitignore b/firmware/.gitignore
index 8f9a956eb6..8e64a770ed 100644
--- a/firmware/.gitignore
+++ b/firmware/.gitignore
@@ -2,3 +2,4 @@
 
 *.bin
 *.bin-optee
+*.sum
-- 
2.39.1



