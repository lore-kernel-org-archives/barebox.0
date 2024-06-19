Delivery-date: Wed, 19 Jun 2024 06:55:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sJnMM-008VlH-12
	for lore@lore.pengutronix.de;
	Wed, 19 Jun 2024 06:55:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sJnML-0008HA-L1
	for lore@pengutronix.de; Wed, 19 Jun 2024 06:55:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=73blPzG7dVq1z/rqiJ77wIVZvjQcIXj4dNuEChYxAB0=; b=qeJGkpu5pmntcS
	CLGxh0PviF1m7XBB2TnkpRalT8+Jy0o7JHkXxKvxPEkUmTsSaCXbZhaztYXv1B7/8cr18pVCFCjx3
	PByUXJUYzortnKduOa3xgNoi5+HXhJ3p4r/dxdRJyOMtcGOE6DLOrYWMxAZ6vWuEA1XTlp+GsuiRv
	qhkCRkP8wiqm3EYhzDr9jfafi3q+ddbCID3/0XhORqQMfNGILSOxkiHk+aGOwwczzKnyJrDb4A7jZ
	u+u+a8aSE7leYHhxmtqqKxFUuSCx+16oB3B501nUOYEnYIYSfUHuD3eJtUTCiVuvDE6UNsN/xTW4P
	n6tAXTLv+QFP+CvOF2zQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJnLa-0000000HS0O-2Kig;
	Wed, 19 Jun 2024 04:55:03 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sJnLW-0000000HRzi-2QTX
	for barebox@lists.infradead.org;
	Wed, 19 Jun 2024 04:54:59 +0000
Received: by mail-lj1-x231.google.com with SMTP id 38308e7fff4ca-2ec3f875e68so2656701fa.0
        for <barebox@lists.infradead.org>; Tue, 18 Jun 2024 21:54:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718772896; x=1719377696; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=73blPzG7dVq1z/rqiJ77wIVZvjQcIXj4dNuEChYxAB0=;
        b=HC9Kz65TP9QZhbXbLDqtBuJMMeaInn+M2sbeDjHg3NcxT+QOluyAmqm3BHDN6/XnH2
         qYGzGBLVSbM0ILFr+rsdgg5dxgBuf3dAHTkLiir5YfgYT2BQiVcYaf2KadsEEWYnu5w7
         64tyM1EBoNxwkynigX5xIgbJKTsr+uf1SOjEkW31uzALEsZRhULvBvi6hvULKUYc/a0U
         e7WNMzWvGLQCEqvqjdlaKKxEkDAWViSNj/flwAjLbMo7yH4d9ywucKx7dTLc6c7S3OUm
         3U5013sVNFQ6uw4UIEIrWzTj8sdT2Ucv3OuMEKFsJ1FUFyl7wEq+eBGlFjXTM6PGLqrX
         23pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718772896; x=1719377696;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=73blPzG7dVq1z/rqiJ77wIVZvjQcIXj4dNuEChYxAB0=;
        b=uhC6OT9kCBNprdZGyR3bIe6GCgsYyeVxqk3hF+XPKdDavpeHkzQGAlmRN5k9J1vgnb
         n7YB5unh+9DrTT83PoHMhw7aM/wGVRHOa9ma3MIl3jzc6TsBy8+mxfSOHbUJipTOMONd
         oRJB4Lx9AThzcAMz4+n7H7Rra6w1AM5pVCnI/iuGQtHxBySuN1/nurByeRC0dBA1h4rC
         Ox460+rjv2sifdkpBxlmbEus5GFVcU28QdZmVXWC0EIoEcJo5soY96EzwJSCwU+OCcPE
         PhUzPKjQevU3063Egnrzvk0NDm40BKo2AN3MS1cOJ6a8zxe9qSLId6euxhkrE7k4EAmg
         BcIA==
X-Gm-Message-State: AOJu0YxyXpzCZ7XYWq1Wfw8ChcHoCm6hlEOvXUNiOgjn7R5cAVfP4h/K
	7NFlB6YL10smkluONgw8gZSBM5t2Oxx6TKVjn0+05CynPTgjMuaeC6Sm6g==
X-Google-Smtp-Source: AGHT+IFfzd99B0ETv44dGjILK7HfUrcOE5AauCYfenw5wi3oQfWZVHV+/dPVh/A7+G+qtP+mdAJwJw==
X-Received: by 2002:a2e:9785:0:b0:2ec:3f42:a73c with SMTP id 38308e7fff4ca-2ec3f42a8b8mr3233541fa.15.1718772895264;
        Tue, 18 Jun 2024 21:54:55 -0700 (PDT)
Received: from cinco.. (109-252-6-122.nat.spd-mgts.ru. [109.252.6.122])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ec05c0707bsm19038951fa.54.2024.06.18.21.54.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Jun 2024 21:54:54 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Wed, 19 Jun 2024 07:55:37 +0300
Message-Id: <20240619045537.408083-1-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240618_215458_660592_F8EF9D0F 
X-CRM114-Status: UNSURE (   6.67  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH] images: gitignore more files
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 images/.gitignore | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/images/.gitignore b/images/.gitignore
index 1aa9620a42d..6f806755467 100644
--- a/images/.gitignore
+++ b/images/.gitignore
@@ -35,3 +35,7 @@ barebox.sum
 *.stm32
 *.nmon
 *.swapped
+*.rkimg
+*.imx9img
+*.fit
+*.missing-firmware
-- 
2.39.0



