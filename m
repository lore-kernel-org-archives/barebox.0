Delivery-date: Wed, 14 Jun 2023 10:11:28 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q9LbF-006Nq8-RX
	for lore@lore.pengutronix.de; Wed, 14 Jun 2023 10:11:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q9LbD-0002yy-7S
	for lore@pengutronix.de; Wed, 14 Jun 2023 10:11:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=WaZVNQN0emWI/OKcIVizkrUovVWUwzjimLtX+3nUcUM=; b=ge8cZJWwBSZmirC5CQDSTlUW5Z
	MjS7IFdZCIYSyLkOTthRxZOF63O7JqRS5dXWDr6vbnIv8NRnvHVb5me96D/B6Fkp5AFF27BhxooXa
	nWoiGUj8wlwUUKjljGg2GXFN3EXp32eDYE1DMQyrVjgBrCDHfkp08V9mMS+yvTnG04cLPuV8LaLEJ
	D2G1ev+Ym8UNQ/Ub5/yuYDBJN54JPs7lPGqVrpYaxfgYiaFIQUBdg1t4xYXANUEUyr+FFwgjOgq1f
	43LX9w1K1UxZ21poAqBpta8t1jsdn4+aK0RsSIm6/VkN1VL2KcjODSonBxjaQDZnovzSuC8uRb+o8
	X40L8tXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9LZr-00ApWD-2p;
	Wed, 14 Jun 2023 08:10:03 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9LZo-00ApUk-1P
	for barebox@lists.infradead.org;
	Wed, 14 Jun 2023 08:10:01 +0000
Received: by mail-ed1-x533.google.com with SMTP id 4fb4d7f45d1cf-5151934a4e3so9503596a12.1
        for <barebox@lists.infradead.org>; Wed, 14 Jun 2023 01:09:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20221208; t=1686730197; x=1689322197;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=WaZVNQN0emWI/OKcIVizkrUovVWUwzjimLtX+3nUcUM=;
        b=GCRemZs5PJrLQuPrWc8wz0qk2nVBvT9j9JwPcG49LXEYZ6VKNXO2zOZiK5PPVzfg0R
         QDw6z4cBWCXZxSW3+eQJ7NNQqhMhRmRFLm3h0jsMQubbRNVl0tN5ZMZv7hb9HND+9gun
         A8EEEB7k9KBDVU4Fd+oI3XAhAvbDTur6VTvB7W7qqRflk6MKs58DvvrCIePJqKxpjhrB
         hb3EEWnvzm37V+ZwVnivbe/3prEx1gHNc1M63BxMmAN/xAdYq9FQSpQBxmNNgv3WOiRJ
         FaLnKFxHtMb10Io/TL5zcaDQWrLwvrbzxiorHty0SGK3eLIiphjDy1r6gOUbDt8UNEem
         K0iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686730197; x=1689322197;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WaZVNQN0emWI/OKcIVizkrUovVWUwzjimLtX+3nUcUM=;
        b=BlmC7NQxD80cbGDLI1VfTqdF2MFWXMIVV8FQn9gGnMWXbbp3Zzi9NzvPC/yQDlAgfm
         egQLplsJ+Ul1qt1pZQ3P4y8gpATgJvtu2ASyk78BD+gKuO/4xvGvYH364VH+FodLWmZ7
         +/3uVWoaPx80oQjqSsmVBps2VWGZIRyhLnkxImfAVINWucDniKbel+GfiSyiZuEX8mzt
         qKTpbRv8534IfTip1K1jsPKmpNdhrv/OKF48oJKTyBgZxIqk0JillHg0RNAYHwCI5QqH
         au5joAzVvlR8o+igSJZ5MZoDvCgr3r0NAIp0wDKQ3OzWzntgkd23ILuscJVBMXdhnoc8
         Q6gQ==
X-Gm-Message-State: AC+VfDxug5O7np35sJugofrjQcoDHp3vew/5PWINdhhkT2a5BH4wcgyJ
	/RkPxZTg2XEJ/bPnslnaNm6pwc2ghzE=
X-Google-Smtp-Source: ACHHUZ4MqTs7g5RTrwC9Rq6KfROkK7bnyfgp+Yua3MhVUlfmr+c5v+ZQxumXxDVKlZ8Wl2y0bOXhGA==
X-Received: by 2002:a05:6402:412:b0:514:9497:1bf6 with SMTP id q18-20020a056402041200b0051494971bf6mr9412924edv.2.1686730196516;
        Wed, 14 Jun 2023 01:09:56 -0700 (PDT)
Received: from development2.visionsystems.de (mail.visionsystems.de. [213.209.99.202])
        by smtp.gmail.com with ESMTPSA id f21-20020a170906139500b009745482c5b7sm7659288ejc.94.2023.06.14.01.09.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jun 2023 01:09:55 -0700 (PDT)
From: yegorslists@googlemail.com
To: barebox@lists.infradead.org
Date: Wed, 14 Jun 2023 10:09:19 +0200
Message-Id: <20230614080919.1716578-1-yegorslists@googlemail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230614_011000_498913_6936B088 
X-CRM114-Status: GOOD (  11.24  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH][RFC] lib: zstd: resolve maybe-uninitialized warning
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Yegor Yefremov <yegorslists@googlemail.com>

Perform memset() at the very beginning of the ZSTD_getFrameParams()
routine.

Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
---
 lib/zstd/decompress.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/zstd/decompress.c b/lib/zstd/decompress.c
index 19bf712881..78df7d660a 100644
--- a/lib/zstd/decompress.c
+++ b/lib/zstd/decompress.c
@@ -207,6 +207,7 @@ static size_t ZSTD_frameHeaderSize(const void *src, size_t srcSize)
 size_t ZSTD_getFrameParams(ZSTD_frameParams *fparamsPtr, const void *src, size_t srcSize)
 {
 	const BYTE *ip = (const BYTE *)src;
+	memset(fparamsPtr, 0, sizeof(*fparamsPtr));
 
 	if (srcSize < ZSTD_frameHeaderSize_prefix)
 		return ZSTD_frameHeaderSize_prefix;
@@ -214,7 +215,6 @@ size_t ZSTD_getFrameParams(ZSTD_frameParams *fparamsPtr, const void *src, size_t
 		if ((ZSTD_readLE32(src) & 0xFFFFFFF0U) == ZSTD_MAGIC_SKIPPABLE_START) {
 			if (srcSize < ZSTD_skippableHeaderSize)
 				return ZSTD_skippableHeaderSize; /* magic number + skippable frame length */
-			memset(fparamsPtr, 0, sizeof(*fparamsPtr));
 			fparamsPtr->frameContentSize = ZSTD_readLE32((const char *)src + 4);
 			fparamsPtr->windowSize = 0; /* windowSize==0 means a frame is skippable */
 			return 0;
-- 
2.34.1



