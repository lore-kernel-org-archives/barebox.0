Delivery-date: Sun, 26 Oct 2025 07:23:46 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vCuAM-00BuZu-2P
	for lore@lore.pengutronix.de;
	Sun, 26 Oct 2025 07:23:46 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vCuAM-0007AM-6W
	for lore@pengutronix.de; Sun, 26 Oct 2025 07:23:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=lO5EQCa1+rNH1s6FMbNLszbViFuwWF0qPV6zUSJX5IU=; b=CfMfmA9JZlwbi0/ksq2z1mPg4f
	0WilCBgP9clvSzs/0C/j832AFsJaNTcZiohR3QYJIjmm7JyQYFMR1xNg+z/MI+IHRkxxJni3cge3b
	kZ6BzLdY+0fNlUDpLwemZJrbKlYibcV07Gfeaz0lNDwnz2jfOcE6LokhGxHe2RL8NuGRIOSKBe4KM
	utsEytoGh7i+MJSF7mNRqq4bai1LEAwEYiF8z4Wl6YMi7J3FwTun5ReWdEgFZoqzoVFUmVzVOEZ0K
	ddochm1xv0CxojMKv6db1psVeCTG02paJNYbQv2lHaYvw68lYnwwUVM08mATHa/WsWIvDrrZWRc16
	CnrjzTZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vCu9c-0000000C51f-1Gii;
	Sun, 26 Oct 2025 06:23:00 +0000
Received: from mail-qk1-x72d.google.com ([2607:f8b0:4864:20::72d])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vCu9Z-0000000C51K-321O
	for barebox@lists.infradead.org;
	Sun, 26 Oct 2025 06:22:58 +0000
Received: by mail-qk1-x72d.google.com with SMTP id af79cd13be357-890521c116fso356967285a.3
        for <barebox@lists.infradead.org>; Sat, 25 Oct 2025 23:22:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761459776; x=1762064576; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lO5EQCa1+rNH1s6FMbNLszbViFuwWF0qPV6zUSJX5IU=;
        b=CEc15W0VQx8uv0DQ0UsUBNGQ8B2zoRD93Kek8HLVFZx4CmzO7By9pFXvT5SrhRhvfp
         Cnv+qKRHI3RnF+AaVYN97QDQxb6hY+TlrRqZFC/bE9LVxdH4vp+QfMbj2gUwB49rfdOD
         NSNDdHKap9ycUTrNtoFbg4LdqoabZif3jja2yIjz3IqZyu3txtIq7GuhrNJWVphu+Prw
         Um/AJdwWOs2aldQ1KvaXLkPcaT/kSTuvbaGF670L9r6dXADik+VErdruDm1h5ftXOOkr
         JN5da2SbDDI8eF/ZcMfdcK1Z8R7C1Z6D8bl1AmXZc0pum61G2trG2Tp98CpKc4srDFav
         TQ0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761459776; x=1762064576;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lO5EQCa1+rNH1s6FMbNLszbViFuwWF0qPV6zUSJX5IU=;
        b=mT3RgXGwhzxzkY0O5uq1BWxDAZVi2Hh1RFkxGER+h+TPQ5ewZest8wOVWus6gl461c
         x+cTuVxj2WOEfoiYjS2LrDfVD3fTuS6z9noMxHjYcz4p1OZdF+8PY//k7LYaOBa0KWEX
         rYaq6OvEk7fhxFyEUTjM8Ho5W8L2LVtKG6uXSrSJumYxGkMZ7OFIakA5KHoBU857jGgx
         gW0W/z+w/miliqBneRhqnDV2Vdi4l3CtTC58S4xV8V1QijaVS7ApK5N1T6IUkyRXDq9x
         ro2UqeRHEwlFNeGvsprihQ9je39K98yE3o6uCRQfCFwrjoIxru2sMSx2gcd0TN+Wnc2V
         xDIA==
X-Gm-Message-State: AOJu0YwfN6ruxLQReaQ/7I9DuXW5tXbI2V7M9mkNoDpIIbc5Ck42KNE3
	IQALT00RJJrS4O31XyWRDUxGeJP1q4MAWH0NImg5aeMqtI8e6eGzrppB
X-Gm-Gg: ASbGncvwQ8NyAaDsZDInSle1tUOoR/3D+dBC7w3KXIN7KvZR06DbZJEJZogZNQx7ek+
	8zYqp7g+w1aVPHJp80WxCIRIK4H9P4RUZXufjklrlvtMHA9RBOJP7gutNzaNA7u9x7U+8JsU1ob
	A9k81cQECYnSRD0vKxkgqsezHGAjUGwtVuHppU+NNtMtOrvHmxfZaI//VUH5b1yMU24ei18jTTY
	PSqcSZHHfOoLhQS8Rlzf+Fu0hHI3xRpk4LhVsn3QS6I8b2mbZyijkNeDAEiP2QTkDr32jQ92rkt
	+p4mGdHtRlW9Fiiy2kKwSZSrQNjazOtT5Uk97hLjXNajr2PSHjV1bqwY+1q5EauLKXkEaXC5geE
	/7p5XWagjPcWBr8v8YDu3H13aOmR23z/tmcxknCdHyAalJBOTtXJKJytf7v39wvfUx+gpgpiHkA
	BgU4hO7s65arSfIYe78gnMwEu8Qnl5
X-Google-Smtp-Source: AGHT+IFxyA3kQP6Zqq4UqTnrtFd007D/QlJ71PG6DSYNsk0uYC1cRHgX/YkXRXeWUWNa9Mi2vc+LHg==
X-Received: by 2002:a05:620a:372a:b0:827:7a5a:2dcb with SMTP id af79cd13be357-8906e5be2e8mr4300209885a.16.1761459775780;
        Sat, 25 Oct 2025 23:22:55 -0700 (PDT)
Received: from Latitude-7490.ht.home ([2607:fa49:8c41:2600:102d:553d:2663:f9e9])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-89f2421ee50sm291722185a.6.2025.10.25.23.22.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Oct 2025 23:22:55 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>
Date: Sun, 26 Oct 2025 02:22:51 -0400
Message-Id: <20251026062251.1131351-1-chalianis1@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251025_232257_766971_B8A6C8D7 
X-CRM114-Status: UNSURE (   8.22  )
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
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] scripts: rkimage: remove twice include of the same file.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Chali Anis <chalianis1@gmail.com>

Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 scripts/rkimage.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/scripts/rkimage.c b/scripts/rkimage.c
index e5b6d61c4a9d..a6dfd2c95736 100644
--- a/scripts/rkimage.c
+++ b/scripts/rkimage.c
@@ -24,7 +24,6 @@
 #include <openssl/rsa.h>
 
 #include "common.h"
-#include "common.c"
 #include "rockchip.h"
 
 #define ARRAY_SIZE(arr) (sizeof(arr) / sizeof(arr[0]))
-- 
2.34.1



