Delivery-date: Tue, 25 May 2021 09:22:21 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1llROP-0008Da-BP
	for lore@lore.pengutronix.de; Tue, 25 May 2021 09:22:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1llRON-0003s0-72
	for lore@pengutronix.de; Tue, 25 May 2021 09:22:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/0af8/PLXKfSbNNJ9cw4Liwb777Zn14igQOHC1GQoCA=; b=jyWBvPp7DNtuJ1
	eoqAxeyiPHGI6RLwWd0mbhM+5DOCppEAGglSck1pEFhNZVlR5BW+GmjQ1IOdHaCC06fOyKxgycxDC
	8DgMuOOkjyi9o1EkCFWKV0yUY01GvJ/nixeAbgYeUIB+JmpEQwWOB481iAvORW6wyDU4DAnIuPRzT
	nc4KwvuJIaSOFY190B4YQ4yFWzCQSUzS11rJ18+O1vqCrMHpdtf68f/6Uk4hBR1qWaV+mns+CTtVf
	7pgCV0UyYRCK7mVWrZnjnmG6jlQuOcE/C24Lo06O+YVw2TNuH6Lj2TEQm6ZJanP2Me6XKcHq+kqId
	rYxljCD5yrzKLS8mObHw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1llRMx-003q48-OJ; Tue, 25 May 2021 07:20:52 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1llRMH-003poc-3H
 for barebox@lists.infradead.org; Tue, 25 May 2021 07:20:11 +0000
Received: by mail-lj1-x229.google.com with SMTP id v5so36781418ljg.12
 for <barebox@lists.infradead.org>; Tue, 25 May 2021 00:20:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Y+lUHPQNdmPRHyPND+CN3HIkPuEwtwAZWR3NWAHVaZE=;
 b=VNiLUWI9iqLZAxZeZueDuJgPG3ZpT9YXj5ImWY+UJtDiW2ouTMhHBsHgz6Ej0NmJv7
 MCe7cJ2WP76+ikQePgEYDlYVKWp6WE6nZS/j2GviobzwjepS+08fLWpx2Hy6C/+laT6u
 HfHlIi5ULuDAg08GsKoGVRowai865vvvgWKDUVy96++l8FAuEDBRqt/UCcsUtev6ENSu
 nR6oVJ/UEAoqX806DZaqCDiM++c8xSdSxdIotyqWtmsvpIQiJVuEQudpb+1lPPiTOK2P
 L6DbJV2Yp3Y3kAWuDfYAwETw4pCLyVSHCZSeqyL2sF35uLe/EXgGCmNF69A0Igmf9uRT
 afAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Y+lUHPQNdmPRHyPND+CN3HIkPuEwtwAZWR3NWAHVaZE=;
 b=Y9FkLdU92NRomvNAT3lfErIE3WAfZJwZcS6FlXCko8wERJY9ZOQrMdKOqaEG/iQ3rO
 GHLttan4ujMALrAwyz1gJAYBOqjTCOV8HqqhUESD9A7Eu4O6q35V2gYIQSZ10btsZD4O
 VfDpLIvGw9jh87sBk4RZ22l/fColaHcVa6gANwce8xsJfEsjX9sq1Hhg55aH435ztvCV
 Kz92alP/Mm2DuTRbugz4cRo9KLAmBa2G3ptrlwXhF+LqXn12h9PXTI3CZDrA2f1Y9JWa
 LHhxVuzoHKx5aafmgv75jsrohtjjvSA5F1iWYPSe0VGMeNNTzOA5QEkZRh4eqLtFGhVv
 3drw==
X-Gm-Message-State: AOAM530kITweikfoYrEknHMOt5ssgYfOH6+nV5X1C0hCcqMvynobU68A
 Ob9fs0MM4y33zns/lFbNaqAzokDqN4xQrQ==
X-Google-Smtp-Source: ABdhPJyhLrIuixZgzaGrQ9ksSSRKV1VI8aEuBwoPq6/DP/IlEmEU8vLuP7kbYH/yF/eBEdKbCduiGQ==
X-Received: by 2002:a05:651c:1058:: with SMTP id
 x24mr19752545ljm.223.1621927207281; 
 Tue, 25 May 2021 00:20:07 -0700 (PDT)
Received: from localhost.localdomain (109-252-203-17.dynamic.spd-mgts.ru.
 [109.252.203.17])
 by smtp.gmail.com with ESMTPSA id f36sm1641387lfv.248.2021.05.25.00.20.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 May 2021 00:20:06 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Tue, 25 May 2021 10:19:47 +0300
Message-Id: <20210525071952.18045-6-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210525071952.18045-1-antonynpavlov@gmail.com>
References: <20210525071952.18045-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210525_002009_195327_EA5788BC 
X-CRM114-Status: GOOD (  11.99  )
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
Cc: Marek Czerski <m.czerski@ap-tech.pl>,
 Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 05/10] litex serial: add setbrg callback
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Marek Czerski <m.czerski@ap-tech.pl>

setbrg callback (set baudrate) is needed by the loadx/loady commands.
Because litex serial has fixed baudrate the callback only checks if
the requested baudrate is the same as the CONFIG_BAUDRATE.
---
 drivers/serial/serial_litex.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/serial/serial_litex.c b/drivers/serial/serial_litex.c
index 8562a45ecc..9d35a6e44a 100644
--- a/drivers/serial/serial_litex.c
+++ b/drivers/serial/serial_litex.c
@@ -58,6 +58,13 @@ static int litex_serial_tstc(struct console_device *cdev)
 	return !litex_serial_readb(cdev, UART_RXEMPTY);
 }
 
+static int litex_setial_setbaudrate(struct console_device *cdev, int baudrate)
+{
+	if (baudrate != CONFIG_BAUDRATE)
+		return -EINVAL;
+	return 0;
+}
+
 static int litex_serial_probe(struct device_d *dev)
 {
 	struct resource *iores;
@@ -73,7 +80,7 @@ static int litex_serial_probe(struct device_d *dev)
 	cdev->tstc = &litex_serial_tstc;
 	cdev->putc = &litex_serial_putc;
 	cdev->getc = &litex_serial_getc;
-	cdev->setbrg = NULL;
+	cdev->setbrg = &litex_setial_setbaudrate;
 
 	console_register(cdev);
 
-- 
2.31.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

