Delivery-date: Wed, 19 Nov 2025 19:54:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vLnJf-002kdt-0z
	for lore@lore.pengutronix.de;
	Wed, 19 Nov 2025 19:54:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vLnJe-0002CG-Pc
	for lore@pengutronix.de; Wed, 19 Nov 2025 19:54:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=9s6Zq17BZkOudmMuhTRVv2CVdWzubIPW33gGH3qn36M=; b=e3Ayr9cD+6ns9LnvTTZuKTVHO9
	u0iyBeYjBUAu1cXnk61rbDR9ovrFlrIq7f679584iifTy7Jvn562PHHjID+Gvm7W4NH9hRjJxX2cZ
	9qwfLJbv/s6rNuyalltfTWoHFRLeX3cq0Tez6cl82BF8NdCkeSgLfq1xLb4Yba/toNy0s8lqwllnQ
	rHCINGHUjslmjXGB47RLyIuvZNwIt3EjZnsvHpwCrbzwqpJQV5W9kPRWPGwLJnk3vzsAN8EWfqcoH
	9tnEmEohDHSXBaeQw3pi63mflH8j92O8TL0SPfW1XtNZEJYXGpaQKRfpEFlVX/X8f1tPWjP7/NmGa
	mwSS4sww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLnJ0-00000004m3E-1222;
	Wed, 19 Nov 2025 18:53:26 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLnIx-00000004m0y-2WAY
	for barebox@lists.infradead.org;
	Wed, 19 Nov 2025 18:53:24 +0000
Received: by mail-lf1-x132.google.com with SMTP id 2adb3069b0e04-594516d941cso1066e87.0
        for <barebox@lists.infradead.org>; Wed, 19 Nov 2025 10:53:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763578401; x=1764183201; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9s6Zq17BZkOudmMuhTRVv2CVdWzubIPW33gGH3qn36M=;
        b=HCST5cBZH/v0k6IptCHek4lNJRqMrN+1GGZ7zYrvu4tGM/qFCjXNIyNs9MJp79Bg3k
         Ywr8aNsskLu6K9oxAz9cmtIvDFQ5GxzEYOd7tOC/kvzhtFVM/CE70nJOsEd2v+826tNc
         UBJ7wNNdwUK4zSc9DFh+fGyWB2gP8KM28oVOoy1ZEpxgE1DUXAjjzeWEgJzNylflY7L1
         te86yX8qC6/YzQCDgIFFS+xwPQNxaVVaCnB9oCaOYUmw+Yh2NboWb5r1N5bDO1WKzSQI
         xef6x8YLbcuIv8FsP2slUYyu69P7lSDE3HKRUWoQpz8vV8lWIvGlUe9aFAxIDKrAYPzv
         9lDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763578401; x=1764183201;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9s6Zq17BZkOudmMuhTRVv2CVdWzubIPW33gGH3qn36M=;
        b=qijME7WGi3rtUHAaa3J2Lq4Irz/57B9g2SErJ52utEtVog5jEjZmKNcj0ed8LK/wd0
         sz6lBSfA4t3YQ+mHfEEdWVQ5YPoa66oOF+qWKYy7hP5eIyhen4C4tcORHftKm1wwSsyJ
         rqag6NC80U0XUq5BIa/M3bntEYOzOJwVmcr4UyM75gz0snmYeDS3UHoJ4GCbmsVHZB37
         EGkr5bYp5ErJBzVT6bPGUOnxfm5XsbVlWIejY3SImC/NXfL1HryM3yYtk/NT8AT8AGSw
         M6v8cReWtMTJ474WPkqyvQjau1/255dpa74TdQXeIuteSMtKdiLqmbgVdPROE1mzDU+u
         pKkw==
X-Gm-Message-State: AOJu0YzKBVxx0dCbkwRbuDu1i/84aCyffnq/GHc6HMzHksmihczIoXOw
	0Lecg8+pUll75Zj3APkXKaEtr4SDk2TUsUqIYZOKOBCLF9sX31rg359HX82VAw==
X-Gm-Gg: ASbGnctrmjDDLn2frav4uDH3qnlWoTDPzMTocRbXAy52xdswBJwRyfXuUAw7VTvgEtC
	rDeVWo38sDsoBo7qyO5hKn2CBvzbfqtaPkFJl825g06kngqmMl3V/Bka3OgzHHPPq37lGVogf8j
	wMVvND3VML42Dl0XujhSvDLgt5KP3wGloarSmZFm5TOkckYskb0+im06danxBtTYNzQtgCBuIAV
	cc2Hi7L9wpPnDfh91mbfZsJgugfbqFZGwJqLc98eh726fyYSU+r6GMb7Ym6TPK8MA5d/etP0HFr
	45HOeAZKYmj9SC+6JajwUmD8Zj7jr44WGTQa87sRZyOJNJ5Oqg5SWWzQcrk9EisYWEO3FWI9XpT
	rXq0/qbmDriYvBeTUvNUAr3mnPzhEcyN+ZWF8ZyC+jha6+Dmc3iZaXTx/2kk7oVSLeenI5rdsHO
	jBsClP5UfvQctShQwa0kY7yiejp1Vu9UiGL6w=
X-Google-Smtp-Source: AGHT+IHJweQXqVrXcMriAzTMhb1QApCneZAlzsMorLHNFIZxF4Pejvnw78wNef9aNcKr36zSaja2Xw==
X-Received: by 2002:a05:6512:b02:b0:595:7e01:6b3a with SMTP id 2adb3069b0e04-5958419d27emr7754804e87.14.1763578400779;
        Wed, 19 Nov 2025 10:53:20 -0800 (PST)
Received: from localhost.localdomain ([95.161.221.172])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5969dbc5e07sm40610e87.83.2025.11.19.10.53.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Nov 2025 10:53:19 -0800 (PST)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Wed, 19 Nov 2025 21:53:07 +0300
Message-Id: <20251119185307.931800-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.38.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251119_105323_672799_64EA0C1A 
X-CRM114-Status: GOOD (  11.53  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] commands: truncate: fix multiple file handling with relative sizes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Fix bug where processing multiple files with -s +SIZE option
would use incorrect sizes for files after the first one, because the
size variable was being overwritten.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 commands/truncate.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/commands/truncate.c b/commands/truncate.c
index 5c6d74257d..83661fbaf6 100644
--- a/commands/truncate.c
+++ b/commands/truncate.c
@@ -59,23 +59,26 @@ static int do_truncate(int argc, char *argv[])
 			continue;
 		}
 
+		off_t target_size = size;
+
 		if (modify) {
 			struct stat st;
 
 			if (fstat(fd, &st) == -1) {
 				perror("fstat");
 				ret = 1;
-				goto close;
+				close(fd);
+				continue;
 			}
 
-			size = st.st_size + modify * size;
+			target_size = st.st_size + size;
 		}
 
-		if (ftruncate(fd, size) == -1) {
+		if (ftruncate(fd, target_size) == -1) {
 			perror("truncate");
 			ret = 1;
 		}
-close:
+
 		close(fd);
 	}
 
-- 
2.38.2



