Delivery-date: Mon, 12 Sep 2022 10:47:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oXf6c-0022AE-5x
	for lore@lore.pengutronix.de; Mon, 12 Sep 2022 10:47:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oXf6X-00062t-PA
	for lore@pengutronix.de; Mon, 12 Sep 2022 10:47:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ga+nt7eDVE2O1hgIuyuRu8cO1XzclCicU5Bsa/KBvCo=; b=fiBXddtkB7o4rc
	twpQMDfjmbVVdlXaM6UBT3+FTrtWe1RJdB1v/d9Hufv2u3qJWBKmB5r0tDeVGcK3nx4gaQW3SX+D+
	KNARi4qU79MfEUPf1H8gWmxOzoBqC3JkL8Vr7n5X+d573tHZaewS2kMEfIy1YcEl3+6Fy6TIh5Oq7
	8DF1Urx+tCLF6SZu9lg/ZZgR9H3BgFQFPaLDp4uw4wqrg46p2fAGFRn5H6lDlwLo7ZEaccLcz9W4f
	bq+/3vcXQ+wOdBUYzB4FuDO3SjzUtB/bQpY2P8LYsqSEUnqXpj9jxLlBWg+gywjRzcIruIGIkqL6c
	cQEsXe7tfywwKc+UvRCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXf53-007vS5-7M; Mon, 12 Sep 2022 08:46:14 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oXf3Y-007uhZ-El
	for barebox@lists.infradead.org; Mon, 12 Sep 2022 08:44:47 +0000
Received: by mail-lf1-x130.google.com with SMTP id s6so2446369lfo.7
        for <barebox@lists.infradead.org>; Mon, 12 Sep 2022 01:44:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=ga+nt7eDVE2O1hgIuyuRu8cO1XzclCicU5Bsa/KBvCo=;
        b=N50Up1ua5kwTx+d9og6ClfUM/nfNB1u+6HmwIw+s1TRWcpsH/9XeJ7miYL+e5tYnU+
         etAl0JMF6/uFpmIxyCIYQljm6BLIBSL0TuGG0MESR+hqOJFDhzFdyN4zbejVOfhpYSqc
         p7hFAnXQKhPu/S0Iq86ph6nOEoCdTE1STE/ZsaJ1jBwo+v3K+dlSYT+6nI3+j5r1Ly+o
         gFf2tTEPAeu5hXLOGt+a5LrM6nk3Nha2Dhbs+fNkJ6gIguRX8k0GeLdiReMqkVPmjKbg
         4trezPLRyAn4xept68Nh6XzydLiYZIA/au1kOuxtVUD+yb4Be6+x5QZbosOwnsDSVdNQ
         5YhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=ga+nt7eDVE2O1hgIuyuRu8cO1XzclCicU5Bsa/KBvCo=;
        b=5R2eEG1tNR4p+YUz43UiHEML3X/IrRY+6ZpnhN8zu8xEV19PKp1SqEU3JPd+Gz65bF
         XuWAUBU6NxLAtWKVzDyTEo4MXfxbfq20mXNyPCe248jPqDrB49/g41iETHKdmKTfB8eN
         l7nwGYwqg5v/CqLop1WMuol/NFzoiySWKg8po/OJbpm+txPAGhkP5z7zubdIsLTJeoY3
         tejQA3EthwStkhXEGaHwqErIaQww/pj1+i9RgidxnEPgJYb9FG6DZFbsqIPMWE9qD+3M
         P1P/dhBvkBLozH62m7dEta0dwIstUVHvv1/P5Xpolh+NvJSU1bWhS1yUtCbBNCSHN5Qc
         wRDw==
X-Gm-Message-State: ACgBeo3MnhLOVWsG/A7LYZu5rTd0lRrjySHbXPJ5hQeEe/MWjorMWbNC
	6IOzar6wjb7X1j+xHZaiNSnslvmIU4yLjg==
X-Google-Smtp-Source: AA6agR6hSqMFQfHu+nsUxJ42nQqoJXa1PaE/6DdbsR679VRMfJdEc/e50jwD1rKkfCSv+qQoU7QXMw==
X-Received: by 2002:a05:6512:3996:b0:48c:fa00:e33f with SMTP id j22-20020a056512399600b0048cfa00e33fmr8131201lfu.343.1662972278853;
        Mon, 12 Sep 2022 01:44:38 -0700 (PDT)
Received: from localhost.localdomain (109-252-10-171.nat.spd-mgts.ru. [109.252.10.171])
        by smtp.gmail.com with ESMTPSA id n17-20020a05651203f100b0049a4862966fsm555472lfq.146.2022.09.12.01.44.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Sep 2022 01:44:38 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Mon, 12 Sep 2022 11:44:29 +0300
Message-Id: <20220912084430.84451-7-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20220912084430.84451-1-antonynpavlov@gmail.com>
References: <20220912084430.84451-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220912_014443_656931_EC8F8764 
X-CRM114-Status: GOOD (  10.01  )
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
Subject: [PATCH 6/7] Documentation: Common leds properties: fix 'panic-indicator' list entry rendering
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 Documentation/devicetree/bindings/leds/common.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/leds/common.rst b/Documentation/devicetree/bindings/leds/common.rst
index 911a55f4f66..09b4e401bc2 100644
--- a/Documentation/devicetree/bindings/leds/common.rst
+++ b/Documentation/devicetree/bindings/leds/common.rst
@@ -14,4 +14,4 @@ Common leds properties
   from the node name (excluding the unit address).
 
 * ``panic-indicator`` - This property specifies that the LED should be used as a
- panic indicator.
+  panic indicator.
-- 
2.37.2



