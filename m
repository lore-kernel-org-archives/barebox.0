Delivery-date: Mon, 05 Jun 2023 22:28:22 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6GoS-00CCTt-4B
	for lore@lore.pengutronix.de; Mon, 05 Jun 2023 22:28:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6GoN-000120-32
	for lore@pengutronix.de; Mon, 05 Jun 2023 22:28:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3cnFIF3FaZZ3w20liekOBqe+9YIo8ZeWReptefO9tpI=; b=g45yVr/JPd3UW/
	UfjtvPZ/0iq9MsrLPOMoL/Lrk4zEq8IJydGspjh+SfroH/pdopx5xVI9I5KPX/IDV1O5vElKnSs32
	7HU1WJWLY4iBt8Do4GSuB565v+4sAt7KroEU66Wxwnh4Ko3gkncfdl4ORyHtgDqFjtxcOQQ8/x1vc
	93CMGtAr8ka5EuSKc2xD6uPh4LoOxYogJhUSq/fjQzfKNfMGzcn/jj8LAD1SyWs2MCZf3K1G3N6wO
	RGYdikHUVk/6G2pNHnXiYcHTV2ocqqQNJ18/cR4fO0TXsU6OK3n+kfFhl8fAarjW3SPYcLPH+tUv8
	AR5X6fTythNujMSpOmQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6GnJ-00GhLg-2D;
	Mon, 05 Jun 2023 20:27:13 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6GnD-00GhFG-1F
	for barebox@lists.infradead.org;
	Mon, 05 Jun 2023 20:27:09 +0000
Received: by mail-lj1-x22c.google.com with SMTP id 38308e7fff4ca-2b1b06af50eso46239891fa.1
        for <barebox@lists.infradead.org>; Mon, 05 Jun 2023 13:27:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685996825; x=1688588825;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3cnFIF3FaZZ3w20liekOBqe+9YIo8ZeWReptefO9tpI=;
        b=mf0LnJDYmLmYDQM42Il+j6g2bU5U8SyazjjBpEWqo1tfNQHr49R1LnhgwBnnHh+EpS
         KlKqBHlYFPXaL29L+89zaYmpotXla/1K2qfUuXYG+lTJYM1IjIqswd8DJLPonw7J6tyW
         0MjsUJKL730ZPY0ssV+zY5xV1p4zysFP0J3KTFGSPX/nTPEjqsGTR3PjXvrF4MGNLGqt
         IqHaQCvGg+JVsygVkfwbwiqnoqV4x4CWYPavpjxjEy/RCYsu/x95n5FSXLwGV4t2TtdN
         KT6spqf64I7B7+xkUur0jCU3kqvoyuJg1ZACwKaJYqPRYzyKSpKcyVcwrFWGUazw+ZDm
         OzFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685996825; x=1688588825;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3cnFIF3FaZZ3w20liekOBqe+9YIo8ZeWReptefO9tpI=;
        b=gOfCwmn6WRbnk/oAZLjTtvxRNF/zKOBAC2higm3aMo4VF2rDzTIle15W2J8n6l+RgI
         EeVDoOtSgZ/+vB9fqEgOSj9z1boNp10H0wNkle9se+ndBhoYwcnTER+cTwYt2tgdDixu
         CyEa7gQsPsiS38NNCnHyt0UcrqQ1c4jUyfE2xMNlDm1uvEsX0/4GH75+ciLNs+mveByo
         PgK3wh+wx5E+4UYS6HiOiRXmb/7r7ZMj+HYV/ExY9F6X/Pn1JH+p0biD1gfD1H9gzTDS
         Y1CcnZrRcRdLgt4xSIHwQDktqPUC5hg8C+AyD0LFoGbAktBHCQw2DFlTABejoEiKkfTl
         c8xg==
X-Gm-Message-State: AC+VfDzthREosLbVA8fP/6HF8hrL/Y4WJc0oSXBW6+KlcNYd1gjfWNDC
	BVr+512mpUr+HA9cWBuIiGGdsdfD33lWVw==
X-Google-Smtp-Source: ACHHUZ7hVfiuHEn/YIOKWd6lTUSa+xM7ieTTNhKufM70CPOcX/VSSpf0qxdTTHD3j0nFx7TVkcnJ/w==
X-Received: by 2002:a2e:3013:0:b0:2ac:8e5a:1054 with SMTP id w19-20020a2e3013000000b002ac8e5a1054mr231593ljw.0.1685996825251;
        Mon, 05 Jun 2023 13:27:05 -0700 (PDT)
Received: from localhost.localdomain ([188.123.230.216])
        by smtp.gmail.com with ESMTPSA id i18-20020a2e8092000000b002a9f966f4b3sm1587087ljg.26.2023.06.05.13.27.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jun 2023 13:27:04 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Mon,  5 Jun 2023 23:10:48 +0300
Message-ID: <20230605202634.42175-18-denorl2009@gmail.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230605202634.42175-1-denorl2009@gmail.com>
References: <20230605202634.42175-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230605_132707_438255_87983569 
X-CRM114-Status: UNSURE (   9.12  )
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
Cc: Denis Orlov <denorl2009@gmail.com>
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
Subject: [PATCH 17/17] MIPS: main_entry-pbl: fix conversion warnings on CONFIG_64BIT
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Fix "cast from pointer to integer of different size" warnings by casting
pointers into unsigned long values when calculating sizes. While at it,
simplify code a bit, removing unnecessary variables and instead giving
another variable a more comprehensible name.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 arch/mips/boot/main_entry-pbl.c | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

diff --git a/arch/mips/boot/main_entry-pbl.c b/arch/mips/boot/main_entry-pbl.c
index 02ddd5ec24..f75ec03851 100644
--- a/arch/mips/boot/main_entry-pbl.c
+++ b/arch/mips/boot/main_entry-pbl.c
@@ -36,7 +36,7 @@ static void barebox_uncompress(void *compressed_start, unsigned int len)
 void __section(.text_entry) pbl_main_entry(void *fdt, void *fdt_end,
 					   u32 ram_size)
 {
-	u32 pg_start, pg_end, pg_len, fdt_len;
+	u32 piggy_len, fdt_len;
 	void *fdt_new;
 	void (*barebox)(void *fdt, u32 fdt_len, u32 ram_size);
 
@@ -45,13 +45,10 @@ void __section(.text_entry) pbl_main_entry(void *fdt, void *fdt_end,
 	/* clear bss */
 	memset(__bss_start, 0, __bss_stop - __bss_start);
 
-	pg_start = (u32)&input_data;
-	pg_end = (u32)&input_data_end;
-	pg_len = pg_end - pg_start;
+	piggy_len = (unsigned long)&input_data_end - (unsigned long)&input_data;
+	barebox_uncompress(&input_data, piggy_len);
 
-	barebox_uncompress(&input_data, pg_len);
-
-	fdt_len = (u32)fdt_end - (u32)fdt;
+	fdt_len = (unsigned long)fdt_end - (unsigned long)fdt;
 	fdt_new = (void *)PAGE_ALIGN_DOWN(TEXT_BASE - MALLOC_SIZE - STACK_SIZE - fdt_len);
 	memcpy(fdt_new, fdt, fdt_len);
 
-- 
2.41.0



