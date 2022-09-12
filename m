Delivery-date: Mon, 12 Sep 2022 10:49:49 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oXf8X-0022Hm-Nt
	for lore@lore.pengutronix.de; Mon, 12 Sep 2022 10:49:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oXf8W-0006az-2O
	for lore@pengutronix.de; Mon, 12 Sep 2022 10:49:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=y56yUDzkwfP+T93Z4jWw1Dy2YuOLdxTZOZjeTdsMLgM=; b=AanAYzDRTWM5xebpW22VpsJbJr
	UcuMJAozQ8Gu54cV5zHoEONHPWm8ekq1SvXVmeV+FmoYO5+TVC/VcU4WddOvHvzmxulqO9Ci9U+bM
	DemhS/RkTZW2nzvdeiiynTTyD+xyH9UVFokkEbilESOvqM7CHh4GKDvfYvW6FvJwS8e/4md7h5s0L
	oUau1Xiy+BUMh2HNsVfoDjpn0j+9YDVhllh+DEWXpeVsRqcyzP+rPBeRrah92iCZ9m3y95JLegnX6
	ONfbe7s11udJ9ZzXKYevrcL+gB87zCRtVreRRvayEEvFW4cT7ZaXaZWjTc7NmZ9cKVdJP7gNK4J8V
	RmX7EQ8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXf6x-007wWL-0W; Mon, 12 Sep 2022 08:48:12 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXf5N-007vhZ-UV
	for barebox@lists.infradead.org; Mon, 12 Sep 2022 08:46:36 +0000
Received: by mail-lf1-x12e.google.com with SMTP id f9so12932131lfr.3
        for <barebox@lists.infradead.org>; Mon, 12 Sep 2022 01:46:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=y56yUDzkwfP+T93Z4jWw1Dy2YuOLdxTZOZjeTdsMLgM=;
        b=O+al2l9/1NnTjA65fc5td5+M+zQBYSssG5wdD7QCxLuG8kMZxArOixE8ffF9j3z1bD
         3jNVrQBG2x5Ot43P5q2hJwX8mB/MvdXy69ThApdh7RYXSFEyFgjwR9SpBUuR848k99SW
         bxsq7glNrRs5nS+4hyvtH39uH6s3NBLMm8KO8X9q8zpfqlvB1orkE/9/OA8g8tm+086J
         oCJaSKD20gQwRMHL/JOS3h+yOwd1asImS4vRyugQouWdyRpHgXJrTXfKb/+e0eVj8ACD
         DS2Ucl6M3vZFDdQnrMHIf7tbiFYHWH7s8EmNYGYdiFXsHCZDBofA3G3cZwWjBl7r3Ul4
         ujvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=y56yUDzkwfP+T93Z4jWw1Dy2YuOLdxTZOZjeTdsMLgM=;
        b=2ZLhBps0xKtVzVGE6htiUkxJiSmIkAQ+x+ACS/7JUQ2ZrLODKM00XPcX7Fr8jqLZtZ
         qUAgsqy/SFNGjZ8eXFVKFPaPe9n11+zMGL/Rk8PVewWcO/Dy3T7x/miun1KXPEpjIKmz
         5ATacehRja6fBx+lMBRzaFdeElsbVkgL93Ad+7MdXsh5QHgFAvgHQyPQRCgIiWKjF39p
         zRgw9dDpMXE7+CgpbiHlWUHAARDpveoweXvNg3erUWvnDvaW3uwAkvDNkTJ5MSgaD6B7
         L4daUUtKyshKbcUCXH+EE9MBn0iiPiaxQAw4t4JhHClbIjNDeBFbPMjD9qPWzhkeSPFD
         I80Q==
X-Gm-Message-State: ACgBeo0GfJglotF4qETheaD5u2wUo94QHtma5CwFKm7gZc0lpxZIYZYa
	K7Kh8x+ElxEB+PyCint5lXrKh/x0wdSVLA==
X-Google-Smtp-Source: AA6agR4xFd2p7ZYvbC7Ubd4yyh/Y444czm7iRVUw2aRvxbXyrD/R5Pl2xvsEp0BPGeMRGYY2O6VCwQ==
X-Received: by 2002:ac2:4c54:0:b0:49b:182c:2051 with SMTP id o20-20020ac24c54000000b0049b182c2051mr357174lfk.369.1662972389425;
        Mon, 12 Sep 2022 01:46:29 -0700 (PDT)
Received: from localhost.localdomain (109-252-10-171.nat.spd-mgts.ru. [109.252.10.171])
        by smtp.gmail.com with ESMTPSA id i10-20020a056512340a00b0048d076373d0sm945457lfr.98.2022.09.12.01.46.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Sep 2022 01:46:28 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Mon, 12 Sep 2022 11:46:27 +0300
Message-Id: <20220912084627.84575-1-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.37.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220912_014634_047540_DBDA34E5 
X-CRM114-Status: GOOD (  10.17  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [RFC] Documentation/conf.py: fix copyright years
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

N.B. N-dash is used!

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 Documentation/conf.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/conf.py b/Documentation/conf.py
index bcd8633c919..5fb8b07c380 100644
--- a/Documentation/conf.py
+++ b/Documentation/conf.py
@@ -44,7 +44,7 @@ master_doc = 'index'
 
 # General information about the project.
 project = u'barebox'
-copyright = u'2014, The barebox project'
+copyright = u'2014–2022, The barebox project'
 
 # The version info for the project you're documenting, acts as replacement for
 # |version| and |release|, also used in various other places throughout the
-- 
2.37.2



