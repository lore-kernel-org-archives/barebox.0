Delivery-date: Mon, 16 May 2022 09:02:52 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nqUkm-00FHiF-Ih
	for lore@lore.pengutronix.de; Mon, 16 May 2022 09:02:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nqUkl-0007yC-Aq
	for lore@pengutronix.de; Mon, 16 May 2022 09:02:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=csAq4pYbF+3+R6cGMlMqphpfXBA2AG+ukVVf6u8Apmo=; b=ERKZ4hY5I2V1F2
	xp5VuwdUXXJ7ou4l8HWYlV+MYPUC4jhbl66OXc5PGgFm14P54aQmXkjdcSiJ1jycB+BlLQlySu4CN
	fEJV566BQzg1QnGBFotWohWxcpdsdahDRf2EhyRrVVsWRXjZIlyM/5ZptjoC1jWqi76iJZ5kfd0x8
	8jRJgO5LTk4Lfw0H8AC8V7Ist/lep4bEm1fgYlccAPV0eC2hAskoZReC07ETViiYB3h67tlOidt+K
	0ZHfoQNgj90k4wX+yyERWxpkF4hXPBjymwayxBRUltmVfbndaLwWTOG4toFjdpNOzWhS7I7lWMcZb
	lgQ6PxHQ3IBtT6KoLoRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nqUj5-006IhQ-Td; Mon, 16 May 2022 07:01:08 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nqUj1-006IfW-CE
 for barebox@lists.infradead.org; Mon, 16 May 2022 07:01:04 +0000
Received: by mail-lf1-x130.google.com with SMTP id j4so24111806lfh.8
 for <barebox@lists.infradead.org>; Mon, 16 May 2022 00:01:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Ds3iOrEJg16s6xWk52s64T0kE4UH+KcNRnjcMoC2pBY=;
 b=lNr94ZP0t4tHoLsNYJGn9DuRUulJ3qOTfTiXrG5vwWBsVoYFwuXKhFbiqNWX0UCDII
 QQXiJFWVLfVUn2drKQi0v9cNoUDFyKmmlQLYEbIwU6Af0aVX7RWtQ76Ago5vNyRu87iP
 3GYiEKqAgY9X5tUnhF4QmxwHSpsLAwbPZ3RYxqhWHP+je5zftPyWQ1bR4DjXyoMIQVb/
 l63tO3B76g0pJjRW+JEJnI/e2SKhnqmwZGzQfPS64EX/y57PH3dFD4KSiedd9LQo2hLd
 jeXckogbn2QID/O2uVLdA3oPb3h6VPAtwyMb1e7O8L/9wknDTINTtgzQF8O/9m1eF4ls
 CWTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Ds3iOrEJg16s6xWk52s64T0kE4UH+KcNRnjcMoC2pBY=;
 b=MZDhO5Ont98RKIsO8eB/5f9uLR0Z47y2W7wg+G0MkZfIaxBXjSDiAF76VCCQUZ27LR
 owL5yXPkFMD1QJwmsPniqUjqv8a9LIPGbWagtvqicjQCb7luEG7PaWUeBIQrgkyTJEkj
 kCujNM3l8i046ruDJX98gAJ4ZLwzvnSDd1FiDPAWQd+gMBb/3UObe1b4Emn9fqK9+Zps
 NzHMScrFpM4AJofXsCsXKlG4LcWi2iz8o9gAcpnhXpT9kKastyHES7OKTiCij1rIHNPY
 8qhZ3cjPFNIYLJsj7GWr+RJgHSuEAIROzixPqo7zA/dXGzlbD4nfIQwtxJd127ldRR8K
 HnFQ==
X-Gm-Message-State: AOAM531tSLtvqVIML7V/JLLkSCBoyqNKTkVe16v5oYp6ribLS7nfmOXi
 afnOzk5hX9oywL4Gjg8O0tG9bIL71Z/3J4FEomg=
X-Google-Smtp-Source: ABdhPJz3gIIJNu+io7n/cp9M18DJhiMDJBQ2PmlyChwjNqVHf78d9Rm3sKGFZq69CtP9FVCsf2DpJQ==
X-Received: by 2002:a05:6512:238f:b0:473:a178:f59a with SMTP id
 c15-20020a056512238f00b00473a178f59amr11903603lfv.303.1652684458612; 
 Mon, 16 May 2022 00:00:58 -0700 (PDT)
Received: from localhost.localdomain ([193.232.173.109])
 by smtp.gmail.com with ESMTPSA id
 r2-20020a19ac42000000b0047255d2118esm1213431lfc.189.2022.05.16.00.00.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 May 2022 00:00:58 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Mon, 16 May 2022 10:00:49 +0300
Message-Id: <20220516070049.11963-1-denorl2009@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220516_000103_551231_A3B9FBCE 
X-CRM114-Status: GOOD (  12.15  )
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
Cc: Denis Orlov <denorl2009@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] clk: fix clk_round_rate() behaviour
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Right now this function returns the current rate of the clock in the
case when the round_rate() is not given in the clock's ops. This breaks
clk_set_rate(), which calls clk_round_rate() to check if the resulting
frequency would be the same as the one that is already set.
Make it so that clk_round_rate() returns the frequency that was given as
argument in this case.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 drivers/clk/clk.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index 52e309e877..7492717d3c 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -139,16 +139,16 @@ long clk_round_rate(struct clk *clk, unsigned long rate)
 	if (IS_ERR(clk))
 		return 0;
 
+	if (!clk->ops->round_rate)
+		return rate;
+
 	parent = clk_get_parent(clk);
 	if (parent)
 		parent_rate = clk_get_rate(parent);
 
 	hw = clk_to_clk_hw(clk);
 
-	if (clk->ops->round_rate)
-		return clk->ops->round_rate(hw, rate, &parent_rate);
-
-	return clk_get_rate(clk);
+	return clk->ops->round_rate(hw, rate, &parent_rate);
 }
 
 long clk_hw_round_rate(struct clk_hw *hw, unsigned long rate)
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

