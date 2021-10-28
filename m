Delivery-date: Thu, 28 Oct 2021 03:32:04 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mfuGy-0001zF-MN
	for lore@lore.pengutronix.de; Thu, 28 Oct 2021 03:32:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mfuGx-00011m-Eo
	for lore@pengutronix.de; Thu, 28 Oct 2021 03:32:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qmNxszM3noyP3kHnasu+ukDAr4bwBiTXyiSLVIGxU28=; b=dMUTUnLBz98EP+
	G9aX/cF58k6FCCOhTZnrHpgrm0eZ+o4dxJGSSqLvjpUtnuTZqcdz9YRIYKwjV8pBU6CXWTuAh62Dc
	7GAIMpGsbOTwVAtwadBGUGsVaLUQSX+VPDjIiopA2YG0EypZeNJcHd7E1ZzRSkrLZb1hHxSUsB9Qi
	BdHPdF2nIEilnZJpMm+rtsxUrizBSTfPjl+ZLFGicHZxpyFf3NWLsbTXlBErz+r15SUkYR00HdcFz
	ylrlyASIWgA3ldAmqIaIY9bGEOI214OLG27Tv1meMNLOiX/FQBQysIXByTp6U3OrPwNeg5o8kFdCm
	KF03Cgs7aUPreKte3fcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mfuDe-006cCe-Fr; Thu, 28 Oct 2021 01:28:38 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mfuDP-006c8Z-BK
 for barebox@lists.infradead.org; Thu, 28 Oct 2021 01:28:26 +0000
Received: by mail-lf1-x131.google.com with SMTP id c28so9941357lfv.13
 for <barebox@lists.infradead.org>; Wed, 27 Oct 2021 18:28:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=cox3wJXK8py/s1d9Ic1p447e/NeA+3ihhQCSYGzfEYk=;
 b=C2Ba6oXIjMgqjf7dxJaHJomf9XEVwYEJ99yiW4dfQbeE1pkE6BAJP708K3GQB2pgBH
 jAxFT0fAMPb9DEfi0GqyChOnyqOJzoVFgtGPungnBHffZuINOEGEbYWrXZarOL22RNFM
 2Kecy+GnBFiy9BxUH255aFB2YfUG/QBEW48RRIVyFzI26de/oZ8+J1YWyufpzA+0AGtW
 x348YGLAKlTvLTv4Wc/V0o6m4CA/VZaSKQlVHdL4LdpAa/ADYjpgNvpvP5q4U+qneBuP
 8d5N5Og0wqnHl/WPKcHeDZIKbI6WDme6fL/rUK1FOey4GBaOMTM1WJNCsHlfgKRJQDkM
 kIuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=cox3wJXK8py/s1d9Ic1p447e/NeA+3ihhQCSYGzfEYk=;
 b=lDaw/BfGTBC3rMR7Zp5uohYBAZxpAv/dczQnQg3X+bdMWTA+bxya6uHA9v/yKf327Q
 4X2vxSAfR83oRl1SfCRsQJOpvr015OsGBe6wKqJv+DWu9GIMceVsfxZtY2sJltEVGWA+
 GRVGARnvr1VnbRi0541hqQi+RKkUckpJ5y+e4woEdn95XOuzi42G2gKFaTlnqXxD6wzh
 FGtv3jThFulGKkMjTTksXpZ5nTntynhDLbQJlOLh0tdrn5yoq4dmHU1lnPIymW0otWvU
 VXTmRTIgKTXWB1XkhDkdjB8xc/F0BsWIQLAwNmBTZRLSEH8qhwGkNjMQNnGoiVw4+djn
 u3tg==
X-Gm-Message-State: AOAM531yOejjkpcIkIZfmuNj+I4GAHb6w5uAI6VFUC5jD2SonAXkJiQL
 2ZCmxXs3pcmrNLZXEVxFrU5WeTOsu3A=
X-Google-Smtp-Source: ABdhPJwrmL/meN3FrzmsJKxeFW/9nF8M1cXpgWb02LqFO1r0Qfr69bafHQz862oRG4RrGZ/J/aZ4tw==
X-Received: by 2002:ac2:4c42:: with SMTP id o2mr1158041lfk.504.1635384501628; 
 Wed, 27 Oct 2021 18:28:21 -0700 (PDT)
Received: from localhost.localdomain (109-252-203-96.dynamic.spd-mgts.ru.
 [109.252.203.96])
 by smtp.gmail.com with ESMTPSA id h14sm153111lfv.83.2021.10.27.18.28.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 Oct 2021 18:28:21 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Thu, 28 Oct 2021 04:28:14 +0300
Message-Id: <20211028012816.929611-3-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20211028012816.929611-1-antonynpavlov@gmail.com>
References: <20211028012816.929611-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211027_182823_450293_5558B949 
X-CRM114-Status: GOOD (  11.26  )
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
Subject: [PATCH 2/4] imd: reuse imd_is_crc32()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 common/imd.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/imd.c b/common/imd.c
index e1d5733c6b..0295d84d34 100644
--- a/common/imd.c
+++ b/common/imd.c
@@ -317,7 +317,7 @@ static int imd_calculate_crc32(void *input, const struct imd_header *imd_start,
 		length = ALIGN(length, 4);
 		length += sizeof(struct imd_header);
 
-		if (imd_read_type(imd) == IMD_TYPE_CRC32) {
+		if (imd_is_crc32(imd_read_type(imd))) {
 			*imd_crc = (struct imd_header *)imd;
 			debug("Found crc token at %d\n", end_ofs);
 			break;
-- 
2.33.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

