Delivery-date: Tue, 25 Jul 2023 07:08:10 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOAHL-008zul-GA
	for lore@lore.pengutronix.de; Tue, 25 Jul 2023 07:08:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qOAHF-0004H0-9j
	for lore@pengutronix.de; Tue, 25 Jul 2023 07:08:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ia8zvy8JRNu0XOQaagQZrgiau2A6x15BPzGV8HZIQds=; b=buyRqXlU6qJHQv
	dorDBFaaCz2Zplmd6+u4JqWhXo/D+JLUNIu5N7IbY3YJgFbP2w9Gd3uNaPnr0WAIufpGv0KcojV4c
	0e0y0N4KRe6Dndit2+xJFXyyHo/WKHqpZfJ4sOJ9ILcDjNkyo0NTAfh7Ex/474+tZiKcRSBXVC31x
	7D2aIdIYEshiCwe3/D4eQj/idIuxsm99yzbjfPjKihsnN6DWmO5gGolKufNdlvJ5eAqdr+w2S/q7t
	v2E7aYqZPwuzCr8EHgcfagnKhMIYXIQ8rXHzHlYcM9EiwW6omclbOOL/JOdvijbQqxSpHiIvkwVKr
	6QEmnRdXSNG3zGcgMVLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qOAGG-006Fi7-02;
	Tue, 25 Jul 2023 05:07:04 +0000
Received: from mail-lf1-x12a.google.com ([2a00:1450:4864:20::12a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qOAG9-006FUd-0B
	for barebox@lists.infradead.org;
	Tue, 25 Jul 2023 05:06:58 +0000
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-4fb73ba3b5dso7922816e87.1
        for <barebox@lists.infradead.org>; Mon, 24 Jul 2023 22:06:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690261612; x=1690866412;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ia8zvy8JRNu0XOQaagQZrgiau2A6x15BPzGV8HZIQds=;
        b=gPi1+T+AkJJxXpKvMhNCQqeG2u+A1E6c1BfGfnYq7ahHSBONp/l13bxCI0WURfhUPm
         OtOK5xP3L5Qrt43M56pkQH0V5PfQFRmL7cKPtkZL+neKHvRg376dYEWKUj+0t6FGa7JR
         VCbVboQVBLK53NhLpiPc0amZ7gI+1FwQL6XpK5tknmQKKdRkeZE8VJEEq/+F7VCBOvzJ
         96KrQ5H5YLEqlYCVXnNrrTRCaKXo/xHmqaNrV3dkhbYgW5N5+H1lPiGxAOTWtXO/DCks
         w66NjeYV/dRgMeuw0sYlLrfC2v3rXmIB/OPrkhIVbZzHhNaN8iYAD6zViGBtFBqxYyGc
         19fA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690261612; x=1690866412;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ia8zvy8JRNu0XOQaagQZrgiau2A6x15BPzGV8HZIQds=;
        b=d0O2aNuxxcM3kxzJbNvSnvD1E3CjcnD9fk0zKWZ0fERCbuTuWWVTRHqiIa9OJ2xDEi
         NeJgMXwbv6mp6QTXURCn7QOuyu/FbbSvw7R5Jqkd7UpI5UzTq5FCZ1Gu2RolE6WP2zqW
         j1asXqTlxRVXbvUSw334CQsJaGKvkB9Obm6iRQTpUYekdVYEKxckjNjl6to+E+lsacTc
         YroUpNJ83NbNASsdIf0uds93jbBbptiPXEbcZ15zl5cuajrR+19FhSnH5rq1EA9rhuN2
         Zba7yTwnMfD9GVWndaBaCW/3nAknJO9Ldv2/6q1Rai+9YN29XyqdP46+7EJk2MhC2jRT
         Qb9g==
X-Gm-Message-State: ABy/qLYqCFvvkbo3yTyDHwJdiOOwff7GFjxHdYIRFdhZx7+xIcoILlMM
	X1JQZeIpjKrzkt1Mj/JUVV9yUe4d2hVeWdjkYo0=
X-Google-Smtp-Source: APBJJlGaQFtG526eQT2LY2ZsqM9zgDnPoSx2dFGWB+Lz6gCeE7iqsW4rAy9yMXEUH0MRWDTFHO7NWA==
X-Received: by 2002:ac2:5e79:0:b0:4fc:4f3e:9cbf with SMTP id a25-20020ac25e79000000b004fc4f3e9cbfmr5590192lfr.50.1690261612642;
        Mon, 24 Jul 2023 22:06:52 -0700 (PDT)
Received: from localhost.localdomain ([188.123.230.211])
        by smtp.gmail.com with ESMTPSA id k17-20020a05640212d100b0052237dfa82fsm1730505edx.64.2023.07.24.22.06.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Jul 2023 22:06:52 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Tue, 25 Jul 2023 08:05:21 +0300
Message-ID: <20230725050618.3451-21-denorl2009@gmail.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230725050618.3451-1-denorl2009@gmail.com>
References: <20230725050618.3451-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230724_220657_117150_D819B60E 
X-CRM114-Status: UNSURE (   8.67  )
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
Cc: Denis Orlov <denorl2009@gmail.com>, Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 20/21] MIPS: c-r4k: remove extra function declaration
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

'r4k_cache_init()' is already declared in the appropriate 'asm/cache.h'
header.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 arch/mips/lib/c-r4k.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/mips/lib/c-r4k.c b/arch/mips/lib/c-r4k.c
index 2fb4e90138..44cf57d99b 100644
--- a/arch/mips/lib/c-r4k.c
+++ b/arch/mips/lib/c-r4k.c
@@ -86,8 +86,6 @@ void dma_inv_range(unsigned long start, unsigned long end)
 	blast_inv_scache_range(start, end);
 }
 
-void r4k_cache_init(void);
-
 static void probe_pcache(void)
 {
 	struct cpuinfo_mips *c = &current_cpu_data;
-- 
2.41.0



