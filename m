Delivery-date: Fri, 06 Oct 2023 07:30:14 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qodPi-007wRo-3M
	for lore@lore.pengutronix.de; Fri, 06 Oct 2023 07:30:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qodPg-0006fK-KO
	for lore@pengutronix.de; Fri, 06 Oct 2023 07:30:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ARtSCfS2SBzWbVjfa7Z4VYPeCWVMw7vffadZMDMmy3M=; b=tEAyMSeUMsgkK58KSl4CVpnTSS
	3qQgQbQyayHsqblDrGC6ejaVOUTPLk4PTv0689urrc0y9F+q+BqUY3raEoTevMZUxc2MkZVsraV9p
	Ubn9klEmamsX7UAvUHiQYYYJxzlNs4VxIfovsdxwyHQLeIUAXiPkVvmpdizHSRqxAavKvMhOl+m9G
	PzPUlCEvYaFS6A7qKiJ+iGpbs1KIdcmMqWCCLRjygyIO9bc2Mf/Uf20d+phd5TU6YlB+/qKn/pWdW
	Un2lyf2qe12GzYjKM5zV5ZM5fKB86tCsdS0BcCkjNqhAqhp3NnGnlHdMn79eRVJeZM8vbKQygbbbT
	bhpOeleA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qodOB-0050Nk-2p;
	Fri, 06 Oct 2023 05:28:39 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qodO8-0050N2-03
	for barebox@lists.infradead.org;
	Fri, 06 Oct 2023 05:28:37 +0000
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-50336768615so2282637e87.0
        for <barebox@lists.infradead.org>; Thu, 05 Oct 2023 22:28:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1696570113; x=1697174913; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ARtSCfS2SBzWbVjfa7Z4VYPeCWVMw7vffadZMDMmy3M=;
        b=DsXLcoilbmi4M0W9ircHWBteAFruABW8RuU2PxVNjG5rjZuxFFmLtSiZuTR8c/3e8P
         MVKU+4V3dFLpAG9DfpAw1broBPJtBip4XgjWgqdLLFYfWGblTCdhjZMqkMOlI7m1wUJC
         z43V5q3QQ10Tn+fVMZdCpZxQ0Qrip9lMC+cLqdlF5kE8XlvmkydEeUR3MnLcVDH7TluY
         68GjfXJzBZaeeAzqDP3XgzUaq4ZMCxTU+QsqvEHbdH4rffl0wRWpQwhIY0nLeQXxLpJq
         q44M6wg1mdrX+zRJrAcjg+Buvs7X1wAdo6/ZOnATHZRur5+L6HLRqUBccmBfv+/luswG
         +GDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696570113; x=1697174913;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ARtSCfS2SBzWbVjfa7Z4VYPeCWVMw7vffadZMDMmy3M=;
        b=igNoU6wloKlpr4lbQdrF/D6fe7XrEOtIJXBeTrlUPWBrL+xRAXPlUS8sJKqbFHNg5N
         1lJak5VfY3EbPQGvUKJ6P1Jstg4LCU2VarDKWKozW3q2P0CaIKmjg5j7Ir+6Wj9y+aqM
         yi+JQdf3VMNnOFtbIGlIQqwyFVKeZ8AXK2AHXCxfKk71ybXMriDAVzuSKYcZTJ5Z4nCU
         y8YQgannwIYRqeIyCD/N5wApDsy4nb6PSoWZiTmBwsFH0u5Y+OGtXHjK2azXesF4Xl8Q
         MC+x/MrG05G/BwSAlpXvzqkuyp4AxXIVwsPOgf0WRysfqDmBqYX4uzeIXi4kn7T3iqz9
         djKA==
X-Gm-Message-State: AOJu0YxnWT/v8PpCBnek15G11u5Svy0EPkphXj0qZ53iIhQBENiBON9U
	k7ZgUd7jtI209yB1WeDfcSedwYSNp3I=
X-Google-Smtp-Source: AGHT+IG47NybggVOAxN30yr1ImH5Dbis2/86NXBASWOHcaNLA2Wp7DI/Ut+3xXy6K3kTp8ET2zbNvQ==
X-Received: by 2002:a19:6d1a:0:b0:4fe:7e1f:766a with SMTP id i26-20020a196d1a000000b004fe7e1f766amr5874451lfc.24.1696570112754;
        Thu, 05 Oct 2023 22:28:32 -0700 (PDT)
Received: from localhost.localdomain ([188.243.23.53])
        by smtp.gmail.com with ESMTPSA id w4-20020a05651204c400b005056d0f000dsm149545lfq.155.2023.10.05.22.28.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 Oct 2023 22:28:32 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri,  6 Oct 2023 08:28:21 +0300
Message-Id: <20231006052821.3246-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231005_222836_060652_4D746F96 
X-CRM114-Status: GOOD (  15.75  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] clk: Fix return value of of_clk_get_by_name()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

of_clk_get_by_name() is used by clk_bulk_get_optional() => clk_get() function,
so in case some clocks are missing we should return -ENOENT error code,
as this is normal for optional clocks.
The current implementation of of_clk_get_by_name() returns the -EINVAL error
that comes from of_clk_get() with index <0 if the clock is not described
in the device tree.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 drivers/clk/clkdev.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/clk/clkdev.c b/drivers/clk/clkdev.c
index dbe998b6af..f6c2fcdf10 100644
--- a/drivers/clk/clkdev.c
+++ b/drivers/clk/clkdev.c
@@ -52,10 +52,9 @@ EXPORT_SYMBOL(of_clk_get);
  */
 struct clk *of_clk_get_by_name(struct device_node *np, const char *name)
 {
-	struct clk *clk = ERR_PTR(-ENOENT);
-
 	/* Walk up the tree of devices looking for a clock that matches */
 	while (np) {
+		struct clk *clk;
 		int index = 0;
 
 		/*
@@ -68,11 +67,12 @@ struct clk *of_clk_get_by_name(struct device_node *np, const char *name)
 							 name);
 		clk = of_clk_get(np, index);
 		if (!IS_ERR(clk))
-			break;
-		else if (name && index >= 0) {
+			return clk;
+
+		if (name && index >= 0) {
 			pr_err("ERROR: could not get clock %pOF:%s(%i)\n",
 				np, name ? name : "", index);
-			return clk;
+			return ERR_PTR(-ENOENT);
 		}
 
 		/*
@@ -85,7 +85,7 @@ struct clk *of_clk_get_by_name(struct device_node *np, const char *name)
 			break;
 	}
 
-	return clk;
+	return ERR_PTR(-ENOENT);
 }
 EXPORT_SYMBOL(of_clk_get_by_name);
 #endif
-- 
2.39.1



