Delivery-date: Tue, 17 Aug 2021 12:13:48 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mFw6N-0005wK-W5
	for lore@lore.pengutronix.de; Tue, 17 Aug 2021 12:13:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mFw6I-0003hu-Mo
	for lore@pengutronix.de; Tue, 17 Aug 2021 12:13:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9eERRxEKMMLMLM1d10EutkBDWnDmHVGrUpLQKsRA5QQ=; b=hYsH9rE7YtO6Va
	ul9k8FDvosblUfBZCOo7D2Xl/m1p60pbzCcDyd5kQmAOcbDifLuuWY7msJI5hFdxAT0ufMGZwvzKq
	3lVY6fexXXx+UKYyr8fdPG8mLVY6Y3mVm/oxh+JsvKbREelZ6FtbJUyQ+xKl+KeHqwiMqMda+M6Ee
	cx28vaDi2DYheSlv3hxGFVC1vQrGmc3il4/5jmv3j5yutwEzd4taiXqRO4YloPy1mV7XB9mVRqIg4
	0JJEshYW9T4zVjO8AUtXXutQ+HTYsMg7lRWwOgL4OYSp77avN/9IA4DEP6LFhOUIvbIG6oAdbhkFI
	6jfKk4e1ZtGYmWba/8aw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mFw4b-0021rd-HZ; Tue, 17 Aug 2021 10:11:58 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mFw3y-0021ba-6m
 for barebox@lists.infradead.org; Tue, 17 Aug 2021 10:11:24 +0000
Received: by mail-lf1-x12b.google.com with SMTP id g13so40284941lfj.12
 for <barebox@lists.infradead.org>; Tue, 17 Aug 2021 03:11:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=I7U6RSwCY1KrFhSQh4W2vTFSToPzcocH80TfWeSToks=;
 b=E6fYbY9g/4gHprkK3SS8wzXOaQvsQCnCxeWf+q0xrR0VNogbu+1uX9wgjds7azQiTs
 oSN/Q25pAopt7D3voiFFylcy3qPLvcD/gPxcvbIBHnz5d4osW7FVINBNrtiJok2sHkSC
 hXXhlrC/3Kv/rVXYV+pueYPLOJ935gNOuFRJI2pZ0iNq/bXo9kQOdeJ28WVCdggsENGE
 OGA315hTAtOsGPI5RSrRhQJpWxtFoJk6ed9B3yDgY45tT4Mm0goPXjOzC35CdkA4kPVf
 Ex+5RO8vQXbKpNoOak6av53xNtWkwoyR5QhGiLiC2BJHwllswX3TG/JkBAqTSN9C5Yla
 0Qjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=I7U6RSwCY1KrFhSQh4W2vTFSToPzcocH80TfWeSToks=;
 b=r8V/9rU+AYEf82GNvPG48SrXQA/yqgj3Liflj6w4j8lLDzQBVnNkoltbooyPni4rq3
 UnjPc/VrfpWNCcMX+gU1tnD4tg1PJ3TMkaH7rKHm+GieqmBXZ7gpBvtUWjjzZsL7H6me
 mG5qeGhLf0gymobywXWbTJEcNBDsQXWzQEf2A+IbZ7/y9D8kgfQTVFiNGe0RlesVbeEn
 R/7Y1DhO85Frm9haLcaz1FlvNnfa9iBxdmP6+Eq/1mdF4UCDAShg6lgCNhgyvlYcaao+
 +pypCFHh9QP4p8xgdoGfeZHpjvnTiaszCSyFTnGl36pKQvdJVEhfOZHyR7xuVJhMvUhD
 hQkQ==
X-Gm-Message-State: AOAM533NTrQgEmOeri0cTthWIeTn0L4HdcPr+1DL5HQGHuZ5pDo9sE8s
 DKQFDKgkNzPR3hDCYv1u9MVbfgPSWQY=
X-Google-Smtp-Source: ABdhPJzrQZ4eJ7YSiu1tAXNgYVrpRHaWTNbm4OSzek7G1CqrVEVScMiquZ895K2LnBBonhfjFL6tMg==
X-Received: by 2002:a05:6512:541:: with SMTP id
 h1mr1815722lfl.118.1629195076685; 
 Tue, 17 Aug 2021 03:11:16 -0700 (PDT)
Received: from localhost.localdomain (109-252-203-80.dynamic.spd-mgts.ru.
 [109.252.203.80])
 by smtp.gmail.com with ESMTPSA id x16sm144412lfa.244.2021.08.17.03.11.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Aug 2021 03:11:16 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Tue, 17 Aug 2021 13:10:59 +0300
Message-Id: <20210817101104.114945-4-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210817101104.114945-1-antonynpavlov@gmail.com>
References: <20210817101104.114945-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210817_031118_277892_BBF8B848 
X-CRM114-Status: GOOD (  13.81  )
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
Subject: [PATCH RESEND v4 3/8] console: support set baudrate for fixed
 baudrate drivers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

There are console drivers (linux, virtio, litex)
that don't support baud rate setting and has
no setbrg (set baudrate) callback, so
console_set_baudrate() returns -ENOSYS.

At the other hand console_set_baudrate() SUCCESS
return value is needed for the loadx/loady commands
correct work.

See discussion here:

  http://lists.infradead.org/pipermail/barebox/2021-May/036237.html

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 common/console.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/common/console.c b/common/console.c
index ad1a6aaab2..c902239e31 100644
--- a/common/console.c
+++ b/common/console.c
@@ -165,12 +165,12 @@ int console_set_baudrate(struct console_device *cdev, unsigned baudrate)
 	int ret;
 	unsigned char c;
 
-	if (!cdev->setbrg)
-		return -ENOSYS;
-
 	if (cdev->baudrate == baudrate)
 		return 0;
 
+	if (!cdev->setbrg)
+		return -ENOSYS;
+
 	/*
 	 * If the device is already active, change its baudrate.
 	 * The baudrate of an inactive device will be set at activation time.
@@ -336,11 +336,13 @@ int console_register(struct console_device *newcdev)
 		ret = newcdev->setbrg(newcdev, baudrate);
 		if (ret)
 			return ret;
-		newcdev->baudrate_param = newcdev->baudrate = baudrate;
+		newcdev->baudrate_param = baudrate;
 		dev_add_param_uint32(dev, "baudrate", console_baudrate_set,
 			NULL, &newcdev->baudrate_param, "%u", newcdev);
 	}
 
+	newcdev->baudrate = baudrate;
+
 	if (newcdev->putc && !newcdev->puts)
 		newcdev->puts = __console_puts;
 
-- 
2.32.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

