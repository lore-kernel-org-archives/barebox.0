Delivery-date: Wed, 19 Nov 2025 19:03:32 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vLmWi-002k2h-2d
	for lore@lore.pengutronix.de;
	Wed, 19 Nov 2025 19:03:32 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vLmWi-0005fB-9o
	for lore@pengutronix.de; Wed, 19 Nov 2025 19:03:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=2smAW6uH34gKfjsjc9kqKAOJ92aDTIJdc7hARqJ1Lto=; b=H7GqUrWj/k3LFRZcIOzst7Y8Qd
	1LnTIso+R5r5Jn1BK1iWxY7UmtDAExB1n/3Ul5ustriiLsRdSjCNvbDetnKC/p5t3JcnhjYTjB5Hm
	sBgI52SO7jAIPNakciu9eNBW7ZzC7UCuCWQMvNtVRLCqYDS3ckvc41kRILishScKv+X7OJKAUPnDY
	Z7XsKcENXptp5LdQAp9QoxZFW6ADt/0LvWs/1zZgXPpxlpkcEoiYNaTXFuNKfsJCXnB2P+OZshvzr
	v/LIR0jY1wxcSizHHuEvcBX7Eb5BaniJVC7MMQAw7VL5kJfKg75k1nzcpRKJ7NBFA16vddBPp33Jl
	3MX6nOEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLmWF-00000004Nyb-3c0A;
	Wed, 19 Nov 2025 18:03:03 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vLmWD-00000004Nw1-08Yo
	for barebox@lists.infradead.org;
	Wed, 19 Nov 2025 18:03:02 +0000
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-5958931c9c7so5824773e87.2
        for <barebox@lists.infradead.org>; Wed, 19 Nov 2025 10:03:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1763575378; x=1764180178; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=2smAW6uH34gKfjsjc9kqKAOJ92aDTIJdc7hARqJ1Lto=;
        b=jJ//y7OIfw4vpgvVYZSsPMcxfpn+sMcK/NT0CKcgcZ3yRWPNTwpqbte8Fs7I4uYAWu
         /yXF1SYfngvilq7esqbOP8YtjIzt3Vy+c7DXxarAhiXy8HEZp3uw1MTFiO1uKVgNr5Jg
         cyNHkMhsYYppMX2Vw7ra9NDCwTAjL73UZsHjvaw4v/U3bXkOc8usYnCHSdU04AlFQINz
         p+hFAyIi/buD0RttSEd8Pcuy2WGdXgfia2e5BvibS5yfV1m3K9vYPI3jXljbrDI6Vvrq
         j0oDPxQ1n0Y0GBPKjy+/c3fCaeaSIhVd7x0yxSu/BDIs4K1qWNmI8TArWnGbM/3y8u9y
         W9Hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763575378; x=1764180178;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2smAW6uH34gKfjsjc9kqKAOJ92aDTIJdc7hARqJ1Lto=;
        b=Nd7zmfIy+rn8nzeY0CpIzDhYjWEOEeudPR8lIOs8NCul2WnSHE4W4WH4bro3wF9JvB
         y9x20bCnygPcxqEDP0FztipnzHU0o5u1pdjkJPi++3IoTLs/b6mAGm1UFPVlRq7Utc0T
         vaMTJn5mJ51MyQ2TiMbs2U+pUfUOMhDc1O2oK0xujZvuWC+KZ7tDwvjEYRN181ZYR/uM
         wapMBD5KKkKGg+rf9IgCXP88wUZw1bRvtu+YnzvDQfGwivzR4ka3LufOMBpplpqzlVSM
         fT8NaX+067+eE89M86Oh2AVgO5MeJ7RJzZUU6cgVOgsjREhBgnPyySAf4iuCAOA16jlq
         ewdw==
X-Gm-Message-State: AOJu0Yweop2txcqqqWCAK4MGSc4cLVx4PSHh2rt7HjzCbczKqWG48gqp
	ayuxHLHPLBvQn4RvQhAWfiJl46ugqhQOHLotA0NnBRsjIW8C0bGkB4hcbnB5nQ==
X-Gm-Gg: ASbGnctzSeyRRF7MmXboh6Yjoc2YU3LNZufWcY/9yaWo25MVknAomzhvCbJHs6ktcEQ
	vK29VMeF+Ai5sQCZV6lHtfRFakuUwUapTCFFr+OkG3ZufxE60bAC2jAAU+M29o/lG3R31olsr1V
	NMqqtXsmnON9XHhQ1zlbHmBio+waUTYnbhH6Yia9fldNLYlWs+w7FTAAAmdofNAq/71zhYiIO5X
	78rOf01+vkZ8VAAdOaJjEk9AfKNHXv1MVnh3ehjf+YpuXKfN6C0QQBy2uBnWToqsiOHD49PSsKL
	RsWVf0BpM0dQTBzykD6TTFuUDju+yrSRPm0+z+9BKohr3GFURSWh6aYIzU87vqeFGQyx47+jxf2
	ULRH5Ashyn7LT0HndC9lm92RbV2VzIdn20LNRIgHNPs2Va2pPL8qa3Z1wxatGJfG+ClDI1j93YR
	SOzHq+Y/TdsPO6MRVOm7qBbZeqL7UwtRJFmwygSiTup35Yzw==
X-Google-Smtp-Source: AGHT+IEn7ByiaUw8oJpgXvQMCeINiqcosMX3FDE5OzJCdoY0sTokccpoa5fZNvy3IvFgATdKdjprXA==
X-Received: by 2002:a05:6512:3c91:b0:595:831d:2308 with SMTP id 2adb3069b0e04-5958419f561mr6609887e87.1.1763575377688;
        Wed, 19 Nov 2025 10:02:57 -0800 (PST)
Received: from localhost.localdomain ([95.161.221.172])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5969dbc5881sm11205e87.75.2025.11.19.10.02.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Nov 2025 10:02:55 -0800 (PST)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Wed, 19 Nov 2025 21:02:44 +0300
Message-Id: <20251119180244.929929-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.38.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251119_100301_079495_00A6351C 
X-CRM114-Status: GOOD (  10.36  )
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
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] commands: truncate: improve help text clarity
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Improve truncate command help text by fixing grammatical issues and
making the description clearer, especially for non-native speakers.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 commands/truncate.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/commands/truncate.c b/commands/truncate.c
index 5c6d74257d..a603e5a0f2 100644
--- a/commands/truncate.c
+++ b/commands/truncate.c
@@ -83,9 +83,9 @@ static int do_truncate(int argc, char *argv[])
 }
 
 BAREBOX_CMD_HELP_START(truncate)
-BAREBOX_CMD_HELP_TEXT("truncate truncates files to a given size. If a file does")
-BAREBOX_CMD_HELP_TEXT("not exist, it is created unless told otherwise.")
-BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Set files to specified size. Missing files are created")
+BAREBOX_CMD_HELP_TEXT("unless -c option is used. With -s +SIZE, increase size")
+BAREBOX_CMD_HELP_TEXT("by SIZE bytes; with -s SIZE, set absolute size.")
 BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT ("-c",     "Do not create files")
 BAREBOX_CMD_HELP_OPT ("-s [+]SIZE", "truncate file to SIZE, or increase by +SIZE")
-- 
2.38.2



