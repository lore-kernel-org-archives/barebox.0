Delivery-date: Tue, 29 Apr 2025 18:16:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u9ndJ-000Y0Q-0E
	for lore@lore.pengutronix.de;
	Tue, 29 Apr 2025 18:16:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u9ndI-0002Ge-Hb
	for lore@pengutronix.de; Tue, 29 Apr 2025 18:16:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=qTcZfoOLhwIMJDR+JlzkXRE6qgShPg/P800fkDqCIZ8=; b=tn18xVzhgozW47+z8hD1QpDi5L
	8gsUFp5K0maEgdo1Q0tYEW8hHZT6fOyxd5dSrya61pLf9a2Vgsj4EDw7WZ9FrQ4aBIKeD6J/XA4ty
	tJwMrqXNcIzG43EMTI7ZTfSgN5gmjWbnfnf9G48Vma5TWjM/TOA0UlKJf6kfHgb83AIcBGFVKbX5K
	jvbCxkvBltFkY4BSdqujHQX5Be8b6R1r701Bw+jCUMlZV28HOOB5PbboQnI/bI1m+lMmGVMulXwAo
	/fSTAzP6B6Q8G/cW2bQ6hoaUfslzZe3QdFdXlqIh2G2vdAK/vKmsh/2ujl+JrHtJ7MkbfC863ssFi
	JjQAWVkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9nd1-0000000AEEq-3u6l;
	Tue, 29 Apr 2025 16:16:15 +0000
Received: from mail-yb1-xb2a.google.com ([2607:f8b0:4864:20::b2a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9mCM-00000009zmR-0MhU
	for barebox@lists.infradead.org;
	Tue, 29 Apr 2025 14:44:39 +0000
Received: by mail-yb1-xb2a.google.com with SMTP id 3f1490d57ef6-e72bb146baeso4996432276.3
        for <barebox@lists.infradead.org>; Tue, 29 Apr 2025 07:44:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1745937876; x=1746542676; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=qTcZfoOLhwIMJDR+JlzkXRE6qgShPg/P800fkDqCIZ8=;
        b=nohwTg4AhYgoC93x4Ckz6WHAawt2Lxz7GLmrW2R6k/nhnNbXvz3npHk1eMHodTn/kB
         IXRqoKv2LNmDdxlXvfX6kJX6iexvrF5YGLz9jJWGEl3jZg0ls+0VtHq3N41Y/eF0UCUk
         kam7MQTGawv62uSSJHQsXogx/UrP1WkNfdLIFANcSl0SM12XqWRYMHOVEKEksD9pejoS
         4TcrH9LX+HPMt4bzJkGQYcm3nhdIBaP1NbXz/WsJ/b5O/9deu/eQ31JSKEt6AKt2b8zb
         aJ1PEMJg6DHRxCYd7mq+xK1N29NH2J1hDfdiRFqENSVu1r0RdbpfS3bb6bl5SdJmQ3gO
         FnrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745937876; x=1746542676;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qTcZfoOLhwIMJDR+JlzkXRE6qgShPg/P800fkDqCIZ8=;
        b=jXXAWYg0WXcSDmdLjz5M1eFuqTeapEIQB52WrnsZThEzmpm9Z4iJp5LYIPRf/OitFH
         BFJvXzz5cEYP2EEY+CZDpmL9VdeSrzdwTLw3ByWkrKfx/xBq8PtUJkXiTzUP/xCOtT2+
         uIVSGNoxjL2wZggOHzgmcWCdXiKoc50hj5w+0s4SSer5f9/K/djR0Y4qfFu5WzfykgyC
         888jUPaX0X0pis4cSZxB/hF4qaMn2TACc76jYvXp9YKwlHlHEv36VxND3SUlVrjy42Kj
         N/zG6U1nPyheD375Hn9E2XJC+YeKHFcv0Bnwg4zNnXMNad4K4lUsFCcA6dkJUrHeU0RE
         +37w==
X-Gm-Message-State: AOJu0YwTmvP+m5wQFfEhwv5fFWzZK25jQozEJqvu4buMAkPrgeVZk7xQ
	ergF+E/eWnmugzsFyr4+g0qXPOpRMEh32FlnriQs35DaOv2uJ02dIF2pMQ==
X-Gm-Gg: ASbGncuvaZ4Gx0KXlNbv3dbbQFFtC7UbvHH91eD5vYyQ2FA58E8Usn68ZiGcGmwXxya
	qxNi6tXJCyj19wbner+9D9SHvsY3jLSt4oljVYT5QsYQYlVEHQGiNBAe7LYueNIWSm2mx6dZn2Z
	Nl3TSBNH5PIJNeHr/Q1EFzWPrWDxyQHxzQ12ce2CdoskihexaRGgQpf7rQeeRsh0pD0M19VJnT/
	Np6U2wJ8DfHgRAAhv0+pjK02DlKMcHrMKs7rZZbBWA05IN5BbzyKFKXAjunqNsi3O+B1kot8uqJ
	xZBi56otDlWlnJ6jZRziM07nZ8Zo036Qr5wjH5muPXW32R013wAyNr6mcMegNlBcyw==
X-Google-Smtp-Source: AGHT+IFAKERrOLcEt65iWlbbn6L3GAPic6JoMUEFvxC8l3rUCXEEGR7EGgH/hRF7wMgeHa3y6ZOhdQ==
X-Received: by 2002:a05:6902:13c1:b0:e6d:ea22:f32b with SMTP id 3f1490d57ef6-e7350039c10mr5397021276.28.1745937876246;
        Tue, 29 Apr 2025 07:44:36 -0700 (PDT)
Received: from localhost.localdomain ([95.161.223.108])
        by smtp.gmail.com with ESMTPSA id 3f1490d57ef6-e7303eaf9f2sm2774108276.37.2025.04.29.07.44.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Apr 2025 07:44:35 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Tue, 29 Apr 2025 17:44:22 +0300
Message-Id: <20250429144422.142744-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.38.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250429_074438_122147_F13ADFB3 
X-CRM114-Status: GOOD (  10.23  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH] AT91: bootsource: Remove zero check of at91_bootsource
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The patch removes the redundant zero check for at91_bootsource
before calling bootsource_set_raw(), as at91_bootsource == 0
is a valid scenario.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/mach-at91/sama5_bootsource.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-at91/sama5_bootsource.c b/arch/arm/mach-at91/sama5_bootsource.c
index 0d91f5fb5a..db96332bc5 100644
--- a/arch/arm/mach-at91/sama5_bootsource.c
+++ b/arch/arm/mach-at91/sama5_bootsource.c
@@ -28,9 +28,8 @@ static int sama5_bootsource_init(void)
 	else
 		return 0;
 
-	if (at91_bootsource)
-		bootsource_set_raw(sama5_bootsource(at91_bootsource),
-				   sama5_bootsource_instance(at91_bootsource));
+	bootsource_set_raw(sama5_bootsource(at91_bootsource),
+			   sama5_bootsource_instance(at91_bootsource));
 
 	return 0;
 }
-- 
2.38.2



