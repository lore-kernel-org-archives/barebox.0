Delivery-date: Fri, 07 Jun 2024 02:13:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sFNE9-001stA-32
	for lore@lore.pengutronix.de;
	Fri, 07 Jun 2024 02:13:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sFNE9-00085m-A6
	for lore@pengutronix.de; Fri, 07 Jun 2024 02:13:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zUdxjEHJHNBwXHrx8M6Wg9RE0R/QJb9KZsqhwjNphWA=; b=1OaY4fN+EwZGmI
	EZjqcMk4JB12tyaFu2ng5Sr3zqssF80nnVgj/K7InIFAAOURJqt//kCoivv5hDJnldF4ae5DFM1ve
	+IF0xDwRbbIn94xu9/fCIw9bNdLBr+8EiHO1zsHkrZmbdE50f2juB/V557jIjllK+Rcvp6xn2Tc6G
	ZEX9oVFnQfW/53eBaJ2rEySGl9SOiPEw1PXwZbqLUlu5VyDPKPCa8aAmh++Vdd6gZL6e+xZfwZP4G
	T56h4ZouyEQwibN1lAwtai7eCXsLTdICHXKap+HG8EC6jkjMEOcVzf78YL3uI4iBUiYuhCCfReiqP
	LKUmNB10ijxST3nH4SrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFNDb-0000000BmqM-2d9u;
	Fri, 07 Jun 2024 00:12:31 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFNDW-0000000BmoY-1l64
	for barebox@lists.infradead.org;
	Fri, 07 Jun 2024 00:12:28 +0000
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-52b87e8ba1eso2188611e87.3
        for <barebox@lists.infradead.org>; Thu, 06 Jun 2024 17:12:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717719138; x=1718323938; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zUdxjEHJHNBwXHrx8M6Wg9RE0R/QJb9KZsqhwjNphWA=;
        b=Ux0gEHvez2mfQbsqEo+l9qOfg/roncX7oqh9Q5+oQRlUor6mgFqOBxjWFu9nHvJkJP
         17XT5vBpcbmFyYVj9nrKviZ6C8T2WkLW9eZA+yBKRCqKOz5rmazqtaVXWRXhdIjvJu+c
         pbGvBsTmoPM9gTxtqNLFwJCxT64iWEAWoBJ3LQRTkxmFnbWRnnCvx+Gw8gXkck12Dgsv
         XCT5qIQxY4IV4dHU9Jpj95Gh4auzDbHHVkSJampLcoaL6feDbdeZIfJtIXiKOeMd0J3y
         flQ/ZhslzUy3deEamCH57eEboGwiLXwMIYswOmvox3xGZ0tNllEbhGWVEMZEvKkQWPQL
         YKXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717719138; x=1718323938;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zUdxjEHJHNBwXHrx8M6Wg9RE0R/QJb9KZsqhwjNphWA=;
        b=whG0NJuzgkQRQ5cHDdxeiHsEaXOaLxnCABbo8Vhcp+MZszce7zJpAjXEiM0Cvo53Xu
         66Rt8pgqiBzOborcTlID7RQ2LiJcjJn67PVAac9my/jAP1SYsIMwPdCWECKg3Kjk6Hf3
         PpSBJC5Zw95MvqARhJmD1B9n36EoO8RjdEle3jNUPMrJW+1Wid+jN/dQxtkvlO+yk83f
         XIGhR4iHr69v1CNI58H3puTf75LnGKsd6aK7lQtz/yNjWlWzW+EBz9D/hXkAN8xc9YVX
         Z5F8jwU7I5kg4Eu7u5q7nkBPc2tmjUf/skZOiAxQSlMhkD0V/0Q7QQire3AGCnulbY2h
         YJRQ==
X-Gm-Message-State: AOJu0YwyGfrZBYCvSDGkbkX6+B4sKRkzM3j/7YhfBhPdJa8O6tvFpgzM
	C8dp+gXIupbt3OOaXuR7zo94zbgk9JCdanJC6/aSxnuGlUUuyWz6pW2YDA==
X-Google-Smtp-Source: AGHT+IGK/wz7kvug9K/wma/bxA7tXzIq1SRzIP8LUdPIKYzG93JTV/Rq+o8pTg0wV4vTBm40IxKeVQ==
X-Received: by 2002:a19:e043:0:b0:52a:5fa8:d565 with SMTP id 2adb3069b0e04-52bb9fde009mr651576e87.68.1717719137682;
        Thu, 06 Jun 2024 17:12:17 -0700 (PDT)
Received: from cinco.. (109-252-6-122.nat.spd-mgts.ru. [109.252.6.122])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52bb41e1db0sm342594e87.18.2024.06.06.17.12.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Jun 2024 17:12:17 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Fri,  7 Jun 2024 03:12:59 +0300
Message-Id: <20240607001259.107805-5-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20240607001259.107805-1-antonynpavlov@gmail.com>
References: <20240607001259.107805-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240606_171226_481071_F7929182 
X-CRM114-Status: UNSURE (   7.43  )
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
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/4] ARM: vexpress: make debug_ll work
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The UART address from dtb is used.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 include/mach/vexpress/debug_ll.h | 12 +-----------
 1 file changed, 1 insertion(+), 11 deletions(-)

diff --git a/include/mach/vexpress/debug_ll.h b/include/mach/vexpress/debug_ll.h
index cd01d5d0185..3d67e7645d3 100644
--- a/include/mach/vexpress/debug_ll.h
+++ b/include/mach/vexpress/debug_ll.h
@@ -7,17 +7,7 @@
 #ifndef __MACH_VEXPRESS_DEBUG_LL_H__
 #define   __MACH_VEXPRESS_DEBUG_LL_H__
 
-#include <linux/amba/serial.h>
-#include <io.h>
-
-#define DEBUG_LL_PHYS_BASE		0x10000000
-#define DEBUG_LL_PHYS_BASE_RS1		0x1c000000
-
-#ifdef MP
-#define DEBUG_LL_UART_ADDR DEBUG_LL_PHYS_BASE
-#else
-#define DEBUG_LL_UART_ADDR DEBUG_LL_PHYS_BASE_RS1
-#endif
+#define DEBUG_LL_UART_ADDR 0x1c090000
 
 #include <debug_ll/pl011.h>
 
-- 
2.39.0



