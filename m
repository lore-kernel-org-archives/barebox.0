Delivery-date: Fri, 25 Jul 2025 06:33:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ufA7K-003TGI-1E
	for lore@lore.pengutronix.de;
	Fri, 25 Jul 2025 06:33:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ufA7J-0006hr-QE
	for lore@pengutronix.de; Fri, 25 Jul 2025 06:33:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=kTiUlJiux4Dn0q1kYJc9QNc+Yu2fAv622gSix8Gl1aA=; b=Fd/yCt39JFl6u0V7FhxUls50lh
	Ga3B/94HaZdOSnxy0YVZ0xxAi40cGUU0QZBqRpl97S+u2Vo79JNSZGFfNUqCQvlkd/SnBk/q1meR+
	+WPjNO4ixd7VSGVWiBoR80u7tmAj87i1taWfWxyvjcqjmj6zhZK0aNLjc5zYGqHgLpcdl4EmnepOW
	nq/laeIfv68PW0WEY2UFth37A8F9X12PBdBupaVACq3XtHJM1UF6Er4eWu/eOgDeraMc8wdaCY3P2
	dYQw8O7kJZc9CKP5NahLaE17aHyp+TWyvaVYXig5PXO/iHnokCWVi3Xo3XTl/2NbvfkNPYy4ZQPle
	Mcu7DnaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufA6W-000000091i4-2Pwr;
	Fri, 25 Jul 2025 04:32:20 +0000
Received: from mail-qk1-x72c.google.com ([2607:f8b0:4864:20::72c])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ufA6T-000000091hk-3041
	for barebox@lists.infradead.org;
	Fri, 25 Jul 2025 04:32:18 +0000
Received: by mail-qk1-x72c.google.com with SMTP id af79cd13be357-7e169ac6009so184746985a.0
        for <barebox@lists.infradead.org>; Thu, 24 Jul 2025 21:32:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1753417936; x=1754022736; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=kTiUlJiux4Dn0q1kYJc9QNc+Yu2fAv622gSix8Gl1aA=;
        b=ekDVdhfyl023PxNxJETKdHP5q6dnDZcIWXKkxqFJjp9WuNNjqMq53PO2ItJA189dSf
         x3hUGyKmxTWuVTg/u9OT/Ya0KdMuFMfcUe9XjnYLGVG2gYlc1wRRoHO61mAoRWzcbVY9
         c5Aho4CY3g9og+7vHwVunUz2hTTmEZi2KVuuNTz+e5UgQqi6UtrtQQQQ0ukCsh1RtALh
         wOU7864tdbpC1vkk0MCfZVEbZ66Xz1bH1i7XQVeMr8KT2J9u2QKQXFTF14IwSKYdqeUZ
         u/stEmoF1otvek8mmlEcY8+cMeklT6jV18HLUQjICRNXu1Xw4qv3xE88WnO0kDFmlw88
         TtLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753417936; x=1754022736;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kTiUlJiux4Dn0q1kYJc9QNc+Yu2fAv622gSix8Gl1aA=;
        b=iNL7/INR59he/lI5aP6it/51FoxHrB6hL/Rm1/a55GtbHoBHsABkoB1xUsKJYQGIjo
         IQl8Lf0P+8zguoNDPXfpx7RS8hbfAxqUi4hvJAgYxJ3we3S+VKAdDuDQ78/d/kzoSeta
         BwgqwWwgc4cMM8MeOjjZfDcfVbHMz0fie0czKehcnTFP7eHS5gqJU7EoIvSwufq2St8o
         an28fPJR9sOZeh4TD9lp9sIi3mcEUze7Tqiwkz7ttxmSXVlCnELRY51IgAt7jdbvRhGT
         KIP69XdpMAJzepToO6F3+CyyDGq3Y54rJ5xRWsOHlOxfYbwa3kKvJ0daXPeAm49kHCkA
         bttw==
X-Gm-Message-State: AOJu0YygUxe1kXW3nTVlGnvPNgTIDR7n9CH9s2TwT6MQX3W7OB/c97h1
	1QXJQ/KZNH9hmciaaU7YGIOlU6RpJW2HUKDoaS3d7lFvI4sxzi5YlD8u
