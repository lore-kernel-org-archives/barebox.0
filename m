Delivery-date: Fri, 21 Jun 2024 07:34:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sKWuR-009elo-2S
	for lore@lore.pengutronix.de;
	Fri, 21 Jun 2024 07:34:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sKWuR-0001pk-5K
	for lore@pengutronix.de; Fri, 21 Jun 2024 07:34:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=yWyzymUTlYKIyWv2Mo5jeP2ZYxZOwSNPgNH+JAqbhOA=; b=qWFKdI9fSCAtP5Dqc2pNNhnCAT
	qjwVSKyarFY9dIS5u+qlbTz665mZJpdeguJbBDktQOYhdrwp0QOp/Z+Co9U5R6WJh/nozL6qH2kj8
	oIUKbfqtZx8A10y+qlLh2wOFNzJ3j9Ie3FpMEc1BWkTHE2OW5ts6u7Q3r4o0VOIUt0FxkfH1wF2YC
	x0W61ZfLj65Dpe7x8Mi8YXRPQEkivDiPj0UmwtopqEBsvYg4jZIymggoeyU/oMHF3yOHkh6aS1bkE
	kHmpvJ1RPVY7stmdGnjy6zBtEr1V/TQA+ODQWNJghmbc85SzbkO5NJ++yftfvQvhZG8agUkyY0Drp
	NR0vWoRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKWtr-00000007maD-48W3;
	Fri, 21 Jun 2024 05:33:27 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKWto-00000007mZR-2dTk
	for barebox@lists.infradead.org;
	Fri, 21 Jun 2024 05:33:26 +0000
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-52c815e8e9eso1672000e87.0
        for <barebox@lists.infradead.org>; Thu, 20 Jun 2024 22:33:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718948002; x=1719552802; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=yWyzymUTlYKIyWv2Mo5jeP2ZYxZOwSNPgNH+JAqbhOA=;
        b=Mhqd6mKHkovSbDCOZjJtFIy4fUbVRlNI3S+Dfi60DAQRE2L54q8zEaSBbOeWpvfy1S
         ygZut6/clLpbPdh4nqyKi63CQXKI4v5FgG0bIUyleLpOSZeBs3MZg2FozhM4oOKlZzyC
         UoW+BKN2+eaJTfAXXXAbQIQSd34MLlltlTUINbWZVnxA/4X6FfQWh3gCkvYOl+4RHcbT
         oTgE5YRVoa17OTror0GFCnkvpOwCv9xCldVBnSpc51lRrfoT+HglVHBjJj3I8Ybt+yzz
         Z9sOHp830wNi8h+EkJSpOgHAiqQ9noQHC1MSnu78bHm3tkWy8VEG5aFOrUOYXcO4/SqB
         Wq6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718948002; x=1719552802;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yWyzymUTlYKIyWv2Mo5jeP2ZYxZOwSNPgNH+JAqbhOA=;
        b=W6WroDlryjiurN2JK/BKTY2s/unUcciJCnsiovLJT4VfmLqQ2t1mlK5CJMfyrVoayx
         CQvwTzF6lx42ANsy4GAoeC+1jcFHPLgC3bcMxC0prrrzZJtVrLoE2PZz0Dm1BOddvmV2
         unjffPta6v6/x6PCvsI+dbNw5Ot6gVDEaui8qTieh2V0O9mWygc4e90VDWEJAj7T3SCX
         EakZ/twB+FQuyQqDcnoPUiGY4FXpof9u2/VjMHLZ8Jv+jnMRQ6P0oWs+wmfRyqj/K4Z7
         85/bmN2fzlPIOkjBcVtlWYhv5Djbqi57FLp0MMMdWBHZXk5PEnlPkUGDP1xxscq5BVCf
         ojpw==
X-Gm-Message-State: AOJu0YwI4Q6yPLmBQaManY9BELGa6dn6jlJpqR3cdtZD5kKmGgdgqqdQ
	C6CcNM/KYWMEEOVJHCFD0RGjSeGQgLzSlw3gFr6tWAkK1iEUOKBnjP9I6A==
X-Google-Smtp-Source: AGHT+IGWNLs1ncLferpwSflWdEBc7u1GDBFHVQcy1KEHOU9jhSRboLbsPT5hFWgphNbHHTpJwqTFfw==
X-Received: by 2002:a05:6512:3f13:b0:52b:59f7:7602 with SMTP id 2adb3069b0e04-52ccaa2d630mr5196149e87.8.1718948001343;
        Thu, 20 Jun 2024 22:33:21 -0700 (PDT)
Received: from localhost.localdomain ([188.243.23.53])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52cd644f63asm90242e87.288.2024.06.20.22.33.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Jun 2024 22:33:20 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri, 21 Jun 2024 08:33:11 +0300
Message-Id: <20240621053311.12187-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240620_223324_751936_C6C4C551 
X-CRM114-Status: GOOD (  13.95  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] mfd: rk808: Abstracting childs from the interface being used
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The patch is part of the preparation for adding the SPI interface support.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 drivers/mfd/rk808.c                 | 2 +-
 drivers/regulator/rk808-regulator.c | 5 ++---
 include/linux/mfd/rk808.h           | 3 +--
 3 files changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
index 77493a7b5b..adb9d8ca0a 100644
--- a/drivers/mfd/rk808.c
+++ b/drivers/mfd/rk808.c
@@ -330,7 +330,7 @@ static int rk808_probe(struct device *dev)
 		return -EINVAL;
 	}
 
-	rk808->i2c = client;
+	rk808->dev = &client->dev;
 	i2c_set_clientdata(client, rk808);
 
 	rk808->regmap = regmap_init_i2c_smbus(client, rk808->regmap_cfg);
diff --git a/drivers/regulator/rk808-regulator.c b/drivers/regulator/rk808-regulator.c
index adb0262314..b361dae8cf 100644
--- a/drivers/regulator/rk808-regulator.c
+++ b/drivers/regulator/rk808-regulator.c
@@ -12,7 +12,6 @@
 #include <driver.h>
 #include <gpio.h>
 #include <init.h>
-#include <i2c/i2c.h>
 #include <of_device.h>
 #include <linux/regmap.h>
 #include <linux/regulator/of_regulator.h>
@@ -770,7 +769,7 @@ static int rk808_regulator_register(struct rk808 *rk808, int id,
 				    struct of_regulator_match *match,
 				    struct rk_regulator_cfg *cfg)
 {
-	struct device *dev = &rk808->i2c->dev;
+	struct device *dev = rk808->dev;
 	int ret;
 
 	if (!match->of_node) {
@@ -935,7 +934,7 @@ static int rk808_regulator_probe(struct device *dev)
 		return -EINVAL;
 	}
 
-	ret = rk808_regulator_dt_parse(&rk808->i2c->dev, matches, nregulators);
+	ret = rk808_regulator_dt_parse(rk808->dev, matches, nregulators);
 	if (ret < 0)
 		return ret;
 
diff --git a/include/linux/mfd/rk808.h b/include/linux/mfd/rk808.h
index d8e465f885..7804ea80f6 100644
--- a/include/linux/mfd/rk808.h
+++ b/include/linux/mfd/rk808.h
@@ -707,12 +707,11 @@ enum {
 	RK818_ID = 0x8180,
 };
 
-struct i2c_client;
 struct regmap;
 struct regmap_config;
 
 struct rk808 {
-	struct i2c_client		*i2c;
+	struct device			*dev;
 	struct regmap			*regmap;
 	long				variant;
 	const struct regmap_config	*regmap_cfg;
-- 
2.39.1



