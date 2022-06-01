Delivery-date: Wed, 01 Jun 2022 08:04:26 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nwHT0-00Gt5x-0G
	for lore@lore.pengutronix.de; Wed, 01 Jun 2022 08:04:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nwHSy-0005LW-03
	for lore@pengutronix.de; Wed, 01 Jun 2022 08:04:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f0HvU1dFRT3fDBjUowPjn3pBGsIt0hyImsVc3b0SFJg=; b=YeHHmZFU4A+wVT
	uL8/65UrWIQDPiW5dWwLKA4tlHWL0HngVIMEWIUzsy3Ln4aXRt+KPM48M9blu9Hk/6egDdqB1t4pV
	rydbtwMV8xGZeZM/ykCcSKJaQ7bLDPaQ3QrI3KxhWzYfNGcDu6Y5IebLrBXuFt+2DYdRPVPoJJAWC
	cKccCToy/vWPebkRs+nGVYrPaChfINzhBO2w2L+/lWflfUBHwbnw2Ae85LTYdq5xFZN2uxWuagFcP
	e1+qFveYtKu31T7b50t1I+XHBM/t+Ib8S4Z894IG8+R76rZT18B1WptjTETroMr8Do5ItdFGeZw9P
	I0c2dfJBwxxVxSZIFTUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwHRT-00E2UN-KE; Wed, 01 Jun 2022 06:02:51 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwHRI-00E2RV-16
	for barebox@lists.infradead.org; Wed, 01 Jun 2022 06:02:41 +0000
Received: by mail-lf1-x129.google.com with SMTP id be31so986792lfb.10
        for <barebox@lists.infradead.org>; Tue, 31 May 2022 23:02:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=5kP6e6DhCC7oBMK7GOKcPFkS8AySfz7ZKyT1r7oouiw=;
        b=hu4kn5HkPXzA2WLIgWb9+1BLKwiNsNtUVpP2k5tqnZnXYlV2JrsM/FbZBd8JyLPiTZ
         QmoHHzwJHqGMfT2CUhkKUXk2UMY1zHkbuL6aFwDsx+WnGtVw/meIVq4pMKBCTbXp5Zto
         ygtBQ3fLB7QwFbhOXW8lKvBamiE3TAsaBl6cx2WzNl892+cIXRFubv0MU0/IHrR+ouvt
         M1T292GOFKQhR063B9Rb5+uup8ls4WRt469OJOTuNxT1L/Ai5kbf3b/zjiEgfTULfPPY
         tswzuGd7M2795saXweBdTmJ0pFQPE9gGZOJvVp3gj+2uKA2qAGu0OREFVjz4ZW3Ur+Ol
         4Wgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=5kP6e6DhCC7oBMK7GOKcPFkS8AySfz7ZKyT1r7oouiw=;
        b=fa+gxYUMjXIwnd2XpLROlWRHlgsmyYwR0EPeL3n/OBGZseFc1GoUNkK3xwgzw5sDtM
         lb2umb9lAnxOvfeLM+QTCIG1o0zrdWDzu31qYfGKus/kPko1Bzw3MuPPZvrkC1dbBsF8
         qif9XkVzNQ11cEmqkgAZqeZfJbSVdpDhrFw3W0S+Xjq6kch3tzzn8NL50YG8cvWZMdr3
         iopWlFlqHu1Rutbq5j9JruBntOhkmTjCdeFG45Z7akBU77hOfCQTVJObegSf8ZTPmAHi
         9ZY62DiZANU/Ve2xUkC7vvr9I6IEGyHjoYOy6NPE9RGt11sCAN4MHvnW32mqYqcCe14g
         9uDg==
X-Gm-Message-State: AOAM532w7V2x0hMyXKntV0PbA4EC9dswre/zO+MY8yJ2KMO32pVF5bDy
	4tkw7QcvSJOkPNrdis97QKr/N8LoJY4=
X-Google-Smtp-Source: ABdhPJxqYc/3m6gMwlLboZxftl04L7AdofjgD0Bs3VGhIceFXDQpnhkdaz7se+504ZyXQ/Fep9q6+Q==
X-Received: by 2002:a05:6512:238e:b0:478:6db8:a615 with SMTP id c14-20020a056512238e00b004786db8a615mr34593165lfv.492.1654063356907;
        Tue, 31 May 2022 23:02:36 -0700 (PDT)
Received: from shc.milas.spb.ru ([188.243.217.78])
        by smtp.gmail.com with ESMTPSA id 4-20020a2e1644000000b0025552d57beasm129691ljw.89.2022.05.31.23.02.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 May 2022 23:02:36 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Wed,  1 Jun 2022 09:02:24 +0300
Message-Id: <20220601060226.3756-4-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220601060226.3756-1-eagle.alexander923@gmail.com>
References: <20220601060226.3756-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220531_230240_173788_F1A56AC7 
X-CRM114-Status: GOOD (  10.86  )
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
Subject: [PATCH 3/5] drivers: soc: Fix unconditional compilation of imx directory
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

As a side change, this patch sorts entries alphabetically.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 drivers/soc/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/soc/Makefile b/drivers/soc/Makefile
index e5b319e6da..a23e81ffb3 100644
--- a/drivers/soc/Makefile
+++ b/drivers/soc/Makefile
@@ -1,6 +1,6 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
-obj-y	+= imx/
+obj-$(CONFIG_ARCH_IMX)		+= imx/
+obj-$(CONFIG_KVX)		+= kvx/
 obj-$(CONFIG_CPU_SIFIVE)	+= sifive/
 obj-$(CONFIG_SOC_STARFIVE)	+= starfive/
-obj-$(CONFIG_KVX)	+= kvx/
-- 
2.32.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

