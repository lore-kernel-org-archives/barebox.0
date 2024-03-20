Delivery-date: Wed, 20 Mar 2024 17:45:06 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rmz3q-00FKzH-0a
	for lore@lore.pengutronix.de;
	Wed, 20 Mar 2024 17:45:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rmz3p-0006nX-Ks
	for lore@pengutronix.de; Wed, 20 Mar 2024 17:45:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WzZfUmn6nbbDF7XhsOwY7dPMm8Dvd465HS10WQ7vfYs=; b=2oTN7SMs7rqOWR
	5p1cvlWcE5HfSxK8jVyCCDCLuvtOXb4lFw7aXVDzr1oe83uIJCoQu+8YmU6OWKTO+dKwzO1ZgrHqN
	pklpX4WL0S8tyqzKXx3HEc2jWV09wlORYAQJNlk6V2cgIGh7UMmETsL7Cp17hSwEL6b/dDFIt/5tA
	QmiK4raRNc35UbfN6UK/8ZHYoonTyW/XyMXpvurtFTXB5wwJ21PK93TI01G2rZXfwypuaDjVBIEZP
	lh7D/RXFNhJsviyV0YSdh4ABjm5HUSq4PQwxcqRsQeTZcPwMVuhA4d9DJbEUPw0/snQrFlY3d56Sc
	CmwqgFVbUUUXwDQAWvLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmz38-00000000N22-252n;
	Wed, 20 Mar 2024 16:44:22 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rmz34-00000000N0u-3MTI
	for barebox@lists.infradead.org;
	Wed, 20 Mar 2024 16:44:20 +0000
Received: by mail-lj1-x22c.google.com with SMTP id 38308e7fff4ca-2d41d1bedc9so1082681fa.3
        for <barebox@lists.infradead.org>; Wed, 20 Mar 2024 09:44:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1710953055; x=1711557855; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=WzZfUmn6nbbDF7XhsOwY7dPMm8Dvd465HS10WQ7vfYs=;
        b=np6yqDdSGjH1ieg15Km04FbJi0yqKbrGOH97H2JwcWCzUf3e1YAA/bh6lpz/avYhrP
         MIeGszq5QgkMNBxpDn3o6/CMecSiXAHuq3cRGpQziqvyh6c1RG8+ULswDDIApL/P8T47
         i2GM54adscWsWjTOwwgz5FRhd7sfkVYJZZidYsmd3TqG9I0HaWjyc+5e2V3QGx+6S8WS
         bQhZMjt8/g/GXo7ODRQJcKkmTGGDLJ1DvlPs95T3ITgk5ffUIOQtfbua5aMKozWJ8jKr
         KdwHhAww7RlTnhxFsjoaK68uF3RPsjDkA3kXpKaCJEEooTo1fsfHeNL7PY+cfzM3CDzl
         kp7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710953055; x=1711557855;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WzZfUmn6nbbDF7XhsOwY7dPMm8Dvd465HS10WQ7vfYs=;
        b=c+2zOQW38srjNxt4U7/tmmljH9VmPpoBxylpJ/vUNqHbRwEh2LP9jP3rH/ot4jzuzF
         pCYG9kqe2w1QC9PGYQBTBkXQySTXRNpHsP4reHXGbQsXy9SkvNO+lVieq5qZtyCnF5K1
         mTCjO1BOYPs5NVROyKAek+YRzgYoU38g10qYsUrB/a+qIcVKbUmJ2Ry0/T13qjqNbnsH
         Sw4pCZO5idGukPz6frYCXTaDcKdZisUOp/q+umXe1+8UhXFXhR0HodPJUG6juEBbwt4M
         G0iSL+kvCNJVJuE580ZT7PT0wxzkppZFp+al2yqL/frNr9Yya8XSj5Vr0lkJXZDPSp2X
         KACw==
X-Gm-Message-State: AOJu0Yxx8bwSmXXsTuWifGCYNxZLj/m6JIKInBoZt7mTafrOr5QB++BB
	phQQaQ/Wmq7ZVH5c8GysKvXN9ue6hIkwhiDi54CYFeDCl15snqFqsNeGajWVTCjZug==
X-Google-Smtp-Source: AGHT+IGg0i9sNAD5liYFFvolYIaVr72/t0wfLS5fqcm3JKH/dN9D5SJhb5xqRt4gpEUvV0zCZKmxiw==
X-Received: by 2002:a2e:8653:0:b0:2d6:87d7:601 with SMTP id i19-20020a2e8653000000b002d687d70601mr4815337ljj.9.1710953054948;
        Wed, 20 Mar 2024 09:44:14 -0700 (PDT)
Received: from localhost.localdomain ([46.39.34.39])
        by smtp.gmail.com with ESMTPSA id l16-20020a2e7010000000b002d2ab6ae675sm2198154ljc.137.2024.03.20.09.44.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Mar 2024 09:44:14 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Wed, 20 Mar 2024 19:43:36 +0300
Message-ID: <20240320164404.15347-1-denorl2009@gmail.com>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240320_094418_923954_2AE63609 
X-CRM114-Status: GOOD (  10.76  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] clk: fix clk_set_rate command help text
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

It was at odds with the list of options, with the former mentioning
RATE and the latter mentioning HZ as a parameter. It seems that every
other clk-related command uses HZ, so use it here too.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 commands/clk.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/clk.c b/commands/clk.c
index b1741b9da4..606519091e 100644
--- a/commands/clk.c
+++ b/commands/clk.c
@@ -67,7 +67,7 @@ static int do_clk_set_rate(int argc, char *argv[])
 }
 
 BAREBOX_CMD_HELP_START(clk_set_rate)
-BAREBOX_CMD_HELP_TEXT("Set clock CLK to RATE")
+BAREBOX_CMD_HELP_TEXT("Set clock CLK rate to HZ")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(clk_set_rate)
-- 
2.44.0



