Delivery-date: Tue, 17 Aug 2021 12:08:16 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mFw12-0005lN-Sp
	for lore@lore.pengutronix.de; Tue, 17 Aug 2021 12:08:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mFw0y-0002Du-IT
	for lore@pengutronix.de; Tue, 17 Aug 2021 12:08:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9eERRxEKMMLMLM1d10EutkBDWnDmHVGrUpLQKsRA5QQ=; b=PRW9uyCvahR9+f
	9LbMF5JhvE0jz3nXxrGcjtGzgXipqtW433BsxuKc2g3DhSRm7gWwRbtUIqlRvi41JHFp/raDqhlTW
	LHA6FReyMwKET5F+u8fkak8XEOR/q1qvhPe+7vJlcnJcBxi7gwVnIq3lhXkKIRNxrt3gnF9v95GZj
	SzfGIU8xXLHzyOGx1etJ4JIaT1xtFXkX2odi8l69Kf5HxqMUtaXP4cfiqmXhNuFIVks0+fXUDuyeG
	86UWxnxGKBZmZL5/0KZEXII847zLX1O7z6TUjdNf/IzTE2KKdugu1EjEK4rC4Qe2oqnit7gWMK+1/
	fkreWj6dPMVYgWvPMFTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mFvyD-001zAh-L8; Tue, 17 Aug 2021 10:05:21 +0000
Received: from mail-lf1-x132.google.com ([2a00:1450:4864:20::132])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mFvxl-001yyZ-0S
 for barebox@lists.infradead.org; Tue, 17 Aug 2021 10:04:57 +0000
Received: by mail-lf1-x132.google.com with SMTP id i9so19568319lfg.10
 for <barebox@lists.infradead.org>; Tue, 17 Aug 2021 03:04:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=I7U6RSwCY1KrFhSQh4W2vTFSToPzcocH80TfWeSToks=;
 b=M29CoQwLYHPf5GMIbQPJPby1+zS8bGkgRQNg5QWFxQQujOwlQByu1o3D8FfIE+Xj/E
 wyxeoNvgafQzWnDWVDsXqFigrn5whjQee+fblRWTccMTE3qNJIES3Hbitg9THpWrWRaK
 0lZYXnyKyw+PEhKb8Ty6m2NmnUVH+gsyQFCMHE2tfpT8OSNgQ/mjCatVDkS7LsHewyER
 YEM3gYVXi9i3otKh6lRgxhFJ95Y865UchwGWqMxa5Ibf7BsMRSgNokxuwM4istNvVSMP
 30OQ3o2dmlIMTLQfzGr3+LkLWh2GfmgXDyxb5wG8BacWrevRen8WDUyIPiGnGVQs6JH/
 aBaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=I7U6RSwCY1KrFhSQh4W2vTFSToPzcocH80TfWeSToks=;
 b=PCYQCYWS03lunyBcHABEJptAVQ0PPkmLxZbNWP2DOHwXppoPg2L3YSBYVs6ji3P03i
 tkK7kRprSCZ2k0Gt+RAXaXGFp9VwFQwbQE7qoFqSkQRXd60ZXSe9cxZi879NZRQKFDoV
 7fZ42KML32k5DlyB66v3QCTEQnEwid4JzEozxwvv+WCXmm4RGqZsutoRoJzjYGYLlBTv
 dUGqiIsg3sMntNhfO6qVqhhb3+aROHDEDLhsUlL5rGaO6igb8dGBXy/nfWU5Wi49/xdm
 B+esjipMQZ4JIrrJmr6s9uqLaQh08sVsMMB2ouSw9u2qTGTVNRQ1NT7A7TmXZH5rCdI3
 cTKg==
X-Gm-Message-State: AOAM533hrK9iX4AMRblZ0WpcdP+Snv0ChgMWbF7W8+QcCIkXSC78oG2S
 umRSuo8qJ09V+wqLShpM+JWmz+hcm/Q=
X-Google-Smtp-Source: ABdhPJxSPeWj4Vl3h5asePX9JxG5LCupEkelaiG4og7KDW4wUniSjmE10kyO367Wa3znjrr1OsbSKw==
X-Received: by 2002:a05:6512:c24:: with SMTP id
 z36mr1905090lfu.194.1629194690271; 
 Tue, 17 Aug 2021 03:04:50 -0700 (PDT)
Received: from localhost.localdomain (109-252-203-80.dynamic.spd-mgts.ru.
 [109.252.203.80])
 by smtp.gmail.com with ESMTPSA id e20sm179795ljn.13.2021.08.17.03.04.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Aug 2021 03:04:49 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Tue, 17 Aug 2021 13:04:30 +0300
Message-Id: <20210817100435.114756-4-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210817100435.114756-1-antonynpavlov@gmail.com>
References: <20210817100435.114756-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210817_030453_094300_2A988C44 
X-CRM114-Status: GOOD (  13.82  )
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
Subject: [PATCH 3/8] console: support set baudrate for fixed baudrate drivers
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

