Delivery-date: Mon, 21 Jul 2025 07:07:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1udikk-0027bB-1q
	for lore@lore.pengutronix.de;
	Mon, 21 Jul 2025 07:07:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1udikk-0007O0-1R
	for lore@pengutronix.de; Mon, 21 Jul 2025 07:07:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=i2Z/DPztEZO/9hxQJWtsAXrzCrVjr+zU3OQyigoCJIo=; b=BooKcj5nKV8eKc
	Pvd/kRI8EWbq3tcWiztdk/kA6JowLAGCBPA3uPh4WuHmUMOr/Vl6mNXYqLidhcv7FM6YNLO00gsoc
	cM6TpmZ4W7RlGkhGJgIJHBbkpSPzPblfGiCf5VzgUeqX8EZ6jvevHg1s//eNKmx1/0Zd9rejVmqpZ
	SioPBvZK6yGe9rwNlxQOJOyO4g86nHthlN8/8p7V+7r9QwcC6DJ5QKB8XvijF651KPRm9PyL9lh5q
	Gb8cJHTPcMqPVjVHIP/HMtunzUcmt7j0q52lHagxVm6dIb64nDVBEwa9qodxNOY4btGg8PHVVR76M
	lTPsTlxqmWDiwgQSUkZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udik1-0000000GEE8-1sPI;
	Mon, 21 Jul 2025 05:07:09 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1udijy-0000000GECr-07q8
	for barebox@lists.infradead.org;
	Mon, 21 Jul 2025 05:07:07 +0000
Received: by mail-ed1-x52e.google.com with SMTP id 4fb4d7f45d1cf-60707b740a6so5600123a12.0
        for <barebox@lists.infradead.org>; Sun, 20 Jul 2025 22:07:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1753074423; x=1753679223; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=i2Z/DPztEZO/9hxQJWtsAXrzCrVjr+zU3OQyigoCJIo=;
        b=CsiEb+o5rMWElQCNnNI+GEN77adrNJRRZvPACcyVZBSkizcVQzLhnKP1at2/oWFxzv
         zC6NUOBWqLJOrXRLo+mzKSaaJlqAcWVud6r1Qxkl3cVL9Q0E0vXD4Z5w5iHXQwdukjoM
         Ie1nRkl4tP5JcwHUTSdQYn0iWwAD3wiisnt8QA39p9ijK94tI5xXnJLH7nlRtJD6L3TN
         z474k9gkAe1pElhnb5jn95lrvHK+SVzoFIRLapwlP74siQc+Ar7MwyjHMqvlpybuY426
         EQsN93qKbsQFMtCQ/36Gfq/UpCA94roarXG9gGmNngxVS6I70ACA90hcFiJAJQI5hwQ2
         WNGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753074423; x=1753679223;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=i2Z/DPztEZO/9hxQJWtsAXrzCrVjr+zU3OQyigoCJIo=;
        b=kQxYmAJD/C0X7sTT7l+JW8J0xniofs2FlSeaBZJeg3G/sk37rDbpGxDZ2M/NT7o2HK
         +cKlAVJGqGV7ykLpNqA/x5P9MR4Xuu3llS6EbzBf14kQIOfxgc8NzSsd4bnaVqy+Whot
         wqp6d+KVKZRk39K7AnOY4Vu7uFl9VkD/nQ2IHbinVW0p6cnJbG3Y8KHaj6RziUng8iIt
         kS4DfRjBHEpwI8YyBMi0MsM4RYt1dtOt6Hlu9o16PUE8BWvJ1hg1KRjTvr4Bd4hY3sI9
         96thXuhtDy4LfBC82WAx3XlEkfYMKmnCtI7VBZZYFmyXHIqn8W2p1ICM2nNPptodpyt4
         ufEg==
X-Gm-Message-State: AOJu0Yyy436kb1Ijqz2pQrsa3sjJ8MwohGGz3bb9Rlf0olbDXGUaQZP0
	imq2nR6jJjRFOZwq0g/qTgPmroGfaDEqpYaj4fpT1rcEMu+7tVrgcYEx/apVUw==
X-Gm-Gg: ASbGncthsEuvRvdYsI0er7b9uoQQoYFasR2U7CaJsWNMGIVgyVERnNWi8M3zIIEwBGl
	BJPNKYhRG9M8MLd94M30nksjkDYrj4/WY+K1990ww6KVsKykCgSMXLfGXSM7Mszi4nw8xG/pVS1
	IJGkAxWglO20ygNkJM9Q9KcOKFd/aGPnzwcP8b/dMyCeY0uvn13D8DcOxgCAyx5xD2t4kX8GZma
	HlS8chIvnggkTy+ihh3PZ5KCF4CniO74uTmfQ3hz7XEPRW+tWYDJwq8wKCDoDN560X0QNpxDl3u
	S1Y4AGL12E+MvhmGSMuRyPeI3Odl8MS3R1CrWvCC7ke1P/DgD1O1riCvPuPuh89U/euce85ZG99
	hneqhYRtMN9IjmZ3zik+vYJQu0BtaALT2vmaNTFljvRI3PLmggHkiqTXDIsk0Z4vn
X-Google-Smtp-Source: AGHT+IHLRiuBQ6U+F6xWUH+gnUXoeUY0mWJ14EcFvWlDamqKJGsDr3tHk6dXxrCgKAHQ1uzhk5gGag==
X-Received: by 2002:a05:6402:5c9:b0:602:e46:638 with SMTP id 4fb4d7f45d1cf-61285bfad49mr16828392a12.26.1753074423189;
        Sun, 20 Jul 2025 22:07:03 -0700 (PDT)
Received: from cinco.. (109-252-15-179.nat.spd-mgts.ru. [109.252.15.179])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-612c8f5cf4esm4742135a12.32.2025.07.20.22.07.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 20 Jul 2025 22:07:02 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Mon, 21 Jul 2025 08:00:41 +0300
Message-ID: <20250721050045.17310-1-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250720_220706_071297_A05726A1 
X-CRM114-Status: UNSURE (   5.62  )
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
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 0/4] drop unused declarations
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Antony Pavlov (4):
  include/stdio.h: drop serial_printf() declaration
  include/scsi.h: drop unused declarations
  include/of.h: drop of_parse_dtb() declaration
  include/driver.h: drop unused declarations

 include/driver.h |  9 ---------
 include/of.h     |  1 -
 include/scsi.h   | 14 --------------
 include/stdio.h  |  4 ----
 4 files changed, 28 deletions(-)

-- 
2.45.2



