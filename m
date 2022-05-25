Delivery-date: Wed, 25 May 2022 07:28:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ntjZa-008IdF-NM
	for lore@lore.pengutronix.de; Wed, 25 May 2022 07:28:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ntjZZ-0001Q6-Ll
	for lore@pengutronix.de; Wed, 25 May 2022 07:28:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9B++Z5orlz38ZuIcg2i761TXj/whaAMB33KnygSGzDo=; b=GcbuPqlnDgcJfQ
	+QgI1M/+VHqNxNZP60rd8XtdLhgL8Q8FLLqXrNoIQ7fGAcUG4CkS895ZKaFlS5AxCy+7BHfGyW1Vr
	KcHiK1NLjVPuzFReFHhEl8Jg5XolYsNlHNN4D/P2uCyfnyYeVAxhXpzxMpsDPueTUmfGbhSOJcPyg
	B46IUqyQ5+2ItYFPAaZJxWbdRvTVqniW3p4sGKIZ3Vn5nRLarlnrnkUmgZ7r1NYPdEIGI/kCmXdRi
	gr9D0U+uqpCxGoQAmZqeyr0BueXNwgu7ehTAcLuTar62tSGbbO5zizbaHap/mSzxE0Aro81DihUPQ
	uYq4lppY73u9WKIgLw3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ntjXe-009yhF-Gz; Wed, 25 May 2022 05:26:42 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ntjXZ-009yfU-Ia
 for barebox@lists.infradead.org; Wed, 25 May 2022 05:26:38 +0000
Received: by mail-lf1-x135.google.com with SMTP id v8so32305396lfd.8
 for <barebox@lists.infradead.org>; Tue, 24 May 2022 22:26:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VvpL6KI4FwMv1rKDQC4k5FHuEDjMVRCt2eAFxKrBI9I=;
 b=mEFQYBc3dUGIOxc1ErofpstP0Yx2tVU4BFLjArysYpwPVUBBMqf+oxOy7RwYXp+2Kz
 RVMDtqzniO4Jkq7/69eXI8wSABTtpQajhZSkL+YfDcks4rYbluypZnz/ep5AUhBZ8XG1
 5TXthv5ai5yU8WlWlW8HN3hzf9BawsZaD8xVck9UyC3JUVsjzBE6/lcarXZDD37OWrBN
 cEYeJjs9HCCnfi8497mMw8SVciRtipDVcZZLsJPMjynLZvT6c+2Uv/mAGFymxLndUWQw
 6vZjoE5pgYn8/7AA/qwpB+psC1GEph8kkIstCfROmclu6Wnvx2TemA45+G8g5+8e0wbi
 aR8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=VvpL6KI4FwMv1rKDQC4k5FHuEDjMVRCt2eAFxKrBI9I=;
 b=Ee8vqAygNS5/YfNS9x4s4fA/OoWhlEB4S4QbhwpUl63E7IWcXMZ3S3UE4gZ1A9YhBD
 TNLGiy3fsJgq/gDa38uiSsYK36QjyTdVZu3V48pjtake3QAX+Ys4X6V9oy8B6KNR5B4h
 Fz1idM6yGFr8b7caHiKunZq7qXwUvTuCx9BfOf+t0uiqEueDFG5CcJuFEQcKI2OdLKdF
 4CqRrSMqFyIEVqF4pGv22btYlYzPwGLZB6OtuD9ykaUZk7KLfTdDC3vUQ/sn+n0g2GT0
 JQ1BynbXrSOowK7jKz8cCJApLDlDp2jtCw4smBYutPb7Utje8I/scRWRT8GzPkgRY6im
 4BTA==
X-Gm-Message-State: AOAM533u+WbtpgwE3UqJO2o52u6IrxFvwcWT4eMK+u0KgURGqfWL4+Bx
 Gg+N1m8HJPUNd3y+hDchrG/1Tn3WBJU=
X-Google-Smtp-Source: ABdhPJxzgzz7dvuRlMMLamdSgQXfV4aWHcNDnrnETgpzpw4fwlciaa2D/0xuBvgbqUhjsOI8sQggSA==
X-Received: by 2002:a05:6512:3f0c:b0:477:8ecb:47fc with SMTP id
 y12-20020a0565123f0c00b004778ecb47fcmr22178490lfa.653.1653456394536; 
 Tue, 24 May 2022 22:26:34 -0700 (PDT)
Received: from shc.milas.spb.ru ([188.243.217.78])
 by smtp.gmail.com with ESMTPSA id
 i19-20020a056512007300b0047255d210d5sm2901530lfo.4.2022.05.24.22.26.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 May 2022 22:26:34 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Wed, 25 May 2022 08:26:32 +0300
Message-Id: <20220525052632.3169-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220524_222637_665627_D1A74507 
X-CRM114-Status: UNSURE (   7.59  )
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
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] .gitignore: Add directories generated by MAKEALL script
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 .gitignore | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/.gitignore b/.gitignore
index 0382202bf7..cb87e9314f 100644
--- a/.gitignore
+++ b/.gitignore
@@ -60,6 +60,8 @@ Module.symvers
 # Generated files
 Documentation/commands/*.rst
 doctrees/
+log/
+makeall_builddir/
 
 # stgit generated dirs
 patches-*
-- 
2.32.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

