Delivery-date: Wed, 31 May 2023 17:01:01 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4NJs-004O3V-Id
	for lore@lore.pengutronix.de; Wed, 31 May 2023 17:01:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4NJq-0000p9-4V
	for lore@pengutronix.de; Wed, 31 May 2023 17:00:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=x+RimfOhuFEh1N/WWdaPiHOym7zBR3CQhwk/ZxD0KHM=; b=khYmHVIIEcEtZvAaioyJsJ5GGc
	dusbNO3d4JztipUpZi8m+rZuULxsJFvJDqzjxHVdus1hI3bzuKChxnPwPf1AH2LwqQcypPDpcjSwS
	ZgQgMxiiR4p1dKcPSnDAnXhHmyx9bKYgNgCb7fxHCxqCToGm62iAhlBtyCb8MbWgEf520ArIOwiNP
	TgEfNmfcxOlkzt8catipKFgAkCicwYTkAZtoWMtlfHnj22SwRzKVGXSRsYR6UMfXJi1om46uCq6gW
	Z6EG/BHbRI3CL4I2oFDcqIVEOdvVNiQWHscCrdOJ/aZ3frk645f/27gbXqWaH0Ygkjfugqa+CCe4+
	gmLAsSBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4NIn-000C1M-15;
	Wed, 31 May 2023 14:59:53 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4NIg-000BwS-0g
	for barebox@bombadil.infradead.org;
	Wed, 31 May 2023 14:59:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=x+RimfOhuFEh1N/WWdaPiHOym7zBR3CQhwk/ZxD0KHM=; b=AynT82okI7j1Z53Ye+bHfOYCEw
	14EIY/AyBtKD5gMRaF3BNqg5dmHyynZVQT+oSxxuoDaSyNPIBoSitDRdoxdKiFxusJKdogsf7+rLT
	u4XFkQ8uaSj9twOiBlI1n/zsPV5SkMvgzAr52bpbGOJuYpj0hBTAustmXeVmQuNuGCZtYjXzP/qE2
	BN7bz1Gg0UI8vULU8uHRYg1rw/JnzWiceZqKFgAE+ivsvSRLwUvFMJBsP88U+E5NjZAGP8/Xwgz3b
	ydDvjryOsMlVo87x8hTjADUtOR/lDk20r3sXFH5U+tOnv90AK0VjahCoxNePubN53JbvcBJlr25kJ
	jziUYHhA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4NIc-00FUit-2N
	for barebox@lists.infradead.org;
	Wed, 31 May 2023 14:59:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q4NIU-0008E7-5R; Wed, 31 May 2023 16:59:34 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q4NIS-0048H8-AF; Wed, 31 May 2023 16:59:32 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q4NIQ-005sDG-9H; Wed, 31 May 2023 16:59:30 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 31 May 2023 16:59:22 +0200
Message-Id: <20230531145927.1399282-14-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230531145927.1399282-1-a.fatoum@pengutronix.de>
References: <20230531145927.1399282-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230531_155942_971933_4B130672 
X-CRM114-Status: UNSURE (   8.40  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 13/18] block: add cdev_is_block_(device,partition,disk) helpers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We look too much into struct cdev's guts. Let's add helpers to make
operating on block device cdevs more concise.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/block.h | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/include/block.h b/include/block.h
index 4dd2aa1f80ef..da258f509b41 100644
--- a/include/block.h
+++ b/include/block.h
@@ -58,4 +58,19 @@ static inline struct block_device *cdev_get_block_device(const struct cdev *cdev
 }
 #endif
 
+static inline bool cdev_is_block_device(const struct cdev *cdev)
+{
+	return cdev_get_block_device(cdev) != NULL;
+}
+
+static inline bool cdev_is_block_partition(const struct cdev *cdev)
+{
+	return cdev_is_block_device(cdev) && cdev_is_partition(cdev);
+}
+
+static inline bool cdev_is_block_disk(const struct cdev *cdev)
+{
+	return cdev_is_block_device(cdev) && !cdev_is_partition(cdev);
+}
+
 #endif /* __BLOCK_H */
-- 
2.39.2



