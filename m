Delivery-date: Thu, 03 Aug 2023 15:45:30 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRYdu-0058LM-HF
	for lore@lore.pengutronix.de; Thu, 03 Aug 2023 15:45:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRYds-0002pL-NK
	for lore@pengutronix.de; Thu, 03 Aug 2023 15:45:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=PpfLPKnNBPe+Ob00gsXrkEBfg/KnzYIGchFSQUdJTxM=; b=jqSr4jotDyKxqrQ/xqnfPBhZh6
	zusL3V4paaMtH5qdwiOfOvN2RtQNzs7N56B09NGErNjxWUllz79Eix8HJHMgDzmKO76K8Ti2Zix+J
	SxwTItdsAcx+gkkUZ0wvoSiADq9IQ8xizpJlP1ybqMujLSlv4n5ST5Gq2Pubja/Riu2iGeDB9E7GB
	Dw982gEMxoTzp+RdgrWyq5/wvjhasfRCLxtVL3GdzXB7fc7Nkpu9+baKmbA1QOr/v7Wfv8lnvlXzI
	nY3UfjWAyZDDHENvcDhtTb2md+KDzP3LoJCgz0mNdQkNakzLrs5hZJhiYscW+QqijzrXsfK83u3/q
	qakDq9uQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qRYci-009Ar8-1h;
	Thu, 03 Aug 2023 13:44:16 +0000
Received: from mail-lf1-x131.google.com ([2a00:1450:4864:20::131])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qRYXm-0096kI-0B
	for barebox@lists.infradead.org;
	Thu, 03 Aug 2023 13:39:11 +0000
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-4fe1b00fce2so1620599e87.3
        for <barebox@lists.infradead.org>; Thu, 03 Aug 2023 06:39:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691069945; x=1691674745;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=PpfLPKnNBPe+Ob00gsXrkEBfg/KnzYIGchFSQUdJTxM=;
        b=iAnjyYh0Es7qtukmEHPHOevj7RW7jsc5EsPBtiTId+3PvEk/8lYTJ8xVyyNXG9i3Vh
         LoqP6DfdASC28aC9D6G5ltN8Y0VSE5KaMHaJuOmB4d+Ojtdtb+MrGMmP0XJUdRieOz/O
         vbloqGi2RIz089pBCQka20fW80YsSSDKAbPriPpLGLT9poyvTluNMfAwJHB3C4W43rOp
         NQ+fi/NNi6M653Y6gqOvea2F7x8Yv5Q6rr1QQODgtED7rQak4ZIKDCmybNYVxkih7111
         ZGNFybbIrzgUXMhDD77fAbg7fBOfl4KHCHVAa9zW3ywzm0175E2/AJAJoSKIBvzSG+eN
         xobA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691069945; x=1691674745;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PpfLPKnNBPe+Ob00gsXrkEBfg/KnzYIGchFSQUdJTxM=;
        b=fTeWprK8fnqIO/Ot4JmnxY3DRj5E8GWh0ID9mg7DwHAxsi1Wsiv0H6VxWokNiW/4nl
         C7f8rvXdE4DK8v/RI6de9DXC7RdK60q2mOidlm0WqPwyK9+ZoYcN7g2qQf9rBknh94U8
         7Prg2uQOPGJyHxhTVfGK+HRa9KZf1AWIHMv5xHUPqMkxzs9wqIT/vix2E3cxT9r7YVaJ
         Q7nMempJHe1NbPelSgeyiiZfUkAtNRQP8NoPl+OQnJejzp5wA4XwoZqU4CsD2TEGvr/l
         apJvODJOOFWD+2xqB+T3IDs7I0tZqKTuYfmlRLX8jgCKeCrC0qpP4MIrcE1fdeZDX2eu
         1gaw==
X-Gm-Message-State: ABy/qLbZVkRPrLj6U7sjDflUwsrDib0BINmb+gwb55k7zHmXxk5n0pf9
	zVPaAsNZ8yd6DR4tJKR0T0ov5+ebHCBWsQ==
X-Google-Smtp-Source: APBJJlFu35ePzYiuHC+z/9ElxMg9+MTzoEOxoP+/3gjcbLJLddXnVCX0gkesPDpgNnL5YgQSlrcsdg==
X-Received: by 2002:a05:6512:e84:b0:4f8:5cde:a44f with SMTP id bi4-20020a0565120e8400b004f85cdea44fmr7113944lfb.10.1691069944943;
        Thu, 03 Aug 2023 06:39:04 -0700 (PDT)
Received: from localhost.localdomain ([185.119.0.88])
        by smtp.gmail.com with ESMTPSA id w24-20020ac254b8000000b004fe0d39e6besm3370214lfk.58.2023.08.03.06.39.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Aug 2023 06:39:04 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu,  3 Aug 2023 16:38:52 +0300
Message-Id: <20230803133852.87737-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.38.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230803_063910_152915_8878E4B5 
X-CRM114-Status: UNSURE (   8.45  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH RESEND] .gitignore: Add generated scripts/rkimage to .gitignore
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 scripts/.gitignore | 1 +
 1 file changed, 1 insertion(+)

diff --git a/scripts/.gitignore b/scripts/.gitignore
index 3ca742ac6e..36b60ad56b 100644
--- a/scripts/.gitignore
+++ b/scripts/.gitignore
@@ -32,6 +32,7 @@ omap3-usb-loader
 omap3-usb-loader-target
 rk-usb-loader
 rk-usb-loader-target
+rkimage
 mips-relocs
 rsatoc
 stm32image
-- 
2.38.2



