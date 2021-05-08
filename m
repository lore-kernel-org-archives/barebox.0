Delivery-date: Sat, 08 May 2021 21:40:05 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lfSo1-0007qa-7Y
	for lore@lore.pengutronix.de; Sat, 08 May 2021 21:40:05 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lfSo0-0008AJ-EM
	for lore@pengutronix.de; Sat, 08 May 2021 21:40:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=TZ+z3tOwLsESbFiGOSL4eNa0cz+Gt3jHB+tzJbnMb/Y=; b=b4s/jUeryq9HHEULFGBnzBB2r1
	MurA85qq0V4ywg2AujJkb1/ovuGEEcVRRVlbifYm5mVaRXQ5iJQe7xlWp3lgqNNnupyT7tbeJFlVA
	4kVVDyxK84XE1ttm1p+sKgaLPPLA2G3WrQsMpRJEnOxdUhmbWJHEWOPbbBcRfa1MtTG7FCa94sVpE
	WXnEHLSj4MGHrikxk86xEglmT+4SKD6IjT0Rhj+qYqwrWZ+yguprkrCEe2BkKOExlh29cnbHUcubL
	smdV8Mnd344CFY46LXBApGYslz6e/8NaDGpbXae7LOFSaEmgmtzdVgMR2ltyZC4sMNsGT57UqFAd9
	KvCIo9Og==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lfSn9-00ACSS-2V; Sat, 08 May 2021 19:39:11 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lfSn5-00ACSG-EZ
 for barebox@desiato.infradead.org; Sat, 08 May 2021 19:39:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=JHYRvm82psMeQG90z3+Q49Gdz7H3Rw5xNiDKwPwkOBg=; b=p2f/xUI8Zo7OycxUr/dRhlnN3O
 wM7cQOjeBqu7KU1pPuWwnN6+VMzN+rKk3UrPrTW1/9/m/Q+2mYcLOwlW9kmJf1KUTDE+2dmaP1PIc
 3ALLjJTtDYD5kVaZynkNpNjlGhodGTZxuQeSFjxgtDq2FAxr5Y2Q/HiQHtrc5cefOhCjpGhU/AzZn
 MzonS882pKaM8ZT13h2e9pMH9IImqEiaeMmDSFl7A7kgAbWoQTVhY0mdz3u/GJQ5DVF1dpVKOmumT
 kgQ5gOmYO5J9+lrbjSadBOhKxdHh6zWZG7452wJ2riTNySx79FJYBgG8gRqpCRmdQ/M9cG/pCakme
 kLG9PvKg==;
Received: from mail-pl1-x62c.google.com ([2607:f8b0:4864:20::62c])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lfSn2-007gvf-O6
 for barebox@lists.infradead.org; Sat, 08 May 2021 19:39:05 +0000
Received: by mail-pl1-x62c.google.com with SMTP id t21so7113927plo.2
 for <barebox@lists.infradead.org>; Sat, 08 May 2021 12:39:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JHYRvm82psMeQG90z3+Q49Gdz7H3Rw5xNiDKwPwkOBg=;
 b=DHN7QNAwonuOV6Gq1SR3E04z+c8IeLPFC/9Ql08zASjt76tiLCFXp+4xfMo4gKJqXR
 RDEZsUw1iF+8XCcQxn4yHcuKGExjXSocNTEQi+5pIH6XjmbxFTuHbjuk24Zug7nbgg5y
 FEG0s5azj7WeOZwrOqc6ipFKYMY1buNBsTKR6TQ3vNtGRNmNNqdCU3d/qdghEfjWI3y7
 VzZ2iAOl4mfzh+bz13NcOMYYNZ0QgP+cBL3itNxzv3Y55LNHqCwPPPYtuJP59MvkKGvL
 T1fr7VGBuJISdeY4Cp1LP/TA5Y0B/p/QHJlAeib1mpjvEPA6lq05njcNa5VmZQLMrMcN
 t/AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=JHYRvm82psMeQG90z3+Q49Gdz7H3Rw5xNiDKwPwkOBg=;
 b=ghKeUGCs/5kKbgJVxoWUbrgZW5nHUHecjuBWMRF6UU36KQw5eD1bOHdDQiexnHs0EM
 ZCKxGaU10yUDLb+lKmVbHW5VyVWW+bJX4feIlI/oIfDbJkAoubkLt9RY0dHlciZsctKF
 gWCMK+6pWYsso4FH0NsJ0xEFtVza2zFySWM8+Xl+7XO/kYs52LjFuN2YyfKd+Vf3Hzpn
 1bNq90+u6aUn/YX5nXy3sOkGVWrTFgMyrE6BQ2K+JKz98MQ4WS6W1hnG7oDwVjKQUkLg
 BXLY9wN8TaiQVPGls+zYWuH2eQxJQKjFn/khCKOGLTVwO3+tgNnlXmjbBDq/0hObwuQy
 riUA==
X-Gm-Message-State: AOAM532+IUaZmN/+au5gZMom5f64uLwWm1lWJeVnfqKmXFjYltCDucSP
 apKkohUqxGwvz7YaC9IOLaQQO1K5kvg=
X-Google-Smtp-Source: ABdhPJwY+PuvHUq2NU11w1AoA3TuOnxnlxl3s4kjsmE6Vsz20MqNtV/8xT4LBMfjC6lFxPwpc/XFJg==
X-Received: by 2002:a17:90a:a2e:: with SMTP id
 o43mr29767534pjo.163.1620502743387; 
 Sat, 08 May 2021 12:39:03 -0700 (PDT)
Received: from localhost.localdomain ([106.207.200.79])
 by smtp.googlemail.com with ESMTPSA id g29sm7829664pfq.148.2021.05.08.12.39.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 08 May 2021 12:39:03 -0700 (PDT)
From: Neeraj Pal <neerajpal09@gmail.com>
To: barebox@lists.infradead.org
Cc: Neeraj Pal <neerajpal09@gmail.com>
Date: Sun,  9 May 2021 01:06:56 +0530
Message-Id: <20210508193654.81389-1-neerajpal09@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210508_123904_818121_64C203B4 
X-CRM114-Status: UNSURE (   8.08  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.4 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] Removed Unreachable code: net/net.c: net_handle_arp()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Neeraj Pal <neerajpal09@gmail.com>
---
 net/net.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/net/net.c b/net/net.c
index 4dffc1bd5..fdb9ab826 100644
--- a/net/net.c
+++ b/net/net.c
@@ -577,8 +577,6 @@ static int net_handle_arp(struct eth_device *edev, unsigned char *pkt, int len)
 		return -EINVAL;
 	}
 
-	return 0;
-
 bad:
 	net_bad_packet(pkt, len);
 	return -EINVAL;
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

