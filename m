Delivery-date: Mon, 05 Jun 2023 22:28:21 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6GoR-00CCUE-7Y
	for lore@lore.pengutronix.de; Mon, 05 Jun 2023 22:28:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6GoN-00012f-Hm
	for lore@pengutronix.de; Mon, 05 Jun 2023 22:28:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aGxio0eegGmnD4OdVIX4lJ3oNzC4sMVUJScp3dnTIbQ=; b=FOeP2W78dwXptq
	CZCK2suweQ/Chea/mnD7hRiAJUiBf0N+EaQ2cKSupz/Mdv1Ptp/UD9RlaX921DbKdGiBW27iiTeqr
	i/481ftBodfsGwuIJ5EX7kqyJdXscr8BqHcjx+q7H7tMS/35CPFG7Ellc3f49/Q2iIWAyXU7r/xln
	N16smS/+QizlVrp+63Sx2UkSwDSWt0gEapaEGMV5vOGWgCbyzZGseQmegciVnmSrVvbEmiV8u1rR2
	aOoURdCNAjwLnN+7jjpgRkT0IiFSZKMG5o23r5kOZWFl0oYNZ9pk4Zp1yQ+bdfXfdsCJ+cWHyzZA/
	aolVOaIXNwcaAPyxmgPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6GnG-00GhIz-26;
	Mon, 05 Jun 2023 20:27:10 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6GnC-00GhCX-32
	for barebox@lists.infradead.org;
	Mon, 05 Jun 2023 20:27:08 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-4f4b2bc1565so6726075e87.2
        for <barebox@lists.infradead.org>; Mon, 05 Jun 2023 13:27:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1685996822; x=1688588822;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aGxio0eegGmnD4OdVIX4lJ3oNzC4sMVUJScp3dnTIbQ=;
        b=EP3QXvaGwyLrw/BBeYnqE3bTgk+rubf99COBparTdevkCMcnn3ttXBJRsiEoJlATbA
         FO3QmZNXKs1ykr5qomh8xVs/LiMkNP3qeb6QzNE3tcGZKsGn1WNGhfw31WBsOee9SuAR
         bX6QXvfcQuC7Xvn0MyBNh58UT6NFk4P6We9Xj8/WHxVXIitohW3tCjiBb4lrx4Upscc9
         KZHDzuz8j68EI7DRK9/Kac/nJ9CdWcU5m6gyX9yjyRatIQ+RJZAPdBLK93eLVjsgqjg5
         qMwZstNhZ5JpnxYTPaO2UNhUMsMpvcWDVXFuQe6IbHvjlm8DEcwUQorW/HStXTl5DOmO
         ZDeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685996822; x=1688588822;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aGxio0eegGmnD4OdVIX4lJ3oNzC4sMVUJScp3dnTIbQ=;
        b=MJZwL4uWQg1KczYLMdXyeVkZxY2TOCdOboP7PryqzRbh9CVkT9Qpq3hgDiYhdB/x9E
         Rxdk5DqpUhJ95VMMJtciwgVt7ohwjeuLLRhxWV2zRv9b2FwBWt6aKgVR5N9ycJum5f3x
         7dP7eSxNwvEUk2oqNVrpEQMBWwxhzwXDwgvn/yePt+Dr0YiiO0Gnz6iYzILorxBRy4xu
         LAKjkwa4hyG66u5QMibgNbcquTdsBtNbW5G8qjQBA/3ndh36B9vdGCqp7g/xNFC2IQkN
         zB267BX0/Ch0hZhja0tPZiwH9+Pla19WcZVmwtKYsPUtX4UZa93mBVafAr2YiI6UV34q
         H/UA==
X-Gm-Message-State: AC+VfDzLDTDd1ejBKHdlod7+2/TZWXKFznxztlR28rf8x92obPYiEdqe
	ivId/PqrvYSEMxWH1SlEkvh/9ZSK8shNJg==
X-Google-Smtp-Source: ACHHUZ6AENt0CZzYw6/qaIpxCd31HB7ZEgrTQgnuIsyUccSI/u+wRrCEO23b0v7OHvap3gB08MY/3w==
X-Received: by 2002:ac2:5e8a:0:b0:4f6:1779:b1c1 with SMTP id b10-20020ac25e8a000000b004f61779b1c1mr17278lfq.48.1685996822112;
        Mon, 05 Jun 2023 13:27:02 -0700 (PDT)
Received: from localhost.localdomain ([188.123.230.216])
        by smtp.gmail.com with ESMTPSA id i18-20020a2e8092000000b002a9f966f4b3sm1587087ljg.26.2023.06.05.13.27.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jun 2023 13:27:01 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Mon,  5 Jun 2023 23:10:45 +0300
Message-ID: <20230605202634.42175-15-denorl2009@gmail.com>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230605202634.42175-1-denorl2009@gmail.com>
References: <20230605202634.42175-1-denorl2009@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230605_132706_978118_2AA2C9A3 
X-CRM114-Status: UNSURE (   8.97  )
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
Cc: Denis Orlov <denorl2009@gmail.com>
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
Subject: [PATCH 14/17] MIPS: pbl_macros: use generic load/store macros in copy_to_link_location
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This may speed up this code a little on MIPS64, however this also allows
us to get rid of unnecessary macro definition there, simplifying the
code a tiny bit.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 arch/mips/include/asm/pbl_macros.h | 21 ++++++++++-----------
 1 file changed, 10 insertions(+), 11 deletions(-)

diff --git a/arch/mips/include/asm/pbl_macros.h b/arch/mips/include/asm/pbl_macros.h
index ce169a1554..f8629d3f2c 100644
--- a/arch/mips/include/asm/pbl_macros.h
+++ b/arch/mips/include/asm/pbl_macros.h
@@ -120,22 +120,21 @@
 	PTR_SUBU	t2, t1, t0	/* t2 <- size of pbl */
 	PTR_ADDU	a2, a0, t2	/* a2 <- source end address */
 
-#define WSIZE	4
 copy_loop:
 	/* copy from source address [a0] */
-	lw	ta0, WSIZE * 0(a0)
-	lw	ta1, WSIZE * 1(a0)
-	lw	ta2, WSIZE * 2(a0)
-	lw	ta3, WSIZE * 3(a0)
+	LONG_L	ta0, LONGSIZE * 0(a0)
+	LONG_L	ta1, LONGSIZE * 1(a0)
+	LONG_L	ta2, LONGSIZE * 2(a0)
+	LONG_L	ta3, LONGSIZE * 3(a0)
 	/* copy to target address [a1] */
-	sw	ta0, WSIZE * 0(a1)
-	sw	ta1, WSIZE * 1(a1)
-	sw	ta2, WSIZE * 2(a1)
-	sw	ta3, WSIZE * 3(a1)
-	PTR_ADDI	a0, WSIZE * 4
+	LONG_S	ta0, LONGSIZE * 0(a1)
+	LONG_S	ta1, LONGSIZE * 1(a1)
+	LONG_S	ta2, LONGSIZE * 2(a1)
+	LONG_S	ta3, LONGSIZE * 3(a1)
+	PTR_ADDI	a0, LONGSIZE * 4
 	PTR_SUBU	t3, a0, a2
 	blez	t3, copy_loop
-	 PTR_ADDI	a1, WSIZE * 4
+	 PTR_ADDI	a1, LONGSIZE * 4
 
 copy_loop_exit:
 
-- 
2.41.0



