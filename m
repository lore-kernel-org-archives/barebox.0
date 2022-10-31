Delivery-date: Mon, 31 Oct 2022 08:35:55 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1opPKt-008u44-8C
	for lore@lore.pengutronix.de; Mon, 31 Oct 2022 08:35:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1opPKr-00057b-AO
	for lore@pengutronix.de; Mon, 31 Oct 2022 08:35:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=npQ1AA5r9FaELUXZqc3eHCRPZoOjfF3Hd2Iu+q8vhkU=; b=tu4su/Iv/7PwSi
	wrB5w4CHx6Qf8A2hMg6HYD/hHDVaIcgom7QaN2Beb1SwikbroodaRpG1qlOUt4Ci5Pb/zs8esjml2
	KJiRG7GmdDipN/BrK9isjiO9RB8M4y8MKbKR9eH/tE3uBhhDL2FR7Ug2Q0TuL8I3F4rtnCGikbBhu
	gFgLyOvy+sVBXJLB0YHK/0W5T5kJiQmc9U3x5rac74D63VPC7OSV3cRQB9UlWK4OXKljpR9CUU2a3
	J22mvx5SNYY+iV+aYfvVrjiN7iFzcyws6/8jIT3Pql3H+wRTuyQc7f1gurIiGLyrv4HS0fMRf2wkR
	ISLFl6kq6tXhEmHk5X3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opPJg-009Bhu-Ll; Mon, 31 Oct 2022 07:34:40 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opPJb-009Bh2-Vj
	for barebox@lists.infradead.org; Mon, 31 Oct 2022 07:34:37 +0000
Received: by mail-lf1-x135.google.com with SMTP id bp15so17885921lfb.13
        for <barebox@lists.infradead.org>; Mon, 31 Oct 2022 00:34:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=npQ1AA5r9FaELUXZqc3eHCRPZoOjfF3Hd2Iu+q8vhkU=;
        b=CRKLnhNDUAW9tPlvhIQ7iwB2Jh3zaEYkb4ESITnKBgTbmNtkTBO/BU/PnefIgHOQsH
         OYIB/B7VKZx0fXJy+a+i2Iq2B7RNLPvN6El6zb+W9/T7IBvoDqfIiGf1BUoB7J0W8t5w
         9pIvymVXBn/A5U/6kAd6dQdGCEvyP6kMhEQq4Bm3/5dWX3TkRDpv9AY3Tu86U7xnXYke
         hYP9hGWqvQCNcgvKlK1v5B9WwqKYQKLMrQZ5iyEArIbfoTC6Ws/J5jjH7Fx8CQbemUan
         bpP/S9lGnsPSnTEGKhOnjIUBSfULLewGvk0ZChdoWcHzAQPC8E4dbvzL0d2OYhi1wsBS
         gl5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=npQ1AA5r9FaELUXZqc3eHCRPZoOjfF3Hd2Iu+q8vhkU=;
        b=b2rlqqTDeeqBp7cTcfKMkLy0Ba1fa69Vg2t9qCfq8NsFTBdy7uNXIWPLZlQ4UHpft3
         V+Dw966CJoTcck0gnvyeHLwlPzYdR9oVWJBE3okC7xnwRzuDD3dwtwchPoIRDSPUBo3E
         sgAZLwPNi4XtbCVcsLvzlQroa1QZw+M0nzrwnkDwa68g3rfR/o5y9+m8UcVR70gbW198
         uEbwlQ3vjJSdJwJEbsR/8RVvFkZwOmqdN3SiA2OFksCWkFm6Xh0eytsol/HXHJj5Wajh
         MMmTCFXNqCZB1nlA4s2FK41Pfwyv7z2H+7gqONPH2rntn0CSzmd6JdoZIA8QKRM5R4rT
         pecw==
X-Gm-Message-State: ACrzQf1MrtlZkaHyCLe2mhGqQnJufDmMJvgnlg1jWKShqddufSam5KLj
	gwQllSUssq0GcVf6VubKuISqNZk+lV6mjgWO
X-Google-Smtp-Source: AMsMyM5oITzq3o/E67w9mQnYHvFGhKa0ZNS0JqlQSir6U/FhP8FADHPW311123lnkIbhSe6LeTnSRw==
X-Received: by 2002:a05:6512:2024:b0:4af:1cfc:183a with SMTP id s4-20020a056512202400b004af1cfc183amr4768973lfs.87.1667201672986;
        Mon, 31 Oct 2022 00:34:32 -0700 (PDT)
Received: from localhost.localdomain ([193.232.173.109])
        by smtp.gmail.com with ESMTPSA id z6-20020a2e7e06000000b0026bca725cd0sm1178156ljc.39.2022.10.31.00.34.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Oct 2022 00:34:32 -0700 (PDT)
From: Denis Orlov <denorl2009@gmail.com>
To: barebox@lists.infradead.org
Date: Mon, 31 Oct 2022 10:34:29 +0300
Message-Id: <20221031073429.1656245-1-denorl2009@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221031_003436_053526_5BE7D84D 
X-CRM114-Status: UNSURE (   8.88  )
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
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] reset: add missing stub for of_reset_control_get()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Every other function in reset.h has a corresponding stub that is used
when the option RESET_CONTROLLER is disabled in config. This allows for
code that uses this function to still be compilable even when the reset
controller subsystem is disabled.

Signed-off-by: Denis Orlov <denorl2009@gmail.com>
---
 include/linux/reset.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/include/linux/reset.h b/include/linux/reset.h
index c1282a84c7..2d788547f4 100644
--- a/include/linux/reset.h
+++ b/include/linux/reset.h
@@ -48,6 +48,12 @@ static inline int reset_control_deassert(struct reset_control *rstc)
 	return 0;
 }
 
+static inline struct reset_control *
+of_reset_control_get(struct device_node *node, const char *id)
+{
+	return NULL;
+}
+
 static inline struct reset_control *
 reset_control_get(struct device_d *dev, const char *id)
 {
-- 
2.30.2



