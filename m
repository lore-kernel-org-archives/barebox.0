Delivery-date: Thu, 20 Jun 2024 09:50:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sKCYe-0098Yy-1A
	for lore@lore.pengutronix.de;
	Thu, 20 Jun 2024 09:50:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sKCYd-0001kV-Rh
	for lore@pengutronix.de; Thu, 20 Jun 2024 09:50:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=fNLwM7aQWyMbDOUJpl3/8o2rx9lMUm8Em/Y0rYOFCJ8=; b=sZQMEV91tiOZfiA9p6Xi/jvwFF
	urlvOUnoTpXK7lbbIOoFdhJrMEyKsDCuVHa0VTw9bh8IYx5m4ky6ubhZYyK57sFdw9wgGFDnqiXzb
	z7lCXLQ1t88ricI4CM4O8h41O2I1DqsMg8IzMCN5ScRPlvJVDRqgPjCq0LLKn7GrFWhY3Sugfa4ER
	nGd58DE9GmL0LLnM35LYVkdX05KNDvkaBR0e83fCaVmlIBCm07nEB8BKkTrqtyDq/KpM0IqHw3aIc
	mnwbnGxY/cGG8BixpAC/7s+4Xs54cD9gSH/L2M1YJomd6QQ1kI/K0AD3OhSX3YbXCGi3j0ck0kVXp
	WSrWnVTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKCY8-000000042H8-17UK;
	Thu, 20 Jun 2024 07:49:40 +0000
Received: from mail-lj1-x22f.google.com ([2a00:1450:4864:20::22f])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sKCY4-000000042GW-3aJv
	for barebox@lists.infradead.org;
	Thu, 20 Jun 2024 07:49:38 +0000
Received: by mail-lj1-x22f.google.com with SMTP id 38308e7fff4ca-2e95a75a90eso5189661fa.2
        for <barebox@lists.infradead.org>; Thu, 20 Jun 2024 00:49:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718869772; x=1719474572; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=fNLwM7aQWyMbDOUJpl3/8o2rx9lMUm8Em/Y0rYOFCJ8=;
        b=Qp7UHde2swq11SYg2AI13azvU0/N/gxr4fRK7iMOzhM+a+CdWQeIjpr2s8G86XiRB8
         f0IjFgSek8peR1DorsDqWsdNknZ9HHt9FG7Jn7OLyGVlOtxiKKvizlUSQepvnNz2acVC
         V4kSkdMZcVJjtIKRJSmwuKMveVL5XAzC2KjiHkL51YAJiOx83X5bbDvPWt0WVWLmevmv
         UdQ0GQjFeZ5G5A+8zj2/Q6lcl6NjsW2PwU+XB99pjeas3Wxzqe/zd/uMXKD3DgQC7BDF
         Lq9/n7Dg4leAWCD0wfIB6u7eD2EqUyfmCDeMJTjyG9/5FDOjH95/lh8X50y6bDBhZ2Ho
         Bjuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718869772; x=1719474572;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=fNLwM7aQWyMbDOUJpl3/8o2rx9lMUm8Em/Y0rYOFCJ8=;
        b=Fg/p6MawXRtEHXC0PdyYoz74ib9cuBOGyRlejjL6Bvgw5HdgdOZDnfBdDJe8P3N+1+
         H5J+Ki2+42m2i6vUPKRK9xJ1nhsHc8fTpuGQPDwkOnxTl+s6DnT+N/tJ64VBBhZ9dA8b
         PgS97j3RTzVv4hkoS15irTIuYFeykEmc2ICoYRBLwzuc6Fv2icuKmPVM6tzc1gtZl89D
         cWCK3ThmvmTlzSeqZK9iEDDdIj9x/tiixtIeXiRJykQXKYCWJlV5tUH1jXr2SX97wkv3
         8iAUGkNP7+/JUvW6BNVWN21bjK+Knh1k0WSQU01pqKhy1gEpKa/cFEvymZKVRuu7cHJJ
         cM7g==
X-Gm-Message-State: AOJu0Ywhr78W6C57nSUBfXccIpHFMAzLGlDxT7wJYd89905Gh957RFLr
	4eXHV+oO+HjBJ9aYFqI9dtfJc+YI0XFtB4KB9y7klvR08vhlojUrDpr1Aw==
X-Google-Smtp-Source: AGHT+IHsvyOdOqcfVNv0zkkhzvPLCZa4nDucH4dvvKO0SGsbrEWpW5/9wC4NhBEi4k0v9SySPr7kyw==
X-Received: by 2002:a2e:9257:0:b0:2ec:36d5:45fd with SMTP id 38308e7fff4ca-2ec3ce94035mr29939951fa.22.1718869771944;
        Thu, 20 Jun 2024 00:49:31 -0700 (PDT)
Received: from localhost.localdomain ([188.243.23.53])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ec21fb6523sm15502941fa.53.2024.06.20.00.49.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Jun 2024 00:49:31 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu, 20 Jun 2024 10:49:20 +0300
Message-Id: <20240620074920.14780-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240620_004936_918784_6F755DB4 
X-CRM114-Status: UNSURE (   9.83  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] mfd: rk808: Fix poweroff handler name
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 drivers/mfd/rk808.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
index 77493a7b5b..e9a1779514 100644
--- a/drivers/mfd/rk808.c
+++ b/drivers/mfd/rk808.c
@@ -362,7 +362,7 @@ static int rk808_probe(struct device *dev)
 		return ret;
 	}
 
-	rk808->poweroff.name = "stpmic1-poweroff";
+	rk808->poweroff.name = "rk808-poweroff";
 	rk808->poweroff.poweroff = rk808_poweroff;
 	rk808->poweroff.priority = 200;
 
-- 
2.39.1



