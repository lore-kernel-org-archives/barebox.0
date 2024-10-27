Delivery-date: Sun, 27 Oct 2024 09:19:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t4yUI-001MvB-1l
	for lore@lore.pengutronix.de;
	Sun, 27 Oct 2024 09:19:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t4yUJ-0002F2-4G
	for lore@pengutronix.de; Sun, 27 Oct 2024 09:19:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=lf8auCRw7woFyIQI4Kwkvop6DKRHuhK/jLINfXM+uV0=; b=azckpI7Znq4qGoV3h/oMBBpu0p
	18UFqMH5Sy19qG8I9GigKOoqh9m6Q+6rzxf/q1PbZzkWoZsUtUFjsqNuuWtoXDhkyaiROraohyDWa
	caB+gr/cGUs3X1XCKdHMo88QBAEd6rjnk7sKtnffznsrqM23ZF31a5U9saYKsZ0e2udL26vuXAxXP
	rAEi1quCDhikkXIx/YAd2pXqy6urBEQdInstfWjUYaUGuAwVdEfJeA4hDOeRQt2dY9upYKRYZ8gKb
	9bA/8k4MM+pgAUNN9D297wguFgDQ9mJK3FmjRZ5a4RfKc2mTDbJQ+3ALAUsONUVwuiXISOh2UNeUB
	hsdLL7Tw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t4yTY-00000007pNI-30Vz;
	Sun, 27 Oct 2024 08:18:16 +0000
Received: from mail-wm1-x32c.google.com ([2a00:1450:4864:20::32c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t4yTV-00000007pMe-42KB
	for barebox@lists.infradead.org;
	Sun, 27 Oct 2024 08:18:15 +0000
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-4314fa33a35so32539245e9.1
        for <barebox@lists.infradead.org>; Sun, 27 Oct 2024 01:18:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730017091; x=1730621891; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=lf8auCRw7woFyIQI4Kwkvop6DKRHuhK/jLINfXM+uV0=;
        b=REulJJhX/mqIaD5CJDFNyZq5tcYN2VDYknwAxOXqC0l99qn5al71sy5e/H6qd5AqgT
         xNPsigULA7xIImsoAGs940ImajMMtMk2zCdfzPu+LzE6q6MBkdF4cjJRwrh/4hOvIekf
         oCGV+9XuGYqqQMaBU9nJMFjpLYDAMd3NTWkmagBIoblhBbp8bp958i5vwNliLQGQBw2m
         EVOM7yJIvg5d0akk2UiaXJZmPQ8m2TolSPEdPae1xJr68e1KwHWHGmOgrZ+8zEjDwdAU
         RjLnnDqome+uCA91u0R1TiFrBRPucUBKqU7sPZl2PepIm0XzkrAwLRcUEdjJD9hX43Va
         ZHJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730017091; x=1730621891;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lf8auCRw7woFyIQI4Kwkvop6DKRHuhK/jLINfXM+uV0=;
        b=pMGdT9c19o2T2hmkOYSUDap6SOHhUEiG5gyIBobTSfNET91yamRxgjA7JGS9LFEhqK
         M7NcNlRJzP3eWqz19zJMCwGYP0BbTObKZWfsUArJ5hFXAQPJbrPDZ556b91k5YbDILGm
         R8a2lYJmQi3i0NxKYKvzmExIgRvQvLSi9sevSQvR/KG9btrT7nzz8YY07ZChKPgg5/r/
         3ZpvXJ3nyPmifXauVWhx3jeEWwpxXAATiwgn+f2vZjxS/COG4V7JuWYFU7oIR43Kfm5c
         I0Q1Lt1pkcSdJDYQEgeLCN9TBPb1QmYlql/+oQA+73y/lW5otKc3NbOEHrA1bxt0RPhO
         EMNQ==
X-Gm-Message-State: AOJu0YyQUXuM6nhJ078JZMe8eGAFiKV5pwaaxsCuUz2gJQhg44hruZG+
	GfCuww6dkwhRZ9o8xNY0F2KGFc/4Ajo0zysE9Qusftpv8cBIf7uMOJdTsC39
X-Google-Smtp-Source: AGHT+IHGaTfY9lqpxxquarvaZlCOqY0GsGD0gFVwoQcTW2xiQeIa2pfz1sq9VpS7i/EiK0DWf7FDRQ==
X-Received: by 2002:a05:600c:1e17:b0:42c:ae30:fc4d with SMTP id 5b1f17b1804b1-4319ac70245mr41153315e9.7.1730017090779;
        Sun, 27 Oct 2024 01:18:10 -0700 (PDT)
Received: from alaa.. ([102.43.144.203])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38058b3ba7fsm6230061f8f.34.2024.10.27.01.18.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Oct 2024 01:18:10 -0700 (PDT)
From: alaanourali@gmail.com
To: barebox@lists.infradead.org
Cc: A.fatoum@barebox.org,
	Alaa Ali <alaanourali@gmail.com>
Date: Sun, 27 Oct 2024 11:17:53 +0300
Message-ID: <20241027081753.256921-1-alaanourali@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241027_011814_030961_57090B54 
X-CRM114-Status: GOOD (  11.01  )
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
Subject: [PATCH] Fix unresponsive SDL GUI by handling SDL_QUIT events
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Alaa Ali <alaanourali@gmail.com>

The SDL GUI in the scanout function can appear unresponsive to the
operating system, as it lacks an event handler. This patch adds a
new function, handle_sdl_events(), which processes SDL events to
ensure the window can respond to close requests.

This addresses issues where Linux might think the SDL window is
unresponsive, allowing it to handle SDL_QUIT events properly and
initiate shutdown.

Signed-off-by: Alaa Ali <alaanourali@gmail.com>
---
 arch/sandbox/os/sdl.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/sandbox/os/sdl.c b/arch/sandbox/os/sdl.c
index 13178abfc0..0fc281b7b8 100644
--- a/arch/sandbox/os/sdl.c
+++ b/arch/sandbox/os/sdl.c
@@ -13,6 +13,15 @@ static void sdl_perror(const char *what)
 	printf("SDL: Could not %s: %s.\n", what, SDL_GetError());
 }
 
+static void handle_sdl_events(void)
+{
+    SDL_Event event;
+    while (SDL_PollEvent(&event)) {
+        if (event.type == SDL_QUIT)
+        	SDL_AtomicSet(&shutdown, true);
+    }
+}
+
 static struct sdl_fb_info info;
 static SDL_atomic_t shutdown;
 SDL_Window *window;
@@ -47,6 +56,7 @@ static int scanout(void *ptr)
 	while (!SDL_AtomicGet(&shutdown)) {
 		SDL_Delay(100);
 
+		handle_sdl_events();  /* Handle events like window close */
 		SDL_UpdateTexture(texture, NULL, buf, surface->pitch);
 		SDL_RenderClear(renderer);
 		SDL_RenderCopy(renderer, texture, NULL, NULL);
-- 
2.43.0



