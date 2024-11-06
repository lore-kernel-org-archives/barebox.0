Delivery-date: Wed, 06 Nov 2024 16:26:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t8hvD-005ZiK-2Y
	for lore@lore.pengutronix.de;
	Wed, 06 Nov 2024 16:26:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t8hvE-0002MJ-Bh
	for lore@pengutronix.de; Wed, 06 Nov 2024 16:26:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kpgbkQ4Is4171eBXMaudfoMzz8Ci5Cg3jwasWhlk2M0=; b=AkRS260RAZSmi1
	tS2EQlm/DosiXzxEX8ugF+xxcCv+RqmtTbQrAtjbbbpBVkJQeQtyRkN81cW5c0r7RqizN8NVkn/BM
	SruFFU6zvWArAIkF13RQU0r3DrsrIJ3FNtdRTfOoTjWIHz0uD2jWrPrSm0biNu7Tlx2M8KptWzZ5x
	uKpm1oCyvOIfg6rQWJBYW8PdJP2ggPm67Scp1CmxHnpUm+/OJFoqPoA4cdYKziNrGCaQ9mJnBEYlR
	m2wSjVVK+gx7hQMnDd4Uavjib57tQfth+lUjOeunZMUpLfVWpmjw+7KytHuDeaLKpYINHg8qLd42J
	2DssruSPvutbtO2kXchg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t8huk-00000003nsX-3kfP;
	Wed, 06 Nov 2024 15:25:46 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t8huh-00000003nq2-1Tvo
	for barebox@lists.infradead.org;
	Wed, 06 Nov 2024 15:25:44 +0000
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-4315eac969aso6341615e9.1
        for <barebox@lists.infradead.org>; Wed, 06 Nov 2024 07:25:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730906741; x=1731511541; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kpgbkQ4Is4171eBXMaudfoMzz8Ci5Cg3jwasWhlk2M0=;
        b=iICqVJ8uvihQdqRasNBpUyc4Vv+qOexnKIpwKH21PNRzeaXGP78k1D+q5uF1l5tfgM
         7XWh9qCXc88+WAUdbnJTh06EZtkotH4dNP/BVCTJm493/MXJH4q2Ztld6YbcjI9EgNfm
         lJHYk0a+N8cc796fwTVTcYGbwYZzIFQIYFIreBiyU/plNIRJuVosPnTddaO8sSxJL/+b
         PWQ/x/58faFQUQFpFpTehP68jq2p67AGWddOSTOn7zw6Keoc0AkOLdIJm5jno2yBT7NR
         UX1PYDjUOXqBixSjH5o+Kvw0eh4zGFbd/WroZ/Uc7rUUQrCTcXt0FspgYyyymmaE3iXb
         4jJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730906741; x=1731511541;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kpgbkQ4Is4171eBXMaudfoMzz8Ci5Cg3jwasWhlk2M0=;
        b=ectHmsWXyoABE6rw4foKzVmcwQMm478JWQoKSBx6eTyP0j6kGplNbkLkyGwg12Od3r
         58//9kS+lRKWM5Yqjm13Az+5OXPgt8ItH+ELKboUCHSXMUNT9GC6g4ZBgvV69i9am6/C
         /ZHZ+DkYnVbC4WRNaxGKdlI5BPmQ913dHb8bcrfFsa2vRpHlSqyAqMaxAC5TLaXf6NiE
         QjW2ttbnTq8hh9Lle0aQdDlkdR9gZ6tvYBxy/cdZeyICR4XdQOSBk/kcto3hgAbSaJ1R
         VNO/fa7E5ICfEzmBhuyfVS5npUNoe3Wuy54wDGsG+urjhTIQIvcPtyCF8rp/rdKwXURQ
         AXHw==
X-Gm-Message-State: AOJu0Yz6Txw+GzSDwhfGvPslHtJicY63ZnYYO07NveKCydTdLANr8VDs
	tXz8SfL86sgsNjg/xnrCdsd4uw1kBRU8jcI9ocfnsUPzLQ52As3v+fB9voNtKlM=
X-Google-Smtp-Source: AGHT+IF0xCm1xW5NO6mg9QsFfrvOaWrMm2BFT/g3gdSol5MoffwXf6leQ6124dN3KMVlIgQZ30oWkw==
X-Received: by 2002:a05:600c:3c96:b0:431:57cf:f13d with SMTP id 5b1f17b1804b1-432a9a7567fmr26984925e9.3.1730906741277;
        Wed, 06 Nov 2024 07:25:41 -0800 (PST)
Received: from kaliss.. ([2a01:e0a:1b8:9000:8227:2526:4e85:b6ad])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-432aa6b58d1sm26781685e9.11.2024.11.06.07.25.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Nov 2024 07:25:40 -0800 (PST)
From: Sebastien Bourdelin <sebastien.bourdelin@gmail.com>
To: barebox@lists.infradead.org
Date: Wed,  6 Nov 2024 16:25:22 +0100
Message-ID: <20241106152525.856201-2-sebastien.bourdelin@gmail.com>
X-Mailer: git-send-email 2.47.0
In-Reply-To: <20241106152525.856201-1-sebastien.bourdelin@gmail.com>
References: <20241106152525.856201-1-sebastien.bourdelin@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241106_072543_437397_DB3B5A64 
X-CRM114-Status: UNSURE (   9.43  )
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
Cc: Sebastien Bourdelin <sebastien.bourdelin@gmail.com>, a.fatoum@pengutronix.de, sebastien.bourdelin@rtone.fr, oss-contrib@rtone.fr
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/4] mci: add a busy_timeout member to the struct mci_cmd
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Sebastien Bourdelin <sebastien.bourdelin@rtone.fr>

This commit extends the struct mci_cmd to add a new busy_timeout member.

Signed-off-by: Sebastien Bourdelin <sebastien.bourdelin@rtone.fr>
Signed-off-by: Sebastien Bourdelin <sebastien.bourdelin@gmail.com>
---
 include/mci.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/mci.h b/include/mci.h
index cd01e2f992..f607ef1b74 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -471,6 +471,7 @@ struct mci_cmd {
 	unsigned cmdidx;	/**< Command to be sent to the SD/MMC card */
 	unsigned resp_type;	/**< Type of expected response, refer MMC_RSP_* macros */
 	unsigned cmdarg;	/**< Command's arguments */
+	unsigned busy_timeout;	/**< Busy timeout in ms */
 	unsigned response[4];	/**< card's response */
 };
 
-- 
2.47.0



