Delivery-date: Wed, 01 Jun 2022 08:04:24 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nwHSy-00Gt5Z-DX
	for lore@lore.pengutronix.de; Wed, 01 Jun 2022 08:04:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nwHSx-0005Kx-2C
	for lore@pengutronix.de; Wed, 01 Jun 2022 08:04:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qqczqHRQHNJMNFjTEPEIdiOxVtf0zD2SYOEVvXhP/vE=; b=a0PwIjSor+oC6k
	49MAZPFO30rNcKnKu0sMeAn6WYzfxm+ISMBM57O6cj+Akg9G2XdSwyS7PnlGVIAy6oHKfgon7/6oj
	aX/LCIdXc2Ik8h6gM6OX4Kk5OHVkEDaK1CdPiTCmzBd1bl+xQLI5rQi+M26cr34jzrEPFJAm+x/6e
	8j/0jiUc7rYjLZ4PNJ+U1+6v2rWlgP5XmfQgVN8xU31KmG1UY9LOuq8lWEac60XGsCtRKy8bty9Tr
	anKaq8cn6JOeVesgUYTAJkH5nxy1Ss/kyXDP3epMX3LKoxMtdl6u91byb3Z3hqyApUvppA0VCTS5V
	JN0anAMt3vnWq0ReQWdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwHRK-00E2S6-F0; Wed, 01 Jun 2022 06:02:42 +0000
Received: from mail-lf1-x134.google.com ([2a00:1450:4864:20::134])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwHRF-00E2RA-Eh
	for barebox@lists.infradead.org; Wed, 01 Jun 2022 06:02:38 +0000
Received: by mail-lf1-x134.google.com with SMTP id h23so1017241lfe.4
        for <barebox@lists.infradead.org>; Tue, 31 May 2022 23:02:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=UEUackTRExX115kjGSLhMHVZJJ13q7+A45srGc8778k=;
        b=iWACzPXEBZB8h7ch+Tr3a6ud78qEuGPo1lhHFfM07Vv1NlHDqRer4DMvdM/kVwdXLK
         0TRnLtty5dPHBAws8iWFVDmUxnH3LQ+OJat+GcIIXxATHe5mL3YhRVhkTZdEz297Zl8y
         ZZM0lX3/MO9BuwCTwIAiqxWFW9HyqZuE/W6HaGGIygHJlgTMAJ0mTxVGT5gCVaoKfClT
         c/PgPdJZZ6jxaiTaYNeyUaKYP010DVnSHudwr1q3JHu3BSkuVaZSbqNzwC+bOqRIGbJ0
         RlDjaz97ZbS/6394XKu79eFMLuHy59oQYDTJGy+X63W84Ip1PrObXaaLL3L7TlBmUvbw
         unTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=UEUackTRExX115kjGSLhMHVZJJ13q7+A45srGc8778k=;
        b=lWp+uNeDNBWY/kCRvKy5zg9PDMqJW6ad0couy4rkr7y8s+QQvLmyz5fKbRP2fQ9MRj
         CEoay8TuF5OQVD70R82U+Qa8inyCD/tpyA+pVtYzSXhAIMjoLLDeHA3B3pmSBTwHBFn8
         5RjJcXD41pf1iOxyiHlrATsKxUE1i1q605GQXtRyPFDOCWRdSmWHD9KFOB7HvsYuGFKG
         hn2aA5AeVr9OvpWRKcA4TRks3ogtPskNzADciB0OzejxlO1lmYShwC2Smt84GgiRwBNN
         20ViQ5lv4syylzXryvm2pZ0Mv0zTHlva/dUQRs4jUkWu7NcophcWPIjO5PT1Wito5UFa
         1JqQ==
X-Gm-Message-State: AOAM532zMSj6mvYHRXKqjoA/U0rusjppwHtxGE3IYTTzm3vXq9kOoizh
	ERDht2yTIT9tqUazUTe9C4ixi7gkMrw=
X-Google-Smtp-Source: ABdhPJwHAQtMuyW/foQDacNcSrtpoYF+5YKIMvKZbZDECapCttTx0RorfJ3dtUTlM8MTqh8IuTMVEA==
X-Received: by 2002:a05:6512:1324:b0:478:e5ef:1ed4 with SMTP id x36-20020a056512132400b00478e5ef1ed4mr8186961lfu.462.1654063353887;
        Tue, 31 May 2022 23:02:33 -0700 (PDT)
Received: from shc.milas.spb.ru ([188.243.217.78])
        by smtp.gmail.com with ESMTPSA id 4-20020a2e1644000000b0025552d57beasm129691ljw.89.2022.05.31.23.02.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 May 2022 23:02:33 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Wed,  1 Jun 2022 09:02:21 +0300
Message-Id: <20220601060226.3756-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220531_230237_531539_2315727B 
X-CRM114-Status: UNSURE (   8.20  )
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
Subject: [PATCH 0/5] Misc fixes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Unsorted various fixes for the barebox.

Alexander Shiyan (5):
  ARM: at91sam9n12ek: Use xz compression
  ARM: boards: Fix unconditional compilation of imx51-babbage directory
  drivers: soc: Fix unconditional compilation of imx directory
  globalvar: Add missing empty prototype for globalvar_set()
  of: Fix of_prepend_machine_compatible() defined but unused warning

 arch/arm/boards/Makefile                 | 2 +-
 arch/arm/configs/at91sam9n12ek_defconfig | 5 +----
 drivers/soc/Makefile                     | 4 ++--
 include/globalvar.h                      | 2 ++
 include/of.h                             | 2 +-
 5 files changed, 7 insertions(+), 8 deletions(-)

-- 
2.32.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

