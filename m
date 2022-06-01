Delivery-date: Wed, 01 Jun 2022 08:04:20 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nwHSu-00Gt43-Na
	for lore@lore.pengutronix.de; Wed, 01 Jun 2022 08:04:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nwHSt-0005Ib-A9
	for lore@pengutronix.de; Wed, 01 Jun 2022 08:04:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6ZMZcUSw5GR6cJBeOW+T9YeLWLpNNPHbaFbv19GdMrk=; b=2s2LBtwa0mSMmw
	JK7vDD1PZH0g1QU/VGleZlEBiuL29H6364XjjHYp8y0qQkcvMsAbfwmwXiGGMH8verx1Rgfl9PuXU
	Z7tp9nL5V7u02zSUTtDVCNHcZtNAFQhUWjhfFvZ5Ma/o51hp5ylES65Sdz7q76hpub9PRSHiIBlmD
	kgMyKyw7LT1vmIocXEq6Zok1bJ9iHiMu1w7TXnM5fTZhLdiYnLLkz6mU2x8+BMXLbTI+/3kEC3wqz
	FPCRv/pHhLbhz+xj1FWvEG3J9u/mZnEuTNe/3Ip6gGF7/3E4U5LP/BsusMymsEjDUQNkAfw38BUhm
	zGlad+Kon6DfYoDshxig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwHRR-00E2To-7n; Wed, 01 Jun 2022 06:02:49 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwHRI-00E2RW-13
	for barebox@lists.infradead.org; Wed, 01 Jun 2022 06:02:41 +0000
Received: by mail-lf1-x129.google.com with SMTP id a2so1022721lfc.2
        for <barebox@lists.infradead.org>; Tue, 31 May 2022 23:02:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Vn7UFbrJ6eJkRairLvxQXBWnCXPxZ27kfxTl6qpW81A=;
        b=N6truJynFQXDTcdOv43ov3JOEY0UTj4GSWd1B9h5x15DlTVjp2Xr4B7j/p7LDjGoAe
         ZoTXFpHYu5HGzHIWdCY63LpQo+e1aDGw1QghPP/bOPnRCrMf5ghlAG1mBZnuH/O9AL9u
         HlEva0D0x+Nn9rbLVlPz5MCY7vpEmZRGZ8jLznIT4lgvhTqUfrcImftRnEkux8xwSUNY
         +oBmI1Ds4XU33stPCONczfkB0v/Gy6F9nPgeQPpZ4WTXvX+C8HnFWUZ6W7prRHp+DuK7
         X1jqLTCwmHORHGhncMn58/zU+0HcSzQUaS728IyFIrnNbERfBX+xTh9nYsgxtmUmUs70
         rKdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Vn7UFbrJ6eJkRairLvxQXBWnCXPxZ27kfxTl6qpW81A=;
        b=QojzQP6RcKtDr1U3riuFZl7a+Hs0qbIm5OBbYWK5VKCrwhXrQitFVmFA1K4X3dxBx5
         cnd3v9KI4g8TrYohv/2V08JazNu3A4mcaHAg8yoBdZF64goAIBELZZYKUCN8lZ+m0sI7
         1bfbiqwxUoBJWhpLkhUtymoE91Yp9OJBfgUfHWc41gGLgNr/3Ai5BhNgdhH50Tnvac3G
         s4Z3muT8mRZv+q4ATKQYQlDsTfqK5bhWyBh1KNSD7Ofj4HE8YnWQv9cqW6jg3rvr+wXw
         ramRvWQcMY/tozj9NEn+6tSj6c/jGB99W+DQp9PCZmGMg46xrp1BAo5uNjXkQXo5OQFQ
         dSgg==
X-Gm-Message-State: AOAM53271fdzUsZ0ftw8CpXJZl24QCOPYyruOBoI73BRW+gGrgA9IRRe
	IvynJLPFQ65Mlb531/JMeL4H9owhJxc=
X-Google-Smtp-Source: ABdhPJxhJtRCpA1IlHrPpzlVsmLV+AK5pMlrdsMOQ9jixbwjRGpT7YAjrmM2iOmn+w7kOHh80nn4SA==
X-Received: by 2002:a19:4909:0:b0:478:ffa2:ee3f with SMTP id w9-20020a194909000000b00478ffa2ee3fmr1957445lfa.337.1654063357777;
        Tue, 31 May 2022 23:02:37 -0700 (PDT)
Received: from shc.milas.spb.ru ([188.243.217.78])
        by smtp.gmail.com with ESMTPSA id 4-20020a2e1644000000b0025552d57beasm129691ljw.89.2022.05.31.23.02.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 May 2022 23:02:37 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Wed,  1 Jun 2022 09:02:25 +0300
Message-Id: <20220601060226.3756-5-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220601060226.3756-1-eagle.alexander923@gmail.com>
References: <20220601060226.3756-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220531_230240_171652_C6349EFB 
X-CRM114-Status: UNSURE (   9.99  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 4/5] globalvar: Add missing empty prototype for globalvar_set()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

common/fastboot.c: In function 'cb_boot':
common/fastboot.c:396:2: error: implicit declaration of function 'globalvar_set'
globalvar_set("bootm.image", "");

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 include/globalvar.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/globalvar.h b/include/globalvar.h
index 476bb920f3..ff1da6c927 100644
--- a/include/globalvar.h
+++ b/include/globalvar.h
@@ -101,6 +101,8 @@ static inline char *globalvar_get_match(const char *match, const char *separator
 
 static inline void globalvar_set_match(const char *match, const char *val) {}
 
+static inline void globalvar_set(const char *name, const char *val) {}
+
 static inline int nvvar_load(void)
 {
 	return 0;
-- 
2.32.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