X-Gm-Gg: ASbGncs4lxBHYiJYWeaBm+mkljYMaG8XkyAw67Drr7uTywlUSGznMJ2zNM/Em8iLwg/
	r0ayHEtQROpUDh+UdHY9k/jc2EvOuGBeSecQUwjW4mB5Lur60DFMFP8Zsc3c9kyUsosnESUDXM0
	10h7mHKoMELrtojPxpuneiSZAOS5hB2r0nXhoNnhJY8Lj3KjdagWtXsJLXCaq7/Kg/ol9cmYx94
	9ZlpoUr3nsQNAriwuYskRmdFMXOJGRgw6h8cTawDS3aT7IEet8PiA8buAXGd9LTvhJ1/1vU4c/M
	M2DXXMht28k6PxxzYdgdiXmU/cHP6zt6VT+dzs7Z8aVWdgOVzmLrwrv5iNhfuvORY5u5w1UeBqr
	TpV/fBUAySG4YMyyJID+DMBCnGCqyqLkoLdnYy8bE
X-Google-Smtp-Source: AGHT+IGK6Py14p47u3F7Lb8snoVB8LoOhR9wUbOaLEt1MD6qPrjeT/eQHGyAeJ/6qh9UvIIMSvdceQ==
X-Received: by 2002:a05:620a:4690:b0:7e3:2ee5:71b0 with SMTP id af79cd13be357-7e63bf56454mr59040785a.16.1753417936006;
        Thu, 24 Jul 2025 21:32:16 -0700 (PDT)
Received: from Latitude-7490.ht.home ([2607:fa49:8c41:2600:554b:f251:2e5d:bd38])
        by smtp.gmail.com with ESMTPSA id af79cd13be357-7e632e38538sm207072885a.73.2025.07.24.21.32.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Jul 2025 21:32:15 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>
Date: Fri, 25 Jul 2025 00:31:58 -0400
Message-Id: <20250725043158.184327-1-chalianis1@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250724_213217_754480_944B17AC 
X-CRM114-Status: UNSURE (   9.08  )
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
Subject: [PATCH] pinctrl: tegra30: fix typo with variables to control the drive state on nvidia pins.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Chali Anis <chalianis1@gmail.com>

Fixes: fd940ff6512b ("pinctrl: tegra30: parse drive groups")
Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 drivers/pinctrl/pinctrl-tegra30.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-tegra30.c b/drivers/pinctrl/pinctrl-tegra30.c
index f706ae6bfdfd..c542dee96ff2 100644
--- a/drivers/pinctrl/pinctrl-tegra30.c
+++ b/drivers/pinctrl/pinctrl-tegra30.c
@@ -669,31 +669,31 @@ static int pinctrl_tegra30_set_drvstate(struct pinctrl_tegra30 *ctrl,
 	if (schmitt >= 0) {
 		val = readl(regaddr);
 		val &= ~(0x1 << group->schmitt_bit);
-		val |= hsm << group->schmitt_bit;
+		val |= schmitt << group->schmitt_bit;
 		writel(val, regaddr);
 	}
 	if (pds >= 0) {
 		val = readl(regaddr);
 		val &= ~(((1 << group->drvdn_width) - 1) << group->drvdn_bit);
-		val |= hsm << group->drvdn_bit;
+		val |= pds << group->drvdn_bit;
 		writel(val, regaddr);
 	}
 	if (pus >= 0) {
 		val = readl(regaddr);
 		val &= ~(((1 << group->drvup_width) - 1) << group->drvup_bit);
-		val |= hsm << group->drvup_bit;
+		val |= pus << group->drvup_bit;
 		writel(val, regaddr);
 	}
 	if (srr >= 0) {
 		val = readl(regaddr);
 		val &= ~(((1 << group->slwr_width) - 1) << group->slwr_bit);
-		val |= hsm << group->slwr_bit;
+		val |= srr << group->slwr_bit;
 		writel(val, regaddr);
 	}
 	if (srf >= 0) {
 		val = readl(regaddr);
 		val &= ~(((1 << group->slwf_width) - 1) << group->slwf_bit);
-		val |= hsm << group->slwf_bit;
+		val |= srf << group->slwf_bit;
 		writel(val, regaddr);
 	}
 
-- 
2.34.1



