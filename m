Delivery-date: Fri, 09 Jun 2023 07:00:08 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7UEM-00GjbY-2o
	for lore@lore.pengutronix.de; Fri, 09 Jun 2023 07:00:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7UEJ-0008Nm-Fe
	for lore@pengutronix.de; Fri, 09 Jun 2023 07:00:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HGLA7MkI1ooVY++TxNV5KbJlkO/fUHVyvvV/eUr+46I=; b=wXKM89XPUF0e6J
	4iBk1ZTw7KGH7+kUM/InDHxt+wh13buaUZ4UEDWJznNekh2xlk9x/yhM01G+KJOIN+BvfKKRm6Qix
	S8e26QwR9lEGaUoXvZfgMH4iwohWp8yK5MNir4UlUswsox3TyY14cB4ltBiP2D1pqfdGs5GrvAFVs
	orhRsIgj3yIHpv/iHRhVt9glWcuqDGADNxrutITT9aqJz1xYKJdcCo8gDqjZd5b/NyYpm6IonDXXY
	F2q4XVo7n9I88D6NWeCjWn1rE34cTJ14SmI8JGJ6NfCuF3FYo2NWnF8fT1+rmyu8VnkAkIfpnQz/y
	Kn14ZbGoDtI37I9SZ9vA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q7UD4-00Bf5f-0D;
	Fri, 09 Jun 2023 04:58:50 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q7UD0-00Bf3y-1g
	for barebox@lists.infradead.org;
	Fri, 09 Jun 2023 04:58:47 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-4f64fb05a8aso1715795e87.0
        for <barebox@lists.infradead.org>; Thu, 08 Jun 2023 21:58:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686286724; x=1688878724;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HGLA7MkI1ooVY++TxNV5KbJlkO/fUHVyvvV/eUr+46I=;
        b=A+oJf4F1iq7UszOB/VdRnqOoEwzvQKs3mAwBF97qa4sG2nNEDcbTvcCs9Ma5fpOW6c
         q3mf4rxCI5h4CgI5tI3P6+gmDrfSK2qzKHzlkGa2HTT1l8HxlV7yZsliMuSxOOdZeLfA
         m88CAQKracRUAVe+Ug06Dc0qrr3MFTe6RDjjjhvOub/eedJSrrH1BU85dHvHKTNzSyVu
         5Hn5oJTcqUTQot/7mmfhRYUWz+FGQvQr7x8J6cSI8M95Xxs0I7Nxx6a1ZTjPiZCxE52E
         AWC7mH+0trItEJB+LRPYXlxuD/tVA/09pwOk4h38Ghw2L3WSSX5Oowxt41qZ5Cptg9TF
         CALQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686286724; x=1688878724;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HGLA7MkI1ooVY++TxNV5KbJlkO/fUHVyvvV/eUr+46I=;
        b=lJu1/eoxU7wVyuS57XmsrbIy0dESIpk3N2PFelQO8Us9hSe+e62DIcsI+jU75M+dNf
         iwE63BYylEivkPA7CXLQdgQ1cSlxOy4XU7p+dv6dA7qBKnOHACyDbPXa2mZfruJ+kZfs
         MkHXSuU25/i8TF8Hha+0n/WJRR1+hDOIN0p5ojRVm4TcwqNufVZHRdAZiOGDlNkw5hjQ
         9cYslY494jL5Q9rf+XyHzulzr/mQtvPLbTwBci0SvHvf1rW8+SarOYB4j07mtEFH52mj
         qkSniJtBbkhgobyquge3jt0LGSzcEdOGb2InsGtM01rlgg3s1St+cdvpsOXYfbAY7det
         4eng==
X-Gm-Message-State: AC+VfDwZSxEVrBrh/GfP1HmeTv8gSORlbKcaVQ9yNWzUwdV7VLAc7Uqf
	049N0FggUddbvxi/tnRhZEW/nEqee47txg==
