Delivery-date: Fri, 28 Mar 2025 07:32:31 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ty3GZ-005BNo-1b
	for lore@lore.pengutronix.de;
	Fri, 28 Mar 2025 07:32:31 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ty3GY-0003Rz-Sk
	for lore@pengutronix.de; Fri, 28 Mar 2025 07:32:31 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=5yGl6F/ilgnsZF7q3bPA4NMeqPYtCJeNzoOf7O11WIo=; b=Ye/xfI0yjs1aqoYMwkmNXHdJUt
	g6M/ZTJ4u7Mu4DdR0pON2IojKX8PAgkBxVTKTMt52zYlp7r2Ywv2exriy6M+lsKGWUpw+pUI4uAWV
	jW9De9X1hE+cRkAnDZWGl4MZHRodOFyq1B8+Lt/jqBAmQvEU/9kWlzsIM684PFt+aweMZk5cLtTCg
	2mZCICs/K8FR+FBRUg6kk99eVRJEkG78gBRM6C3Dk71lkfAaGhrqgb9p3ruHs8MFc/Q/ccQz+tngB
	w1033CCQurqiHihv+kIBy42K6Mk1gCDMiIO8QHfK9jciuhE7A6R+8NkC6u4XPFfzl/8UKPVjqbXUb
	LMoj7gCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1ty3Fl-0000000CjDZ-13ld;
	Fri, 28 Mar 2025 06:31:41 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1ty3Fi-0000000CjCr-3yLM
	for barebox@lists.infradead.org;
	Fri, 28 Mar 2025 06:31:40 +0000
Received: by mail-lj1-x22b.google.com with SMTP id 38308e7fff4ca-30613802a04so19369931fa.2
        for <barebox@lists.infradead.org>; Thu, 27 Mar 2025 23:31:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743143496; x=1743748296; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5yGl6F/ilgnsZF7q3bPA4NMeqPYtCJeNzoOf7O11WIo=;
        b=brV0GnTUiKqKVccwtKVFW5mBEF7j1hyDUCEk/V6tz6EMnNhu9LYs0Zri3BBis7Iwh0
         6ILvzQAYzrhZO1GVKXSv7yTf27XNOlLXlO0o0yB7QNArMZCvvs6b0nsabIV61YoY/eDE
         cHKMWRH89Jbgrg7VnIlqXkz2LTZGGTUJY7FwbfQ9ktzegokY5I+Bda5tk4kjXwWVlJYG
         zBVQbkLfOygvVHAVmplTfTQ3WNNTlI4DHKLc5sD85oWhamhCI8xvTQXj3GJgkvf7bqwC
         roEXi/5TN+hZ+6vOAd5PMwp+G5Y41XWaIuWziiFPBPxv87zoQBonbsDmHFTHzJpQpbC4
         kR1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743143496; x=1743748296;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5yGl6F/ilgnsZF7q3bPA4NMeqPYtCJeNzoOf7O11WIo=;
        b=mK8LrD99FWOAiwnLcpQJGBaiP4RiKcp2wYhr575Fs9WfDhiWxWTUEk1ah2/+F/zciw
         sKmJPx7IdmEjBRr2nBGAmTXwOKfI1oMlTsMkFAZ2VUk8L2QqWWlHZ4WsPi8TBkuqjCQX
         Bm7EfhcaQ+u5aYjkKmKbn8Hye9GKnxMBteaU5dmskbY5fsk+nYrzuN/pUfMxEitjXj/+
         W4liwdsWPLlA6FwAaoP/2UWg07CcnB8tiZxPJuy3wAoTGoGRII7theyheJEu5EBmHQtq
         T+GVCyLWhk/CswZM3DCf9ie7n8+8IcPHgM2GhgJqlFG8I7KdUL6rKfT8PX4cNncWPgY3
         jpqg==
X-Gm-Message-State: AOJu0YyN42bLzArKM5lM0YVHU5kbRpVvaz3lmcYChlY9yGzt3PGy5MZL
	8gW6EAdBP6NvMntLzFfx87Hq5GitqjmsNwAAPYhVpt2Sra3qKZZ3GC0UMA==
X-Gm-Gg: ASbGncu53LfzgDbwkt8ylmWkdUQzBYJU7U9kkfkQqEfG65/q+LZKmLuSRJpkVXsITPB
	2VT4MlYCAk8jtK1/78Ta06Udie8sZYnVWgay8h8HgF92DmZIiCmOqt7e4asDsLehC+wdgd/paqX
	5leYIv0Am9n1zRxi4t1W6Jp0qDATdnqaNa7M91fNgWgwOqjrjLgPXECzkLVp0+vh6Cywt8W5Jhp
	bRMfDN/O6ES7b23yAgK0URszQHA+K5pThubcm3przfKnfnjoslMucoWCEwFeBt7KwuooJtINkkh
	jvJs16IMsNJ6cyr7i9918cmD6lT0vYLXslRYHeQuVgEotzpCIuAzXTUrX2fTaz4Mg3g=
X-Google-Smtp-Source: AGHT+IEesr0ekVe0tfytPtLJy/laB1Lpo8YeMauo2VLuEoiXL5PmQaeDHxqXi5VPIetujUtCz98EDw==
X-Received: by 2002:a05:6512:1590:b0:54a:cc09:eacc with SMTP id 2adb3069b0e04-54b0124358emr2672868e87.39.1743143495505;
        Thu, 27 Mar 2025 23:31:35 -0700 (PDT)
Received: from localhost.localdomain ([188.243.23.53])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54b09591554sm194355e87.196.2025.03.27.23.31.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Mar 2025 23:31:33 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri, 28 Mar 2025 09:31:21 +0300
Message-Id: <20250328063122.36276-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250327_233138_984561_4439C837 
X-CRM114-Status: UNSURE (   8.57  )
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
Subject: [PATCH 1/2] regulator: core: Implement regulator_is_enabled() call
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 drivers/regulator/core.c | 11 +++++++++++
 include/regulator.h      |  6 ++++++
 2 files changed, 17 insertions(+)

diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
index 2c3b009ea6..c9e30ab3fd 100644
--- a/drivers/regulator/core.c
+++ b/drivers/regulator/core.c
@@ -610,6 +610,17 @@ int regulator_disable(struct regulator *r)
 	return regulator_disable_rdev(r->rdev);
 }
 
+int regulator_is_enabled(struct regulator *r)
+{
+	if (!r)
+		return 0;
+
+	if (r->rdev->always_on)
+		return 1;
+
+	return r->rdev->enable_count;
+}
+
 int regulator_set_voltage(struct regulator *r, int min_uV, int max_uV)
 {
 	if (!r)
diff --git a/include/regulator.h b/include/regulator.h
index 9785b8ac07..5fdf1602dd 100644
--- a/include/regulator.h
+++ b/include/regulator.h
@@ -217,6 +217,7 @@ void regulator_put(struct regulator *r);
 struct regulator *regulator_get_name(const char *name);
 int regulator_enable(struct regulator *);
 int regulator_disable(struct regulator *);
+int regulator_is_enabled(struct regulator *);
 int regulator_is_enabled_regmap(struct regulator_dev *);
 int regulator_enable_regmap(struct regulator_dev *);
 int regulator_disable_regmap(struct regulator_dev *);
@@ -285,6 +286,11 @@ static inline int regulator_disable(struct regulator *r)
 	return 0;
 }
 
+static inline int regulator_is_enabled(struct regulator *r)
+{
+	return 0;
+}
+
 static inline int regulator_set_voltage(struct regulator *regulator,
 					int min_uV, int max_uV)
 {
-- 
2.39.1



