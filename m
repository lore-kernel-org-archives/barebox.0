Delivery-date: Thu, 29 Jun 2023 21:58:57 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qExn8-008kfm-Iy
	for lore@lore.pengutronix.de; Thu, 29 Jun 2023 21:58:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qExn6-0008Kc-Dw
	for lore@pengutronix.de; Thu, 29 Jun 2023 21:58:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=+eIfO2iNm06HW0Q90v9Q9acoh36Z1QZl8riBCAalhpM=; b=xgDeYbRFbKy04y
	vF1Ge98QRLh3K40HgZUCj9xRGQG+TFzvRD6ACPQl1PJbW5+Oye2hx97gbUZJbaYcTSmpvF17DztR3
	T/hV3RUY232bjvpy4IJlQIHPzWyHiwiqTvGxUKbY+xwVPjQoL1Bmtacq4BPZvu+vuRd/IQ61NPjeY
	D+77rrhzJ5oYuPHJ6M5RfV56jCgoa9WKqaY/kat2g8QpMQoxiA/hTVRzh3jpPq11w2E0eRX9SxLQf
	Iazk7S4tG+/ZbFI2tQ1nFlQDbrQgaYC6gSZSy283gB8qVei3LxbsnuYVbotzi8ZpVIo2oeVlcSwVD
	KpxC1VSwNkWWwOxmCo/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qExln-0020sP-2y;
	Thu, 29 Jun 2023 19:57:35 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qExlk-0020r3-1g
	for barebox@lists.infradead.org;
	Thu, 29 Jun 2023 19:57:33 +0000
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-4fb41682472so1779180e87.2
        for <barebox@lists.infradead.org>; Thu, 29 Jun 2023 12:57:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688068650; x=1690660650;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=+eIfO2iNm06HW0Q90v9Q9acoh36Z1QZl8riBCAalhpM=;
        b=YjKHbv+KnVZVrQkP5xUTi4eIVm0T/+a4rGgZT7Htrb3yVFZzFE5TFDJ2SA58JaYhGR
         fnMtsB8VRGsiCywMcodWSCBcQuH9tyAkNNUIu24YxV716WQ2ln649c7MEAGvB4Lw2fqM
         gbLDEZbUCKEKpRFtg2rQrxJkPxO9pB2pAd2apap7zW1i2We5u+Sc8mfbl63upTl0esjE
         lrxASG/Npce8XGcjiKkkTOzBO8JoPm8pAkwHmPrUF1t4b7JWTA+nqV/kL/XbLyfOyms5
         dJS4Fp3Qz4fYg8Orfcacr3XAAAUCjCBdL3tLQ0Xm5ygZ6P0Xef2PAGUL5kue/D8QBLxQ
         shuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688068650; x=1690660650;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+eIfO2iNm06HW0Q90v9Q9acoh36Z1QZl8riBCAalhpM=;
        b=aGWTw7aWtl1WGJzTW1gB9aq1Yt9aZGOgI2T4A5zhqUNaazg8KcVQhZEFxFWSXeXave
         XPpaMYiIzyqS/fOcjuMQhZEcvfSQtycgwAVXFwvHtpjZUf/n/N0QjdMZZOQlts1DDLRz
         yBABHHpVM8DVMCBQTyen6f3OvQ+I8BOeknVSvAOCjJqZ8zRZzXzKvEvp0bpSQQLfU4Q2
         zE+kkhnQCz1b+nDMFzPT/HrM6ltKWzcMO60qByOK1pylaHwVuKazLkW4Z97Dy6aD+JmX
         R87/3zORZr5adItf/UQAv9IZrTFavNnFKBXWkQN53+JJyFCbcrAiCxS88eilghTR/y6i
         mFVw==
X-Gm-Message-State: ABy/qLZqCbFNzFdSq/mK1SxtIk8soHo6Fr/Dc+RZ+KJNrUBgBdPFvmnM
	9DFi8S5eSJDu1VlFOpK+JlPPzB7FtoX1YQ==
X-Google-Smtp-Source: APBJJlH2eCNJE2oV3SIN3Xr+JXP2XelTy38JGFMLdhoYxNhyEQ9tipZeDhAQfvujts5hvmXCnz3ERw==
X-Received: by 2002:a05:6512:1094:b0:4fa:e7e5:66e0 with SMTP id j20-20020a056512109400b004fae7e566e0mr830375lfg.48.1688068649344;
        Thu, 29 Jun 2023 12:57:29 -0700 (PDT)
Received: from localhost.localdomain ([188.123.230.210])
        by smtp.gmail.com with ESMTPSA id m7-20020ac24287000000b004fb7b2e3ccasm1024123lfh.141.2023.06.29.12.57.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Jun 2023 12:57:28 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Thu, 29 Jun 2023 22:52:56 +0300
Message-ID: <20230629195718.14416-1-denorl2009@gmail.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230629_125732_562568_01BDFB6D 
X-CRM114-Status: UNSURE (   5.38  )
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
Subject: [PATCH 0/2] usb: small dma allocation fixes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Make sure dma buffers are both properly allocated and freed (they were
not in a few places).

Denis Orlov (2):
  usb: storage: fix missing calls to free()
  usb: make sure dma buffers are properly allocated

 drivers/usb/core/usb.c          | 16 ++++---
 drivers/usb/storage/transport.c | 74 +++++++++++++++++++--------------
 drivers/usb/storage/usb.c       | 30 ++++++++-----
 3 files changed, 71 insertions(+), 49 deletions(-)

-- 
2.41.0



