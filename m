Delivery-date: Fri, 09 Jun 2023 07:00:09 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7UEM-00Gjbn-Nu
	for lore@lore.pengutronix.de; Fri, 09 Jun 2023 07:00:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7UEK-0008Nx-0m
	for lore@pengutronix.de; Fri, 09 Jun 2023 07:00:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GvAOoLi0SdCQd2f0N1ysM3nDvmSB7hgHlDUQHAJyfZM=; b=vL3BQfi/z0Er2C
	l82YXVW660W/Nc2A+KonVi90EaxPbbNupd6RUcx2LPpIzxzY8JocvzSArVKCeG4rpD/OBI5jafdtk
	GvfrIGjGuDsJ//X3HsGAz7zqB0nhY8tG31bD0hii2aLbgKVhlkRoOJR/BdzkxpF+Q1ybcG6lF0x+5
	9e+BzUkbLP7v43fAOY6se92XwGeLiV2H2YUtnUev7tHYiLhsXk/jNST0sSh+OWqn0XZLVKrHTFTob
	CvrRdJ2Twqweq1gOVhvaFpvCEWfh96UirQ/taPMNmMDdAf6ywou+HP+gBYq13YIbmO8mfRgKpT0gl
	i4t8Erc8Zx5R5DDt5CtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q7UD5-00Bf5s-2G;
	Fri, 09 Jun 2023 04:58:51 +0000
Received: from mail-lf1-x133.google.com ([2a00:1450:4864:20::133])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q7UD1-00Bf4Q-2n
	for barebox@lists.infradead.org;
	Fri, 09 Jun 2023 04:58:49 +0000
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-4f60a27c4a2so1606864e87.2
        for <barebox@lists.infradead.org>; Thu, 08 Jun 2023 21:58:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686286725; x=1688878725;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GvAOoLi0SdCQd2f0N1ysM3nDvmSB7hgHlDUQHAJyfZM=;
        b=bAhg282PRbb300YSLzRQXel/haIXdt74j7rNNlaedXv8kbRdTIy7fWz3TALP0U+xBG
         /luqHjTJQ4VFTjN6Gecfkv7uDy6bgxTk90wK8R9JikjoBVqB2BsrYJDMDe66g7BsaGHR
         cKHL8atkb7pe1JZc5zw68+VKplvLqXb9y87cVKl7Ta9H/i4rhEOyofdFwf4KQSdYpKWy
         G+gD8Dv0a8ae8i+IV7Q+AkuXPt+DbKwZSu4Rv+QF1uBMHhBtd1LLpMNv/mLO+lBMEmED
         2seQqXzu9gqX1glhH3bhav9fV+AFUbRnVvd+tGmY/MIyWLXJyZqsUWmU3o1IZhhqAxZA
         a26A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686286725; x=1688878725;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GvAOoLi0SdCQd2f0N1ysM3nDvmSB7hgHlDUQHAJyfZM=;
        b=U/nNe4ilbwGwsJHUHnpr/NHKZdj/Q8z3/LSeSX/xL5DkKidONNSAbMd/mCUAOBQCRv
         i67Is0acXB8U3KI605DjBH//ZK2fiEULUN2pK8VCLj74mWty7esEld487tk/+FHsRTsA
         T2+cr8hzdQi0CZ8QkY3LtcDQq6DekHK9KGXp4uk77yRk/qJ+DieCLVebLbIFiuuQnwOa
         JRG3hpPaSH3wyXI3DE6ZjqrDn0SrKUpuclxPCLqv816bLFuTQxMNZnXVfMDGrHSN6LQ1
         vugH5aUytBtpUDiuoJyRRpKkPCbhHZ7WLYrohqzX+R87o2DTSfj7RUkQsPzmNTAJlwXl
         nZNg==
X-Gm-Message-State: AC+VfDy2ocVtIOb+TdJructtMtQZRfKSg3hiRjhuXtBLj5BZg8jiLBo+
	mOnNMI0p0OQw0a9PZ18tQJO9NwPPmShM0A==
X-Google-Smtp-Source: ACHHUZ5ZF4VNt2hYTwUwp2SDMS1Uajb7CTRz4u0Dv3ypDHa/B+VbsMwPJmkUFysl8WsvJeJaRsULhw==
X-Received: by 2002:ac2:5583:0:b0:4f6:171e:493 with SMTP id v3-20020ac25583000000b004f6171e0493mr138422lfg.8.1686286724997;
        Thu, 08 Jun 2023 21:58:44 -0700 (PDT)
Received: from localhost.localdomain ([188.123.230.230])
        by smtp.gmail.com with ESMTPSA id y22-20020a197516000000b004e843d6244csm404325lfe.99.2023.06.08.21.58.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jun 2023 21:58:44 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Fri,  9 Jun 2023 07:54:09 +0300
Message-ID: <20230609045829.2225-4-denorl2009@gmail.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230609045829.2225-1-denorl2009@gmail.com>
References: <20230609045829.2225-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230608_215847_917515_B1C6B683 
X-CRM114-Status: UNSURE (   8.22  )
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
Subject: [PATCH 3/3] include: bitops: import more BITS_TO_* defines from linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Those seem quite useful, e.g. when defining bitmasks.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 include/linux/bitops.h | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/include/linux/bitops.h b/include/linux/bitops.h
index d9a5a81a9c..a5f6ac6545 100644
--- a/include/linux/bitops.h
+++ b/include/linux/bitops.h
@@ -14,7 +14,11 @@
 #define BIT_ULL_MASK(nr)	(ULL(1) << ((nr) % BITS_PER_LONG_LONG))
 #define BIT_ULL_WORD(nr)	((nr) / BITS_PER_LONG_LONG)
 #define BITS_PER_BYTE		8
-#define BITS_TO_LONGS(nr)	DIV_ROUND_UP(nr, BITS_PER_BYTE * sizeof(long))
+#define BITS_PER_TYPE(type)	(sizeof(type) * BITS_PER_BYTE)
+#define BITS_TO_LONGS(nr)	DIV_ROUND_UP(nr, BITS_PER_TYPE(long))
+#define BITS_TO_U64(nr)		DIV_ROUND_UP(nr, BITS_PER_TYPE(u64))
+#define BITS_TO_U32(nr)		DIV_ROUND_UP(nr, BITS_PER_TYPE(u32))
+#define BITS_TO_BYTES(nr)	DIV_ROUND_UP(nr, BITS_PER_TYPE(char))
 #endif
 
 /*
-- 
2.41.0