X-Google-Smtp-Source: ACHHUZ4KZPjsVm/E5R7ts5nkKlBNCN+lADso5KyAzNuaBx49iAWbbsjMfnM52wr5GKcmenTAhIKzJQ==
X-Received: by 2002:a19:2d4e:0:b0:4f6:3ef4:5c78 with SMTP id t14-20020a192d4e000000b004f63ef45c78mr95039lft.50.1686286723707;
        Thu, 08 Jun 2023 21:58:43 -0700 (PDT)
Received: from localhost.localdomain ([188.123.230.230])
        by smtp.gmail.com with ESMTPSA id y22-20020a197516000000b004e843d6244csm404325lfe.99.2023.06.08.21.58.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jun 2023 21:58:43 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Fri,  9 Jun 2023 07:54:08 +0300
Message-ID: <20230609045829.2225-3-denorl2009@gmail.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230609045829.2225-1-denorl2009@gmail.com>
References: <20230609045829.2225-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230608_215846_570463_9688DE4A 
X-CRM114-Status: GOOD (  10.56  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, Denis Orlov <denorl2009@gmail.com>
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
Subject: [PATCH 2/3] include: bitops: allow BIT* macros to be used in assembly code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Use UL/ULL() macros for those so that corresponding suffixes only appear
when we are compiling C code. Hide all the other functions/macros that
we can't use in assembly with '#ifndef __ASSEMBLY__'.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 include/linux/bitops.h | 18 ++++++++++++------
 1 file changed, 12 insertions(+), 6 deletions(-)

diff --git a/include/linux/bitops.h b/include/linux/bitops.h
index eb5ff37f2f..d9a5a81a9c 100644
--- a/include/linux/bitops.h
+++ b/include/linux/bitops.h
@@ -2,14 +2,16 @@
 
 #ifndef _LINUX_BITOPS_H
 #define _LINUX_BITOPS_H
+
 #include <linux/types.h>
+#include <linux/const.h>
 
 #ifdef	__KERNEL__
-#define BIT(nr)			(1UL << (nr))
-#define BIT_ULL(nr)		(1ULL << (nr))
-#define BIT_MASK(nr)		(1UL << ((nr) % BITS_PER_LONG))
+#define BIT(nr)			(UL(1) << (nr))
+#define BIT_ULL(nr)		(ULL(1) << (nr))
+#define BIT_MASK(nr)		(UL(1) << ((nr) % BITS_PER_LONG))
 #define BIT_WORD(nr)		((nr) / BITS_PER_LONG)
-#define BIT_ULL_MASK(nr)	(1ULL << ((nr) % BITS_PER_LONG_LONG))
+#define BIT_ULL_MASK(nr)	(ULL(1) << ((nr) % BITS_PER_LONG_LONG))
 #define BIT_ULL_WORD(nr)	((nr) / BITS_PER_LONG_LONG)
 #define BITS_PER_BYTE		8
 #define BITS_TO_LONGS(nr)	DIV_ROUND_UP(nr, BITS_PER_BYTE * sizeof(long))
@@ -21,11 +23,14 @@
  * GENMASK_ULL(39, 21) gives us the 64bit vector 0x000000ffffe00000.
  */
 #define GENMASK(h, l) \
-	(((~0UL) << (l)) & (~0UL >> (BITS_PER_LONG - 1 - (h))))
+	(((~UL(0)) - (UL(1) << (l)) + 1) & \
+	 (~UL(0) >> (BITS_PER_LONG - 1 - (h))))
 
 #define GENMASK_ULL(h, l) \
-	(((~0ULL) << (l)) & (~0ULL >> (BITS_PER_LONG_LONG - 1 - (h))))
+	(((~ULL(0)) - (ULL(1) << (l)) + 1) & \
+	 (~ULL(0) >> (BITS_PER_LONG_LONG - 1 - (h))))
 
+#ifndef __ASSEMBLY__
 /*
  * Include this here because some architectures need generic_ffs/fls in
  * scope
@@ -237,5 +242,6 @@ extern unsigned long find_last_bit(const unsigned long *addr,
 				   unsigned long size);
 #endif
 
+#endif /* !(__ASSEMBLY__) */
 #endif /* __KERNEL__ */
 #endif
-- 
2.41.0



