Delivery-date: Tue, 11 May 2021 14:20:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lgRNb-0004wa-2a
	for lore@lore.pengutronix.de; Tue, 11 May 2021 14:20:51 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lgRNa-0002RZ-CN
	for lore@pengutronix.de; Tue, 11 May 2021 14:20:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IUs0TghMY5aphAtzdab1Y9fuy6BpsOua03HRNyJoUvE=; b=BHOJ6I4F5KtO66
	8e/Ye5MDKwepjtTExK7MxPXsHqORkjN0fRsfCCJAYb8djbwobEXUYTZsTHcsSO1vpt1UNc/WjhwBW
	SqRyF2jfJ7L5+H0VLnMupKorRezs4XQHpwHdZnURQrZmH2VV0dE08hm8Jj9wInYclxsYlFnmK6pSH
	A3WYj68gpZcjRtNOTECsYJk7IhMYoe5/8/ewv3suwDXBQSkWW9UjNRbyGoJCT5SWa9L6yVQ086BJH
	VfqYWN6wsb4RdydcFYirTNc16BDkAw9VT6v6FF3/QNKDLLwVgzHWmgQY/QSaEo+pLynMFE3ZWAntS
	V+JERJkLHPGPrE+fwhXg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lgRMR-00HLR9-5F; Tue, 11 May 2021 12:19:39 +0000
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgNtA-00GcEP-LE
 for barebox@desiato.infradead.org; Tue, 11 May 2021 08:37:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=fkElECynjcyKYfTLy9g2jKk4T46lNpSV+P0gZ3ZH4UU=; b=fB5XUJkvRX1+K8u0oD8kh3F2vL
 T+6aCBVayjE8e2U1KKnumsc9mpRt26M1HbfL5el7NNr0Ik0kBUupJRfMFS5DBPvFJNmZG1y/qpLeg
 OD8cOhkuzgqhCjBr6BP/KiMcEZ+Y35sc7SvS9rxJ7oSRpgPjHKEevIrKz/KtjPdpPcIpL2JrqBEJt
 goTFTO64Osm5oZGEjvr/YGs2ZRocvej5iSbUqjCzuCLT0T3fmMwjuo9IS7aMo0flkuNuzx0YmBr6y
 CtnQgVnHODb9ssyJk03WTD/AmFfxWoBfQQMeInIQZtI2gGWesFZYkfWJ7YrA11rbVWT2Og51G5QhL
 MJhRj6sg==;
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lgNt7-009P7s-Mq
 for barebox@lists.infradead.org; Tue, 11 May 2021 08:37:11 +0000
Received: by mail-lf1-x136.google.com with SMTP id r5so10270691lfr.5
 for <barebox@lists.infradead.org>; Tue, 11 May 2021 01:37:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=fkElECynjcyKYfTLy9g2jKk4T46lNpSV+P0gZ3ZH4UU=;
 b=iK7uH0qmmlfg0QDLGoi5c7d4S4dUc6NAmB0acbISr3am3/xRA3LhBKjMTNH2M8+R2S
 BvVBUy02D88KgJjGDr0uv7sSDosALZhOs84OfshzZRgdC00yB3tMCNoSNUbSyrJS0S2f
 U8szbZJp0Q6zqUchxWg3wTwQzcwl5Q5dId3l9+PVX7wIlop3EkwU93Op+AU4STmqUO0o
 akt6pGLssqvrCqov6gbjLwLza8z78PIeZa66TX8l6Zz02eevDTDjlBqF9jNqTej0lv2q
 T4c1yRHfM4S4xmt+PYxsiwXVYGEzrUwYQ9ac7gKDv+lO7g9qPJro7SnYvwcDu+A983jI
 nNiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=fkElECynjcyKYfTLy9g2jKk4T46lNpSV+P0gZ3ZH4UU=;
 b=K9L0cyAHzxPKJ34UcY/OJ8Glm74GkeT9Rs2If2jgar3cSB2zu5keyA6Ksa4Hu0Zr2X
 Yo9JMHVKUxLQ4HEMl32OKLNHKakWGBOGQpXHs6xl3HrexlVU/eCe9VGLRteXB8s9ykqW
 Kii2mPLmTLNfT7gx9dq4X3jfPPljI8Ajk3xbV/rldTXdbWNFEPdTqAmHhrrlBg2YZjof
 9M2RjXThqfS9PaaDjeepXl1Ym4CW3PGy6QMCZJ1uLYZDQODKe+GwKm8hxfL9v+Y7Fb0t
 +ikfhsPqJCSWkHlaUCBCBu+9PVoYH5741ftc2ZBWus3LsSuHQx4hMi6NELatSCRuH2j4
 BIBQ==
X-Gm-Message-State: AOAM530hTmCkY3PKzEhNTRierGpjKqDx3xwLN+my7SaHNVO7Yt4ucgnO
 AhNPJjKak0iT0JGoiPkrwou7sWtUXgdWLQ==
X-Google-Smtp-Source: ABdhPJzXuD2QXi9LTXbnq6bBgwKEGIskTsPUv0iMxNe0FVfvsIao5TsBgfMeet0v8W+ecvl9zQk9MQ==
X-Received: by 2002:ac2:5608:: with SMTP id v8mr19852558lfd.4.1620722227902;
 Tue, 11 May 2021 01:37:07 -0700 (PDT)
Received: from localhost.localdomain (109-252-203-17.dynamic.spd-mgts.ru.
 [109.252.203.17])
 by smtp.gmail.com with ESMTPSA id p33sm2558255lfa.43.2021.05.11.01.37.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 11 May 2021 01:37:07 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Tue, 11 May 2021 11:36:48 +0300
Message-Id: <20210511083648.134890-1-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210511_013709_780962_703D33B8 
X-CRM114-Status: UNSURE (   9.89  )
X-CRM114-Notice: Please train this message.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210511_013709_780962_703D33B8 
X-CRM114-Status: UNSURE (   7.47  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2] startup: introduce global.endianness variable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The global.endianness variable makes it possible
to determine current endian mode from command
line or from script on bi-endian capable system.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 common/globalvar.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/common/globalvar.c b/common/globalvar.c
index a55b38b00f..8bb5015ce4 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -641,6 +641,8 @@ int globalvar_add_simple_ip(const char *name, IPaddr_t *ip)
 
 static int globalvar_init(void)
 {
+	const char *endianness;
+
 	register_device(&global_device);
 
 	if (IS_ENABLED(CONFIG_NVVAR))
@@ -651,6 +653,16 @@ static int globalvar_init(void)
 	if (strlen(buildsystem_version_string) > 0)
 		globalvar_add_simple("buildsystem.version", buildsystem_version_string);
 
+#ifdef __BIG_ENDIAN
+	endianness = "big";
+#elif defined(__LITTLE_ENDIAN)
+	endianness = "little";
+#else
+#error "could not determine byte order"
+#endif
+
+	globalvar_add_simple("endianness", endianness);
+
 	return 0;
 }
 pure_initcall(globalvar_init);
@@ -658,6 +670,7 @@ pure_initcall(globalvar_init);
 BAREBOX_MAGICVAR(global.version, "The barebox version");
 BAREBOX_MAGICVAR(global.buildsystem.version,
 		 "version of buildsystem barebox was built with");
+BAREBOX_MAGICVAR(global.endianness, "The barebox endianness");
 
 /**
  * nvvar_save - save NV variables to persistent environment
-- 
2.31.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

