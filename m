Delivery-date: Thu, 28 Oct 2021 03:32:04 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mfuGy-0001yu-HP
	for lore@lore.pengutronix.de; Thu, 28 Oct 2021 03:32:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mfuGx-00011k-Be
	for lore@pengutronix.de; Thu, 28 Oct 2021 03:32:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lvP/ljryTybkMgD3INWJ5wF9eZRFtNPE6l422nLqu8k=; b=qVpiGHid2dV035
	M33qWG9AEa8wWw1TdyE1KteAq8Ozu7GDu4adSvqZE0q99I4v7UuPfdvhbrmP1jIS76N1iBJ7aspJt
	Wgs7JSvChYO9u2563r+ObQ9sR7sxvgKE//BnBtOW1MQlyxVJi8PGmhAYLwa28Xs8C6L+om5/xz8MD
	4oWEINcSRZrGNGtcbEtmTcZN5AB0dnDb3snpeQspGhi5dm8ijthpL0wi0LLdVMTxQuOTFbrq1vXKH
	Z07kDocWa43K52YcUAJIEDzOmy3BL3sWOtIjmORfz9B6kcBRRZEFwY3rEVwgj+FBx4WoXkunqKRHP
	PgrEWznun06e9z2dl11w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mfuDY-006cBa-U4; Thu, 28 Oct 2021 01:28:33 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mfuDO-006c8V-VA
 for barebox@lists.infradead.org; Thu, 28 Oct 2021 01:28:24 +0000
Received: by mail-lf1-x12e.google.com with SMTP id c28so9941312lfv.13
 for <barebox@lists.infradead.org>; Wed, 27 Oct 2021 18:28:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TaxbWGZvtqvB9PqzJnUFYPe0rvAZ3J818HACdNc1wEQ=;
 b=oz8hq6pnexZZt+Iiy0Xulgb8Om/F4YR6yciYOiHREaZ6jfanjN9oO0g2aJj2Ytb7RG
 HrhX/YDiMtvLRjaxMxDtDhMUw9Gm5Ln0sKnNBF4tschui9SalIc2wQfeJ1I5n1drpXeK
 CsV3RoFdsWkp7jM1KMigMop9afp6d0ZjNrh17hduMX02HrbrYSOGaecnKGuUcxjsTrKW
 y42lvIpSGssQxCHVGIUFhtP+Xrpqa0rRSMv7xJs6G2g1pEKZwaprMgK9wHPNwr/AZ5U3
 JdbhPDcn8DM23WletuMuszlioa4Qc51kH6glMZcuu59J2mEE8LIaWS/OcxZfMW08dVeP
 T3yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TaxbWGZvtqvB9PqzJnUFYPe0rvAZ3J818HACdNc1wEQ=;
 b=Zzw4Gf/PqungVMdP9T8S3IDvolziP57EMwhWvStn8Dz0VZ9HEP1+hCvUmLLAdr+Ag2
 Q2n4ELEA7H/Ptzp38iJillrYzfRRa0XwHuUF6Uck/eL9bRaYpl40qkPeAM956KVEeZCS
 DtT29eVRcE5uFvi5oE2EmDJ3rikFveEl3hm0W88cHVVu6eiYusQDEshnE0UURru8nCLM
 B3TiW86W70xe2GIuEGh7+KbhE47PnkAmMGlQTuZUMI9F14KVzex7gjIkZ5L42ISZ/+wr
 M5VqXt8vUZlEcbbGnpvKeMCnPG76C3Zxhh1nwNUeV2e0gAcgQlvXQS1QttfNRXpbSwQm
 DgZQ==
X-Gm-Message-State: AOAM531EQR4gSZq210kIY5bzaxHdkAJpCv0BAAm55AxGelsIUivkdR7Q
 53KEsfnX+ALinc2+DuRAvAd4/dHx9AA=
X-Google-Smtp-Source: ABdhPJzWdv9TRCM8uPYQQ8VPE+dnbroc4gM2avvqKcL03LAAtvc1wIVCXZ4Te2bS8fErpsupqOdudg==
X-Received: by 2002:a05:6512:3b20:: with SMTP id
 f32mr1109748lfv.423.1635384500406; 
 Wed, 27 Oct 2021 18:28:20 -0700 (PDT)
Received: from localhost.localdomain (109-252-203-96.dynamic.spd-mgts.ru.
 [109.252.203.96])
 by smtp.gmail.com with ESMTPSA id h14sm153111lfv.83.2021.10.27.18.28.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 Oct 2021 18:28:20 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Thu, 28 Oct 2021 04:28:12 +0300
Message-Id: <20211028012816.929611-1-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211027_182823_030175_D10FA275 
X-CRM114-Status: UNSURE (   8.33  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 0/4] imd fixes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Antony Pavlov (4):
  imd: fix imd_is_crc32()
  imd: reuse imd_is_crc32()
  include/image-metadata.h: fix whitespaces in the BAREBOX_IMD_CRC macro
  bareboximd: make the '-c' option work again

 common/imd.c             | 2 +-
 include/image-metadata.h | 8 ++++----
 scripts/bareboximd.c     | 2 +-
 3 files changed, 6 insertions(+), 6 deletions(-)

-- 
2.33.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

