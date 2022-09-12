Delivery-date: Mon, 12 Sep 2022 10:48:24 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oXf7A-0022Cf-DO
	for lore@lore.pengutronix.de; Mon, 12 Sep 2022 10:48:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oXf78-0006KZ-7R
	for lore@pengutronix.de; Mon, 12 Sep 2022 10:48:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KedzIupOBIZrauK1Soqkduo/UyVdDzrPA1De+2HO8ZI=; b=Ki5ALtN40Qt70f
	r7RL1qNSm8GnnmIf7wR3qbakjlhyV9xcPK5AkpQ4JmqaRWf9Pitv8iSpesbcX0wm2MXen51gRb/DC
	SaT+7nwOY36j/kCbYZiUnq0GUEfMV6v+OILCOvEm2uGJlFHHL/MAYtjXqm8WapLJNj2uhq1onIrsX
	QEs9NInaGBUlzeg7NF1D0HaqWDp3k03sVD9zLh3BhwsSlEl3Rj8gPX6YYL1TcJIh1Pwnou50jpHJy
	5WuxdsSqTqUpXtQWFPNW0cNd3P73/p2VmrFwhjfCU/xyvbS5Xp5QVZwmZE32PNPjV9/ovl8Zxsk5G
	jFt7niyOErv+D6oL+G8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXf5a-007vkU-Ro; Mon, 12 Sep 2022 08:46:47 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXf3Z-007uhO-St
	for barebox@lists.infradead.org; Mon, 12 Sep 2022 08:44:49 +0000
Received: by mail-lf1-x135.google.com with SMTP id z25so13683051lfr.2
        for <barebox@lists.infradead.org>; Mon, 12 Sep 2022 01:44:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=KedzIupOBIZrauK1Soqkduo/UyVdDzrPA1De+2HO8ZI=;
        b=KquSGVkAncWWZL9ZoaE+IyhO+An3+N3FLybcAYNDUU0obzweRMI7lrrXDqe4OKVabe
         TZvvd/O5KHXjzvWmWni81aPEZd+ZxvQJhd6SgtVeuuMql8sRM7SNuUkmSEl+W8WgyT3V
         7YqQ99MefD17wkVpPY467hSXnAGr/nBzjc33hMnm/YHZaUm/6C/sae/Gph91yNIbNzLF
         fBapjNNjJRob7b1skMvCx1DDxFPBwi0pdlyP1o6dnFVF6W2EuLq7CHCyoV6MpAmljHm1
         fDZSlXHZtGx87iINAebUBuyigxLtcY9bE7rPLvo6/5pOUfawv4b3f6cpsScMrXYPiPdj
         P3QQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=KedzIupOBIZrauK1Soqkduo/UyVdDzrPA1De+2HO8ZI=;
        b=AbF5F5coT3/ZTiZlfjmW7qMRsNkxXh6wbrEEIZ0Zvta6ZlGOMNBfi2EU8ubJxiOmEo
         aAg5LEBNEu6OCmO+Waa+aNCY/RKrucEGtAMm6V6Pv7rzS+DgXHW1cCBa7KhblykhchrP
         YiSVLk7BsoZdg0KVwwC3SqvRnnnl/mGzpO85SiEOxej98CKRnjEnOF5uaroEpyOWuKtM
         oGalfr5kqnUslGvFRnq0mIuhaqWuFYtfb17hpT6rCETdHv/FvYbpOqoislOuS+82p7Nc
         TLzyYiCRP9CQsBMlU44yr7yL5TGat8SLfUvna//eJXxnhkst+o/dHDzBRddKEDgxDbCl
         jEag==
X-Gm-Message-State: ACgBeo0AOgsnt1ecTaUlPo1ZDuPPFa47EFfHtqPkCVfglfJkizmMHv4r
	vbA8kFR17hUZbOsxTpfKHJY520ejo7HuTQ==
X-Google-Smtp-Source: AA6agR6HR1EZ9B6evnc+uQXFe6DAqtm7LSNGobB0FTZ8IC0df0TugiMBg6upvIaotJ+1zoyh8RqjSA==
X-Received: by 2002:a05:6512:1590:b0:49a:9db4:5a31 with SMTP id bp16-20020a056512159000b0049a9db45a31mr1596799lfb.667.1662972277772;
        Mon, 12 Sep 2022 01:44:37 -0700 (PDT)
Received: from localhost.localdomain (109-252-10-171.nat.spd-mgts.ru. [109.252.10.171])
        by smtp.gmail.com with ESMTPSA id n17-20020a05651203f100b0049a4862966fsm555472lfq.146.2022.09.12.01.44.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Sep 2022 01:44:37 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Mon, 12 Sep 2022 11:44:28 +0300
Message-Id: <20220912084430.84451-6-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20220912084430.84451-1-antonynpavlov@gmail.com>
References: <20220912084430.84451-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220912_014443_735479_09E612A4 
X-CRM114-Status: UNSURE (   9.19  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 5/7] Documentation: barebox environment: fix list rendering
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 .../devicetree/bindings/barebox/barebox,environment.rst          | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/barebox/barebox,environment.rst b/Documentation/devicetree/bindings/barebox/barebox,environment.rst
index 918efd15f55..8a57bf1add8 100644
--- a/Documentation/devicetree/bindings/barebox/barebox,environment.rst
+++ b/Documentation/devicetree/bindings/barebox/barebox,environment.rst
@@ -9,6 +9,7 @@ Required properties:
 * ``device-path``: path to the device environment is on
 
 Optional properties:
+
 * ``file-path``: path to a file in the device named by device-path
 
 The device-path is a multistring property. The first string should contain
-- 
2.37.2



