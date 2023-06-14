Delivery-date: Wed, 14 Jun 2023 09:36:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q9L2y-006MXv-DO
	for lore@lore.pengutronix.de; Wed, 14 Jun 2023 09:36:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q9L2v-0005g4-NN
	for lore@pengutronix.de; Wed, 14 Jun 2023 09:36:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=fN73F2XrZA04ooynEcnT1PdaWIQsSFu7S9abyJLnX0w=; b=vXK/EDm82PhvhKpyrg4ZFQQU9s
	JMVBDJetZhO2xt5iA04BjBLg7YTxdFuwU4xKza2OjcU2FfwnBC6x2zEG0vocyUVzAVzduxxEkb801
	O6PgRyuvBW4MP41Anu4DjhqIQWSQ4KU19kCBSjzNEudaJMvVMdpVl+rsTHyJxuFTngpulFPiqx4r5
	xUMAZC7c2rOAWRppYZzGxOvC2Kd/M12N9Vo8aAuyEYOVQhvvpezJnB24Jc3iisJXFLrzSDfFCo5Xt
	4fCpIl6z5rr28nRU591bUqMBBjpRiZL/oiUEjMqnv6EGJ9sSYtY9CnsAnBqq8dpya+SpKOFlLtZHj
	AzZae+3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9L1p-00Ahox-1i;
	Wed, 14 Jun 2023 07:34:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9L1m-00Ahny-1G
	for barebox@lists.infradead.org;
	Wed, 14 Jun 2023 07:34:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <uol@pengutronix.de>)
	id 1q9L1k-00059t-Mk; Wed, 14 Jun 2023 09:34:48 +0200
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <uol@pengutronix.de>)
	id 1q9L1k-007IrN-12; Wed, 14 Jun 2023 09:34:48 +0200
Received: from uol by dude03.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <uol@pengutronix.de>)
	id 1q9L1j-00Eeui-9X; Wed, 14 Jun 2023 09:34:47 +0200
From: =?UTF-8?q?Ulrich=20=C3=96lmann?= <u.oelmann@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 14 Jun 2023 09:34:44 +0200
Message-Id: <20230614073444.3493711-1-u.oelmann@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230614_003450_431322_98A66E81 
X-CRM114-Status: GOOD (  11.20  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2] common: Kconfig: fix typo
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Ulrich Ölmann <u.oelmann@pengutronix.de>
---
 common/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/Kconfig b/common/Kconfig
index ce94718c848a..a36d823608ac 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -711,7 +711,7 @@ config MMCBLKDEV_ROOTARG
 	  kernel doesn't contain commit [1]. The first linux kernel release
 	  containing that commit is v5.10-rc1.
 
-	  The appending only happen if barebox 'linux.bootargs.bootm.appendroot'
+	  The appending only happens if barebox' 'linux.bootargs.bootm.appendroot'
 	  variable is set or the used blspec entry contains 'linux-appendroot'.
 
 	  Note: It is crucial that the kernel device tree and the barebox device
-- 
2.39.2



