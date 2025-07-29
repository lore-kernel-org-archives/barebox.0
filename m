Delivery-date: Tue, 29 Jul 2025 06:57:02 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ugcOc-004p1X-2M
	for lore@lore.pengutronix.de;
	Tue, 29 Jul 2025 06:57:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ugcOc-00022j-6m
	for lore@pengutronix.de; Tue, 29 Jul 2025 06:57:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ueHkZmVZREYJP5LefQBF+mYqIxw3bTqsQBluCsUgW24=; b=IgqJ2scFZFuPPSWemyia3Y18sq
	UxdqgJEhuI6eQXPXIACaFCvbx/4ns1fyUsjDpFQwUuox66x/9pkHO+vQibjwqNShrwgEu78ptCDpE
	Jxko2Aa3Y3SWyxTqQi4rw0pVWsZSbGNSFReJ7ZxZfWsD6pMO5D1LvJ4bNFKv0rtPPnZp5SdC9mkfk
	A/WxvVUlR66dM4Opq/6x9pb/+qTk0RSs2NUogmwDr6DXH9JHMwmudsIJNfTeYlR4kmalMJaH6l1zt
	dCgf7tgDuvXOvT3U2rIErc6LPejNSGRwig+ZowObwgY7KXEyIHZ9gV3lINyRce+J8MWKPwGLK3Bm1
	JVrrlJ3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugcO6-0000000FvB4-0Rqt;
	Tue, 29 Jul 2025 04:56:30 +0000
Received: from mail-qk1-x731.google.com ([2607:f8b0:4864:20::731])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ugcO2-0000000FvAf-15JQ
	for barebox@lists.infradead.org;
	Tue, 29 Jul 2025 04:56:27 +0000
Received: by mail-qk1-x731.google.com with SMTP id af79cd13be357-7e050bd078cso496320985a.3
        for <barebox@lists.infradead.org>; Mon, 28 Jul 2025 21:56:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1753764984; x=1754369784; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ueHkZmVZREYJP5LefQBF+mYqIxw3bTqsQBluCsUgW24=;
        b=Lgjzbb18NIftleQG8t5BA8gM3ErsF5woSgbTMECB6D8WhYO/jbY8mO6FKuoJNN4Yyi
         WPXeOmK3YpUl2zHRwsLVHprA2LOy+3SiOXN5WFXuXYSSQqSiXbeyUwmMq8YHB6APZ6Vg
         dCN8WKZwNuW8yaq9YVJo94V5vKMCLchJyxBCSyGK5KHzKzCnDhQ9iQwxmJgfTlTzXnaL
         3t6d4MWJZ4jRstP1gJn4ne2QGrTnLsc0f+fGMRui4AQQTATrOvctrNZqrzP5sUuJr4hU
         bBfATLai/ctKqgFpiDmxqrrsKm3Esh3ygO6Q1lJnVEsF4F4Q4gvCP6Vba0hbGe/Jo2/s
         /dXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753764984; x=1754369784;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ueHkZmVZREYJP5LefQBF+mYqIxw3bTqsQBluCsUgW24=;
        b=abkylSCvYy0+sciEE/AP7BHWY4RFyh6kjzTvPzWfS/+SyYK0qxllf8XNOF3ZmCerbU
         CzCxkcMuuPCDUz/k72uys5PKnLIcQB/yjLMAt5mvms+nLEwDYlu1NwnMtbI1gKfkdpNG
         9oy3Choi7nnz6l0mDDIySnztSowKJDgId6u6y7XaOtgBGstIvKDqIHczWiu+8nC699RV
         kn6rtN1B7zjpTITUsEAqSadlfuGdEA20Rho+ruTsueBtF8N8665MpEQ2jfzW8F/YR+WS
         oCX4t8zO2U5+Fg9HncPGGwEFLyWVO3p5VY9IwnnQnnOFs1pSfa4Tbb01DHCWw3BMEf1/
         QNSA==
X-Gm-Message-State: AOJu0Yxjw8kSXOOezCQwLcIHESlC78YDxxRjtC4yze9ilaSIy4p9fOgK
	JbbKk3P1K5iJkMsAbIZ1cMSSLIMba7LIMAPsQ83OGQTYwgN6teC3QUBe
X-Gm-Gg: ASbGncsHTyK2ESRDMn88i4D0zhHh6g+1bJ255epIWl9Xl2RRoeUijtYWsrH91udwNPe
	DP4LjFNrbiwl2lfyuDhri9V7eR7Pw64U7VlAIzvQTMqxE0gAKqIiNe4HHiW+o9hmtoJ4Bniy8YU
	iLBovB9KnUYJ7EWadrEuQ6l+BwSxXudmEDXrYD9kRMoZlXqEgdLqugL/1feC8eJOHW3H7sTT8AJ
	Nt0IGnddg2v7K/nM19bfcGUMMBUc7B0jGRnQ6i/rZIvpZy1fQKFr+Za1piFkgPzEY8+v6NtnFX7
	pTUB6KIVW+lukOFJbi96mIg9JwLvQiEhzQvCMEqoZXApc//aOkNAwgdASuEV+aw7chbVBEr79So
	BP5DfNLA4ygflq03b+J164eDR0ekfnlysTGR5n0uw
X-Google-Smtp-Source: AGHT+IFLK12Zr0WvzTJGH3QwoOpE/ay9azMH27D25ASUW6b/DlesxjLA7B5+or/F6Tw2+n7n/JcR4w==
X-Received: by 2002:a05:620a:31aa:b0:7e0:9f9b:c1f9 with SMTP id af79cd13be357-7e63bf523acmr1618786585a.3.1753764984350;
        Mon, 28 Jul 2025 21:56:24 -0700 (PDT)
Received: from Latitude-7490.ht.home ([2607:fa49:8c41:2600:1df0:2702:ea35:b8de])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7e64387e2a3sm387394685a.60.2025.07.28.21.56.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Jul 2025 21:56:23 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>
Date: Tue, 29 Jul 2025 00:56:07 -0400
Message-Id: <20250729045607.612019-1-chalianis1@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250728_215626_339056_D6B30F06 
X-CRM114-Status: UNSURE (   9.02  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] clk: clkdev: fix format security.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Chali Anis <chalianis1@gmail.com>

not a string literal and no format
arguments [-Werror=format-security]

Fixes: dfcdce8eec30 ("arm: add common clkdev")
Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 drivers/clk/clkdev.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/clkdev.c b/drivers/clk/clkdev.c
index dbe998b6af35..1ce2eb95b8f9 100644
--- a/drivers/clk/clkdev.c
+++ b/drivers/clk/clkdev.c
@@ -273,7 +273,7 @@ int clk_add_alias(const char *alias, const char *alias_dev_name, char *id,
 	if (IS_ERR(r))
 		return PTR_ERR(r);
 
-	l = clkdev_alloc(r, alias, alias_dev_name);
+	l = clkdev_alloc(r, alias, "%s", alias_dev_name);
 	clk_put(r);
 	if (!l)
 		return -ENODEV;
-- 
2.34.1



