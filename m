Delivery-date: Sat, 15 Jun 2024 11:30:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sIPk6-006PIj-0B
	for lore@lore.pengutronix.de;
	Sat, 15 Jun 2024 11:30:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sIPk5-0007IE-Du
	for lore@pengutronix.de; Sat, 15 Jun 2024 11:30:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HCmrWCCtIYQWi6DFml5U6oOSuAg05QXJPC43bgT0fec=; b=yz4vLQtNJ3dXF1
	rI+wuG9hakm6uaARMusV5Si5bgnDa1x/+65Xk2oCjj6NtsY7GwR2H9MzdwjoEmkmNZNiK8UKot3MK
	KAPbNFdSqdJra0PfmI3k3ro/a1cgE9t+cfRdy4D23zwszPU3pq2hTzy8jbiIgVP8w81onTXOFRUWO
	c46qPWMqUFllrksv/aHr720SsroyN0YbdImcHDDGYzvVCURY/KKx4wUg8GiZ6zs025l1EHMSew3Lj
	Pl9cx4Nj8KUypQ6dsconKU1Vc+/VQfO81AzESrBD/uyxFPR6GnT9kUDcF1wiVK/dhoVFMeVCVoag9
	Rqgb4HykiYQONEtaaxUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIPjM-000000057mJ-33xp;
	Sat, 15 Jun 2024 09:29:52 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sIPjJ-000000057lj-0Eq8
	for barebox@lists.infradead.org;
	Sat, 15 Jun 2024 09:29:50 +0000
Received: by mail-lj1-x236.google.com with SMTP id 38308e7fff4ca-2eaea28868dso40438391fa.3
        for <barebox@lists.infradead.org>; Sat, 15 Jun 2024 02:29:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718443785; x=1719048585; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=HCmrWCCtIYQWi6DFml5U6oOSuAg05QXJPC43bgT0fec=;
        b=KEzcpU+mFIBKzwQ3tg202UP034iH9uBZB0k4UoKle6Jjf//gItroFYMCwTWxiUKglK
         xqw0a4S9tuDmuSDJawY0nlTYG8sqGEqcu+oAlGOmMpKflFSt9YKF6QLIIvRtwjCpyVS5
         iBqyDOoamedUD5mNhJ9q/0BRmDlXnpH0fRJhOhnFt+0u+3C8U9kpRjGQQquxG6zjAkwS
         3OiAgQIe2W5OP3/fWI4tMOOcpJiev1gcDN8KBpQvcPv+ri0E8XsCfAGrRpBNeg/VW7qT
         OUAdAQHJ/FX4sXkf3yn9/k0METj8kVyme/Wk5KsE+o3CHqwd1q8F2Xmn9D7en9KjJB/n
         86uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718443785; x=1719048585;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HCmrWCCtIYQWi6DFml5U6oOSuAg05QXJPC43bgT0fec=;
        b=H3Ffz2gM1v9dNMYXXmcEUQfbVxnTqT/6/NtBmLXgR7feL1mhJUgXjrOWyCHPifzfpS
         ZhG4nyyxchfaomtyaQeVrwdTMaoeJHmFKthLYPk4bu/h4N1Q3fEn36QKd3xWt9EPL5PE
         pqfhdlThP9fFUXHYVaM9dgo365Up5L2kjHbpP4PopoYpb6JVT7t28d/oRmJM9KyBhQI/
         UgwIqgjV7OWAFs56t8YyPAVISzwgqBp+O8jvY2jfYUECqgvlWIPD7SeD0EofY2PySbRF
         gkd8arbbeCY5y/JhzunBMVFwk065IU69ezm2V3aMOc0VDmO/vLLtyvR9v5jF7nTFoClL
         j6wA==
X-Gm-Message-State: AOJu0YxUinuZIm1G356Y4ff10khArygp7PIgmOn+vTJRRB460lZE/vmr
	Twqy3PvhSnKY0XBeWdYqqbE2SHzswctmkVvCrrPPn7TUNrJm7WQT6JLB6w==
X-Google-Smtp-Source: AGHT+IE+Y9MXZjvssjlFbOeLJQ7WJL68xo4rQ0JW3yZgam9Zjfjgkhn3bNjpEQYesx4F0+OMPQ/2Xw==
X-Received: by 2002:ac2:4315:0:b0:52c:aaa1:977e with SMTP id 2adb3069b0e04-52caaa19839mr2869629e87.0.1718443784629;
        Sat, 15 Jun 2024 02:29:44 -0700 (PDT)
Received: from cinco.. (109-252-6-122.nat.spd-mgts.ru. [109.252.6.122])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52ca28881a9sm708104e87.260.2024.06.15.02.29.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 15 Jun 2024 02:29:44 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Sat, 15 Jun 2024 12:30:05 +0300
Message-Id: <20240615093005.230804-1-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240615_022949_119071_410F697D 
X-CRM114-Status: UNSURE (   6.39  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH] gitignore: ignore *.dtbo and *.dtbo.*
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
Reported-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 .gitignore | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/.gitignore b/.gitignore
index f0afd899e1a..5e1b0c2b68f 100644
--- a/.gitignore
+++ b/.gitignore
@@ -38,6 +38,8 @@ binary.0
 Module.symvers
 *.dtb
 *.dtb.*
+*.dtbo
+*.dtbo.*
 
 #
 # Top-level generic files
-- 
2.39.0



