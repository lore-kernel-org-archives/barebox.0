Delivery-date: Tue, 27 Feb 2024 08:39:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1res4B-00A2FO-0U
	for lore@lore.pengutronix.de;
	Tue, 27 Feb 2024 08:39:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1res4A-0004MV-Jz
	for lore@pengutronix.de; Tue, 27 Feb 2024 08:39:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=jxQTfdXzYeWf2gCnZtEVDXINbk04wEYUQQq7hJbN/pE=; b=K0AxQYCIIKP6FbSR58PLmTaSIB
	Dl/8E6SJB3/oneG5Y61M/nLSfbtahWc6p9EROC4YgSBnXGmqbeIHIROw6OZQW1zDRtKiPrYUkj2Tg
	ed/dppZXQTX0jWa3rMgQ13et2NqqvXRxT9ne3KbKtsdsHwg8CH8PBt93fZMiShwz/Tlf+4AqUT0YJ
	CMzk+6TKSxjPgDauJWYBbRDcrJwKEOKTw+bDmmccVVapWBuXTIJgE/EI22YEgUqnBiAn0vXWOpomQ
	XHMEb9ADi8oOxEf/9biuwnG/ftd5dTX9CYomqfbexumL3ndovPPUnRU8HrCSkBQYDsIqeHM+t6VbT
	vwU0CE5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1res3e-00000004AAf-3MQA;
	Tue, 27 Feb 2024 07:39:22 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1res3b-00000004A8p-2zHK
	for barebox@lists.infradead.org;
	Tue, 27 Feb 2024 07:39:21 +0000
Received: by mail-lj1-x22b.google.com with SMTP id 38308e7fff4ca-2d21cdbc85bso61894041fa.2
        for <barebox@lists.infradead.org>; Mon, 26 Feb 2024 23:39:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1709019553; x=1709624353; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=jxQTfdXzYeWf2gCnZtEVDXINbk04wEYUQQq7hJbN/pE=;
        b=TfWJrGeYZSHKKibT6DqEbkJbYHfGDdQRgZCqcA58bMVMSxnEk3gKGu2GDtnVHl6aLZ
         xoxhEiCsduCtJCxGMRZsCGqfTRLcqw72fgxBl0NnoAGCQhrYE2QEudtA/FKwjJWhfWPx
         rfsumSAfILEID3FFWxrxnyBaVdbkvL4R14muqgzFyWYRZtB+dHxl+PBw05eBF3CwLU3e
         K6OSWa4WKsP4m5Wyj1OAR7vg1qaQnvKe46UExc4qh6cY7PWlfE9IJPvLR08KXKvnd4vc
         Ep8ZzFP8wmeGrq0Hn+0jy1SAGX+34aK3UhOijZCgd7kRvH1I+CA1tOpjTIt79+jr3PAV
         +lqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709019553; x=1709624353;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jxQTfdXzYeWf2gCnZtEVDXINbk04wEYUQQq7hJbN/pE=;
        b=qgO8SkWSLuR2XuSbsVjzFXCEHr5xv6y+6uiMmY40QcNxBaweA4F3ZJ7Ugfstq3/QMZ
         17ro0kk/3GRGVb6uhJLu+nbAp//DNkojXzTZKWcSm0jTrtrYAai+ngFy74IeIL4W9PE4
         /D9Raj6A/g8Pcjpw7g3iTXc9CQitHRPjdoio8NAcE2Xw/ULPKIanopeslvZ8JqoqEx5h
         GhrCcuGwcFRVqmkWPSf+PPVUxfKMWw2KJvroMsqKvjdNL9htFbWOmA9pzHTBLLmUZNLi
         mpDZik4voT6tD3TmArRs9avrtfxAWZsAR8ylGjz/1n5/FKuTBkX32SYb8AZLr6HGwuZi
         qvQg==
X-Gm-Message-State: AOJu0YwwyA47iW9MXAEW68NztBH3YGGARTorPjiQAqHJE34/7bNEDmbV
	0rkzRU1X1OP5d/a/A8EvAGKuRuZrrA3RaqIits+UW5gmhvE1Ddjrx8orjmhF
X-Google-Smtp-Source: AGHT+IHpGgxQxtNQeXKW/Sg9+57MNaupAW+uMU7iOyvpPOHJFgBaXZIlPZiPx1qULnNW5ALVcWKt4A==
X-Received: by 2002:a05:6512:138a:b0:513:122:19a7 with SMTP id fc10-20020a056512138a00b00513012219a7mr2734796lfb.29.1709019553165;
        Mon, 26 Feb 2024 23:39:13 -0800 (PST)
Received: from cinco.. (109-252-3-142.nat.spd-mgts.ru. [109.252.3.142])
        by smtp.gmail.com with ESMTPSA id r4-20020a19ac44000000b005130453fc86sm162783lfc.120.2024.02.26.23.39.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Feb 2024 23:39:12 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Tue, 27 Feb 2024 10:39:23 +0300
Message-Id: <20240227073923.148943-1-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240226_233919_786432_289FE616 
X-CRM114-Status: UNSURE (   8.03  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] net: drop unused rarp.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 net/rarp.h | 23 -----------------------
 1 file changed, 23 deletions(-)

diff --git a/net/rarp.h b/net/rarp.h
deleted file mode 100644
index 0986b02513f..00000000000
--- a/net/rarp.h
+++ /dev/null
@@ -1,23 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-or-later */
-/* SPDX-FileCopyrightText: 2000 Wolfgang Denk <wd@denx.de>, DENX Software Engineering */
-
-#ifndef __RARP_H__
-#define __RARP_H__
-
-#ifndef __NET_H__
-#include <net.h>
-#endif /* __NET_H__ */
-
-
-/**********************************************************************/
-/*
- *	Global functions and variables.
- */
-
-extern int	RarpTry;
-
-extern void RarpRequest (void);	/* Send a RARP request */
-
-/**********************************************************************/
-
-#endif /* __RARP_H__ */
-- 
2.39.0



